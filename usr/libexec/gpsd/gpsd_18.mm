double CLP::LogEntry::PrivateData::Clock::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::Clock *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::Clock::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::Clock::CopyFrom(CLP::LogEntry::PrivateData::Clock *this, const CLP::LogEntry::PrivateData::Clock *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::Clock::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Clock::Swap(uint64_t this, CLP::LogEntry::PrivateData::Clock *a2)
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
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CLP::LogEntry::PrivateData::MeasurementReport *CLP::LogEntry::PrivateData::MeasurementReport::MeasurementReport(CLP::LogEntry::PrivateData::MeasurementReport *this, const CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  *(this + 5) = 0;
  *this = off_1001785D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, a2);
  return this;
}

void sub_1000D8E24(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void *CLP::LogEntry::PrivateData::MeasurementReport::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::default_instance(CLP::LogEntry::PrivateData::MeasurementReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReport::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::Clear(CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
    if (v2)
    {
      CLP::LogEntry::PrivateData::Clock::Clear(v2);
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::MeasurementReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 11) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v31 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31))
        {
          return 0;
        }
      }

      else
      {
        v31 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v31);
      if (!CLP::LogEntry::PrivateData::Clock::MergePartialFromCodedStream(v8, a2, v13) || *(a2 + 36) != 1)
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
        do
        {
          *(a2 + 1) = v17 + 1;
LABEL_27:
          v18 = *(this + 7);
          v19 = *(this + 6);
          if (v19 >= v18)
          {
            if (v18 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), v18 + 1);
              v18 = *(this + 7);
            }

            *(this + 7) = v18 + 1;
            operator new();
          }

          v20 = *(this + 2);
          *(this + 6) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v32 = 0;
          v22 = *(a2 + 1);
          if (v22 >= *(a2 + 2) || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
            {
              return 0;
            }
          }

          else
          {
            v32 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v23 = *(a2 + 14);
          v24 = *(a2 + 15);
          *(a2 + 14) = v23 + 1;
          if (v23 >= v24)
          {
            return 0;
          }

          v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v32);
          if (!CLP::LogEntry::PrivateData::Measurement::MergePartialFromCodedStream(v21, a2, v26) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v25);
          v27 = *(a2 + 14);
          v15 = __OFSUB__(v27, 1);
          v28 = v27 - 1;
          if (v28 < 0 == v15)
          {
            *(a2 + 14) = v28;
          }

          v17 = *(a2 + 1);
          v29 = *(a2 + 2);
        }

        while (v17 < v29 && *v17 == 18);
        if (v17 == v29 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

double CLP::LogEntry::PrivateData::MeasurementReport::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::MeasurementReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::MeasurementReport::CopyFrom(CLP::LogEntry::PrivateData::MeasurementReport *this, const CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, a2);
  }

  return result;
}

CLP::LogEntry::PrivateData::MeasurementReport *CLP::LogEntry::PrivateData::MeasurementReport::Swap(CLP::LogEntry::PrivateData::MeasurementReport *this, CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 16), (a2 + 16));
    v5 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::SharedCtor(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::Wgs84Ecef *CLP::LogEntry::PrivateData::Wgs84Ecef::Wgs84Ecef(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  *this = off_100178650;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance(CLP::LogEntry::PrivateData::Wgs84Ecef *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_;
  if (!CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::Wgs84Ecef *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 9) |= 4u;
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

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 9) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 9) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
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

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::ByteSize(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  v1 = *(this + 36);
  if (*(this + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 8) = v1;
  return v1;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::CopyFrom(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::Swap(CLP::LogEntry::PrivateData::Wgs84Ecef *this, CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
  }

  return result;
}

double CLP::LogEntry::PrivateData::SvBandCorrections::SharedCtor(CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::SvBandCorrections *CLP::LogEntry::PrivateData::SvBandCorrections::SvBandCorrections(CLP::LogEntry::PrivateData::SvBandCorrections *this, const CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  *this = off_1001786C8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::default_instance(CLP::LogEntry::PrivateData::SvBandCorrections *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvBandCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          goto LABEL_34;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v19[0] = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v19);
          if (!result)
          {
            return result;
          }

          v12 = v19[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 <= 0xC)
        {
          *(this + 11) |= 1u;
          *(this + 6) = v12;
        }

        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 17)
        {
          *(a2 + 1) = v14 + 1;
LABEL_34:
          *v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = *v19;
          *(this + 11) |= 2u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 25)
          {
            *(a2 + 1) = v15 + 1;
LABEL_38:
            *v19 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
            {
              return 0;
            }

            *(this + 2) = *v19;
            *(this + 11) |= 4u;
            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 33)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_42;
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

        goto LABEL_38;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_42:
      *v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v19) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v19;
      *(this + 11) |= 8u;
      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v17 < v9 && *v17 == 40)
      {
        v10 = v17 + 1;
        *(a2 + 1) = v10;
LABEL_46:
        v19[0] = 0;
        if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v19);
          if (!result)
          {
            return result;
          }

          v18 = v19[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v18 <= 2)
        {
          *(this + 11) |= 0x10u;
          *(this + 7) = v18;
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
      goto LABEL_46;
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

void CLP::LogEntry::PrivateData::SvBandCorrections::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvBandCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SvBandCorrections::CopyFrom(CLP::LogEntry::PrivateData::SvBandCorrections *this, const CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, a2);
  }
}

double CLP::LogEntry::PrivateData::SvBandCorrections::Swap(CLP::LogEntry::PrivateData::SvBandCorrections *this, CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
    v8 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v8;
  }

  return result;
}

void *CLP::LogEntry::PrivateData::SvPositionAtTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CLP::LogEntry::PrivateData::SvPositionAtTime *CLP::LogEntry::PrivateData::SvPositionAtTime::SvPositionAtTime(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  *this = off_100178740;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, a2);
  return this;
}

void *CLP::LogEntry::PrivateData::SvPositionAtTime::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance(CLP::LogEntry::PrivateData::SvPositionAtTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvPositionAtTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v7 != 1)
        {
          goto LABEL_14;
        }

        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v20) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = v20;
        v8 = *(this + 7) | 1;
        *(this + 7) = v8;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 18)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_18;
        }
      }

      if (v7 == 2)
      {
        break;
      }

LABEL_14:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    v8 = *(this + 7);
LABEL_18:
    *(this + 7) = v8 | 2;
    v10 = *(this + 2);
    if (!v10)
    {
      operator new();
    }

    v21 = 0;
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v11;
      *(a2 + 1) = v11 + 1;
    }

    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    *(a2 + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v21);
    if (!CLP::LogEntry::PrivateData::Wgs84Ecef::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::CopyFrom(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::Swap(CLP::LogEntry::PrivateData::SvPositionAtTime *this, CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 != this)
  {
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return result;
}

void *CLP::LogEntry::PrivateData::PolynomialOrbit::SharedCtor(void *this)
{
  this[9] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

CLP::LogEntry::PrivateData::PolynomialOrbit *CLP::LogEntry::PrivateData::PolynomialOrbit::PolynomialOrbit(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  *this = off_1001787B8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, a2);
  return this;
}

void sub_1000DA54C(_Unwind_Exception *a1)
{
  if (*(v1 + 7))
  {
    operator delete[]();
  }

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

double CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 3, *(this + 8) + v5);
    memcpy((*(this + 3) + 8 * *(this + 8)), *(a2 + 3), 8 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v6 = *(a2 + 12);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 5, *(this + 12) + v6);
    memcpy((*(this + 5) + 8 * *(this + 12)), *(a2 + 5), 8 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 7, *(this + 16) + v7);
    memcpy((*(this + 7) + 8 * *(this + 16)), *(a2 + 7), 8 * *(a2 + 16));
    *(this + 16) += *(a2 + 16);
  }

  LOBYTE(v8) = *(a2 + 76);
  if (v8)
  {
    if (*(a2 + 76))
    {
      result = *(a2 + 1);
      *(this + 19) |= 1u;
      *(this + 1) = result;
      v8 = *(a2 + 19);
    }

    if ((v8 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 19) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1000DA724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::PolynomialOrbit::~PolynomialOrbit(CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  *this = off_1001787B8;
  if (*(this + 7))
  {
    operator delete[]();
  }

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
  CLP::LogEntry::PrivateData::PolynomialOrbit::~PolynomialOrbit(this);

  operator delete();
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance(CLP::LogEntry::PrivateData::PolynomialOrbit *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  if (!CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::Clear(uint64_t this)
{
  if (*(this + 76))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 76) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::PolynomialOrbit *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (v7 != 2)
      {
        if (v7 != 3 || v8 != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }

      if (v8 != 1)
      {
        goto LABEL_27;
      }

      v45[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v45) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v45[0];
      *(this + 19) |= 1u;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 25)
      {
        *(a2 + 1) = v10 + 1;
LABEL_34:
        v45[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v45) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v45[0];
        *(this + 19) |= 2u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 33)
        {
LABEL_37:
          *(a2 + 1) = v11 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v7 != 4)
    {
      break;
    }

    if (v8 == 1)
    {
LABEL_38:
      v45[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v45) & 1) == 0)
      {
        return 0;
      }

      v12 = v45[0];
      v13 = *(this + 8);
      if (v13 == *(this + 9))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 3, v13 + 1);
        v13 = *(this + 8);
      }

      v14 = *(this + 3);
      v15 = v13 + 1;
      *(this + 8) = v13 + 1;
      *(v14 + 8 * v13) = v12;
      v16 = *(a2 + 1);
      v17 = *(a2 + 4) - v16;
      if (v17 >= 1)
      {
        v18 = v17 / 9u;
        v19 = v18 >= *(this + 9) - v15 ? *(this + 9) - v15 : v18;
        if (v19 >= 1)
        {
          v20 = 0;
          while (*v16 == 33)
          {
            v21 = *(v16 + 1);
            if (v15 >= *(this + 9))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
              v15 = *(this + 8);
              v14 = *(this + 3);
            }

            *(this + 8) = v15 + 1;
            *(v14 + 8 * v15) = v21;
            ++v20;
            v16 += 9;
            ++v15;
            if (v19 == v20)
            {
              v20 = v19;
              goto LABEL_53;
            }
          }

          if (!v20)
          {
            goto LABEL_54;
          }

LABEL_53:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2, 9 * v20);
        }
      }

LABEL_54:
      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2))
      {
        v22 = *v11;
        if (v22 == 33)
        {
          goto LABEL_37;
        }

        if (v22 == 41)
        {
          while (1)
          {
            *(a2 + 1) = v11 + 1;
LABEL_58:
            v45[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v45) & 1) == 0)
            {
              return 0;
            }

            v23 = v45[0];
            v24 = *(this + 12);
            if (v24 == *(this + 13))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 5, v24 + 1);
              v24 = *(this + 12);
            }

            v25 = *(this + 5);
            v26 = v24 + 1;
            *(this + 12) = v24 + 1;
            *(v25 + 8 * v24) = v23;
            v27 = *(a2 + 1);
            v28 = *(a2 + 4) - v27;
            if (v28 >= 1)
            {
              v29 = v28 / 9u;
              v30 = v29 >= *(this + 13) - v26 ? *(this + 13) - v26 : v29;
              if (v30 >= 1)
              {
                v31 = 0;
                while (*v27 == 41)
                {
                  v32 = *(v27 + 1);
                  if (v26 >= *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
                    v26 = *(this + 12);
                    v25 = *(this + 5);
                  }

                  *(this + 12) = v26 + 1;
                  *(v25 + 8 * v26) = v32;
                  ++v31;
                  v27 += 9;
                  ++v26;
                  if (v30 == v31)
                  {
                    v31 = v30;
                    goto LABEL_73;
                  }
                }

                if (!v31)
                {
                  goto LABEL_74;
                }

LABEL_73:
                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2, 9 * v31);
              }
            }

