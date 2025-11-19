void CLP::LogEntry::PrivateData::GlonassSubsecondConversion::~GlonassSubsecondConversion(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this)
{
  *this = off_100178B00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178B00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178B00;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gnss::Velocity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v3 = a2;
  v4 = this;
  v5 = *(this + 60);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v3, *(v4 + 16), a3);
  v5 = *(v4 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v3, *(v4 + 24), a3);
  v5 = *(v4 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, v3, *(v4 + 40), a3);
    if ((*(v4 + 60) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v3, *(v4 + 32), a3);
  v5 = *(v4 + 60);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v6 = *(v4 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, v3, v6, a3);
}

void CLP::LogEntry::PrivateData::GlonassTimeInfo::~GlonassTimeInfo(CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  *this = off_100178B78;
  CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178B78;
  CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178B78;
  CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[3];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

void GnssEmergencyManager::handlePvtmIndication(uint64_t a1, void *a2)
{
  v4 = [NSData dataWithBytes:*a2 length:a2[1] - *a2];
  v5 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v8 = a2[1] - *a2;
    v9 = 134349056;
    v10 = v8;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#gem,handlePvtmIndication,length,%{public}zu", &v9, 0xCu);
  }

  [fExternGem handleDeviceIndication:v4];
  if ((*(a1 + 72) & 1) == 0)
  {
    v6 = GpsdLogObjectGeneral;
    if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9) = 0;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#gem,#nilr,send the PVTM message to remote directly", &v9, 2u);
    }

    v7 = *(a1 + 56);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v7 + 48))(v7, a2);
  }
}

void CLP::LogEntry::PrivateData::SubSecondConversion::~SubSecondConversion(CLP::LogEntry::PrivateData::SubSecondConversion *this)
{
  *this = off_100178BF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178BF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178BF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::BeidouTimeInfo::~BeidouTimeInfo(CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  *this = off_100178C68;
  CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178C68;
  CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178C68;
  CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ != this)
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

    this = v1[5];
    if (this)
    {
      v6 = *(*this + 8);

      return v6();
    }
  }

  return this;
}

void CLP::LogEntry::PrivateData::GalileoTimeInfo::~GalileoTimeInfo(CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  *this = off_100178CE0;
  CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178CE0;
  CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178CE0;
  CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CLP::LogEntry::PrivateData::NavicTimeInfo::~NavicTimeInfo(CLP::LogEntry::PrivateData::NavicTimeInfo *this)
{
  *this = off_100178D58;
  if (CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ != this)
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
  CLP::LogEntry::PrivateData::NavicTimeInfo::~NavicTimeInfo(this);

  operator delete();
}

void CLP::LogEntry::PrivateData::KlobucharModelParameters::~KlobucharModelParameters(CLP::LogEntry::PrivateData::KlobucharModelParameters *this)
{
  *this = off_100178E48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100178E48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178E48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gnss::PwrMeasurement::ByteSize(proto::gnss::PwrMeasurement *this, unsigned int a2)
{
  v3 = *(this + 48);
  if (*(this + 48))
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
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v6 = *(this + 10);
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

  *(this + 11) = v5;
  return v5;
}

uint64_t proto::gnss::PwrMeasurement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v4, *(v5 + 32), a3);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, *(v5 + 24), a3);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, v4, a4);
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::ByteSize(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 132);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_40;
  }

  if (*(this + 132))
  {
    v6 = *(this + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
    }

    v7 = *(v6 + 36);
    if (*(v6 + 36))
    {
      v8 = (v7 << 31 >> 31) & 9;
      if ((v7 & 2) != 0)
      {
        v8 += 9;
      }

      if ((v7 & 4) != 0)
      {
        v7 = v8 + 9;
      }

      else
      {
        v7 = v8;
      }
    }

    *(v6 + 32) = v7;
    v4 = v7 + 2;
    v3 = *(this + 33);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((*(this + 132) & 2) != 0)
  {
LABEL_15:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    v10 = CLP::LogEntry::PrivateData::MeasurementReport::ByteSize(v9, a2);
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
    v3 = *(this + 33);
  }

LABEL_21:
  if ((v3 & 0x10) != 0)
  {
    v13 = *(this + 9);
    if (!v13)
    {
      v13 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    v14 = CLP::LogEntry::PrivateData::TimeConversionInfo::ByteSize(v13, a2);
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
    v3 = *(this + 33);
  }

  v17 = v4 + 9;
  if ((v3 & 0x20) == 0)
  {
    v17 = v4;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = v17 + 9;
  }

  else
  {
    v5 = v17;
  }

  if ((v3 & 0x80) != 0)
  {
    v18 = *(this + 12);
    if (!v18)
    {
      v18 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
    }

    v19 = CLP::LogEntry::PrivateData::KlobucharModelParameters::ByteSize(v18, a2);
    v20 = v19;
    if (v19 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    }

    else
    {
      v21 = 1;
    }

    v5 += v20 + v21 + 1;
  }

LABEL_40:
  v22 = *(this + 8);
  v23 = v22 + v5;
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = CLP::LogEntry::PrivateData::SvInfo::ByteSize(*(*(this + 3) + 8 * v24), a2);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
      }

      else
      {
        v27 = 1;
      }

      v23 += v26 + v27;
      ++v24;
    }

    while (v24 < *(this + 8));
  }

  v28 = *(this + 14);
  v29 = v28 + v23;
  if (v28 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = CLP::LogEntry::PrivateData::ReceiverBandCorrections::ByteSize(*(*(this + 6) + 8 * v30), a2);
      v32 = v31;
      if (v31 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
      }

      else
      {
        v33 = 1;
      }

      v29 += v32 + v33;
      ++v30;
    }

    while (v30 < *(this + 14));
  }

  v34 = *(this + 28);
  v35 = (v34 + v29);
  if (v34 >= 1)
  {
    v36 = 0;
    do
    {
      v37 = CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::ByteSize(*(*(this + 13) + 8 * v36), a2);
      v38 = v37;
      if (v37 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2);
      }

      else
      {
        v39 = 1;
      }

      v35 = (v38 + v35 + v39);
      ++v36;
    }

    while (v36 < *(this + 28));
  }

  *(this + 32) = v35;
  return v35;
}

uint64_t CLP::LogEntry::PrivateData::Clock::ByteSize(CLP::LogEntry::PrivateData::Clock *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if (*(this + 44))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 11);
    if ((v3 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v5 = *(this + 2);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
  }

  v4 = v4 + CLP::LogEntry::PrivateData::ReceiverClockModel::ByteSize(v5) + 2;
  v3 = *(this + 11);
LABEL_10:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v6 = *(this + 3);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  v4 = v4 + CLP::LogEntry::PrivateData::ReceiverClockCorrections::ByteSize(v6) + 2;
  if ((*(this + 11) & 8) != 0)
  {
LABEL_16:
    v7 = *(this + 4);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    v8 = CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ByteSize(v7, a2);
    v10 = v8;
    if (v8 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, v9);
    }

    else
    {
      v11 = 1;
    }

    v4 = (v4 + v10 + v11 + 1);
  }

LABEL_22:
  *(this + 10) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::ByteSize(CLP::LogEntry::PrivateData::MeasurementReport *this, unint64_t a2)
{
  if (*(this + 44))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      v4 = *(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    v5 = CLP::LogEntry::PrivateData::Clock::ByteSize(v4, a2);
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

  v8 = *(this + 6);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = CLP::LogEntry::PrivateData::Measurement::ByteSize(*(*(this + 2) + 8 * v10), a2);
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

    while (v10 < *(this + 6));
  }

  *(this + 10) = v9;
  return v9;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::ByteSize(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  v1 = *(this + 52);
  if (*(this + 52))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 12) = v1;
  return v1;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::ByteSize(CLP::LogEntry::PrivateData::ReceiverClockModel *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    v3 = v2 + ((v1 >> 3) & 2);
  }

  else
  {
    v3 = 0;
  }

  *(this + 7) = v3;
  return v3;
}

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::ByteSize(CLP::LogEntry::PrivateData::TimeConversionInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_40;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8);
  }

  v6 = CLP::LogEntry::PrivateData::GpsTimeInfo::ByteSize(v5, a2);
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
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 16);
    }

    v10 = CLP::LogEntry::PrivateData::GlonassTimeInfo::ByteSize(v9, a2);
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
    v3 = *(this + 13);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(this + 3);
    if (!v13)
    {
      v13 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 24);
    }

    v14 = CLP::LogEntry::PrivateData::BeidouTimeInfo::ByteSize(v13, a2);
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
    v3 = *(this + 13);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(this + 4);
  if (!v17)
  {
    v17 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 32);
  }

  v18 = CLP::LogEntry::PrivateData::GalileoTimeInfo::ByteSize(v17, a2);
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
  if ((*(this + 13) & 0x10) != 0)
  {
LABEL_34:
    v21 = *(this + 5);
    if (!v21)
    {
      v21 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 40);
    }

    v22 = CLP::LogEntry::PrivateData::NavicTimeInfo::ByteSize(v21, a2);
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

LABEL_40:
  *(this + 12) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::ByteSize(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (v3)
  {
    if (*(this + 32))
    {
      v6 = *(this + 4);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(this + 8);
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

    if ((v3 & 2) != 0)
    {
      v4 += 9;
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

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  if (*(v5 + 56) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 48) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 56));
  }

  v11 = *(v5 + 132);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(v5 + 72);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v12, a2, a4);
    v11 = *(v5 + 132);
    if ((v11 & 0x20) == 0)
    {
LABEL_17:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 80), a3);
  v11 = *(v5 + 132);
  if ((v11 & 0x40) == 0)
  {
LABEL_18:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 88), a3);
  if ((*(v5 + 132) & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  v13 = *(v5 + 96);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
LABEL_28:
  if (*(v5 + 112) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 104) + 8 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 112));
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::Clock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
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

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, *(v5 + 12), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, v4, *(v5 + 20), a3);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, v4, *(v5 + 16), a3);
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
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, v4, a4);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v3 = a2;
  v4 = this;
  v5 = *(this + 52);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v3, *(v4 + 16), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v3, *(v4 + 32), a3);
    if ((*(v4 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v3, *(v4 + 24), a3);
  v5 = *(v4 + 52);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v6 = *(v4 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, v3, v6, a3);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 8), a3);
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

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8);
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_19:
    v11 = *(v5 + 40);
    if (!v11)
    {
      v11 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::ByteSize(CLP::LogEntry::PrivateData::GpsTimeInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v6 = *(this + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8);
    }

    v7 = CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(v6, a2);
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
    v3 = *(this + 8);
    goto LABEL_16;
  }

  v5 = *(this + 6);
  if (v5 >= 0x80)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = 2;
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      v10 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 16);
    }

    v11 = CLP::LogEntry::PrivateData::GpsToUtcConversion::ByteSize(v10, a2);
    v13 = v11;
    if (v11 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, v12);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
  }