LABEL_74:
            v11 = *(a2 + 1);
            if (v11 >= *(a2 + 2))
            {
              break;
            }

            v33 = *v11;
            if (v33 != 41)
            {
              if (v33 == 49)
              {
                do
                {
                  *(a2 + 1) = v11 + 1;
LABEL_78:
                  v45[0] = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v45) & 1) == 0)
                  {
                    return 0;
                  }

                  v34 = v45[0];
                  v35 = *(this + 16);
                  if (v35 == *(this + 17))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 7, v35 + 1);
                    v35 = *(this + 16);
                  }

                  v36 = *(this + 7);
                  v37 = v35 + 1;
                  *(this + 16) = v35 + 1;
                  *(v36 + 8 * v35) = v34;
                  v38 = *(a2 + 1);
                  v39 = *(a2 + 4) - v38;
                  if (v39 >= 1)
                  {
                    v40 = v39 / 9u;
                    v41 = v40 >= *(this + 17) - v37 ? *(this + 17) - v37 : v40;
                    if (v41 >= 1)
                    {
                      v42 = 0;
                      while (*v38 == 49)
                      {
                        v43 = *(v38 + 1);
                        if (v37 >= *(this + 17))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v45);
                          v37 = *(this + 16);
                          v36 = *(this + 7);
                        }

                        *(this + 16) = v37 + 1;
                        *(v36 + 8 * v37) = v43;
                        ++v42;
                        v38 += 9;
                        ++v37;
                        if (v41 == v42)
                        {
                          v42 = v41;
                          goto LABEL_93;
                        }
                      }

                      if (!v42)
                      {
                        goto LABEL_94;
                      }

LABEL_93:
                      wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2, 9 * v42);
                    }
                  }

LABEL_94:
                  v11 = *(a2 + 1);
                  v44 = *(a2 + 2);
                }

                while (v11 < v44 && *v11 == 49);
                if (v11 == v44 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }

              goto LABEL_1;
            }
          }
        }
      }
    }

    else
    {
      if (v8 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(a2, this + 24);
        if (!result)
        {
          return result;
        }

        goto LABEL_54;
      }

LABEL_27:
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

  if (v7 == 5)
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(a2, this + 40);
        if (!result)
        {
          return result;
        }

        goto LABEL_74;
      }

      goto LABEL_27;
    }

    goto LABEL_58;
  }

  if (v7 != 6)
  {
    goto LABEL_27;
  }

  if (v8 == 1)
  {
    goto LABEL_78;
  }

  if (v8 != 2)
  {
    goto LABEL_27;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(a2, this + 56);
  if (result)
  {
    goto LABEL_94;
  }

  return result;
}

void sub_1000DAE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }

    v5 = v11;
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_11:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
    return 1;
  }

  else
  {
    while (1)
    {
      v12 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12);
      if (!result)
      {
        break;
      }

      v8 = v12;
      v9 = *(a2 + 8);
      if (v9 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(a2, v9 + 1);
        v9 = *(a2 + 8);
      }

      v10 = *a2;
      *(a2 + 8) = v9 + 1;
      *(v10 + 8 * v9) = v8;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v3 = a2;
  v4 = this;
  v5 = *(this + 76);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(this + 8), a3);
    v5 = *(v4 + 76);
  }

  if ((v5 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v3, *(v4 + 16), a3);
  }

  if (*(v4 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v3, *(*(v4 + 24) + 8 * v6++), a3);
    }

    while (v6 < *(v4 + 32));
  }

  if (*(v4 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, v3, *(*(v4 + 40) + 8 * v7++), a3);
    }

    while (v7 < *(v4 + 48));
  }

  if (*(v4 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, v3, *(*(v4 + 56) + 8 * v8++), a3);
    }

    while (v8 < *(v4 + 64));
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::ByteSize(CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  v1 = *(this + 76);
  v2 = (v1 << 31 >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if (*(this + 76))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = (9 * (*(this + 12) + *(this + 8) + *(this + 16)) + v3);
  *(this + 18) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::CopyFrom(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::Swap(CLP::LogEntry::PrivateData::PolynomialOrbit *this, CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
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
    v5 = *(a2 + 4);
    *(a2 + 3) = v4;
    v6 = *(this + 4);
    *(this + 4) = v5;
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v8 = *(a2 + 6);
    *(a2 + 5) = v7;
    v9 = *(this + 6);
    *(this + 6) = v8;
    *(a2 + 6) = v9;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    result = *(a2 + 8);
    *(a2 + 7) = v10;
    v12 = *(this + 8);
    *(this + 8) = result;
    *(a2 + 8) = v12;
    LODWORD(v10) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v10;
    LODWORD(v10) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v10;
  }

  return result;
}

double CLP::LogEntry::PrivateData::SvInfo::SharedCtor(CLP::LogEntry::PrivateData::SvInfo *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::SvInfo *CLP::LogEntry::PrivateData::SvInfo::SvInfo(CLP::LogEntry::PrivateData::SvInfo *this, const CLP::LogEntry::PrivateData::SvInfo *a2)
{
  *this = off_100178830;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  CLP::LogEntry::PrivateData::SvInfo::MergeFrom(this, a2);
  return this;
}

void sub_1000DB3A8(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 13);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::default_instance(CLP::LogEntry::PrivateData::SvInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 172);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 172);
      }
    }

    *(v1 + 16) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    if ((v2 & 0x8000) != 0)
    {
      v3 = *(v1 + 128);
      if (v3)
      {
        if (*(v3 + 76))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 32) = 0;
        *(v3 + 48) = 0;
        *(v3 + 64) = 0;
        *(v3 + 76) = 0;
        v2 = *(v1 + 172);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 152) = 0u;
    *(v1 + 136) = 0u;
  }

  if (*(v1 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 24) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 32));
  }

  *(v1 + 32) = 0;
  if (*(v1 + 112) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 104) + 8 * v6);
      this = (*(*v7 + 32))(v7);
      ++v6;
    }

    while (v6 < *(v1 + 112));
  }

  *(v1 + 112) = 0;
  *(v1 + 172) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
LABEL_1:
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
        if (v7 != 2)
        {
          goto LABEL_56;
        }

        *(this + 43) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v106[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106))
          {
            return 0;
          }
        }

        else
        {
          v106[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        *(a2 + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v106[0]);
        if (!CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v8, a2, v37) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v36);
        v38 = *(a2 + 14);
        v39 = __OFSUB__(v38, 1);
        v40 = v38 - 1;
        if (v40 < 0 == v39)
        {
          *(a2 + 14) = v40;
        }

        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 != 17)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
        goto LABEL_69;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_56;
        }

LABEL_69:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v106) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v106;
        *(this + 43) |= 2u;
        v42 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v42 >= v16 || *v42 != 24)
        {
          continue;
        }

        v17 = v42 + 1;
        *(a2 + 1) = v17;
LABEL_73:
        v106[0] = 0;
        if (v17 >= v16 || (v43 = *v17, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v43 = v106[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v43 <= 6)
        {
          *(this + 43) |= 4u;
          *(this + 14) = v43;
        }

        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 != 34)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v45 + 1;
LABEL_83:
          v46 = *(this + 9);
          v47 = *(this + 8);
          if (v47 >= v46)
          {
            if (v46 == *(this + 10))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v46 + 1);
              v46 = *(this + 9);
            }

            *(this + 9) = v46 + 1;
            operator new();
          }

          v48 = *(this + 3);
          *(this + 8) = v47 + 1;
          v49 = *(v48 + 8 * v47);
          v106[0] = 0;
          v50 = *(a2 + 1);
          if (v50 >= *(a2 + 2) || *v50 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106))
            {
              return 0;
            }
          }

          else
          {
            v106[0] = *v50;
            *(a2 + 1) = v50 + 1;
          }

          v51 = *(a2 + 14);
          v52 = *(a2 + 15);
          *(a2 + 14) = v51 + 1;
          if (v51 >= v52)
          {
            return 0;
          }

          v53 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v106[0]);
          if (!CLP::LogEntry::PrivateData::SvPositionAtTime::MergePartialFromCodedStream(v49, a2, v54) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v53);
          v55 = *(a2 + 14);
          v39 = __OFSUB__(v55, 1);
          v56 = v55 - 1;
          if (v56 < 0 == v39)
          {
            *(a2 + 14) = v56;
          }

          v45 = *(a2 + 1);
          if (v45 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v57 = *v45;
        }

        while (v57 == 34);
        if (v57 != 41)
        {
          continue;
        }

        *(a2 + 1) = v45 + 1;
LABEL_101:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v106) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v106;
        *(this + 43) |= 0x10u;
        v58 = *(a2 + 1);
        if (v58 >= *(a2 + 2) || *v58 != 49)
        {
          continue;
        }

        *(a2 + 1) = v58 + 1;
LABEL_105:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v106) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v106;
        *(this + 43) |= 0x20u;
        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 57)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_109:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v106) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v106;
        *(this + 43) |= 0x40u;
        v60 = *(a2 + 1);
        if (v60 >= *(a2 + 2) || *v60 != 69)
        {
          continue;
        }

        *(a2 + 1) = v60 + 1;
LABEL_113:
        v106[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v106) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = v106[0];
        *(this + 43) |= 0x80u;
        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 != 77)
        {
          continue;
        }

        *(a2 + 1) = v61 + 1;
LABEL_117:
        v106[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v106) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = v106[0];
        *(this + 43) |= 0x100u;
        v62 = *(a2 + 1);
        v26 = *(a2 + 2);
        if (v62 >= v26 || *v62 != 80)
        {
          continue;
        }

        v27 = v62 + 1;
        *(a2 + 1) = v27;
LABEL_121:
        v106[0] = 0;
        if (v27 >= v26 || (v63 = *v27, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v63 = v106[0];
        }

        else
        {
          *(a2 + 1) = v27 + 1;
        }

        if (v63 <= 4)
        {
          *(this + 43) |= 0x200u;
          *(this + 21) = v63;
        }

        v64 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v64 >= v14 || *v64 != 88)
        {
          continue;
        }

        v15 = v64 + 1;
        *(a2 + 1) = v15;
LABEL_131:
        v106[0] = 0;
        if (v15 >= v14 || (v65 = *v15, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v65 = v106[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v65 <= 4)
        {
          *(this + 43) |= 0x400u;
          *(this + 22) = v65;
        }

        v66 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v66 >= v24 || *v66 != 96)
        {
          continue;
        }

        v25 = v66 + 1;
        *(a2 + 1) = v25;
LABEL_141:
        v106[0] = 0;
        if (v25 >= v24 || (v67 = *v25, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v67 = v106[0];
        }

        else
        {
          *(a2 + 1) = v25 + 1;
        }

        if (v67 <= 4)
        {
          *(this + 43) |= 0x800u;
          *(this + 23) = v67;
        }

        v68 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v68 >= v20 || *v68 != 104)
        {
          continue;
        }

        v21 = v68 + 1;
        *(a2 + 1) = v21;
LABEL_151:
        v106[0] = 0;
        if (v21 >= v20 || (v69 = *v21, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v69 = v106[0];
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v69 <= 4)
        {
          *(this + 43) |= 0x1000u;
          *(this + 24) = v69;
        }

        v70 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v70 >= v12 || *v70 != 112)
        {
          continue;
        }

        v13 = v70 + 1;
        *(a2 + 1) = v13;
LABEL_161:
        v106[0] = 0;
        if (v13 >= v12 || (v71 = *v13, (v71 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v71 = v106[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v71 <= 4)
        {
          *(this + 43) |= 0x2000u;
          *(this + 25) = v71;
        }

        v72 = *(a2 + 1);
        if (v72 >= *(a2 + 2) || *v72 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v72 + 1;
LABEL_171:
          v73 = *(this + 29);
          v74 = *(this + 28);
          if (v74 >= v73)
          {
            if (v73 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104), v73 + 1);
              v73 = *(this + 29);
            }

            *(this + 29) = v73 + 1;
            operator new();
          }

          v75 = *(this + 13);
          *(this + 28) = v74 + 1;
          v76 = *(v75 + 8 * v74);
          v106[0] = 0;
          v77 = *(a2 + 1);
          if (v77 >= *(a2 + 2) || *v77 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106))
            {
              return 0;
            }
          }

          else
          {
            v106[0] = *v77;
            *(a2 + 1) = v77 + 1;
          }

          v78 = *(a2 + 14);
          v79 = *(a2 + 15);
          *(a2 + 14) = v78 + 1;
          if (v78 >= v79)
          {
            return 0;
          }

          v80 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v106[0]);
          if (!CLP::LogEntry::PrivateData::SvBandCorrections::MergePartialFromCodedStream(v76, a2, v81) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v80);
          v82 = *(a2 + 14);
          v39 = __OFSUB__(v82, 1);
          v83 = v82 - 1;
          if (v83 < 0 == v39)
          {
            *(a2 + 14) = v83;
          }

          v72 = *(a2 + 1);
          v84 = *(a2 + 2);
        }

        while (v72 < v84 && *v72 == 122);
        if (v84 - v72 < 2 || *v72 != 130 || v72[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v72 + 2;
LABEL_191:
        *(this + 43) |= 0x8000u;
        v85 = *(this + 16);
        if (!v85)
        {
          operator new();
        }

        v106[0] = 0;
        v86 = *(a2 + 1);
        if (v86 >= *(a2 + 2) || *v86 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106))
          {
            return 0;
          }
        }

        else
        {
          v106[0] = *v86;
          *(a2 + 1) = v86 + 1;
        }

        v87 = *(a2 + 14);
        v88 = *(a2 + 15);
        *(a2 + 14) = v87 + 1;
        if (v87 >= v88)
        {
          return 0;
        }

        v89 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v106[0]);
        if (!CLP::LogEntry::PrivateData::PolynomialOrbit::MergePartialFromCodedStream(v85, a2, v90) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v89);
        v91 = *(a2 + 14);
        v39 = __OFSUB__(v91, 1);
        v92 = v91 - 1;
        if (v92 < 0 == v39)
        {
          *(a2 + 14) = v92;
        }

        v93 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v30 - v93 <= 1 || *v93 != 144 || v93[1] != 1)
        {
          continue;
        }

        v31 = (v93 + 2);
        *(a2 + 1) = v31;