LABEL_23:
  *(this + 7) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::GpsToUtcConversion::ByteSize(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 44);
  if (v3)
  {
    if (*(this + 44))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 11);
    }

    else
    {
      v4 = 0;
    }

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
      result = v4 + 9;
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

  *(this + 10) = result;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(CLP::LogEntry::PrivateData::LeapSecondInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
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
    if ((*(this + 28) & 2) == 0)
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
    v3 = *(this + 7);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 16);
    }

    v9 = CLP::LogEntry::PrivateData::LeapSecondChange::ByteSize(v8, a2);
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

LABEL_23:
  *(this + 6) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::ByteSize(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
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
    v8 = *(this + 8);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
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
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 16);
  }

  v11 = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::ByteSize(v10, a2);
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
  if ((*(this + 10) & 0x10) != 0)
  {
LABEL_30:
    v14 = *(this + 3);
    if (!v14)
    {
      v14 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 24);
    }

    v15 = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::ByteSize(v14, a2);
    v17 = v15;
    if (v15 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, v16);
    }

    else
    {
      v18 = 1;
    }

    v4 = (v4 + v17 + v18 + 1);
  }

LABEL_36:
  *(this + 9) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSubsecondConversion::ByteSize(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (v3)
  {
    if (*(this + 28))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 7);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      result = v4 + 9;
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

  *(this + 6) = result;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::ByteSize(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 56);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (*(this + 56))
  {
    v5 = *(this + 12);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 14);
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
    if ((*(this + 56) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 1);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8);
  }

  v7 = CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(v6, a2);
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
  v3 = *(this + 14);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      v10 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 16);
    }

    v11 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v10, a2);
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
    v3 = *(this + 14);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v14 = *(this + 3);
  if (!v14)
  {
    v14 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 24);
  }

  v15 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v14, a2);
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
  v3 = *(this + 14);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_33:
  v18 = *(this + 4);
  if (!v18)
  {
    v18 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 32);
  }

  v19 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v18, a2);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
  }

  else
  {
    v21 = 1;
  }

  v4 = (v4 + v20 + v21 + 1);
  if ((*(this + 14) & 0x20) != 0)
  {
LABEL_39:
    v22 = *(this + 5);
    if (!v22)
    {
      v22 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 40);
    }

    v23 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v22, a2);
    v25 = v23;
    if (v23 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, v24);
    }

    else
    {
      v26 = 1;
    }

    v4 = (v4 + v25 + v26 + 1);
  }

LABEL_45:
  *(this + 13) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(CLP::LogEntry::PrivateData::SubSecondConversion *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (v3)
  {
    if (*(this + 36))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      result = v4 + 9;
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

  *(this + 8) = result;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::ByteSize(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(this + 40))
  {
    v5 = *(this + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 10);
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
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 1);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8);
  }

  v7 = CLP::LogEntry::PrivateData::LeapSecondInfo::ByteSize(v6, a2);
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
  v3 = *(this + 10);
LABEL_16:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 16);
  }

  v11 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v10, a2);
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
  if ((*(this + 10) & 8) != 0)
  {
LABEL_25:
    v14 = *(this + 3);
    if (!v14)
    {
      v14 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 24);
    }

    v15 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v14, a2);
    v17 = v15;
    if (v15 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, v16);
    }

    else
    {
      v18 = 1;
    }

    v4 = (v4 + v17 + v18 + 1);
  }

LABEL_31:
  *(this + 9) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::ByteSize(CLP::LogEntry::PrivateData::NavicTimeInfo *this, unint64_t a2)
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
    v4 = *(CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8);
  }

  v5 = CLP::LogEntry::PrivateData::SubSecondConversion::ByteSize(v4, a2);
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

uint64_t CLP::LogEntry::PrivateData::KlobucharModelParameters::ByteSize(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, unint64_t a2)
{
  v3 = *(this + 13);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 13);
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
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 5;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0x100) != 0)
  {
    result = v4 + 5;
  }

  else
  {
    result = v4;
  }

  *(this + 12) = result;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 24), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::GpsToUtcConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
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
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v4, v7, a3);
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_10:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  if ((*(v5 + 40) & 0x10) != 0)
  {
LABEL_13:
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSubsecondConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, v7, a3);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 48), a2, a4);
    v6 = *(v5 + 56);
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
    v7 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 56);
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
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 56);
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
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  if ((*(v5 + 56) & 0x20) != 0)
  {
LABEL_21:
    v11 = *(v5 + 40);
    if (!v11)
    {
      v11 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SubSecondConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, v7, a3);
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 32), a2, a4);
    v6 = *(v5 + 40);
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

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8);
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

uint64_t CLP::LogEntry::PrivateData::KlobucharModelParameters::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, *(v5 + 16), a3);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, v4, *(v5 + 20), a3);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, v4, *(v5 + 24), a3);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, v4, *(v5 + 28), a3);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, v4, *(v5 + 32), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, v4, *(v5 + 40), a3);
    if ((*(v5 + 52) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, v4, *(v5 + 36), a3);
  v6 = *(v5 + 52);
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
  v7 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, v4, v7, a3);
}

void VendorLogger::writeCompressed(VendorLogger *this, const unsigned __int8 *a2, uint64_t a3)
{
  if (*(this + 244) != 1)
  {
    return;
  }

  if (*(this + 245))
  {
    v4 = *(this + 22);
    *(this + 25) = v4;
    *(this + 27) = a2;
    *(this + 28) = a3;
    *(this + 26) = *(this + 23) - v4;
    v5 = (this + 256);
    while (1)
    {
      v6 = compression_stream_process(this + 5, 0);
      if (v6)
      {
        break;
      }

      v7 = *(this + 23) - *(this + 22);
      v8 = *(this + 26);
      v9 = v7 - v8;
      if (v7 == v8)
      {
        if (!*(this + 28))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v7 < v8)
        {
          v10 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349312;
            v18 = v9;
            v19 = 2050;
            v20 = v7;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "VendorLogger,Excessive bytes_to_print,%{public}zu,limit,%{public}zu", buf, 0x16u);
            v9 = *(this + 23) - *(this + 22);
          }

          else
          {
            v9 = v7;
          }
        }

        if ((*(this + *(*v5 - 24) + 288) & 5) != 0)
        {
          v11 = GpsdLogObjectGeneral;
          if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "VendorLogger,stream unavailable for compressed output", buf, 2u);
          }
        }

        else
        {
          std::ostream::write();
        }

        *(this + 31) += v9;
        v12 = *(this + 22);
        v13 = *(this + 23) - v12;
        *(this + 25) = v12;
        *(this + 26) = v13;
      }
    }

    if (v6 == COMPRESSION_STATUS_END)
    {
      v15 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v16 = "VendorLogger,writeCompressed,unexpected COMPRESSION_STATUS_END";
    }

    else
    {
      v15 = GpsdLogObjectGeneral;
      if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v16 = "VendorLogger,writeCompressed,unexpected COMPRESSION_STATUS_ERROR";
    }

    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
LABEL_25:
    if (*(this + 31) > *(this + 18))
    {
      VendorLogger::openNewLogFile(this);
    }

    return;
  }

  if ((VendorLogger::writeCompressed(unsigned char const*,unsigned long)::kWarningPrinted & 1) == 0)
  {
    v14 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "VendorLogger,log dropped since compression spun down", buf, 2u);
    }

    VendorLogger::writeCompressed(unsigned char const*,unsigned long)::kWarningPrinted = 1;
  }
}

void ProtobufLogger::logGpsdEntry(uint64_t a1, char **a2, int a3)
{
  v4 = 0;
  v46 = 0x4000003ECLL;
  v44 = 0;
  v45 = a3;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v5 = (*(a2 + 2) - *a2);
  do
  {
    v6 = *(&v45 + v4);
    *(&v43 + v4) = (8 * v6) | 2;
    *(&v41 + v4) = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    }

    else
    {
      v7 = 1;
    }

    if ((8 * v6) >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(((8 * v6) | 2u), a2);
    }

    else
    {
      v8 = 1;
    }

    v5 = (v7 + v5 + v8);
    v4 += 4;
  }

  while (v4 != 12);
  v9 = CLP::LogEntry::LogEntry::LogEntry(v38);
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v9);
  v40 |= 1u;
  v11 = v39;
  if (!v39)
  {
    operator new();
  }

  *(v39 + 44) |= 4u;
  *(v11 + 24) = MachContinuousTimeNs * 0.000000001;
  v40 |= 1u;
  MachAbsoluteTimeNs = gpsd::util::getMachAbsoluteTimeNs(MachContinuousTimeNs);
  *(v11 + 44) |= 2u;
  *(v11 + 16) = MachAbsoluteTimeNs * 0.000000001;
  v40 |= 1u;
  v13 = v39;
  if (!v39)
  {
    operator new();
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(v13 + 44) |= 1u;
  *(v13 + 8) = Current;
  v16 = CLP::LogEntry::LogEntry::ByteSize(v38, v15);
  v18 = (v16 + v5);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v16 + v5), v17);
  }

  else
  {
    v19 = 1;
  }

  __p = 0;
  v36 = 0;
  v37 = 0;
  v20 = &(*a2)[v18 + v19 - a2[1]];
  v21 = v20 + 4;
  if (v20 == -4)
  {
    v22 = 0;
  }

  else
  {
    std::vector<unsigned char>::__append(&__p, v21);
    v21 = __p;
    v22 = v36;
  }

  wireless_diagnostics::google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v34, v21, v22 - v21, -1);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v18);
  wireless_diagnostics::google::protobuf::MessageLite::SerializeToCodedStream(v38, v33);
  for (i = 8; i != -4; i -= 4)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v33, *(&v43 + i));
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v33, *(&v41 + i));
  }

  v24 = __p + v19;
  if (v24 == v36 - 4)
  {
    v25 = 0;
    v26 = 1;
  }

  else
  {
    v25 = 0;
    v26 = 1;
    do
    {
      v27 = *v24++;
      v26 = (v26 + v27) % 0xFFF1;
      v25 = (v26 + v25) % 0xFFF1;
    }

    while (v24 != v36 - 4);
  }

  v28 = *a2;
  v29 = a2[1];
  if (*a2 != v29)
  {
    do
    {
      v30 = *v28++;
      v26 = (v26 + v30) % 0xFFF1;
      v25 = (v26 + v25) % 0xFFF1;
    }

    while (v28 != v29);
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v33, v26 | (v25 << 16));
  VendorLogger::log(a1, *(a1 + 896), *(a1 + 904));
  v32 = 0;
  ProtobufLogger::streamOut(a1, &v32, __p, v36 - 4);
  ProtobufLogger::streamOut(a1, &v32, *a2, a2[1]);
  ProtobufLogger::streamOut(a1, &v32, v36 - 4, v36);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v33);
  wireless_diagnostics::google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(v34);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  CLP::LogEntry::LogEntry::~LogEntry(v38);
}

uint64_t CLP::LogEntry::LogEntry_TimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, v7, a2, a4);
}

CLP::LogEntry::LogEntry *CLP::LogEntry::LogEntry::LogEntry(CLP::LogEntry::LogEntry *this)
{
  *this = off_100174070;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}

uint64_t CLP::LogEntry::LogEntry::SerializeWithCachedSizes(CLP::LogEntry::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 52))
  {
    v6 = *(this + 4);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::LogEntry::default_instance_ + 32);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizes((this + 8), 2, 3, a2);
  if ((*(this + 52) & 2) != 0)
  {
    v9 = *(this + 5);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, v8);
  }

  return result;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t CLP::LogEntry::LogEntry::ByteSize(CLP::LogEntry::LogEntry *this, unint64_t a2)
{
  if (!*(this + 52))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 4);
  if (!v4)
  {
    v4 = *(CLP::LogEntry::LogEntry::default_instance_ + 32);
  }

  v5 = CLP::LogEntry::LogEntry_TimeStamp::ByteSize(v4, a2);
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
  if ((*(this + 13) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 5);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v9 = CLP::LogEntry::PrivateData::PrivateDataCapture::ByteSize(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v3 += v11 + v12 + 1;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::ByteSize((this + 8)) + v3;
  *(this + 12) = result;
  return result;
}

uint64_t CLP::LogEntry::LogEntry_TimeStamp::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  v3 = *(this + 44);
  if (*(this + 44))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[4], a2) + 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 10) = v5;
  return v5;
}

void ProtobufLogger::streamOut(uint64_t a1, BOOL *a2, char *a3, char *a4)
{
  memset(&v10, 0, sizeof(v10));
  if (a3 != a4)
  {
    v5 = a3;
    v7 = *a2;
    do
    {
      v8 = *v5;
      if (v7 && (v8 & 0xFFFFFFDF) == 0x5D)
      {
        std::string::push_back(&v10, 93);
      }

      std::string::push_back(&v10, v8);
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0 && v10.__r_.__value_.__l.__size_ >= 0x3E8)
      {
        VendorLogger::log();
      }

      v7 = v8 == 126;
      *a2 = v8 == 126;
      ++v5;
    }

    while (v5 != a4);
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      VendorLogger::log();
    }

    if ((*(&v10.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10002AFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CLP::LogEntry::LogEntry::SharedDtor(void *this)
{
  if (CLP::LogEntry::LogEntry::default_instance_ != this)
  {
    v1 = this;
    v2 = this[4];
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

void CLP::LogEntry::LogEntry::~LogEntry(CLP::LogEntry::LogEntry *this)
{
  *this = off_100174070;
  v2 = (this + 8);
  CLP::LogEntry::LogEntry::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::LogEntry::~LogEntry(this);

  operator delete();
}

void proto::gpsd::SetAssistanceAccel::~SetAssistanceAccel(proto::gpsd::SetAssistanceAccel *this)
{
  *this = off_10017A2A0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::SetAssistanceAccel::~SetAssistanceAccel(this);

  operator delete();
}

void GpsdGnssDeviceManager::setAssistanceGyro(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::vector<gnss::SensorSample3Axis>::vector[abi:ne200100](&__p, *(a2 + 16));
  v6 = __p;
  v7 = v14;
  if (v14 != __p)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (v9 >= *(a2 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
        v6 = __p;
        v7 = v14;
      }

      v10 = *(*(a2 + 8) + 8 * v9);
      v11 = &v6[v8];
      *v11 = *(v10 + 8);
      *(v11 + 1) = *(v10 + 16);
      *(v11 + 4) = *(v10 + 24);
      ++v9;
      v8 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) > v9);
  }

  v12 = *(a1 + 16);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a3);
  (*(*v12 + 144))(v12, &__p, v16);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_10002B330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a20);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GpsdInterfaceTelemeter::appendRequest(GpsdInterfaceTelemeter *this, const proto::gpsd::Request *a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a2 + 5);
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(this);
  std::mutex::lock((this + 120));
  v23 = v8;
  v24 = &v23;
  v10 = std::__hash_table<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::__unordered_map_hasher<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(this, &v23);
  ++*(v10 + 6);
  v11 = v10[5];
  v12 = v10[4] + a3;
  *(this + 23) = MachContinuousTimeNs;
  v13 = MachContinuousTimeNs - a4;
  if (MachContinuousTimeNs < a4)
  {
    v13 = 0;
  }

  v10[4] = v12;
  v10[5] = v11 + v13;
  v14 = v10[6];
  v15 = v10[7];
  if (v13 > v14)
  {
    v14 = v13;
  }

  if (v13 < v15)
  {
    v15 = v13;
  }

  v10[6] = v14;
  v10[7] = v15;
  if (v8 > 16)
  {
    if (v8 > 20)
    {
      switch(v8)
      {
        case 21:
          v16 = *(a2 + 13);
          if (!v16)
          {
            v16 = *(proto::gpsd::Request::default_instance_ + 104);
          }

          break;
        case 22:
          v16 = *(a2 + 14);
          if (!v16)
          {
            v16 = *(proto::gpsd::Request::default_instance_ + 112);
          }

          break;
        case 31:
          v16 = *(a2 + 28);
          if (!v16)
          {
            v16 = *(proto::gpsd::Request::default_instance_ + 224);
          }

          break;
        default:
          goto LABEL_51;
      }
    }

    else
    {
      switch(v8)
      {
        case 17:
          v16 = *(a2 + 9);
          if (!v16)
          {
            v16 = *(proto::gpsd::Request::default_instance_ + 72);
          }

          break;
        case 18:
          v16 = *(a2 + 10);
          if (!v16)
          {
            v16 = *(proto::gpsd::Request::default_instance_ + 80);
          }

          break;
        case 19:
          v16 = *(a2 + 11);
          if (!v16)
          {
            v16 = *(proto::gpsd::Request::default_instance_ + 88);
          }

          break;
        default:
          goto LABEL_51;
      }
    }

    goto LABEL_44;
  }

  if (v8 <= 13)
  {
    if (v8 == 8)
    {
      v17 = *(a2 + 3);
      if (!v17)
      {
        v17 = *(proto::gpsd::Request::default_instance_ + 24);
      }
    }

    else
    {
      if (v8 != 9)
      {
        goto LABEL_51;
      }

      v17 = *(a2 + 4);
      if (!v17)
      {
        v17 = *(proto::gpsd::Request::default_instance_ + 32);
      }
    }

    v18 = (v17 + 24);
    goto LABEL_45;
  }

  if (v8 == 14)
  {
    v19 = *(a2 + 6);
    if (!v19)
    {
      v19 = *(proto::gpsd::Request::default_instance_ + 48);
    }
  }

  else
  {
    if (v8 != 15)
    {
      v16 = *(a2 + 8);
      if (!v16)
      {
        v16 = *(proto::gpsd::Request::default_instance_ + 64);
      }

      goto LABEL_44;
    }

    v19 = *(a2 + 7);
    if (!v19)
    {
      v19 = *(proto::gpsd::Request::default_instance_ + 56);
    }
  }

  v16 = *(*(v19 + 8) + 8 * *(v19 + 16) - 8);
LABEL_44:
  v18 = (v16 + 8);
LABEL_45:
  v20 = *v18;
  if (v20)
  {
    v21 = MachContinuousTimeNs - v20;
    v22 = v10[9];
    if (v21 > v22)
    {
      v22 = v21;
    }

    v10[8] += v21;
    v10[9] = v22;
    if (v21 >= v10[10])
    {
      v21 = v10[10];
    }

    v10[10] = v21;
  }

LABEL_51:
  *(this + 200) = 1;
  std::mutex::unlock((this + 120));
}

uint64_t *std::__hash_table<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::__unordered_map_hasher<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::vector<gnss::SensorSample3Axis>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<gnss::SensorSample3Axis>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_10002BAF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t proto::gnss::SensorSample3Axis::MergePartialFromCodedStream(proto::gnss::SensorSample3Axis *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            goto LABEL_20;
          }

LABEL_32:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v17;
          *(this + 8) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 37)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v16;
          *(this + 8) |= 8u;
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
        goto LABEL_20;
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

      *(this + 8) |= 1u;
      if (v12 < v9 && *v12 == 21)
      {
        *(a2 + 1) = v12 + 1;
LABEL_28:
        v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v18) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v18;
        *(this + 8) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 29)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v7 == 2 && v8 == 5)
    {
      goto LABEL_28;
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

uint64_t proto::gpsd::SetAssistanceAccel::MergePartialFromCodedStream(proto::gpsd::SetAssistanceAccel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
LABEL_1:
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

    if (TagFallback == 10)
    {
      while (1)
      {
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
        v10 = *(v9 + 8 * v8);
        v22 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
          {
            return 0;
          }
        }

        else
        {
          v22 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
        if (!proto::gnss::SensorSample3Axis::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
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
        v20 = *(a2 + 2);
        if (v19 >= v20 || *v19 != 10)
        {
          if (v19 == v20 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v19 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

void GpsdGnssDeviceManager::setAssistanceAccel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::vector<gnss::SensorSample3Axis>::vector[abi:ne200100](&__p, *(a2 + 16));
  v6 = __p;
  v7 = v14;
  if (v14 != __p)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (v9 >= *(a2 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
        v6 = __p;
        v7 = v14;
      }

      v10 = *(*(a2 + 8) + 8 * v9);
      v11 = &v6[v8];
      *v11 = *(v10 + 8);
      *(v11 + 1) = *(v10 + 16);
      *(v11 + 4) = *(v10 + 24);
      ++v9;
      v8 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) > v9);
  }

  v12 = *(a1 + 16);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a3);
  (*(*v12 + 136))(v12, &__p, v16);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_10002C0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a20);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GpsdInterfaceTelemeter::appendResponse(uint64_t a1, int a2, uint64_t a3)
{
  std::mutex::lock((a1 + 120));
  v10 = a2;
  v11 = &v10;
  v6 = std::__hash_table<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::__unordered_map_hasher<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,GpsdInterfaceTelemeter::MessageTypeData>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((a1 + 40), &v10);
  ++*(v6 + 6);
  v6[4] += a3;
  MachContinuousTimeNs = gpsd::util::getMachContinuousTimeNs(v6);
  v8 = MachContinuousTimeNs - *(a1 + 184);
  v9 = v6[6];
  if (v8 > v9)
  {
    v9 = MachContinuousTimeNs - *(a1 + 184);
  }

  v6[5] += v8;
  v6[6] = v9;
  if (v8 >= v6[7])
  {
    v8 = v6[7];
  }

  v6[7] = v8;
  *(a1 + 200) = 1;
  std::mutex::unlock((a1 + 120));
}

void CLP::LogEntry::LogEntry_TimeStamp::~LogEntry_TimeStamp(CLP::LogEntry::LogEntry_TimeStamp *this)
{
  *this = off_100173FF8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100173FF8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100173FF8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t proto::gpsd::SetAssistanceGyro::MergePartialFromCodedStream(proto::gpsd::SetAssistanceGyro *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
LABEL_1:
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

    if (TagFallback == 10)
    {
      while (1)
      {
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
        v10 = *(v9 + 8 * v8);
        v22 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
          {
            return 0;
          }
        }

        else
        {
          v22 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v22);
        if (!proto::gnss::SensorSample3Axis::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
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
        v20 = *(a2 + 2);
        if (v19 >= v20 || *v19 != 10)
        {
          if (v19 == v20 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v19 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::SensorSample3Axis>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<gnss::SensorSample3Axis>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::SensorSample3Axis>>(a1, a2);
  }

  std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
}

void proto::gpsd::SetAssistanceGyro::~SetAssistanceGyro(proto::gpsd::SetAssistanceGyro *this)
{
  proto::gpsd::SetAssistanceGyro::~SetAssistanceGyro(this);

  operator delete();
}

{
  *this = off_10017A318;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void proto::gnss::SensorSample3Axis::~SensorSample3Axis(proto::gnss::SensorSample3Axis *this)
{
  *this = off_100179898;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100179898;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179898;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

BOOL gnss::Fix::isValid(gnss::Fix *this)
{
  v2 = *(this + 2);
  if (v2 >= 1.0e11)
  {
    if (v2 <= 0.0)
    {
      return 0;
    }
  }

  else if (v2 <= 0.0 || *this == 0)
  {
    return 0;
  }

  if (*(this + 3) == -1 || !gnss::Position::isValid((this + 48)))
  {
    return 0;
  }

  return gnss::Velocity::isValid((this + 136));
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::ByteSize(CLP::LogEntry::PrivateData::SvInfo *this, unsigned int a2)
{
  v3 = *(this + 43);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 1);
      if (!v6)
      {
        v6 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
      }

      v7 = CLP::LogEntry::PrivateData::SvId::ByteSize(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(this + 43);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v10 = v4 + 9;
    }

    else
    {
      v10 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v11 = *(this + 14);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
        v3 = *(this + 43);
      }

      else
      {
        v12 = 2;
      }

      v10 += v12;
    }

    v13 = v10 + 9;
    if ((v3 & 0x10) == 0)
    {
      v13 = v10;
    }

    if ((v3 & 0x20) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v13 + 5;
    }

    else
    {
      v5 = v13;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v5 += 5;
    }

    if ((v3 & 0x200) != 0)
    {
      v14 = *(this + 21);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
        v3 = *(this + 43);
      }

      else
      {
        v15 = 2;
      }

      v5 += v15;
      if ((v3 & 0x400) == 0)
      {
LABEL_35:
        if ((v3 & 0x800) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_52;
      }
    }

    else if ((v3 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    v16 = *(this + 22);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(this + 43);
    }

    else
    {
      v17 = 2;
    }

    v5 += v17;
    if ((v3 & 0x800) == 0)
    {
LABEL_36:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_58;
    }

LABEL_52:
    v18 = *(this + 23);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(this + 43);
    }

    else
    {
      v19 = 2;
    }

    v5 += v19;
    if ((v3 & 0x1000) == 0)
    {
LABEL_37:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_64;
    }

LABEL_58:
    v20 = *(this + 24);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(this + 43);
    }

    else
    {
      v21 = 2;
    }

    v5 += v21;
    if ((v3 & 0x2000) == 0)
    {
LABEL_38:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

LABEL_70:
      v24 = *(this + 16);
      if (!v24)
      {
        v24 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
      }

      v25 = CLP::LogEntry::PrivateData::PolynomialOrbit::ByteSize(v24);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
      }

      else
      {
        v27 = 1;
      }

      v5 += v26 + v27 + 2;
      v3 = *(this + 43);
      goto LABEL_76;
    }

LABEL_64:
    v22 = *(this + 25);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
      v3 = *(this + 43);
    }

    else
    {
      v23 = 2;
    }

    v5 += v23;
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_70;
  }

LABEL_76:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_122;
  }

  if ((v3 & 0x10000) != 0)
  {
    v28 = *(this + 34);
    if ((v28 & 0x80000000) != 0)
    {
      v29 = 12;
    }

    else if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 2;
      v3 = *(this + 43);
    }

    else
    {
      v29 = 3;
    }

    v5 += v29;
    if ((v3 & 0x20000) == 0)
    {
LABEL_79:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_95;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_79;
  }

  v30 = *(this + 35);
  if ((v30 & 0x80000000) != 0)
  {
    v31 = 12;
  }

  else if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 2;
    v3 = *(this + 43);
  }

  else
  {
    v31 = 3;
  }

  v5 += v31;
  if ((v3 & 0x40000) == 0)
  {
LABEL_80:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_81;
    }

LABEL_101:
    v34 = *(this + 37);
    if ((v34 & 0x80000000) != 0)
    {
      v35 = 12;
    }

    else if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 2;
      v3 = *(this + 43);
    }

    else
    {
      v35 = 3;
    }

    v5 += v35;
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

LABEL_95:
  v32 = *(this + 36);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 12;
  }

  else if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 2;
    v3 = *(this + 43);
  }

  else
  {
    v33 = 3;
  }

  v5 += v33;
  if ((v3 & 0x80000) != 0)
  {
    goto LABEL_101;
  }