LABEL_206:
        v106[0] = 0;
        if (v31 >= v30 || (v94 = *v31, (v94 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v94 = v106[0];
        }

        else
        {
          *(a2 + 1) = v31 + 1;
        }

        if (v94 <= 4)
        {
          *(this + 43) |= 0x10000u;
          *(this + 34) = v94;
        }

        v95 = *(a2 + 1);
        v28 = *(a2 + 2);
        if (v28 - v95 < 2 || *v95 != 152 || v95[1] != 1)
        {
          continue;
        }

        v29 = (v95 + 2);
        *(a2 + 1) = v29;
LABEL_217:
        v106[0] = 0;
        if (v29 >= v28 || (v96 = *v29, (v96 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v96 = v106[0];
        }

        else
        {
          *(a2 + 1) = v29 + 1;
        }

        if (v96 <= 4)
        {
          *(this + 43) |= 0x20000u;
          *(this + 35) = v96;
        }

        v97 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v10 - v97 < 2 || *v97 != 160 || v97[1] != 1)
        {
          continue;
        }

        v11 = (v97 + 2);
        *(a2 + 1) = v11;
LABEL_228:
        v106[0] = 0;
        if (v11 >= v10 || (v98 = *v11, (v98 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v98 = v106[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v98 <= 4)
        {
          *(this + 43) |= 0x40000u;
          *(this + 36) = v98;
        }

        v99 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v99 < 2 || *v99 != 168 || v99[1] != 1)
        {
          continue;
        }

        v23 = (v99 + 2);
        *(a2 + 1) = v23;
LABEL_239:
        v106[0] = 0;
        if (v23 >= v22 || (v100 = *v23, (v100 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v100 = v106[0];
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v100 <= 4)
        {
          *(this + 43) |= 0x80000u;
          *(this + 37) = v100;
        }

        v101 = *(a2 + 1);
        v32 = *(a2 + 2);
        if (v32 - v101 < 2 || *v101 != 176 || v101[1] != 1)
        {
          continue;
        }

        v33 = (v101 + 2);
        *(a2 + 1) = v33;
LABEL_250:
        v106[0] = 0;
        if (v33 >= v32 || (v102 = *v33, (v102 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
          if (!result)
          {
            return result;
          }

          v102 = v106[0];
        }

        else
        {
          *(a2 + 1) = v33 + 1;
        }

        if (v102 <= 4)
        {
          *(this + 43) |= 0x100000u;
          *(this + 40) = v102;
        }

        v103 = *(a2 + 1);
        if (*(a2 + 4) - v103 < 2 || *v103 != 185 || v103[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v103 + 2;
LABEL_261:
        *v106 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v106))
        {
          *(this + 19) = *v106;
          *(this + 43) |= 0x200000u;
          v104 = *(a2 + 1);
          v18 = *(a2 + 2);
          if (v18 - v104 >= 2 && *v104 == 192 && v104[1] == 1)
          {
            v19 = (v104 + 2);
            *(a2 + 1) = v19;
LABEL_266:
            v106[0] = 0;
            if (v19 >= v18 || (v105 = *v19, (v105 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v106);
              if (!result)
              {
                return result;
              }

              v105 = v106[0];
            }

            else
            {
              *(a2 + 1) = v19 + 1;
            }

            if (v105 <= 3)
            {
              *(this + 43) |= 0x400000u;
              *(this + 41) = v105;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_73;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_83;
        }

        goto LABEL_56;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_56;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_56;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_109;
        }

        goto LABEL_56;
      case 8u:
        if (v7 == 5)
        {
          goto LABEL_113;
        }

        goto LABEL_56;
      case 9u:
        if (v7 == 5)
        {
          goto LABEL_117;
        }

        goto LABEL_56;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v27 = *(a2 + 1);
        v26 = *(a2 + 2);
        goto LABEL_121;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_131;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_161;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_56;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_191;
        }

        goto LABEL_56;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_206;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_217;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_228;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_239;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_250;
      case 0x17u:
        if (v7 == 1)
        {
          goto LABEL_261;
        }

        goto LABEL_56;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_266;
      default:
LABEL_56:
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

void CLP::LogEntry::PrivateData::SvInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SvInfo::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SvInfo::CopyFrom(CLP::LogEntry::PrivateData::SvInfo *this, const CLP::LogEntry::PrivateData::SvInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SvInfo::MergeFrom(this, a2);
  }
}

double CLP::LogEntry::PrivateData::SvInfo::Swap(CLP::LogEntry::PrivateData::SvInfo *this, CLP::LogEntry::PrivateData::SvInfo *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    LODWORD(v4) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 24), (a2 + 24));
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    LODWORD(v8) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v8;
    LODWORD(v8) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v8;
    v9 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v9;
    v10 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v10;
    v11 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v11;
    v12 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v12;
    v13 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v13;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 104), (a2 + 104));
    v14 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v14;
    LODWORD(v14) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v14;
    LODWORD(v14) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v14;
    LODWORD(v14) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v14;
    LODWORD(v14) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v14;
    LODWORD(v14) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v14;
    result = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = result;
    LODWORD(v14) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v14;
    LODWORD(v14) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v14;
    LODWORD(v14) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v14;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::ReceiverBandCorrections *CLP::LogEntry::PrivateData::ReceiverBandCorrections::ReceiverBandCorrections(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  *this = off_1001788A8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

LABEL_34:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v15[0];
          *(this + 8) |= 4u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 37)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_20;
          }

LABEL_38:
          v15[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v15[0];
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

      v15[0] = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
        if (!result)
        {
          return result;
        }

        v10 = v15[0];
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v10 <= 0xC)
      {
        *(this + 8) |= 1u;
        *(this + 4) = v10;
      }

      v12 = *(a2 + 1);
      if (v12 < *(a2 + 2) && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_30:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v15;
        *(this + 8) |= 2u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 29)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_34;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_30;
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

float CLP::LogEntry::PrivateData::ReceiverBandCorrections::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::ReceiverBandCorrections::CopyFrom(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, const CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::ReceiverBandCorrections::Swap(CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, CLP::LogEntry::PrivateData::ReceiverBandCorrections *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::LeapSecondChange *CLP::LogEntry::PrivateData::LeapSecondChange::LeapSecondChange(CLP::LogEntry::PrivateData::LeapSecondChange *this, const CLP::LogEntry::PrivateData::LeapSecondChange *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100178920;
  *(this + 6) = 0;
  CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(CLP::LogEntry::PrivateData::LeapSecondChange *this, const CLP::LogEntry::PrivateData::LeapSecondChange *a2)
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

void sub_1000DCDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::LeapSecondChange::~LeapSecondChange(CLP::LogEntry::PrivateData::LeapSecondChange *this)
{
  *this = off_100178920;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178920;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178920;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::default_instance(CLP::LogEntry::PrivateData::LeapSecondChange *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::LeapSecondChange *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        *(this + 4) = v12;
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

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1], a2) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_13:
  *(this + 5) = v3;
  return v3;
}

void CLP::LogEntry::PrivateData::LeapSecondChange::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::LeapSecondChange *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::LeapSecondChange::CopyFrom(CLP::LogEntry::PrivateData::LeapSecondChange *this, const CLP::LogEntry::PrivateData::LeapSecondChange *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::LeapSecondChange::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondChange::Swap(uint64_t this, CLP::LogEntry::PrivateData::LeapSecondChange *a2)
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

void *CLP::LogEntry::PrivateData::LeapSecondInfo::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CLP::LogEntry::PrivateData::LeapSecondInfo *CLP::LogEntry::PrivateData::LeapSecondInfo::LeapSecondInfo(CLP::LogEntry::PrivateData::LeapSecondInfo *this, const CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
{
  *this = off_100178998;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(this, a2);
  return this;
}

void *CLP::LogEntry::PrivateData::LeapSecondInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance(CLP::LogEntry::PrivateData::LeapSecondInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 24))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 24) = 0;
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::LeapSecondInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 == 2)
          {
            goto LABEL_34;
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 7) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(a2 + 1) = v13;
          goto LABEL_24;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_24:
      v26 = 0;
      if (v13 >= v9 || (v15 = *v13, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
        if (!result)
        {
          return result;
        }

        v15 = v26;
      }

      else
      {
        *(a2 + 1) = v13 + 1;
      }

      if (v15 <= 4)
      {
        *(this + 7) |= 2u;
        *(this + 3) = v15;
      }

      v16 = *(a2 + 1);
    }

    while (v16 >= *(a2 + 2) || *v16 != 26);
    *(a2 + 1) = v16 + 1;
LABEL_34:
    *(this + 7) |= 4u;
    v17 = *(this + 2);
    if (!v17)
    {
      operator new();
    }

    v27 = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
      {
        return 0;
      }
    }

    else
    {
      v27 = *v18;
      *(a2 + 1) = v18 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v27);
    if (!CLP::LogEntry::PrivateData::LeapSecondChange::MergePartialFromCodedStream(v17, a2, v22) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v21);
    v23 = *(a2 + 14);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
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

void CLP::LogEntry::PrivateData::LeapSecondInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::LeapSecondInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::LeapSecondInfo::CopyFrom(CLP::LogEntry::PrivateData::LeapSecondInfo *this, const CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::LeapSecondInfo::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::LeapSecondInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::LeapSecondInfo *a2)
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
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
  }

  return this;
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::SharedCtor(CLP::LogEntry::PrivateData::GpsToUtcConversion *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::GpsToUtcConversion *CLP::LogEntry::PrivateData::GpsToUtcConversion::GpsToUtcConversion(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
{
  *this = off_100178A10;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsToUtcConversion::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsToUtcConversion::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            goto LABEL_20;
          }

LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v16;
          *(this + 11) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 33)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v16;
          *(this + 11) |= 8u;
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

      *(this + 11) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(a2 + 1) = v12 + 1;
LABEL_28:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v16;
        *(this + 11) |= 2u;
        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 25)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
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

double CLP::LogEntry::PrivateData::GpsToUtcConversion::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::CopyFrom(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, const CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::GpsToUtcConversion::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::GpsToUtcConversion::Swap(CLP::LogEntry::PrivateData::GpsToUtcConversion *this, CLP::LogEntry::PrivateData::GpsToUtcConversion *a2)
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
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::GpsTimeInfo *CLP::LogEntry::PrivateData::GpsTimeInfo::GpsTimeInfo(CLP::LogEntry::PrivateData::GpsTimeInfo *this, const CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  *this = off_100178A88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance(CLP::LogEntry::PrivateData::GpsTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    *(this + 24) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 44))
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 44) = 0;
      }
    }
  }

  *(v1 + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GpsTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_16;
        }

        v13 = *(this + 8);
LABEL_24:
        *(this + 8) = v13 | 2;
        v15 = *(this + 1);
        if (!v15)
        {
          operator new();
        }

        v33 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
          {
            return 0;
          }
        }

        else
        {
          v33 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v33);
        if (!CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v15, a2, v20) || *(a2 + 36) != 1)
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
LABEL_38:
          *(this + 8) |= 4u;
          v25 = *(this + 2);
          if (!v25)
          {
            operator new();
          }

          v34 = 0;
          v26 = *(a2 + 1);
          if (v26 >= *(a2 + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
            {
              return 0;
            }
          }

          else
          {
            v34 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v27 = *(a2 + 14);
          v28 = *(a2 + 15);
          *(a2 + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v34);
          if (!CLP::LogEntry::PrivateData::GpsToUtcConversion::MergePartialFromCodedStream(v25, a2, v30) || *(a2 + 36) != 1)
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

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v13 = *(this + 8) | 1;
        *(this + 8) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_38;
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
}

double CLP::LogEntry::PrivateData::GpsTimeInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GpsTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::GpsTimeInfo::CopyFrom(CLP::LogEntry::PrivateData::GpsTimeInfo *this, const CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::GpsTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GpsTimeInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::GpsTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
  }

  return this;
}

void *CLP::LogEntry::PrivateData::GlonassSubsecondConversion::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CLP::LogEntry::PrivateData::GlonassSubsecondConversion *CLP::LogEntry::PrivateData::GlonassSubsecondConversion::GlonassSubsecondConversion(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  *this = off_100178B00;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSubsecondConversion::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v13;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 1)
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