LABEL_81:
  if ((v3 & 0x100000) != 0)
  {
LABEL_107:
    v36 = *(this + 40);
    if ((v36 & 0x80000000) != 0)
    {
      v37 = 12;
    }

    else if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 2;
      v3 = *(this + 43);
    }

    else
    {
      v37 = 3;
    }

    v5 += v37;
  }

LABEL_113:
  if ((v3 & 0x200000) != 0)
  {
    v5 += 10;
  }

  if ((v3 & 0x400000) != 0)
  {
    v38 = *(this + 41);
    if ((v38 & 0x80000000) != 0)
    {
      v39 = 12;
    }

    else if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 2;
    }

    else
    {
      v39 = 3;
    }

    v5 += v39;
  }

LABEL_122:
  v40 = *(this + 8);
  v41 = v40 + v5;
  if (v40 >= 1)
  {
    v42 = 0;
    do
    {
      v41 += CLP::LogEntry::PrivateData::SvPositionAtTime::ByteSize(*(*(this + 3) + 8 * v42++)) + 1;
    }

    while (v42 < *(this + 8));
  }

  v43 = *(this + 28);
  v44 = (v43 + v41);
  if (v43 >= 1)
  {
    v45 = 0;
    do
    {
      v46 = CLP::LogEntry::PrivateData::SvBandCorrections::ByteSize(*(*(this + 13) + 8 * v45), a2);
      v47 = v46;
      if (v46 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
      }

      else
      {
        v48 = 1;
      }

      v44 = (v47 + v44 + v48);
      ++v45;
    }

    while (v45 < *(this + 28));
  }

  *(this + 42) = v44;
  return v44;
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::ByteSize(CLP::LogEntry::PrivateData::SvBandCorrections *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (v3)
  {
    if (*(this + 44))
    {
      v6 = *(this + 6);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(this + 11);
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
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v7 = *(this + 7);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      }

      else
      {
        v8 = 2;
      }

      v5 = (v8 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(this + 10) = v5;
  return v5;
}

uint64_t CLP::LogEntry::PrivateData::SvId::ByteSize(CLP::LogEntry::PrivateData::SvId *this, unsigned int a2)
{
  v3 = *(this + 24);
  if (v3)
  {
    if (*(this + 24))
    {
      v5 = *(this + 4);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(this + 6) & 2) == 0)
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
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v6 = *(this + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
    }

    v7 = CLP::LogEntry::PrivateData::ConstellationId::ByteSize(v6, a2);
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

LABEL_16:
  *(this + 5) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::ByteSize(CLP::LogEntry::PrivateData::ConstellationId *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (*(this + 44))
  {
    v5 = *(this + 4);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(this + 11);
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
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 1);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
  }

  v7 = CLP::LogEntry::PrivateData::GlonassId::ByteSize(v6, a2);
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
  v3 = *(this + 11);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v10 = *(this + 5);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(this + 11);
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
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

  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
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
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
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
  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x40) != 0)
  {
LABEL_38:
    v18 = *(this + 9);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_42:
  *(this + 10) = v4;
  return v4;
}

uint64_t CLP::LogEntry::PrivateData::ConstellationId::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 44);
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
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 44);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 44);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
    if ((*(v5 + 44) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 44);
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
  v8 = *(v5 + 36);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v8, a2, a4);
}

void CLP::LogEntry::PrivateData::GlonassId::MergeFrom(CLP::LogEntry::PrivateData::GlonassId *this, const CLP::LogEntry::PrivateData::GlonassId *a2)
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
        v7 = *(CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
      }

      CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(v6, v7);
    }
  }
}

void sub_10002D028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
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
      if (v6 >= 5)
      {
        __assert_rtn("set_slot_source", "CLPGnssMeasApi.pb.h", 6606, "::CLP::LogEntry::PrivateData::GlonassSlotSource_IsValid(value)");
      }

      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_10002D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvInfo::~SvInfo(CLP::LogEntry::PrivateData::SvInfo *this)
{
  *this = off_100178830;
  v2 = (this + 104);
  CLP::LogEntry::PrivateData::SvInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::SvInfo::~SvInfo(this);

  operator delete();
}

void CLP::LogEntry::PrivateData::SvId::~SvId(CLP::LogEntry::PrivateData::SvId *this)
{
  CLP::LogEntry::PrivateData::SvId::~SvId(this);

  operator delete();
}

{
  *this = off_100177A98;
  if (CLP::LogEntry::PrivateData::SvId::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void ProtobufLogger::log(ProtobufLogger *this, const CLP::LogEntry::LogEntry *a2)
{
  v4 = (*(*a2 + 72))(a2);
  if ((v4 & 0x80000000) == 0)
  {
    v6 = v4;
    if (v4 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, v5);
    }

    else
    {
      v7 = 1;
    }

    v8 = v7 + v6;
    __p = 0;
    v17 = 0;
    v18 = 0;
    v9 = v8 + 4;
    if (v8 == -4)
    {
      v10 = 0;
    }

    else
    {
      std::vector<unsigned char>::__append(&__p, v8 + 4);
      v10 = __p;
    }

    wireless_diagnostics::google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v15, v10, v9, -1);
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream();
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v14, v6);
    if (wireless_diagnostics::google::protobuf::MessageLite::SerializeToCodedStream(a2, v14))
    {
      v11 = cnlogging::details::CNProtobufStreamChecksum::adler32();
      wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v14, v11);
      VendorLogger::log(this, *(this + 112), *(this + 113));
      v13[0] = 0;
      ProtobufLogger::streamOut(this, v13, __p, v17);
    }

    else
    {
      v12 = GpsdLogObjectGeneral;
      if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#gpl,serialize failed", v13, 2u);
      }
    }

    wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v14);
    wireless_diagnostics::google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(v15);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }
}

void sub_10002D3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(&a10);
  wireless_diagnostics::google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(&a14);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<gnss::SvInfo>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 24);
      if (v4)
      {
        *(v3 - 16) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 88);
      *(v3 - 88) = 0;
      if (v5)
      {
        operator delete();
      }

      v6 = *(v3 - 112);
      if (v6)
      {
        *(v3 - 104) = v6;
        operator delete(v6);
      }

      v3 -= 136;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void CLP::LogEntry::PrivateData::SvPositionAtTime::~SvPositionAtTime(CLP::LogEntry::PrivateData::SvPositionAtTime *this)
{
  CLP::LogEntry::PrivateData::SvPositionAtTime::~SvPositionAtTime(this);

  operator delete();
}

{
  *this = off_100178740;
  if (CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 7) |= 2u;
      v6 = *(this + 2);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 2);
      if (!v7)
      {
        v7 = *(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
      }

      return CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(v6, v7);
    }
  }

  return result;
}