double CLP::LogEntry::PrivateData::GlonassSubsecondConversion::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::GlonassSubsecondConversion::CopyFrom(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, const CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::GlonassSubsecondConversion::Swap(CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, CLP::LogEntry::PrivateData::GlonassSubsecondConversion *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

double CLP::LogEntry::PrivateData::GlonassTimeInfo::SharedCtor(CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::GlonassTimeInfo *CLP::LogEntry::PrivateData::GlonassTimeInfo::GlonassTimeInfo(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  *this = off_100178B78;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 32) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(this + 40);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v3 = *(this + 24);
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

  *(this + 40) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          if (v7 != 1)
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_21;
            }

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
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

          *(this + 10) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v10 = v14 + 1;
            *(a2 + 1) = v10;
LABEL_32:
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

            *(this + 10) |= 2u;
            if (v17 < v9 && *v17 == 24)
            {
              v11 = v17 + 1;
              *(a2 + 1) = v11;
              goto LABEL_40;
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
        v9 = *(a2 + 2);
LABEL_40:
        v38 = 0;
        if (v11 >= v9 || (v18 = *v11, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
          if (!result)
          {
            return result;
          }

          v18 = v38;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v18 <= 5)
        {
          *(this + 10) |= 4u;
          *(this + 8) = v18;
        }

        v19 = *(a2 + 1);
        if (v19 < *(a2 + 2) && *v19 == 34)
        {
          *(a2 + 1) = v19 + 1;
LABEL_50:
          *(this + 10) |= 8u;
          v20 = *(this + 2);
          if (!v20)
          {
            operator new();
          }

          v39 = 0;
          v21 = *(a2 + 1);
          if (v21 >= *(a2 + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
            {
              return 0;
            }
          }

          else
          {
            v39 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v22 = *(a2 + 14);
          v23 = *(a2 + 15);
          *(a2 + 14) = v22 + 1;
          if (v22 >= v23)
          {
            return 0;
          }

          v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v39);
          if (!CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(v20, a2, v25) || *(a2 + 36) != 1)
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
            goto LABEL_64;
          }
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 == 2)
      {
        goto LABEL_50;
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

    if (v7 != 5 || v8 != 2)
    {
      goto LABEL_21;
    }

LABEL_64:
    *(this + 10) |= 0x10u;
    v30 = *(this + 3);
    if (!v30)
    {
      operator new();
    }

    v40 = 0;
    v31 = *(a2 + 1);
    if (v31 >= *(a2 + 2) || *v31 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
      {
        return 0;
      }
    }

    else
    {
      v40 = *v31;
      *(a2 + 1) = v31 + 1;
    }

    v32 = *(a2 + 14);
    v33 = *(a2 + 15);
    *(a2 + 14) = v32 + 1;
    if (v32 >= v33)
    {
      return 0;
    }

    v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v40);
    if (!CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(v30, a2, v35) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

double CLP::LogEntry::PrivateData::GlonassTimeInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::GlonassTimeInfo::CopyFrom(CLP::LogEntry::PrivateData::GlonassTimeInfo *this, const CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::GlonassTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GlonassTimeInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::GlonassTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
  }

  return this;
}

double CLP::LogEntry::PrivateData::SubSecondConversion::SharedCtor(CLP::LogEntry::PrivateData::SubSecondConversion *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::SubSecondConversion *CLP::LogEntry::PrivateData::SubSecondConversion::SubSecondConversion(CLP::LogEntry::PrivateData::SubSecondConversion *this, const CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  *this = off_100178BF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SubSecondConversion::default_instance(CLP::LogEntry::PrivateData::SubSecondConversion *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SubSecondConversion::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SubSecondConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

double CLP::LogEntry::PrivateData::SubSecondConversion::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SubSecondConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SubSecondConversion::CopyFrom(CLP::LogEntry::PrivateData::SubSecondConversion *this, const CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SubSecondConversion::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::SubSecondConversion::Swap(CLP::LogEntry::PrivateData::SubSecondConversion *this, CLP::LogEntry::PrivateData::SubSecondConversion *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

double CLP::LogEntry::PrivateData::BeidouTimeInfo::SharedCtor(CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  *(this + 14) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::BeidouTimeInfo *CLP::LogEntry::PrivateData::BeidouTimeInfo::BeidouTimeInfo(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  *this = off_100178C68;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 56);
  if (v2)
  {
    *(this + 48) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(this);
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(v1 + 32);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
        v2 = *(v1 + 56);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v6 = *(v1 + 40);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
      }
    }
  }

  *(v1 + 56) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_62;
            }

            goto LABEL_26;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_26;
            }

LABEL_76:
            *(this + 14) |= 0x10u;
            v43 = *(this + 4);
            if (!v43)
            {
              operator new();
            }

            v60 = 0;
            v44 = *(a2 + 1);
            if (v44 >= *(a2 + 2) || *v44 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
              {
                return 0;
              }
            }

            else
            {
              v60 = *v44;
              *(a2 + 1) = v44 + 1;
            }

            v45 = *(a2 + 14);
            v46 = *(a2 + 15);
            *(a2 + 14) = v45 + 1;
            if (v45 >= v46)
            {
              return 0;
            }

            v47 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v60);
            if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v43, a2, v48) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v47);
            v49 = *(a2 + 14);
            v22 = __OFSUB__(v49, 1);
            v50 = v49 - 1;
            if (v50 < 0 == v22)
            {
              *(a2 + 14) = v50;
            }

            v51 = *(a2 + 1);
            if (v51 < *(a2 + 2) && *v51 == 50)
            {
              *(a2 + 1) = v51 + 1;
              goto LABEL_90;
            }
          }

          else
          {
            if (v7 != 6 || v8 != 2)
            {
              goto LABEL_26;
            }

LABEL_90:
            *(this + 14) |= 0x20u;
            v52 = *(this + 5);
            if (!v52)
            {
              operator new();
            }

            v60 = 0;
            v53 = *(a2 + 1);
            if (v53 >= *(a2 + 2) || *v53 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
              {
                return 0;
              }
            }

            else
            {
              v60 = *v53;
              *(a2 + 1) = v53 + 1;
            }

            v54 = *(a2 + 14);
            v55 = *(a2 + 15);
            *(a2 + 14) = v54 + 1;
            if (v54 >= v55)
            {
              return 0;
            }

            v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v60);
            if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v52, a2, v57) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v56);
            v58 = *(a2 + 14);
            v22 = __OFSUB__(v58, 1);
            v59 = v58 - 1;
            if (v59 < 0 == v22)
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
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        v13 = *(this + 14) | 1;
        *(this + 14) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_34;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_26;
      }

      v13 = *(this + 14);
LABEL_34:
      *(this + 14) = v13 | 2;
      v15 = *(this + 1);
      if (!v15)
      {
        operator new();
      }

      v60 = 0;
      v16 = *(a2 + 1);
      if (v16 >= *(a2 + 2) || *v16 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
        {
          return 0;
        }
      }

      else
      {
        v60 = *v16;
        *(a2 + 1) = v16 + 1;
      }

      v17 = *(a2 + 14);
      v18 = *(a2 + 15);
      *(a2 + 14) = v17 + 1;
      if (v17 >= v18)
      {
        return 0;
      }

      v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v60);
      if (!CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v15, a2, v20) || *(a2 + 36) != 1)
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
LABEL_48:
        *(this + 14) |= 4u;
        v25 = *(this + 2);
        if (!v25)
        {
          operator new();
        }

        v60 = 0;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
          {
            return 0;
          }
        }

        else
        {
          v60 = *v26;
          *(a2 + 1) = v26 + 1;
        }

        v27 = *(a2 + 14);
        v28 = *(a2 + 15);
        *(a2 + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v60);
        if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v25, a2, v30) || *(a2 + 36) != 1)
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
LABEL_62:
          *(this + 14) |= 8u;
          v34 = *(this + 3);
          if (!v34)
          {
            operator new();
          }

          v60 = 0;
          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
            {
              return 0;
            }
          }

          else
          {
            v60 = *v35;
            *(a2 + 1) = v35 + 1;
          }

          v36 = *(a2 + 14);
          v37 = *(a2 + 15);
          *(a2 + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v60);
          if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v34, a2, v39) || *(a2 + 36) != 1)
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

          v42 = *(a2 + 1);
          if (v42 < *(a2 + 2) && *v42 == 42)
          {
            *(a2 + 1) = v42 + 1;
            goto LABEL_76;
          }
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_48;
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
}

double CLP::LogEntry::PrivateData::BeidouTimeInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::BeidouTimeInfo::CopyFrom(CLP::LogEntry::PrivateData::BeidouTimeInfo *this, const CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::BeidouTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::BeidouTimeInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::BeidouTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
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
    LODWORD(v7) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v7;
    LODWORD(v7) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v7;
  }

  return this;
}

double CLP::LogEntry::PrivateData::GalileoTimeInfo::SharedCtor(CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::GalileoTimeInfo *CLP::LogEntry::PrivateData::GalileoTimeInfo::GalileoTimeInfo(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  *this = off_100178CE0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    *(this + 32) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::LeapSecondInfo::Clear(this);
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 4) != 0)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(v1 + 40);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(v1 + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
      }
    }
  }

  *(v1 + 40) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v13 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v12;
              v13 = v11 + 1;
              *(a2 + 1) = v13;
            }

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
            v15 = *(this + 1);
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
            if (!CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v15, a2, v20) || *(a2 + 36) != 1)
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
        *(this + 10) |= 4u;
        v25 = *(this + 2);
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
        if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v25, a2, v30) || *(a2 + 36) != 1)
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
      *(this + 10) |= 8u;
      v34 = *(this + 3);
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
      if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v34, a2, v39) || *(a2 + 36) != 1)
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

double CLP::LogEntry::PrivateData::GalileoTimeInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::GalileoTimeInfo::CopyFrom(CLP::LogEntry::PrivateData::GalileoTimeInfo *this, const CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::GalileoTimeInfo::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::GalileoTimeInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::GalileoTimeInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
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

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::NavicTimeInfo *CLP::LogEntry::PrivateData::NavicTimeInfo::NavicTimeInfo(CLP::LogEntry::PrivateData::NavicTimeInfo *this, const CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100178D58;
  *(this + 6) = 0;
  CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(this, a2);
  return this;
}

void *CLP::LogEntry::PrivateData::NavicTimeInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance(CLP::LogEntry::PrivateData::NavicTimeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    if (*(this + 24))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::NavicTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
    if (!CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v8, a2, v15) || *(a2 + 36) != 1)
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

void CLP::LogEntry::PrivateData::NavicTimeInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::NavicTimeInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::NavicTimeInfo::CopyFrom(CLP::LogEntry::PrivateData::NavicTimeInfo *this, const CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::NavicTimeInfo::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::NavicTimeInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::NavicTimeInfo *a2)
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

double CLP::LogEntry::PrivateData::TimeConversionInfo::SharedCtor(CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::TimeConversionInfo *CLP::LogEntry::PrivateData::TimeConversionInfo::TimeConversionInfo(CLP::LogEntry::PrivateData::TimeConversionInfo *this, const CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
{
  *this = off_100178DD0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance(CLP::LogEntry::PrivateData::TimeConversionInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    if (*(this + 52))
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::GpsTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::GlonassTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::BeidouTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::GalileoTimeInfo::Clear(this);
        v2 = *(v1 + 52);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::NavicTimeInfo::Clear(this);
      }
    }
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::TimeConversionInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(this + 13) |= 8u;
          v37 = *(this + 4);
          if (!v37)
          {
            operator new();
          }

          v55 = 0;
          v38 = *(a2 + 1);
          if (v38 >= *(a2 + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v38;
            *(a2 + 1) = v38 + 1;
          }

          v39 = *(a2 + 14);
          v40 = *(a2 + 15);
          *(a2 + 14) = v39 + 1;
          if (v39 >= v40)
          {
            return 0;
          }

          v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v55);
          if (!CLP::LogEntry::PrivateData::GalileoTimeInfo::MergePartialFromCodedStream(v37, a2, v42) || *(a2 + 36) != 1)
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

          v45 = *(a2 + 1);
          if (v45 < *(a2 + 2) && *v45 == 42)
          {
            *(a2 + 1) = v45 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_80:
          *(this + 13) |= 0x10u;
          v46 = *(this + 5);
          if (!v46)
          {
            operator new();
          }

          v55 = 0;
          v47 = *(a2 + 1);
          if (v47 >= *(a2 + 2) || *v47 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v47;
            *(a2 + 1) = v47 + 1;
          }

          v48 = *(a2 + 14);
          v49 = *(a2 + 15);
          *(a2 + 14) = v48 + 1;
          if (v48 >= v49)
          {
            return 0;
          }

          v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v55);
          if (!CLP::LogEntry::PrivateData::NavicTimeInfo::MergePartialFromCodedStream(v46, a2, v51) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v50);
          v52 = *(a2 + 14);
          v16 = __OFSUB__(v52, 1);
          v53 = v52 - 1;
          if (v53 < 0 == v16)
          {
            *(a2 + 14) = v53;
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
        goto LABEL_21;
      }

      *(this + 13) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v55 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
        {
          return 0;
        }
      }

      else
      {
        v55 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v55);
      if (!CLP::LogEntry::PrivateData::GpsTimeInfo::MergePartialFromCodedStream(v9, a2, v14) || *(a2 + 36) != 1)
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
LABEL_38:
        *(this + 13) |= 2u;
        v19 = *(this + 2);
        if (!v19)
        {
          operator new();
        }

        v55 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
          {
            return 0;
          }
        }

        else
        {
          v55 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v55);
        if (!CLP::LogEntry::PrivateData::GlonassTimeInfo::MergePartialFromCodedStream(v19, a2, v24) || *(a2 + 36) != 1)
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
LABEL_52:
          *(this + 13) |= 4u;
          v28 = *(this + 3);
          if (!v28)
          {
            operator new();
          }

          v55 = 0;
          v29 = *(a2 + 1);
          if (v29 >= *(a2 + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v55))
            {
              return 0;
            }
          }

          else
          {
            v55 = *v29;
            *(a2 + 1) = v29 + 1;
          }

          v30 = *(a2 + 14);
          v31 = *(a2 + 15);
          *(a2 + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v55);
          if (!CLP::LogEntry::PrivateData::BeidouTimeInfo::MergePartialFromCodedStream(v28, a2, v33) || *(a2 + 36) != 1)
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
            goto LABEL_66;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_38;
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

void CLP::LogEntry::PrivateData::TimeConversionInfo::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::TimeConversionInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::TimeConversionInfo::CopyFrom(CLP::LogEntry::PrivateData::TimeConversionInfo *this, const CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::TimeConversionInfo::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::TimeConversionInfo::Swap(uint64_t this, CLP::LogEntry::PrivateData::TimeConversionInfo *a2)
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
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

double CLP::LogEntry::PrivateData::KlobucharModelParameters::SharedCtor(CLP::LogEntry::PrivateData::KlobucharModelParameters *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::KlobucharModelParameters *CLP::LogEntry::PrivateData::KlobucharModelParameters::KlobucharModelParameters(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
{
  *this = off_100178E48;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_;
  if (!CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::KlobucharModelParameters::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::KlobucharModelParameters::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v7 != 3)
          {
            if (v7 != 4 || v8 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }

          if (v8 != 5)
          {
            goto LABEL_37;
          }

LABEL_49:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v21;
          *(this + 13) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 37)
          {
            *(a2 + 1) = v15 + 1;
LABEL_53:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = v21;
            *(this + 13) |= 8u;
            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 45)
            {
              *(a2 + 1) = v16 + 1;
LABEL_57:
              v21 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = v21;
              *(this + 13) |= 0x10u;
              v17 = *(a2 + 1);
              if (v17 < *(a2 + 2) && *v17 == 53)
              {
                *(a2 + 1) = v17 + 1;
LABEL_61:
                v21 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = v21;
                *(this + 13) |= 0x20u;
                v18 = *(a2 + 1);
                if (v18 < *(a2 + 2) && *v18 == 61)
                {
                  *(a2 + 1) = v18 + 1;
LABEL_65:
                  v21 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 9) = v21;
                  *(this + 13) |= 0x40u;
                  v19 = *(a2 + 1);
                  if (v19 < *(a2 + 2) && *v19 == 69)
                  {
                    *(a2 + 1) = v19 + 1;
                    goto LABEL_69;
                  }
                }
              }
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

            goto LABEL_45;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
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

          *(this + 13) |= 1u;
          if (v12 < v9 && *v12 == 21)
          {
            *(a2 + 1) = v12 + 1;
LABEL_45:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = v21;
            *(this + 13) |= 2u;
            v14 = *(a2 + 1);
            if (v14 < *(a2 + 2) && *v14 == 29)
            {
              *(a2 + 1) = v14 + 1;
              goto LABEL_49;
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
        if (v8 != 5)
        {
          goto LABEL_37;
        }

        goto LABEL_65;
      }

      if (v7 == 8)
      {
        if (v8 != 5)
        {
          goto LABEL_37;
        }

LABEL_69:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = v21;
        *(this + 13) |= 0x80u;
        v20 = *(a2 + 1);
        if (v20 < *(a2 + 2) && *v20 == 77)
        {
          *(a2 + 1) = v20 + 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 5)
        {
          goto LABEL_37;
        }

LABEL_73:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = v21;
        *(this + 13) |= 0x100u;
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
      if (v8 != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_57;
    }

    if (v7 == 6 && v8 == 5)
    {
      goto LABEL_61;
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

float CLP::LogEntry::PrivateData::KlobucharModelParameters::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::KlobucharModelParameters::CopyFrom(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, const CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::KlobucharModelParameters::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::KlobucharModelParameters::Swap(CLP::LogEntry::PrivateData::KlobucharModelParameters *this, CLP::LogEntry::PrivateData::KlobucharModelParameters *a2)
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
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v9;
    result = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = result;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
  }

  return result;
}

double CLP::LogEntry::PrivateData::SfcfXyz::SharedCtor(CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::SfcfXyz *CLP::LogEntry::PrivateData::SfcfXyz::SfcfXyz(CLP::LogEntry::PrivateData::SfcfXyz *this, const CLP::LogEntry::PrivateData::SfcfXyz *a2)
{
  *this = off_100178EC0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(CLP::LogEntry::PrivateData::SfcfXyz *this, const CLP::LogEntry::PrivateData::SfcfXyz *a2)
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

void sub_1000E2380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SfcfXyz::~SfcfXyz(CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  *this = off_100178EC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178EC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178EC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t CLP::LogEntry::PrivateData::SfcfXyz::default_instance(CLP::LogEntry::PrivateData::SfcfXyz *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SfcfXyz::default_instance_;
  if (!CLP::LogEntry::PrivateData::SfcfXyz::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SfcfXyz::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SfcfXyz::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::SfcfXyz::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SfcfXyz *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 9) |= 4u;
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

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 9) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 9) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
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

uint64_t CLP::LogEntry::PrivateData::SfcfXyz::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t CLP::LogEntry::PrivateData::SfcfXyz::ByteSize(CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  v1 = *(this + 36);
  if (*(this + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 8) = v1;
  return v1;
}

double CLP::LogEntry::PrivateData::SfcfXyz::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SfcfXyz *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SfcfXyz::CopyFrom(CLP::LogEntry::PrivateData::SfcfXyz *this, const CLP::LogEntry::PrivateData::SfcfXyz *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::SfcfXyz::Swap(CLP::LogEntry::PrivateData::SfcfXyz *this, CLP::LogEntry::PrivateData::SfcfXyz *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
  }

  return result;
}

double CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedCtor(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::AntennaPhaseCenterSvOffset(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
{
  *this = off_100178F38;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
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
        v7 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8);
      }

      CLP::LogEntry::PrivateData::SvId::MergeFrom(v6, v7);
      v5 = *(a2 + 9);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 4);
      if (v8 >= 0xD)
      {
        __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 13136, "::CLP::LogEntry::PrivateData::Band_IsValid(value)");
      }

      *(this + 9) |= 2u;
      *(this + 4) = v8;
      v5 = *(a2 + 9);
    }

    if ((v5 & 4) != 0)
    {
      v9 = *(a2 + 5);
      if (v9 >= 4)
      {
        __assert_rtn("set_sv_reference_point", "CLPGnssMeasApi.pb.h", 13159, "::CLP::LogEntry::PrivateData::SvReferencePoint_IsValid(value)");
      }

      *(this + 9) |= 4u;
      *(this + 5) = v9;
      v5 = *(a2 + 9);
    }

    if ((v5 & 8) != 0)
    {
      *(this + 9) |= 8u;
      v10 = *(this + 3);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 3);
      if (!v11)
      {
        v11 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 24);
      }

      return CLP::LogEntry::PrivateData::SfcfXyz::MergeFrom(v10, v11);
    }
  }

  return result;
}

void sub_1000E2B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::~AntennaPhaseCenterSvOffset(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this)
{
  *this = off_100178F38;
  CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178F38;
  CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100178F38;
  CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

void *CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
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

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_;
  if (!CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::Clear(uint64_t this)
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
        this = CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 36);
      }
    }

    *(v1 + 16) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(v1 + 24);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }
  }

  *(v1 + 36) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v8 != 2)
        {
          goto LABEL_22;
        }

        *(this + 9) |= 1u;
        v11 = *(this + 1);
        if (!v11)
        {
          operator new();
        }

        v36 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
          {
            return 0;
          }
        }

        else
        {
          v36 = *v12;
          *(a2 + 1) = v12 + 1;
        }

        v15 = *(a2 + 14);
        v16 = *(a2 + 15);
        *(a2 + 14) = v15 + 1;
        if (v15 >= v16)
        {
          return 0;
        }

        v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v36);
        if (!CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v11, a2, v18) || *(a2 + 36) != 1)
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
        v9 = *(a2 + 2);
        if (v22 < v9 && *v22 == 16)
        {
          v10 = v22 + 1;
          *(a2 + 1) = v10;
LABEL_35:
          v36 = 0;
          if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
            if (!result)
            {
              return result;
            }

            v23 = v36;
          }

          else
          {
            *(a2 + 1) = v10 + 1;
          }

          if (v23 <= 0xC)
          {
            *(this + 9) |= 2u;
            *(this + 4) = v23;
          }

          v25 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v25 < v13 && *v25 == 24)
          {
            v14 = v25 + 1;
            *(a2 + 1) = v14;
LABEL_45:
            v36 = 0;
            if (v14 >= v13 || (v26 = *v14, (v26 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
              if (!result)
              {
                return result;
              }

              v26 = v36;
            }

            else
            {
              *(a2 + 1) = v14 + 1;
            }

            if (v26 <= 3)
            {
              *(this + 9) |= 4u;
              *(this + 5) = v26;
            }

            v27 = *(a2 + 1);
            if (v27 < *(a2 + 2) && *v27 == 34)
            {
              *(a2 + 1) = v27 + 1;
              goto LABEL_55;
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
          goto LABEL_35;
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

    if (v7 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_45;
      }

      goto LABEL_22;
    }

    if (v7 != 4 || v8 != 2)
    {
      goto LABEL_22;
    }

LABEL_55:
    *(this + 9) |= 8u;
    v28 = *(this + 3);
    if (!v28)
    {
      operator new();
    }

    v36 = 0;
    v29 = *(a2 + 1);
    if (v29 >= *(a2 + 2) || *v29 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
      {
        return 0;
      }
    }

    else
    {
      v36 = *v29;
      *(a2 + 1) = v29 + 1;
    }

    v30 = *(a2 + 14);
    v31 = *(a2 + 15);
    *(a2 + 14) = v30 + 1;
    if (v30 >= v31)
    {
      return 0;
    }

    v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v36);
    if (!CLP::LogEntry::PrivateData::SfcfXyz::MergePartialFromCodedStream(v28, a2, v33) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v32);
    v34 = *(a2 + 14);
    v20 = __OFSUB__(v34, 1);
    v35 = v34 - 1;
    if (v35 < 0 == v20)
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

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::ByteSize(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if ((*(this + 36) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8);
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
  v3 = *(this + 9);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 4);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
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

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 5);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
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
      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_36;
  }

  v13 = *(this + 3);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 24);
  }

  v14 = *(v13 + 36);
  if (*(v13 + 36))
  {
    v15 = (v14 << 31 >> 31) & 9;
    if ((v14 & 2) != 0)
    {
      v15 += 9;
    }

    if ((v14 & 4) != 0)
    {
      v14 = v15 + 9;
    }

    else
    {
      v14 = v15;
    }
  }

  *(v13 + 32) = v14;
  v4 = (v4 + v14 + 2);