void sub_10002D690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvInfo::MergeFrom(CLP::LogEntry::PrivateData::SvInfo *this, const CLP::LogEntry::PrivateData::SvInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
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
      CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104), *(a2 + 28) + *(this + 28));
  LODWORD(v10) = *(a2 + 28);
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if (v11 >= v10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
      }

      v12 = *(*(a2 + 13) + 8 * v11);
      v13 = *(this + 29);
      v14 = *(this + 28);
      if (v14 >= v13)
      {
        if (v13 == *(this + 30))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104), v13 + 1);
          v13 = *(this + 29);
        }

        *(this + 29) = v13 + 1;
        operator new();
      }

      v15 = *(this + 13);
      *(this + 28) = v14 + 1;
      CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(*(v15 + 8 * v14), v12);
      ++v11;
      v10 = *(a2 + 28);
    }

    while (v11 < v10);
  }

  v16 = *(a2 + 43);
  if (!v16)
  {
    goto LABEL_32;
  }

  if (v16)
  {
    *(this + 43) |= 1u;
    v33 = *(this + 1);
    if (!v33)
    {
      operator new();
    }

    v34 = *(a2 + 1);
    if (!v34)
    {
      v34 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::SvId::MergeFrom(v33, v34);
    v16 = *(a2 + 43);
    if ((v16 & 2) == 0)
    {
LABEL_26:
      if ((v16 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_84;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_26;
  }

  v35 = *(a2 + 2);
  *(this + 43) |= 2u;
  *(this + 2) = v35;
  v16 = *(a2 + 43);
  if ((v16 & 4) == 0)
  {
LABEL_27:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

LABEL_84:
  v36 = *(a2 + 14);
  if (v36 >= 7)
  {
    __assert_rtn("set_position_source", "CLPGnssMeasApi.pb.h", 10941, "::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
  }

  *(this + 43) |= 4u;
  *(this + 14) = v36;
  v16 = *(a2 + 43);
  if ((v16 & 0x10) == 0)
  {
LABEL_28:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_87:
    v38 = *(a2 + 8);
    *(this + 43) |= 0x20u;
    *(this + 8) = v38;
    v16 = *(a2 + 43);
    if ((v16 & 0x40) == 0)
    {
LABEL_30:
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_88;
  }

LABEL_86:
  v37 = *(a2 + 6);
  *(this + 43) |= 0x10u;
  *(this + 6) = v37;
  v16 = *(a2 + 43);
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_87;
  }

LABEL_29:
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_88:
  v39 = *(a2 + 9);
  *(this + 43) |= 0x40u;
  *(this + 9) = v39;
  v16 = *(a2 + 43);
  if ((v16 & 0x80) != 0)
  {
LABEL_31:
    v17 = *(a2 + 15);
    *(this + 43) |= 0x80u;
    *(this + 15) = v17;
    v16 = *(a2 + 43);
  }

LABEL_32:
  if ((v16 & 0xFF00) != 0)
  {
    if ((v16 & 0x100) != 0)
    {
      v18 = *(a2 + 20);
      *(this + 43) |= 0x100u;
      *(this + 20) = v18;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x200) != 0)
    {
      v19 = *(a2 + 21);
      if (v19 >= 5)
      {
        __assert_rtn("set_over_the_air_from_sv_health_l1", "CLPGnssMeasApi.pb.h", 11099, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x200u;
      *(this + 21) = v19;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x400) != 0)
    {
      v20 = *(a2 + 22);
      if (v20 >= 5)
      {
        __assert_rtn("set_over_the_air_from_other_sv_health_l1", "CLPGnssMeasApi.pb.h", 11122, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x400u;
      *(this + 22) = v20;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x800) != 0)
    {
      v21 = *(a2 + 23);
      if (v21 >= 5)
      {
        __assert_rtn("set_assistance_file_health_l1", "CLPGnssMeasApi.pb.h", 11145, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x800u;
      *(this + 23) = v21;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x1000) != 0)
    {
      v22 = *(a2 + 24);
      if (v22 >= 5)
      {
        __assert_rtn("set_ms_based_health_l1", "CLPGnssMeasApi.pb.h", 11168, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x1000u;
      *(this + 24) = v22;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x2000) != 0)
    {
      v23 = *(a2 + 25);
      if (v23 >= 5)
      {
        __assert_rtn("set_integrity_health_l1", "CLPGnssMeasApi.pb.h", 11191, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x2000u;
      *(this + 25) = v23;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x8000) != 0)
    {
      *(this + 43) |= 0x8000u;
      v24 = *(this + 16);
      if (!v24)
      {
        operator new();
      }

      v25 = *(a2 + 16);
      if (!v25)
      {
        v25 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
      }

      CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(v24, v25);
      v16 = *(a2 + 43);
    }
  }

  if ((v16 & 0xFF0000) != 0)
  {
    if ((v16 & 0x10000) != 0)
    {
      v26 = *(a2 + 34);
      if (v26 >= 5)
      {
        __assert_rtn("set_over_the_air_from_sv_health_l5", "CLPGnssMeasApi.pb.h", 11281, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x10000u;
      *(this + 34) = v26;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x20000) != 0)
    {
      v27 = *(a2 + 35);
      if (v27 >= 5)
      {
        __assert_rtn("set_over_the_air_from_other_sv_health_l5", "CLPGnssMeasApi.pb.h", 11304, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x20000u;
      *(this + 35) = v27;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x40000) != 0)
    {
      v28 = *(a2 + 36);
      if (v28 >= 5)
      {
        __assert_rtn("set_assistance_file_health_l5", "CLPGnssMeasApi.pb.h", 11327, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x40000u;
      *(this + 36) = v28;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x80000) != 0)
    {
      v29 = *(a2 + 37);
      if (v29 >= 5)
      {
        __assert_rtn("set_ms_based_health_l5", "CLPGnssMeasApi.pb.h", 11350, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x80000u;
      *(this + 37) = v29;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x100000) != 0)
    {
      v30 = *(a2 + 40);
      if (v30 >= 5)
      {
        __assert_rtn("set_integrity_health_l5", "CLPGnssMeasApi.pb.h", 11373, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x100000u;
      *(this + 40) = v30;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x200000) != 0)
    {
      v31 = *(a2 + 19);
      *(this + 43) |= 0x200000u;
      *(this + 19) = v31;
      v16 = *(a2 + 43);
    }

    if ((v16 & 0x400000) != 0)
    {
      v32 = *(a2 + 41);
      if (v32 >= 4)
      {
        __assert_rtn("set_sv_reference_point", "CLPGnssMeasApi.pb.h", 11418, "::CLP::LogEntry::PrivateData::SvReferencePoint_IsValid(value)");
      }

      *(this + 43) |= 0x400000u;
      *(this + 41) = v32;
    }
  }
}

void sub_10002DEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = result;
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

void sub_10002DFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(CLP::LogEntry::PrivateData::SvBandCorrections *this, const CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 6);
      if (v5 >= 0xD)
      {
        __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 10570, "::CLP::LogEntry::PrivateData::Band_IsValid(value)");
      }

      *(this + 11) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 11);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 2u;
      *(this + 1) = v6;
      v4 = *(a2 + 11);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 2);
    *(this + 11) |= 4u;
    *(this + 2) = v7;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_15:
      v9 = *(a2 + 7);
      if (v9 >= 3)
      {
        __assert_rtn("set_ionospheric_model", "CLPGnssMeasApi.pb.h", 10659, "::CLP::LogEntry::PrivateData::IonosphericCorrectionSource_IsValid(value)");
      }

      *(this + 11) |= 0x10u;
      *(this + 7) = v9;
      return;
    }

LABEL_14:
    v8 = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = v8;
    if ((*(a2 + 11) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_15;
  }
}

void sub_10002E120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvId::MergeFrom(CLP::LogEntry::PrivateData::SvId *this, const CLP::LogEntry::PrivateData::SvId *a2)
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
        v7 = *(CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
      }

      CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(v6, v7);
    }
  }
}

void sub_10002E244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(CLP::LogEntry::PrivateData::ConstellationId *this, const CLP::LogEntry::PrivateData::ConstellationId *a2)
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
      v6 = *(a2 + 4);
      *(this + 11) |= 1u;
      *(this + 4) = v6;
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

    *(this + 11) |= 2u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::GlonassId::MergeFrom(v7, v8);
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

void sub_10002E408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void GpsdInterfaceTelemeter::printSummary(GpsdInterfaceTelemeter *this)
{
  v1 = this;
  std::mutex::lock((this + 120));
  if (*(v1 + 200) != 1)
  {
    goto LABEL_43;
  }

  v2 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v30 = _Q0;
  v29 = vdupq_n_s64(0x412E848000000000uLL);
  v28 = v1;
  do
  {
    v8 = *(v1 + 5 * v2 + 2);
    if (v8)
    {
      v9 = "";
      if (v2 == 2)
      {
        v9 = "Ind";
      }

      if (v2 == 1)
      {
        v9 = "Rsp";
      }

      if (v2)
      {
        v10 = v9;
      }

      else
      {
        v10 = "Req";
      }

      do
      {
        __p[0] = 0;
        __p[1] = 0;
        v33 = 0;
        if (v2 == 2)
        {
          ProtobufUtil::stringify(v8[1].u32[0], buf);
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *buf;
          v33 = *&buf[16];
          v11 = -1.0;
          v12 = -1.0;
        }

        else
        {
          ProtobufUtil::stringify(v8[1].i32[0], buf);
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = *buf;
          v33 = *&buf[16];
          v13 = v8[1].i32[2];
          v12 = -1.0;
          if (v13 >= 1)
          {
            v31 = vdivq_f64(vcvtq_f64_u64(v8[3]), v29);
            v14 = v13;
            v11 = v8[2].u64[1] / 1000000.0 / v13;
            if (v2 || (v21 = v8[4].i64[1], v21 < 1))
            {
              v15 = -1.0;
              v16 = -1.0;
            }

            else
            {
              v12 = v8[5].i64[0] / 1000000.0;
              v16 = v21 / 1000000.0;
              v15 = v8[4].i64[0] / 1000000.0 / v14;
            }

            goto LABEL_22;
          }

          v11 = -1.0;
        }

        v15 = -1.0;
        v16 = -1.0;
        v31 = v30;
LABEL_22:
        v17 = GpsdLogObjectGeneral;
        if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
        {
          v18 = __p;
          if (v33 < 0)
          {
            v18 = __p[0];
          }

          v19 = v8[1].i32[2];
          v20 = v8[2].i64[0];
          *buf = 136448514;
          *&buf[4] = v10;
          *&buf[12] = 2082;
          *&buf[14] = v18;
          *&buf[22] = 1026;
          v35 = v19;
          v36 = 2050;
          v37 = v20;
          v38 = 2050;
          v39 = v31.f64[1];
          v40 = 2050;
          v41 = v11;
          v42 = 2050;
          v43 = v31.f64[0];
          v44 = 2050;
          v45 = v12;
          v46 = 2050;
          v47 = v15;
          v48 = 2050;
          v49 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "IfcTelem,%{public}s,%{public}s,count,%{public}d,bytes,%{public}zu,minDelayMs,%{public}.1f,meanDelayMs,%{public}.1f,maxDelayMs,%{public}.1f,minAgeMs,%{public}.1f,meanAgeMs,%{public}.1f,maxAgeMs,%{public}.1f", buf, 0x62u);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p[0]);
        }

        v8 = v8->i64[0];
      }

      while (v8);
    }

    ++v2;
    v1 = v28;
  }

  while (v2 != 3);
  for (i = 0; i != 3; ++i)
  {
    v23 = (v28 + 40 * i);
    if (v23[3])
    {
      v24 = v23[2];
      if (v24)
      {
        do
        {
          v25 = *v24;
          operator delete(v24);
          v24 = v25;
        }

        while (v25);
      }

      v23[2] = 0;
      v26 = v23[1];
      if (v26)
      {
        for (j = 0; j != v26; ++j)
        {
          *(*v23 + 8 * j) = 0;
        }
      }

      v23[3] = 0;
    }
  }

  *(v28 + 200) = 0;
LABEL_43:
  std::mutex::unlock((v1 + 120));
}

void sub_10002E7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((a10 + 120));
  _Unwind_Resume(a1);
}

void ProtobufUtil::stringify(unsigned int __val@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (__val >= 0x1C || ((0xFDFFE3Fu >> __val) & 1) == 0)
  {
    goto LABEL_6;
  }

  std::string::assign(a2, off_100173F08[__val]);
  v4 = *(a2 + 23);
  if (*(a2 + 23) < 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
LABEL_6:
    std::to_string(&__p, __val);
    v5 = std::string::insert(&__p, 0, "unknown_");
    v6 = v5->__r_.__value_.__r.__words[0];
    v10[0] = v5->__r_.__value_.__l.__size_;
    *(v10 + 7) = *(&v5->__r_.__value_.__r.__words[1] + 7);
    v7 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    v8 = v10[0];
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 15) = *(v10 + 7);
    *(a2 + 23) = v7;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10002E8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::ByteSize(CLP::LogEntry::PrivateData::MeasurementExtension *this, unsigned int a2)
{
  v3 = *(this + 29);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_57;
  }

  if ((v3 & 2) != 0)
  {
    v4 = ((v3 << 31 >> 31) & 5) + 5;
  }

  else
  {
    v4 = (v3 << 31 >> 31) & 5;
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(this + 2);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
    }

    v6 = CLP::LogEntry::PrivateData::FullSvTime::ByteSize(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    v4 += v7 + v8 + 1;
    v3 = *(this + 29);
    if ((v3 & 8) == 0)
    {
LABEL_7:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(this + 3);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  v10 = *(v9 + 24);
  v11 = (v10 << 31 >> 31) & 5;
  if ((v10 & 2) != 0)
  {
    v11 += 5;
  }

  if ((v10 & 4) != 0)
  {
    v11 += 5;
  }

  if (*(v9 + 24))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(v9 + 20) = v12;
  v4 += v12 + 2;
  v3 = *(this + 29);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_29:
  v13 = *(this + 4);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  v14 = *(v13 + 24);
  v15 = (v14 << 31 >> 31) & 5;
  if ((v14 & 2) != 0)
  {
    v15 += 5;
  }

  if ((v14 & 4) != 0)
  {
    v15 += 5;
  }

  if (*(v13 + 24))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *(v13 + 20) = v16;
  v4 += v16 + 2;
  v3 = *(this + 29);
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_39:
  v17 = *(this + 5);
  if (!v17)
  {
    v17 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
  }

  v18 = *(v17 + 24);
  v19 = (v18 << 31 >> 31) & 5;
  if ((v18 & 2) != 0)
  {
    v19 += 5;
  }

  if ((v18 & 4) != 0)
  {
    v19 += 5;
  }

  if (*(v17 + 24))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  *(v17 + 20) = v20;
  v4 += v20 + 2;
  v3 = *(this + 29);
  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_49:
  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x80) != 0)
  {
LABEL_53:
    v23 = *(this + 13);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v24 = 2;
    }

    v4 += v24;
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_100;
  }

  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_60;
    }

LABEL_68:
    v27 = *(this + 15);
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v28 = 2;
    }

    v4 += v28;
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

  v25 = *(this + 14);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = *(this + 29);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x200) != 0)
  {
    goto LABEL_68;
  }

LABEL_60:
  if ((v3 & 0x400) != 0)
  {
LABEL_74:
    v29 = *(this + 16);
    if ((v29 & 0x80000000) != 0)
    {
      v30 = 11;
    }

    else if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v30 = 2;
    }

    v4 += v30;
  }

LABEL_80:
  v31 = v4 + 5;
  if ((v3 & 0x800) == 0)
  {
    v31 = v4;
  }

  if ((v3 & 0x1000) != 0)
  {
    v4 = v31 + 5;
  }

  else
  {
    v4 = v31;
  }

  if ((v3 & 0x2000) != 0)
  {
    v32 = *(this + 10);
    v33 = *(v32 + 23);
    v34 = v33;
    v35 = *(v32 + 8);
    if ((v33 & 0x80u) == 0)
    {
      v36 = *(v32 + 23);
    }

    else
    {
      v36 = v35;
    }

    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
      v33 = *(v32 + 23);
      v35 = *(v32 + 8);
      v3 = *(this + 29);
      v34 = *(v32 + 23);
    }

    else
    {
      v37 = 1;
    }

    if (v34 < 0)
    {
      v33 = v35;
    }

    v4 += v37 + v33 + 1;
  }

  if ((v3 & 0x4000) != 0)
  {
    v38 = *(this + 19);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 1;
    }

    else
    {
      v39 = 2;
    }

    v4 += v39;
  }

LABEL_100:
  v40 = *(this + 24);
  v41 = (v4 + 2 * v40);
  if (v40 >= 1)
  {
    v42 = 0;
    do
    {
      v41 = v41 + CLP::LogEntry::PrivateData::SignalCorrelationPeak::ByteSize(*(*(this + 11) + 8 * v42++)) + 1;
    }

    while (v42 < *(this + 24));
  }

  *(this + 28) = v41;
  return v41;
}