LABEL_36:
  *(this + 8) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::CopyFrom(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this, const CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::Swap(uint64_t this, CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *a2)
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
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::SharedCtor(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::ReceivedTimeStamp *CLP::LogEntry::PrivateData::ReceivedTimeStamp::ReceivedTimeStamp(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  *this = off_100178FB0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, a2);
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::Clear(uint64_t this)
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

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 9) |= 4u;
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

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 9) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 9) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 25)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
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

uint64_t CLP::LogEntry::PrivateData::ReceivedTimeStamp::ByteSize(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  v1 = *(this + 36);
  if (*(this + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 8) = v1;
  return v1;
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::CopyFrom(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, const CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceivedTimeStamp::Swap(CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, CLP::LogEntry::PrivateData::ReceivedTimeStamp *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
  }

  return result;
}

double CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::SharedCtor(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  *(this + 16) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MeasurementReportCallbackContents(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  *this = off_100179028;
  *(this + 24) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0u;
  *(this + 10) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, a2);
  return this;
}

void sub_1000E3BB0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v1 + 13);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Clear(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  LOBYTE(v2) = *(this + 132);
  if (v2)
  {
    if (*(this + 132))
    {
      v3 = *(this + 1);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 33);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
      if (v4)
      {
        CLP::LogEntry::PrivateData::MeasurementReport::Clear(v4);
        v2 = *(this + 33);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(this + 9);
      if (v5)
      {
        CLP::LogEntry::PrivateData::TimeConversionInfo::Clear(v5);
        v2 = *(this + 33);
      }
    }

    *(this + 10) = 0;
    *(this + 11) = 0;
    if ((v2 & 0x80) != 0)
    {
      v6 = *(this + 12);
      if (v6)
      {
        v7 = *(v6 + 52);
        if (v7)
        {
          *(v6 + 40) = 0;
          *(v6 + 24) = 0u;
          *(v6 + 8) = 0u;
        }

        if ((v7 & 0xFF00) != 0)
        {
          *(v6 + 44) = 0;
        }

        *(v6 + 52) = 0;
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 48);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 104);
  *(this + 33) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v7 == 3)
          {
            if (v8 != 2)
            {
              goto LABEL_39;
            }

LABEL_66:
            v29 = *(this + 9);
            v30 = *(this + 8);
            if (v30 >= v29)
            {
              if (v29 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24), v29 + 1);
                v29 = *(this + 9);
              }

              *(this + 9) = v29 + 1;
              operator new();
            }

            v31 = *(this + 3);
            *(this + 8) = v30 + 1;
            v32 = *(v31 + 8 * v30);
            v86[0] = 0;
            v33 = *(a2 + 1);
            if (v33 >= *(a2 + 2) || *v33 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v86))
              {
                return 0;
              }
            }

            else
            {
              v86[0] = *v33;
              *(a2 + 1) = v33 + 1;
            }

            v34 = *(a2 + 14);
            v35 = *(a2 + 15);
            *(a2 + 14) = v34 + 1;
            if (v34 >= v35)
            {
              return 0;
            }

            v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v86[0]);
            if (!CLP::LogEntry::PrivateData::SvInfo::MergePartialFromCodedStream(v32, a2, v37) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v36);
            v38 = *(a2 + 14);
            v17 = __OFSUB__(v38, 1);
            v39 = v38 - 1;
            if (v39 < 0 == v17)
            {
              *(a2 + 14) = v39;
            }

            v28 = *(a2 + 1);
            if (v28 < *(a2 + 2))
            {
              v40 = *v28;
              if (v40 == 26)
              {
                goto LABEL_65;
              }

              if (v40 == 34)
              {
                goto LABEL_83;
              }
            }
          }

          else
          {
            if (v7 != 4 || v8 != 2)
            {
              goto LABEL_39;
            }

            while (2)
            {
              v41 = *(this + 15);
              v42 = *(this + 14);
              if (v42 >= v41)
              {
                if (v41 == *(this + 16))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48), v41 + 1);
                  v41 = *(this + 15);
                }

                *(this + 15) = v41 + 1;
                operator new();
              }

              v43 = *(this + 6);
              *(this + 14) = v42 + 1;
              v44 = *(v43 + 8 * v42);
              v86[0] = 0;
              v45 = *(a2 + 1);
              if (v45 >= *(a2 + 2) || *v45 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v86))
                {
                  return 0;
                }
              }

              else
              {
                v86[0] = *v45;
                *(a2 + 1) = v45 + 1;
              }

              v46 = *(a2 + 14);
              v47 = *(a2 + 15);
              *(a2 + 14) = v46 + 1;
              if (v46 >= v47)
              {
                return 0;
              }

              v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v86[0]);
              if (!CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergePartialFromCodedStream(v44, a2, v49) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v48);
              v50 = *(a2 + 14);
              v17 = __OFSUB__(v50, 1);
              v51 = v50 - 1;
              if (v51 < 0 == v17)
              {
                *(a2 + 14) = v51;
              }

              v28 = *(a2 + 1);
              if (v28 < *(a2 + 2))
              {
                v52 = *v28;
                if (v52 == 34)
                {
LABEL_83:
                  *(a2 + 1) = v28 + 1;
                  continue;
                }

                if (v52 == 42)
                {
                  *(a2 + 1) = v28 + 1;
LABEL_102:
                  *(this + 33) |= 0x10u;
                  v53 = *(this + 9);
                  if (!v53)
                  {
                    operator new();
                  }

                  v86[0] = 0;
                  v54 = *(a2 + 1);
                  if (v54 >= *(a2 + 2) || *v54 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v86))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v86[0] = *v54;
                    *(a2 + 1) = v54 + 1;
                  }

                  v55 = *(a2 + 14);
                  v56 = *(a2 + 15);
                  *(a2 + 14) = v55 + 1;
                  if (v55 >= v56)
                  {
                    return 0;
                  }

                  v57 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v86[0]);
                  if (!CLP::LogEntry::PrivateData::TimeConversionInfo::MergePartialFromCodedStream(v53, a2, v58) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v57);
                  v59 = *(a2 + 14);
                  v17 = __OFSUB__(v59, 1);
                  v60 = v59 - 1;
                  if (v60 < 0 == v17)
                  {
                    *(a2 + 14) = v60;
                  }

                  v61 = *(a2 + 1);
                  if (v61 < *(a2 + 2) && *v61 == 49)
                  {
                    *(a2 + 1) = v61 + 1;
LABEL_116:
                    *v86 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v86) & 1) == 0)
                    {
                      return 0;
                    }

                    *(this + 10) = *v86;
                    *(this + 33) |= 0x20u;
                    v62 = *(a2 + 1);
                    if (v62 < *(a2 + 2) && *v62 == 57)
                    {
                      *(a2 + 1) = v62 + 1;
LABEL_120:
                      *v86 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v86) & 1) == 0)
                      {
                        return 0;
                      }

                      *(this + 11) = *v86;
                      v11 = *(this + 33) | 0x40;
                      *(this + 33) = v11;
                      v63 = *(a2 + 1);
                      if (v63 < *(a2 + 2) && *v63 == 66)
                      {
                        *(a2 + 1) = v63 + 1;
                        goto LABEL_124;
                      }
                    }
                  }
                }
              }

              break;
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }

          if (v8 != 2)
          {
            goto LABEL_39;
          }

          *(this + 33) |= 1u;
          v9 = *(this + 1);
          if (!v9)
          {
            operator new();
          }

          v86[0] = 0;
          v10 = *(a2 + 1);
          if (v10 >= *(a2 + 2) || *v10 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v86))
            {
              return 0;
            }
          }

          else
          {
            v86[0] = *v10;
            *(a2 + 1) = v10 + 1;
          }

          v12 = *(a2 + 14);
          v13 = *(a2 + 15);
          *(a2 + 14) = v12 + 1;
          if (v12 >= v13)
          {
            return 0;
          }

          v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v86[0]);
          if (!CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergePartialFromCodedStream(v9, a2, v15) || *(a2 + 36) != 1)
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
          if (v19 < *(a2 + 2) && *v19 == 18)
          {
            *(a2 + 1) = v19 + 1;
LABEL_52:
            *(this + 33) |= 2u;
            v20 = *(this + 2);
            if (!v20)
            {
              operator new();
            }

            v86[0] = 0;
            v21 = *(a2 + 1);
            if (v21 >= *(a2 + 2) || *v21 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v86))
              {
                return 0;
              }
            }

            else
            {
              v86[0] = *v21;
              *(a2 + 1) = v21 + 1;
            }

            v22 = *(a2 + 14);
            v23 = *(a2 + 15);
            *(a2 + 14) = v22 + 1;
            if (v22 >= v23)
            {
              return 0;
            }

            v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v86[0]);
            if (!CLP::LogEntry::PrivateData::MeasurementReport::MergePartialFromCodedStream(v20, a2, v25) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
            v26 = *(a2 + 14);
            v17 = __OFSUB__(v26, 1);
            v27 = v26 - 1;
            if (v27 < 0 == v17)
            {
              *(a2 + 14) = v27;
            }

            v28 = *(a2 + 1);
            if (v28 < *(a2 + 2) && *v28 == 26)
            {
LABEL_65:
              *(a2 + 1) = v28 + 1;
              goto LABEL_66;
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
        if (v8 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_120;
      }

      if (v7 == 8)
      {
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        v11 = *(this + 33);
LABEL_124:
        *(this + 33) = v11 | 0x80;
        v64 = *(this + 12);
        if (!v64)
        {
          operator new();
        }

        v86[0] = 0;
        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v86))
          {
            return 0;
          }
        }

        else
        {
          v86[0] = *v65;
          *(a2 + 1) = v65 + 1;
        }

        v66 = *(a2 + 14);
        v67 = *(a2 + 15);
        *(a2 + 14) = v66 + 1;
        if (v66 >= v67)
        {
          return 0;
        }

        v68 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v86[0]);
        if (!CLP::LogEntry::PrivateData::KlobucharModelParameters::MergePartialFromCodedStream(v64, a2, v69) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v68);
        v70 = *(a2 + 14);
        v17 = __OFSUB__(v70, 1);
        v71 = v70 - 1;
        if (v71 < 0 == v17)
        {
          *(a2 + 14) = v71;
        }

        v72 = *(a2 + 1);
        if (v72 < *(a2 + 2) && *v72 == 74)
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 2)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v73 = *(this + 29);
          v74 = *(this + 28);
          if (v74 >= v73)
          {
            if (v73 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104), v73 + 1);
              v73 = *(this + 29);
            }

            *(this + 29) = v73 + 1;
            operator new();
          }

          v75 = *(this + 13);
          *(this + 28) = v74 + 1;
          v76 = *(v75 + 8 * v74);
          v86[0] = 0;
          v77 = *(a2 + 1);
          if (v77 >= *(a2 + 2) || *v77 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v86))
            {
              return 0;
            }
          }

          else
          {
            v86[0] = *v77;
            *(a2 + 1) = v77 + 1;
          }

          v78 = *(a2 + 14);
          v79 = *(a2 + 15);
          *(a2 + 14) = v78 + 1;
          if (v78 >= v79)
          {
            return 0;
          }

          v80 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v86[0]);
          if (!CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergePartialFromCodedStream(v76, a2, v81) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v80);
          v82 = *(a2 + 14);
          v17 = __OFSUB__(v82, 1);
          v83 = v82 - 1;
          if (v83 < 0 == v17)
          {
            *(a2 + 14) = v83;
          }

          v72 = *(a2 + 1);
          v84 = *(a2 + 2);
          if (v72 >= v84 || *v72 != 74)
          {
            break;
          }