uint64_t CLP::LogEntry::PrivateData::SignalCorrelationPeak::ByteSize(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this)
{
  LOBYTE(v1) = *(this + 32);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_25;
  }

  if (*(this + 32))
  {
    v2 = *(this + 1);
    if (!v2)
    {
      v2 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8);
    }

    v3 = *(v2 + 32);
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    v5 = v4 + ((v3 >> 1) & 2);
    if (*(v2 + 32))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    *(v2 + 28) = v6;
    LODWORD(v2) = v6 + 2;
    v1 = *(this + 8);
    if ((v1 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  LODWORD(v2) = 0;
  if ((*(this + 32) & 2) != 0)
  {
LABEL_14:
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 16);
    }

    v8 = *(v7 + 32);
    v9 = ((v8 << 31) >> 31) & 9;
    if ((v8 & 2) != 0)
    {
      v9 += 9;
    }

    v10 = v9 + ((v8 >> 1) & 2);
    if (*(v7 + 32))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    *(v7 + 28) = v11;
    LODWORD(v2) = v2 + v11 + 2;
    v1 = *(this + 8);
  }

LABEL_22:
  if ((v1 & 4) != 0)
  {
    v2 = (v2 + 5);
  }

  else
  {
    v2 = v2;
  }

LABEL_25:
  *(this + 7) = v2;
  return v2;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 112);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 112);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 112);
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
  v9 = *(v5 + 48);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_28:
  v10 = *(v5 + 56);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_31:
  v11 = *(v5 + 64);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_34:
  v12 = *(v5 + 72);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 84), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_42:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 104), a2, a4);
    if ((*(v5 + 112) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_43;
  }

LABEL_39:
  v13 = *(v5 + 88);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v13, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_42;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_43:
  v14 = *(v5 + 96);
  if (!v14)
  {
    v14 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v14, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::GalileoE1SyncState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t CLP::LogEntry::PrivateData::SvMeasurementUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v3 = a2;
  v4 = this;
  v5 = *(this + 24);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v3, *(v4 + 12), a3);
    if ((*(v4 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
  v5 = *(v4 + 24);
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
  v6 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, v3, v6, a3);
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 172);
  if (v6)
  {
    v11 = *(this + 8);
    if (!v11)
    {
      v11 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v11, a2, a4);
    v6 = *(v5 + 172);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  if ((*(v5 + 172) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 56), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  v8 = *(v5 + 172);
  if ((v8 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
    v8 = *(v5 + 172);
    if ((v8 & 0x20) == 0)
    {
LABEL_10:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_10;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 64), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x40) == 0)
  {
LABEL_11:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 72), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 60), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x100) == 0)
  {
LABEL_13:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 80), a3);
  v8 = *(v5 + 172);
  if ((v8 & 0x200) == 0)
  {
LABEL_14:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 84), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x400) == 0)
  {
LABEL_15:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 88), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x800) == 0)
  {
LABEL_16:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 92), a2, a4);
  v8 = *(v5 + 172);
  if ((v8 & 0x1000) == 0)
  {
LABEL_17:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 96), a2, a4);
  if ((*(v5 + 172) & 0x2000) != 0)
  {
LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 100), a2, a4);
  }

LABEL_19:
  if (*(v5 + 112) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 104) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 112));
  }

  v10 = *(v5 + 172);
  if ((v10 & 0x8000) != 0)
  {
    v12 = *(v5 + 128);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v12, a2, a4);
    v10 = *(v5 + 172);
    if ((v10 & 0x10000) == 0)
    {
LABEL_24:
      if ((v10 & 0x20000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_50;
    }
  }

  else if ((v10 & 0x10000) == 0)
  {
    goto LABEL_24;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 136), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x20000) == 0)
  {
LABEL_25:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 140), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x40000) == 0)
  {
LABEL_26:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 144), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x80000) == 0)
  {
LABEL_27:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x15, *(v5 + 148), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x100000) == 0)
  {
LABEL_28:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

LABEL_54:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 152), a3);
    if ((*(v5 + 172) & 0x400000) == 0)
    {
      return this;
    }

    goto LABEL_55;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 160), a2, a4);
  v10 = *(v5 + 172);
  if ((v10 & 0x200000) != 0)
  {
    goto LABEL_54;
  }

LABEL_29:
  if ((v10 & 0x400000) == 0)
  {
    return this;
  }

LABEL_55:
  v13 = *(v5 + 164);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x18, v13, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::GlonassId::ByteSize(CLP::LogEntry::PrivateData::GlonassId *this, unsigned int a2)
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
      v6 = *(CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    v7 = CLP::LogEntry::PrivateData::GlonassSlotInfo::ByteSize(v6, a2);
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

void CLP::LogEntry::PrivateData::Measurement::MergeFrom(CLP::LogEntry::PrivateData::Measurement *this, const CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 28);
  if (!v4)
  {
    goto LABEL_41;
  }

  if (v4)
  {
    *(this + 28) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::SvId::MergeFrom(v5, v6);
    v4 = *(a2 + 28);
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

  *(this + 28) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
  }

  CLP::LogEntry::PrivateData::SyncState::MergeFrom(v7, v8);
  v4 = *(a2 + 28);
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
  *(this + 28) |= 4u;
  *(this + 3) = v9;
  v4 = *(a2 + 28);
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
  v10 = *(a2 + 4);
  *(this + 28) |= 8u;
  *(this + 4) = v10;
  v4 = *(a2 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    *(this + 28) |= 0x20u;
    v12 = *(this + 6);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 6);
    if (!v13)
    {
      v13 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
    }

    CLP::LogEntry::PrivateData::SvTime::MergeFrom(v12, v13);
    v4 = *(a2 + 28);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_25:
  v11 = *(a2 + 5);
  *(this + 28) |= 0x10u;
  *(this + 5) = v11;
  v4 = *(a2 + 28);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  *(this + 28) |= 0x40u;
  v14 = *(this + 7);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 7);
  if (!v15)
  {
    v15 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v14, v15);
  v4 = *(a2 + 28);
  if ((v4 & 0x80) != 0)
  {
LABEL_36:
    *(this + 28) |= 0x80u;
    v16 = *(this + 8);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 8);
    if (!v17)
    {
      v17 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
    }

    CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(v16, v17);
    v4 = *(a2 + 28);
  }

LABEL_41:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 28) |= 0x100u;
    v18 = *(this + 9);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 9);
    if (!v19)
    {
      v19 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
    }

    CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(v18, v19);
    v4 = *(a2 + 28);
    if ((v4 & 0x200) == 0)
    {
LABEL_44:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_55;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v20 = *(a2 + 20);
  *(this + 28) |= 0x200u;
  *(this + 20) = v20;
  v4 = *(a2 + 28);
  if ((v4 & 0x400) == 0)
  {
LABEL_45:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_57;
  }

LABEL_55:
  v21 = *(a2 + 21);
  if (v21 >= 5)
  {
    __assert_rtn("set_multipath_indicator", "CLPGnssMeasApi.pb.h", 9802, "::CLP::LogEntry::PrivateData::MultipathIndicator_IsValid(value)");
  }

  *(this + 28) |= 0x400u;
  *(this + 21) = v21;
  v4 = *(a2 + 28);
  if ((v4 & 0x800) == 0)
  {
LABEL_46:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

LABEL_62:
    v24 = *(a2 + 104);
    *(this + 28) |= 0x1000u;
    *(this + 104) = v24;
    if ((*(a2 + 28) & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_63;
  }

LABEL_57:
  *(this + 28) |= 0x800u;
  v22 = *(this + 11);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 11);
  if (!v23)
  {
    v23 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
  }

  CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v22, v23);
  v4 = *(a2 + 28);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_62;
  }

LABEL_47:
  if ((v4 & 0x2000) == 0)
  {
    return;
  }

LABEL_63:
  *(this + 28) |= 0x2000u;
  v25 = *(this + 12);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 12);
  if (!v26)
  {
    v26 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
  }

  CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(v25, v26);
}

void sub_10002FA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::MeasurementExtension::~MeasurementExtension(CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  *this = off_100178308;
  v2 = (this + 88);
  CLP::LogEntry::PrivateData::MeasurementExtension::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::MeasurementExtension::~MeasurementExtension(this);

  operator delete();
}

void CLP::LogEntry::PrivateData::SignalCorrelationPeak::~SignalCorrelationPeak(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this)
{
  *this = off_1001781A0;
  CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_1001781A0;
  CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001781A0;
  CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *CLP::LogEntry::PrivateData::SignalCorrelationPeak::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ != this)
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

BOOL hasPhaseLock(uint64_t a1)
{
  v1 = *(a1 + 120);
  v4 = v1 != -1 && ((v2 = *(a1 + 128), v2 != -1) ? (v3 = v1 > v2) : (v3 = 1), !v3 && (*(a1 + 136) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && *(a1 + 144) > 0.0;
  return *(a1 + 144) < 5000.0 && v4;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

_DWORD *gnss::Convert::TranslateMeasurementUsage(_DWORD *result, int *a2)
{
  v2 = *a2;
  result[2] = *a2;
  v3 = result[6];
  v4 = v3 | 1;
  result[6] = v3 | 1;
  if ((v2 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v5 = a2[1];
    v6 = a2[2];
    if ((v6 & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v5 & 0x7FFFFFFFu) < 0x7F800000 == (v6 & 0x7FFFFFFFu) < 0x7F800000)
    {
      v4 = v3 | 5;
      result[6] = v3 | 5;
      result[4] = v6;
    }

    v8 = ((v5 & 0x7FFFFFFFu) < 0x7F800000) ^ ((v6 & 0x7FFFFFFFu) < 0x7F800000);
    if ((v5 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      result[6] = v4 | 2;
      result[3] = v5;
    }
  }

  return result;
}

void CLP::LogEntry::PrivateData::SyncState::MergeFrom(CLP::LogEntry::PrivateData::SyncState *this, const CLP::LogEntry::PrivateData::SyncState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    v5 = *(a2 + 22);
    if (v5 >= 0xD)
    {
      __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 7929, "::CLP::LogEntry::PrivateData::Band_IsValid(value)");
    }

    *(this + 24) |= 1u;
    *(this + 22) = v5;
    v4 = *(a2 + 24);
  }

  if ((v4 & 2) != 0)
  {
    *(this + 24) |= 2u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(v6, v7);
    v4 = *(a2 + 24);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(this + 24) |= 4u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 16);
  }

  CLP::LogEntry::PrivateData::GpsL2CSyncState::MergeFrom(v8, v9);
  v4 = *(a2 + 24);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_25:
  *(this + 24) |= 8u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
  }

  CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(v10, v11);
  v4 = *(a2 + 24);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_35:
    *(this + 24) |= 0x20u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      v15 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
    }

    CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(v14, v15);
    v4 = *(a2 + 24);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_30:
  *(this + 24) |= 0x10u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
  }

  CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(v12, v13);
  v4 = *(a2 + 24);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_40:
  *(this + 24) |= 0x40u;
  v16 = *(this + 6);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 6);
  if (!v17)
  {
    v17 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
  }

  CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(v16, v17);
  v4 = *(a2 + 24);
  if ((v4 & 0x80) != 0)
  {
LABEL_45:
    *(this + 24) |= 0x80u;
    v18 = *(this + 7);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 7);
    if (!v19)
    {
      v19 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
    }

    CLP::LogEntry::PrivateData::GalileoE1SyncState::MergeFrom(v18, v19);
    v4 = *(a2 + 24);
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 24) |= 0x100u;
    v20 = *(this + 8);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 8);
    if (!v21)
    {
      v21 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
    }

    CLP::LogEntry::PrivateData::GalileoE5SyncState::MergeFrom(v20, v21);
    v4 = *(a2 + 24);
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_65;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  *(this + 24) |= 0x200u;
  v22 = *(this + 9);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 9);
  if (!v23)
  {
    v23 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
  }

  CLP::LogEntry::PrivateData::SbasL1SyncState::MergeFrom(v22, v23);
  if ((*(a2 + 24) & 0x400) != 0)
  {
LABEL_65:
    *(this + 24) |= 0x400u;
    v24 = *(this + 10);
    if (!v24)
    {
      operator new();
    }

    v25 = *(a2 + 10);
    if (!v25)
    {
      v25 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
    }

    CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(v24, v25);
  }
}

void sub_100030338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(CLP::LogEntry::PrivateData::GpsL1SyncState *this, const CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
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

void sub_100030444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::SvTime::MergeFrom(CLP::LogEntry::PrivateData::SvTime *this, const CLP::LogEntry::PrivateData::SvTime *a2)
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
      result = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 8) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    v6 = *(a2 + 24);
    *(this + 8) |= 4u;
    *(this + 24) = v6;
  }

  return result;
}

void sub_100030530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(CLP::LogEntry::PrivateData::FrequencyOffset *this, const CLP::LogEntry::PrivateData::FrequencyOffset *a2)
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
      result = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 8) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 8) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    v6 = *(a2 + 24);
    *(this + 8) |= 4u;
    *(this + 24) = v6;
  }

  return result;
}

void sub_10003061C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GpsL5SyncState::MergeFrom(CLP::LogEntry::PrivateData::GpsL5SyncState *this, const CLP::LogEntry::PrivateData::GpsL5SyncState *a2)
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

void sub_100030728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(CLP::LogEntry::PrivateData::PhaseTracking *this, const CLP::LogEntry::PrivateData::PhaseTracking *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v7 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v7;
      v5 = *(a2 + 12);
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

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 2);
    *(this + 12) |= 2u;
    *(this + 2) = v8;
    v5 = *(a2 + 12);
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
    result = *(a2 + 3);
    *(this + 12) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 12);
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
    result = *(a2 + 4);
    *(this + 12) |= 8u;
    *(this + 4) = result;
    if ((*(a2 + 12) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 40);
    *(this + 12) |= 0x10u;
    *(this + 40) = v6;
  }

  return result;
}

void sub_100030854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(CLP::LogEntry::PrivateData::MeasurementExtension *this, const CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88), *(a2 + 24) + *(this + 24));
  LODWORD(v4) = *(a2 + 24);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
      }

      v6 = *(*(a2 + 11) + 8 * v5);
      v7 = *(this + 25);
      v8 = *(this + 24);
      if (v8 >= v7)
      {
        if (v7 == *(this + 26))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88), v7 + 1);
          v7 = *(this + 25);
        }

        *(this + 25) = v7 + 1;
        operator new();
      }

      v9 = *(this + 11);
      *(this + 24) = v8 + 1;
      CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 24);
    }

    while (v5 < v4);
  }

  v10 = *(a2 + 29);
  if (!v10)
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v15 = *(a2 + 2);
    *(this + 29) |= 1u;
    *(this + 2) = v15;
    v10 = *(a2 + 29);
    if ((v10 & 2) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 3);
  *(this + 29) |= 2u;
  *(this + 3) = v16;
  v10 = *(a2 + 29);
  if ((v10 & 4) == 0)
  {
LABEL_17:
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_39:
  *(this + 29) |= 4u;
  v17 = *(this + 2);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 2);
  if (!v18)
  {
    v18 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
  }

  CLP::LogEntry::PrivateData::FullSvTime::MergeFrom(v17, v18);
  v10 = *(a2 + 29);
  if ((v10 & 8) == 0)
  {
LABEL_18:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_44:
  *(this + 29) |= 8u;
  v19 = *(this + 3);
  if (!v19)
  {
    operator new();
  }

  v20 = *(a2 + 3);
  if (!v20)
  {
    v20 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(v19, v20);
  v10 = *(a2 + 29);
  if ((v10 & 0x10) == 0)
  {
LABEL_19:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_54:
    *(this + 29) |= 0x20u;
    v23 = *(this + 5);
    if (!v23)
    {
      operator new();
    }

    v24 = *(a2 + 5);
    if (!v24)
    {
      v24 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
    }

    CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(v23, v24);
    v10 = *(a2 + 29);
    if ((v10 & 0x40) == 0)
    {
LABEL_21:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_59;
  }

LABEL_49:
  *(this + 29) |= 0x10u;
  v21 = *(this + 4);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 4);
  if (!v22)
  {
    v22 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  CLP::LogEntry::PrivateData::SvMeasurementUsage::MergeFrom(v21, v22);
  v10 = *(a2 + 29);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_20:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_59:
  v25 = *(a2 + 12);
  *(this + 29) |= 0x40u;
  *(this + 12) = v25;
  v10 = *(a2 + 29);
  if ((v10 & 0x80) != 0)
  {
LABEL_22:
    v11 = *(a2 + 13);
    *(this + 29) |= 0x80u;
    *(this + 13) = v11;
    v10 = *(a2 + 29);
  }

LABEL_23:
  if ((v10 & 0xFF00) == 0)
  {
    return;
  }

  if ((v10 & 0x100) != 0)
  {
    v12 = *(a2 + 14);
    if (v12 >= 7)
    {
      __assert_rtn("set_sv_time_detection_method", "CLPGnssMeasApi.pb.h", 9229, "::CLP::LogEntry::PrivateData::MeasurementDetectionMethod_IsValid(value)");
    }

    *(this + 29) |= 0x100u;
    *(this + 14) = v12;
    v10 = *(a2 + 29);
  }

  if ((v10 & 0x200) != 0)
  {
    v13 = *(a2 + 15);
    if (v13 >= 7)
    {
      __assert_rtn("set_frequency_detection_method", "CLPGnssMeasApi.pb.h", 9252, "::CLP::LogEntry::PrivateData::MeasurementDetectionMethod_IsValid(value)");
    }

    *(this + 29) |= 0x200u;
    *(this + 15) = v13;
    v10 = *(a2 + 29);
  }

  if ((v10 & 0x400) != 0)
  {
    v26 = *(a2 + 16);
    *(this + 29) |= 0x400u;
    *(this + 16) = v26;
    v10 = *(a2 + 29);
    if ((v10 & 0x800) == 0)
    {
LABEL_32:
      if ((v10 & 0x1000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_63;
    }
  }

  else if ((v10 & 0x800) == 0)
  {
    goto LABEL_32;
  }

  v27 = *(a2 + 17);
  *(this + 29) |= 0x800u;
  *(this + 17) = v27;
  v10 = *(a2 + 29);
  if ((v10 & 0x1000) == 0)
  {
LABEL_33:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v28 = *(a2 + 18);
  *(this + 29) |= 0x1000u;
  *(this + 18) = v28;
  v10 = *(a2 + 29);
  if ((v10 & 0x2000) == 0)
  {
LABEL_34:
    if ((v10 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_64:
  v29 = *(a2 + 10);
  *(this + 29) |= 0x2000u;
  v30 = *(this + 10);
  if (v30 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v30, v29);
  if ((*(a2 + 29) & 0x4000) != 0)
  {
LABEL_35:
    v14 = *(a2 + 19);
    *(this + 29) |= 0x4000u;
    *(this + 19) = v14;
  }
}

void sub_100030DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergeFrom(CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, const CLP::LogEntry::PrivateData::GlonassL1fSyncState *a2)
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

void sub_100030F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::GlonassId::~GlonassId(CLP::LogEntry::PrivateData::GlonassId *this)
{
  *this = off_1001779A8;
  if (CLP::LogEntry::PrivateData::GlonassId::default_instance_ != this)
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
  CLP::LogEntry::PrivateData::GlonassId::~GlonassId(this);

  operator delete();
}

void CLP::LogEntry::PrivateData::GlonassSlotInfo::~GlonassSlotInfo(CLP::LogEntry::PrivateData::GlonassSlotInfo *this)
{
  *this = off_100177930;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

{
  *this = off_100177930;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100177930;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

double CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergeFrom(CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, const CLP::LogEntry::PrivateData::SignalCorrelationPeak *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        v7 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8);
      }

      result = CLP::LogEntry::PrivateData::SvTime::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
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

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 8) |= 2u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 16);
    }

    result = CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v8, v9);
    if ((*(a2 + 8) & 4) != 0)
    {
LABEL_7:
      LODWORD(result) = *(a2 + 6);
      *(this + 8) |= 4u;
      *(this + 6) = LODWORD(result);
    }
  }

  return result;
}

void sub_1000311E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::BeidouB2SyncState::MergeFrom(CLP::LogEntry::PrivateData::BeidouB2SyncState *this, const CLP::LogEntry::PrivateData::BeidouB2SyncState *a2)
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

void sub_1000312F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::BeidouB1SyncState::MergeFrom(CLP::LogEntry::PrivateData::BeidouB1SyncState *this, const CLP::LogEntry::PrivateData::BeidouB1SyncState *a2)
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