LABEL_137:
          *(a2 + 1) = v72 + 1;
        }

        if (v72 == v84 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        goto LABEL_39;
      }

      goto LABEL_102;
    }

    if (v7 == 6 && v8 == 1)
    {
      goto LABEL_116;
    }

LABEL_39:
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

float CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::CopyFrom(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, const CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(this, a2);
  }

  return result;
}

CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Swap(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 24), (a2 + 24));
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((v3 + 48), (a2 + 48));
    v6 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v6;
    v7 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
    v8 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
    v9 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v9;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((v3 + 104), (a2 + 104));
    v10 = *(v3 + 33);
    *(v3 + 33) = *(a2 + 33);
    *(a2 + 33) = v10;
    v11 = *(v3 + 32);
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 32) = v11;
  }

  return this;
}

uint64_t proto::gnss::protobuf_ShutdownFile_GnssTypes_2eproto(proto::gnss *this)
{
  if (proto::gnss::Position::default_instance_)
  {
    (*(*proto::gnss::Position::default_instance_ + 8))(proto::gnss::Position::default_instance_);
  }

  if (proto::gnss::Velocity::default_instance_)
  {
    (*(*proto::gnss::Velocity::default_instance_ + 8))(proto::gnss::Velocity::default_instance_);
  }

  if (proto::gnss::Time::default_instance_)
  {
    (*(*proto::gnss::Time::default_instance_ + 8))(proto::gnss::Time::default_instance_);
  }

  if (proto::gnss::Fix::default_instance_)
  {
    (*(*proto::gnss::Fix::default_instance_ + 8))(proto::gnss::Fix::default_instance_);
  }

  if (proto::gnss::TimeTransferData::default_instance_)
  {
    (*(*proto::gnss::TimeTransferData::default_instance_ + 8))(proto::gnss::TimeTransferData::default_instance_);
  }

  if (proto::gnss::TimeTransferDataExtend::default_instance_)
  {
    (*(*proto::gnss::TimeTransferDataExtend::default_instance_ + 8))(proto::gnss::TimeTransferDataExtend::default_instance_);
  }

  if (proto::gnss::RawPressureSample::default_instance_)
  {
    (*(*proto::gnss::RawPressureSample::default_instance_ + 8))(proto::gnss::RawPressureSample::default_instance_);
  }

  if (proto::gnss::SensorSample3Axis::default_instance_)
  {
    (*(*proto::gnss::SensorSample3Axis::default_instance_ + 8))(proto::gnss::SensorSample3Axis::default_instance_);
  }

  if (proto::gnss::SvId::default_instance_)
  {
    (*(*proto::gnss::SvId::default_instance_ + 8))(proto::gnss::SvId::default_instance_);
  }

  if (proto::gnss::PwrMeasurement::default_instance_)
  {
    (*(*proto::gnss::PwrMeasurement::default_instance_ + 8))(proto::gnss::PwrMeasurement::default_instance_);
  }

  if (proto::gnss::DecodedRti::default_instance_)
  {
    (*(*proto::gnss::DecodedRti::default_instance_ + 8))(proto::gnss::DecodedRti::default_instance_);
  }

  result = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  if (proto::gnss::DecodedExtendedEphemeris::default_instance_)
  {
    v2 = *(*proto::gnss::DecodedExtendedEphemeris::default_instance_ + 8);

    return v2();
  }

  return result;
}

void proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(proto::gnss *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(void)::already_here & 1) == 0)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(void)::already_here = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/GnssTypes.pb.cc", a4);
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v4, v5, v6, v7);
    operator new();
  }
}

double proto::gnss::Position::Position(proto::gnss::Position *this)
{
  *this = off_100179550;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

{
  *this = off_100179550;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

double proto::gnss::Velocity::Velocity(proto::gnss::Velocity *this)
{
  *this = off_1001795C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = off_1001795C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double proto::gnss::Time::Time(proto::gnss::Time *this)
{
  *this = off_100179640;
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

{
  *this = off_100179640;
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

double proto::gnss::Fix::Fix(proto::gnss::Fix *this)
{
  *this = off_1001796B8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = off_1001796B8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}