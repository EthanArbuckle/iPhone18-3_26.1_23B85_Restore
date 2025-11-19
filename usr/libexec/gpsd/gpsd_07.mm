void ProtobufUtil::convert::cpbLtlInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    *a2 = *(a1 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(a1 + 12);
  v4 = *(a1 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  v5 = *(a1 + 48);
  if ((v5 - 1) >= 4)
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(proto::gpsd::LtlInfo::default_instance_ + 16);
  }

  ProtobufUtil::convert::cpbLtlInitialParams(v6, a2 + 12);
  v4 = *(a1 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  v7 = *(a1 + 24);
  if (!v7)
  {
    v7 = *(proto::gpsd::LtlInfo::default_instance_ + 24);
  }

  ProtobufUtil::convert::cpbLtlLutParams(v7, a2 + 56);
  v4 = *(a1 + 56);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_20:
  v8 = *(a1 + 32);
  if (!v8)
  {
    v8 = *(proto::gpsd::LtlInfo::default_instance_ + 32);
  }

  ProtobufUtil::convert::cpbLtlCurrentSrcCalibData(v8, (a2 + 112));
  if ((*(a1 + 56) & 0x40) != 0)
  {
LABEL_23:
    v9 = *(a1 + 40);
    if (!v9)
    {
      v9 = *(proto::gpsd::LtlInfo::default_instance_ + 40);
    }

    v10 = v9[5];
    if (v10)
    {
      *(a2 + 144) = v9[2];
      v10 = v9[5];
    }

    if ((v10 & 2) != 0)
    {
      *(a2 + 148) = v9[3];
    }
  }
}

uint64_t ProtobufUtil::convert::cpbLtlInitialParams(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    *a2 = *(result + 8);
    v2 = *(result + 56);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(result + 12);
  v2 = *(result + 56);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a2 + 8) = *(result + 16);
  v2 = *(result + 56);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 12) = *(result + 20);
  v2 = *(result + 56);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a2 + 16) = *(result + 24);
  v2 = *(result + 56);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a2 + 20) = *(result + 28);
  v2 = *(result + 56);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a2 + 24) = *(result + 32);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a2 + 28) = *(result + 36);
  v2 = *(result + 56);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a2 + 32) = *(result + 40);
  v2 = *(result + 56);
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

LABEL_23:
    *(a2 + 40) = *(result + 48);
    return result;
  }

LABEL_22:
  *(a2 + 36) = *(result + 44);
  if ((*(result + 56) & 0x400) != 0)
  {
    goto LABEL_23;
  }

  return result;
}

void ProtobufUtil::convert::cpbLtlLutParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 52);
  if (v4)
  {
    *a2 = *(a1 + 8);
    v4 = *(a1 + 52);
  }

  if ((v4 & 2) != 0)
  {
    *(a2 + 4) = *(a1 + 12);
  }

  std::vector<int>::resize((a2 + 8), *(a1 + 24));
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v6 != v5)
  {
    v7 = 0;
    do
    {
      if (v7 >= *(a1 + 24))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
        v5 = *(a2 + 8);
        v6 = *(a2 + 16);
      }

      *(v5 + 4 * v7) = *(*(a1 + 16) + 4 * v7);
      ++v7;
    }

    while (v7 < (v6 - v5) >> 2);
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = (v10 - v9) >> 2;
  if (v8 <= v11)
  {
    if (v8 >= v11)
    {
      goto LABEL_24;
    }

    v10 = v9 + 4 * v8;
  }

  else
  {
    v12 = v8 - v11;
    v13 = *(a2 + 48);
    if (v12 > (v13 - v10) >> 2)
    {
      if ((v8 & 0x80000000) == 0)
      {
        v14 = v13 - v9;
        if (v14 >> 1 > v8)
        {
          v8 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v8;
        }

        if (!(v15 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a2 + 40), 4 * v12);
    v10 += 4 * v12;
  }

  *(a2 + 40) = v10;
LABEL_24:
  if (v10 != v9)
  {
    v16 = 0;
    do
    {
      if (v16 >= *(a1 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
        v9 = *(a2 + 32);
        v10 = *(a2 + 40);
      }

      *(v9 + 4 * v16) = *(*(a1 + 32) + 4 * v16);
      ++v16;
    }

    while (v16 < (v10 - v9) >> 2);
  }
}

void sub_100064C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void ProtobufUtil::convert::cpbLtlCurrentSrcCalibData(uint64_t a1, std::vector<int> *this)
{
  std::vector<int>::resize(this, *(a1 + 16));
  begin = this->__begin_;
  end = this->__end_;
  if (end != this->__begin_)
  {
    v6 = 0;
    do
    {
      if (v6 >= *(a1 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
        begin = this->__begin_;
        end = this->__end_;
      }

      begin[v6] = *(*(a1 + 8) + 4 * v6);
      ++v6;
    }

    while (v6 < end - begin);
  }

  v7 = *(a1 + 36);
  if ((v7 & 2) != 0)
  {
    LODWORD(this[1].__begin_) = *(a1 + 24);
    v7 = *(a1 + 36);
  }

  if ((v7 & 4) != 0)
  {
    HIDWORD(this[1].__begin_) = *(a1 + 28);
  }
}

void sub_100064D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *ProtobufUtil::convert::cpbLtlRacPmicAdcPreCalData(_DWORD *result, _DWORD *a2)
{
  v2 = result[5];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    a2[1] = result[3];
    return result;
  }

  *a2 = result[2];
  if ((result[5] & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

_DWORD *ProtobufUtil::convert::cpbLtlInfo(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 56);
  *(a2 + 56) = v5 | 1;
  *(a2 + 8) = v4;
  v6 = *(a1 + 2);
  *(a2 + 12) = *(a1 + 1);
  if ((v6 - 1) >= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  *(a2 + 48) = v7;
  *(a2 + 56) = v5 | 0xF;
  v8 = *(a2 + 16);
  if (!v8)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbLtlInitialParams((a1 + 12), v8);
  *(a2 + 56) |= 0x10u;
  v9 = *(a2 + 24);
  if (!v9)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbLtlLutParams(a1 + 14, v9);
  *(a2 + 56) |= 0x20u;
  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbLtlCurrentSrcCalibData(a1 + 14, v10);
  *(a2 + 56) |= 0x40u;
  result = *(a2 + 40);
  if (!result)
  {
    operator new();
  }

  v12 = *(a1 + 36);
  v13 = result[5];
  result[5] = v13 | 1;
  v14 = *(a1 + 37);
  result[5] = v13 | 3;
  result[2] = v12;
  result[3] = v14;
  return result;
}

__n128 ProtobufUtil::convert::cpbLtlInitialParams(__int128 *a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *a1;
  *(a2 + 56) = v2 | 1;
  DWORD1(v3) = *(a1 + 1);
  *(a2 + 56) = v2 | 3;
  DWORD2(v3) = *(a1 + 2);
  *(a2 + 56) = v2 | 7;
  HIDWORD(v3) = *(a1 + 3);
  *(a2 + 56) = v2 | 0xF;
  *(a2 + 8) = v3;
  v4 = *(a1 + 4);
  *(a2 + 56) = v2 | 0x1F;
  v5 = *(a1 + 5);
  *(a2 + 24) = v4;
  *(a2 + 28) = v5;
  LOBYTE(v4) = *(a1 + 24);
  *(a2 + 56) = v2 | 0x7F;
  *(a2 + 32) = v4;
  result = *(a1 + 28);
  *(a2 + 56) = v2 | 0xFF;
  result.n128_u32[1] = *(a1 + 8);
  *(a2 + 56) = v2 | 0x1FF;
  result.n128_u32[2] = *(a1 + 9);
  *(a2 + 56) = v2 | 0x3FF;
  result.n128_u32[3] = *(a1 + 10);
  *(a2 + 56) = v2 | 0x7FF;
  *(a2 + 36) = result;
  return result;
}

void ProtobufUtil::convert::cpbLtlLutParams(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 52);
  *(a2 + 52) = v5 | 1;
  *(a2 + 8) = v4;
  v6 = a1[1];
  *(a2 + 52) = v5 | 3;
  *(a2 + 12) = v6;
  wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 16), (*(a1 + 2) - *(a1 + 1)) >> 2);
  v8 = *(a1 + 1);
  v7 = *(a1 + 2);
  if (v7 != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 4 * v9);
      if (v9 >= *(a2 + 24))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
        v8 = *(a1 + 1);
        v7 = *(a1 + 2);
      }

      *(*(a2 + 16) + 4 * v9++) = v10;
    }

    while (v9 < (v7 - v8) >> 2);
  }

  wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 32), (*(a1 + 5) - *(a1 + 4)) >> 2);
  v12 = *(a1 + 4);
  v11 = *(a1 + 5);
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      v14 = *(v12 + 4 * v13);
      if (v13 >= *(a2 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
        v12 = *(a1 + 4);
        v11 = *(a1 + 5);
      }

      *(*(a2 + 32) + 4 * v13++) = v14;
    }

    while (v13 < (v11 - v12) >> 2);
  }
}

void sub_1000651B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void ProtobufUtil::convert::cpbLtlCurrentSrcCalibData(uint64_t *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve((a2 + 8), (a1[1] - *a1) >> 2);
  v5 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 4 * v6);
      if (v6 >= *(a2 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
        v5 = *a1;
        v4 = a1[1];
      }

      *(*(a2 + 8) + 4 * v6++) = v7;
    }

    while (v6 < (v4 - v5) >> 2);
  }

  v8 = *(a1 + 6);
  v9 = *(a2 + 36);
  *(a2 + 36) = v9 | 2;
  v10 = *(a1 + 7);
  *(a2 + 36) = v9 | 6;
  *(a2 + 24) = v8;
  *(a2 + 28) = v10;
}

void sub_1000652C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

int *ProtobufUtil::convert::cpbLtlRacPmicAdcPreCalData(int *result, _DWORD *a2)
{
  v2 = *result;
  v3 = a2[5];
  a2[5] = v3 | 1;
  v4 = result[1];
  a2[5] = v3 | 3;
  a2[2] = v2;
  a2[3] = v4;
  return result;
}

uint64_t ProtobufUtil::convert::cpbStartContext(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    *a2 = *(result + 16);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 1) = *(result + 17);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a2 + 2) = *(result + 18);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 16) = *(result + 19);
    return result;
  }

LABEL_10:
  *(a2 + 8) = *(result + 8);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

{
  v2 = *(a2 + 24);
  *(a2 + 16) = *result;
  *(a2 + 17) = *(result + 1);
  *(a2 + 8) = *(result + 8);
  v3 = *(result + 16);
  *(a2 + 24) = v2 | 0x1F;
  *(a2 + 19) = v3;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSetThermalRiskState(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    *(a2 + 8) = *(result + 16);
    return result;
  }

  *a2 = *(result + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t *ProtobufUtil::convert::cpbSetThermalRiskState(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 24);
  *(a2 + 24) = v3 | 1;
  *(a2 + 8) = v2;
  LODWORD(v2) = *(result + 2);
  *(a2 + 24) = v3 | 3;
  *(a2 + 16) = v2;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSetConfigRfBandEnable(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    a2[1] = *(result + 9);
    return result;
  }

  *a2 = *(result + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

_WORD *ProtobufUtil::convert::cpbSetConfigRfBandEnable(_WORD *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 8) = *result;
  *(a2 + 16) = v2 | 3;
  return result;
}

std::string *ProtobufUtil::convert::cpbInjectRavenOrbitFile(std::string *result, std::string *this)
{
  if (result->__r_.__value_.__s.__data_[20])
  {
    return std::string::operator=(this, result->__r_.__value_.__l.__size_);
  }

  return result;
}

std::string *ProtobufUtil::convert::cpbInjectRavenOrbitFile(std::string *__str, uint64_t a2)
{
  *(a2 + 20) |= 1u;
  v3 = *(a2 + 8);
  if (v3 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v3, __str);
}

uint64_t ProtobufUtil::convert::cpbResponse(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = ProtobufUtil::convert::cpbType(*(result + 16));
    *a2 = result;
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(v3 + 8);
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_4:
  result = ProtobufUtil::convert::cpbResult(*(v3 + 20));
  *(a2 + 16) = result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbType(int a1)
{
  if ((a1 - 1) > 0x4B)
  {
    return 0;
  }

  else
  {
    return dword_100145AE0[a1 - 1];
  }
}

{
  if ((a1 - 1) > 0x4B)
  {
    return 0;
  }

  else
  {
    return dword_100145AE0[a1 - 1];
  }
}

{
  if ((a1 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return dword_100145C10[a1 - 1];
  }
}

{
  if ((a1 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return dword_100145C10[a1 - 1];
  }
}

uint64_t ProtobufUtil::convert::cpbResponse(uint64_t a1, uint64_t a2)
{
  v4 = ProtobufUtil::convert::cpbType(*a1);
  v5 = v4;
  if (!proto::gpsd::Request_Type_IsValid(v4))
  {
    __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7674, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v6 = *(a2 + 28);
  *(a2 + 16) = v5;
  v7 = *(a1 + 8);
  *(a2 + 28) = v6 | 3;
  *(a2 + 8) = v7;
  result = ProtobufUtil::convert::cpbResult(*(a1 + 16));
  if (result >= 0xA)
  {
    __assert_rtn("set_result_code", "GpsdProtocol.pb.h", 7719, "::proto::gnss::Result_IsValid(value)");
  }

  *(a2 + 28) = v6 | 7;
  *(a2 + 20) = result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbStatus(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a2 + 16) = *(result + 24);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 18) = *(result + 26);
    return result;
  }

LABEL_10:
  *(a2 + 17) = *(result + 25);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbStatus(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  result = *a1;
  *(a2 + 8) = *a1;
  *(a2 + 24) = *(a1 + 16);
  *(a2 + 25) = *(a1 + 17);
  *(a2 + 32) = v2 | 0x1F;
  return result;
}

void ProtobufUtil::convert::cpbRecoveryStatistics(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a2) >> 3);
  v8 = v4 - v7;
  if (v4 > v7)
  {
    v9 = a2[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v6) >> 3) < v8)
    {
      if ((v4 & 0x80000000) == 0)
      {
        v10 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v5) >> 3);
        if (2 * v10 > v4)
        {
          v4 = 2 * v10;
        }

        if (v10 >= 0x249249249249249)
        {
          v4 = 0x492492492492492;
        }

        if (v4 <= 0x492492492492492)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    bzero(a2[1], 56 * ((56 * v8 - 56) / 0x38) + 56);
    v11 = v6 + 56 * ((56 * v8 - 56) / 0x38) + 56;
    goto LABEL_15;
  }

  if (v4 < v7)
  {
    v11 = v5 + 56 * v4;
    while (v6 != v11)
    {
      v6 -= 56;
      std::allocator<cproto::gpsd::RecoveryStatistics::RecoveryPoint>::destroy[abi:ne200100](v6);
    }

LABEL_15:
    a2[1] = v11;
    goto LABEL_17;
  }

  v11 = a2[1];
LABEL_17:
  v12 = *a2;
  if (v11 != *a2)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (v14 >= *(a1 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
        v12 = *a2;
      }

      ProtobufUtil::convert::cpbRecoveryPoint(*(*(a1 + 8) + 8 * v14++), (v12 + v13));
      v12 = *a2;
      v13 += 56;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3) > v14);
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    v15 = *(a1 + 32);
    if (!v15)
    {
      v15 = *(proto::gpsd::RecoveryStatistics::default_instance_ + 32);
    }

    ProtobufUtil::convert::cpbRecoveryStatus(v15, (a2 + 3));
  }
}

void sub_10006599C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *ProtobufUtil::convert::cpbRecoveryPoint(std::string *result, std::string *this)
{
  v3 = result;
  v4 = result[1].__r_.__value_.__r.__words[1];
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    LODWORD(this[1].__r_.__value_.__l.__data_) = v3[1].__r_.__value_.__l.__data_;
    if ((v3[1].__r_.__value_.__r.__words[1] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = std::string::operator=(this, result->__r_.__value_.__l.__size_);
  v4 = v3[1].__r_.__value_.__r.__words[1];
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = v3->__r_.__value_.__r.__words[2];

  return std::string::operator=((this + 32), v5);
}

uint64_t ProtobufUtil::convert::cpbRecoveryStatus(uint64_t result, uint64_t a2)
{
  v2 = *(result + 20);
  if (v2)
  {
    *a2 = *(result + 12);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(result + 8);
  v2 = *(result + 20);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    *(a2 + 9) = *(result + 14);
    return result;
  }

LABEL_8:
  *(a2 + 8) = *(result + 13);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbRecoveryStatistics(uint64_t *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8), -1227133513 * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a2 + 20);
      v8 = *(a2 + 16);
      if (v8 >= v7)
      {
        if (v7 == *(a2 + 24))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8), v7 + 1);
          v7 = *(a2 + 20);
        }

        *(a2 + 20) = v7 + 1;
        operator new();
      }

      v9 = *(a2 + 8);
      *(a2 + 16) = v8 + 1;
      ProtobufUtil::convert::cpbRecoveryPoint((v4 + v5), *(v9 + 8 * v8));
      ++v6;
      v4 = *a1;
      v5 += 56;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) > v6);
  }

  *(a2 + 44) |= 2u;
  result = *(a2 + 32);
  if (!result)
  {
    operator new();
  }

  v11 = *(result + 20);
  v12 = *(a1 + 24);
  *(result + 20) = v11 | 1;
  *(result + 12) = v12;
  *(result + 8) = *(a1 + 7);
  *(result + 13) = *(a1 + 16);
  *(result + 20) = v11 | 0xF;
  return result;
}

std::string *ProtobufUtil::convert::cpbRecoveryPoint(std::string *__str, uint64_t a2)
{
  *(a2 + 32) |= 1u;
  v4 = *(a2 + 8);
  if (v4 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v4, __str);
  v5 = *(a2 + 32);
  *(a2 + 24) = __str[1].__r_.__value_.__l.__data_;
  *(a2 + 32) = v5 | 6;
  v6 = *(a2 + 16);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v6, (__str + 32));
}

char *ProtobufUtil::convert::cpbRecoveryStatus(char *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 20);
  *(a2 + 20) = v3 | 1;
  *(a2 + 12) = v2;
  *(a2 + 8) = *(result + 1);
  *(a2 + 13) = *(result + 4);
  *(a2 + 20) = v3 | 0xF;
  return result;
}

uint64_t ProtobufUtil::convert::cpbLtlInfoRequest(uint64_t result, _DWORD *a2)
{
  if (*(result + 16))
  {
    v2 = *(result + 8);
    if ((v2 - 1) >= 4)
    {
      v2 = 0;
    }

    *a2 = v2;
  }

  return result;
}

int *ProtobufUtil::convert::cpbLtlInfoRequest(int *result, uint64_t a2)
{
  v2 = *result;
  if ((*result - 1) >= 4)
  {
    v2 = 0;
  }

  *(a2 + 16) |= 1u;
  *(a2 + 8) = v2;
  return result;
}

_DWORD *ProtobufUtil::convert::cpbException(_DWORD *result, _DWORD *a2)
{
  v2 = result[6];
  if ((v2 & 2) == 0)
  {
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_5:
    a2[1] = result[4];
    return result;
  }

  *a2 = result[3];
  if ((result[6] & 4) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

int *ProtobufUtil::convert::cpbException(int *result, _DWORD *a2)
{
  v2 = *result;
  v3 = a2[6];
  a2[6] = v3 | 2;
  v4 = result[1];
  a2[6] = v3 | 6;
  a2[3] = v2;
  a2[4] = v4;
  return result;
}

std::string *ProtobufUtil::convert::cpbAskBasebandReset(std::string *result, uint64_t a2)
{
  v2 = HIDWORD(result[1].__r_.__value_.__r.__words[1]);
  if (v2)
  {
    *a2 = result->__r_.__value_.__l.__size_;
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

      return std::string::operator=((a2 + 16), result[1].__r_.__value_.__l.__data_);
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(&result->__r_.__value_.__l + 2);
  if ((v2 & 4) != 0)
  {
    return std::string::operator=((a2 + 16), result[1].__r_.__value_.__l.__data_);
  }

  return result;
}

std::string *ProtobufUtil::convert::cpbAskBasebandReset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  *(a2 + 8) = *a1;
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 36) = v3 | 7;
  v4 = *(a2 + 24);
  if (v4 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v4, (a1 + 16));
}

uint64_t ProtobufUtil::convert::cpbSuplInitDecodeResult(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_100145AD0[a1 - 1];
  }
}

{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_100145AD0[a1 - 1];
  }
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = v8 >> 1;
        if (v8 >> 1 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 4 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::vector<cproto::gnss::SensorSample3Axis>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    memcpy(&v11[-v6], v5, v6);
    *a1 = &v11[-v6];
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::allocator<cproto::gpsd::RecoveryStatistics::RecoveryPoint>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

unint64_t ProtobufUtil::convert::cpbGlonassSlotSource(unsigned int a1)
{
  v1 = 0x302010000uLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 3;
}

uint64_t ProtobufUtil::convert::cpbGlonassSlotSource(int a1)
{
  if ((a1 - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return (a1 - 1) + 2;
  }
}

_DWORD *ProtobufUtil::convert::cpbGlonassSlotInfo(_DWORD *result, uint64_t a2)
{
  v2 = result[5];
  if (v2)
  {
    *a2 = result[2];
    if ((result[5] & 2) == 0)
    {
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    return result;
  }

  v3 = result[3];
  if (v3 >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x302010000uLL >> (8 * v3);
  }

  *(a2 + 4) = v4;
  return result;
}

int *ProtobufUtil::convert::cpbGlonassSlotInfo(int *result, _DWORD *a2)
{
  v2 = *result;
  v3 = *(result + 4) - 1;
  v4 = (*(result + 4) - 1) + 2;
  a2[5] |= 3u;
  if (v3 >= 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  a2[2] = v2;
  a2[3] = v5;
  return result;
}

_DWORD *ProtobufUtil::convert::cpbGlonassId(_DWORD *result, _DWORD *a2)
{
  v2 = result[6];
  if (v2)
  {
    *a2 = result[4];
    v2 = result[6];
  }

  if ((v2 & 2) != 0)
  {
    v3 = *(result + 1);
    if (!v3)
    {
      v3 = *(CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    return ProtobufUtil::convert::cpbGlonassSlotInfo(v3, (a2 + 1));
  }

  return result;
}

_DWORD *ProtobufUtil::convert::cpbGlonassId(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a2 + 16) = *a1;
  *(a2 + 24) = v3 | 3;
  result = *(a2 + 8);
  if (!result)
  {
    operator new();
  }

  v5 = *(a1 + 4);
  if (*(a1 + 8) - 1 >= 3)
  {
    v6 = 1;
  }

  else
  {
    v6 = (*(a1 + 8) - 1) + 2;
  }

  result[5] |= 3u;
  result[2] = v5;
  result[3] = v6;
  return result;
}

_DWORD *ProtobufUtil::convert::cpbConstellationId(_DWORD *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[11];
  if (v4)
  {
    *a2 = result[4];
    v4 = result[11];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(result + 1);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
  }

  result = ProtobufUtil::convert::cpbGlonassId(v5, a2 + 1);
  v4 = v3[11];
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  a2[4] = v3[5];
  v4 = v3[11];
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  a2[5] = v3[6];
  v4 = v3[11];
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  a2[6] = v3[7];
  v4 = v3[11];
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_17:
  a2[7] = v3[8];
  if ((v3[11] & 0x40) == 0)
  {
    return result;
  }

LABEL_8:
  a2[8] = v3[9];
  return result;
}

__n128 ProtobufUtil::convert::cpbConstellationId(__n128 *a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  *(a2 + 16) = a1->n128_u32[0];
  *(a2 + 44) = v4 | 3;
  v5 = *(a2 + 8);
  if (!v5)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbGlonassId(a1->n128_i64 + 4, v5);
  v6 = *(a2 + 44);
  result = a1[1];
  *(a2 + 44) = v6 | 4;
  result.n128_u32[1] = a1[1].n128_u32[1];
  *(a2 + 44) = v6 | 0xC;
  result.n128_u32[2] = a1[1].n128_u32[2];
  *(a2 + 44) = v6 | 0x1C;
  result.n128_u32[3] = a1[1].n128_u32[3];
  *(a2 + 44) = v6 | 0x3C;
  *(a2 + 20) = result;
  v8 = a1[2].n128_u32[0];
  *(a2 + 44) = v6 | 0x7C;
  *(a2 + 36) = v8;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSatelliteSystem(int a1)
{
  if (a1 == 64)
  {
    v1 = 32;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 16)
  {
    v1 = 16;
  }

  if (a1 == 8)
  {
    v1 = 8;
  }

  if (a1 == 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    v2 = 2;
  }

  if (a1 == 1)
  {
    v2 = 1;
  }

  if (a1 <= 7)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

{
  if (a1 == 32)
  {
    v1 = 64;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 16)
  {
    v1 = 16;
  }

  if (a1 == 8)
  {
    v1 = 8;
  }

  if (a1 == 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    v2 = 2;
  }

  if (a1 == 1)
  {
    v2 = 1;
  }

  if (a1 <= 7)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

_DWORD *ProtobufUtil::convert::cpbSvId(_DWORD *result, _DWORD *a2)
{
  v2 = result[6];
  if (v2)
  {
    *a2 = result[4];
    v2 = result[6];
  }

  if ((v2 & 2) != 0)
  {
    v3 = *(result + 1);
    if (!v3)
    {
      v3 = *(CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
    }

    return ProtobufUtil::convert::cpbConstellationId(v3, a2 + 1);
  }

  return result;
}

{
  v2 = result[8];
  if (v2)
  {
    *a2 = result[2];
    v2 = result[8];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = result[3];
  v2 = result[8];
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  a2[2] = result[4];
  v2 = result[8];
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    a2[4] = result[6];
    return result;
  }

LABEL_10:
  a2[3] = result[5];
  if ((result[8] & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

double ProtobufUtil::convert::cpbSvId(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  *(a2 + 16) = *a1;
  *(a2 + 24) = v2 | 3;
  v3 = *(a2 + 8);
  if (!v3)
  {
    operator new();
  }

  v4 = (a1 + 1);

  *&result = ProtobufUtil::convert::cpbConstellationId(v4, v3).n128_u64[0];
  return result;
}

uint64_t ProtobufUtil::convert::cpbGpsL1SyncState(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    a2[3] = *(result + 11);
    return result;
  }

LABEL_8:
  a2[2] = *(result + 10);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

_DWORD *ProtobufUtil::convert::cpbGpsL1SyncState(_DWORD *result, uint64_t a2)
{
  *(a2 + 16) |= 0xFu;
  *(a2 + 8) = *result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbGpsL2CSyncState(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 20);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  a2[2] = *(result + 10);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    a2[4] = *(result + 12);
    return result;
  }

LABEL_10:
  a2[3] = *(result + 11);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbGpsL2CSyncState(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 20);
  *(a2 + 8) = *result;
  v3 = *(result + 4);
  *(a2 + 20) = v2 | 0x1F;
  *(a2 + 12) = v3;
  return result;
}

uint64_t ProtobufUtil::convert::cpbGpsL5SyncState(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    a2[3] = *(result + 11);
    return result;
  }

LABEL_8:
  a2[2] = *(result + 10);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

_DWORD *ProtobufUtil::convert::cpbGpsL5SyncState(_DWORD *result, uint64_t a2)
{
  *(a2 + 16) |= 0xFu;
  *(a2 + 8) = *result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbGlonassL1fSyncState(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 20);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  a2[2] = *(result + 10);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    a2[4] = *(result + 12);
    return result;
  }

LABEL_10:
  a2[3] = *(result + 11);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbGlonassL1fSyncState(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 20);
  *(a2 + 8) = *result;
  v3 = *(result + 4);
  *(a2 + 20) = v2 | 0x1F;
  *(a2 + 12) = v3;
  return result;
}

uint64_t ProtobufUtil::convert::cpbBeidouB1SyncState(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    a2[3] = *(result + 11);
    return result;
  }

LABEL_8:
  a2[2] = *(result + 10);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

_DWORD *ProtobufUtil::convert::cpbBeidouB1SyncState(_DWORD *result, uint64_t a2)
{
  *(a2 + 16) |= 0xFu;
  *(a2 + 8) = *result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbBeidouB2SyncState(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    a2[3] = *(result + 11);
    return result;
  }

LABEL_8:
  a2[2] = *(result + 10);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

_DWORD *ProtobufUtil::convert::cpbBeidouB2SyncState(_DWORD *result, uint64_t a2)
{
  *(a2 + 16) |= 0xFu;
  *(a2 + 8) = *result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbGalileoE1SyncState(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    a2[3] = *(result + 11);
    return result;
  }

LABEL_8:
  a2[2] = *(result + 10);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

_DWORD *ProtobufUtil::convert::cpbGalileoE1SyncState(_DWORD *result, uint64_t a2)
{
  *(a2 + 16) |= 0xFu;
  *(a2 + 8) = *result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbGalileoE5SyncState(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  a2[2] = *(result + 10);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  a2[3] = *(result + 11);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  a2[4] = *(result + 12);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  a2[5] = *(result + 13);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  a2[6] = *(result + 14);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  a2[7] = *(result + 15);
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      return result;
    }

LABEL_21:
    a2[9] = *(result + 17);
    return result;
  }

LABEL_20:
  a2[8] = *(result + 16);
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_21;
  }

  return result;
}

double ProtobufUtil::convert::cpbGalileoE5SyncState(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  result = *a1;
  *(a2 + 8) = *a1;
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 24) = v2 | 0x3FF;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSbasL1SyncState(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      a2[2] = *(result + 10);
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 9);
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbSbasL1SyncState(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a2 + 8) = *result;
  *(a2 + 9) = *(result + 1);
  *(a2 + 16) = v2 | 7;
  return result;
}

uint64_t ProtobufUtil::convert::cpbBand(int a1)
{
  if ((a1 - 2) > 0xA)
  {
    return 0;
  }

  else
  {
    return byte_100145C7C[a1 - 2];
  }
}

{
  if ((a1 - 1) > 9)
  {
    return 1;
  }

  else
  {
    return dword_100145C88[(a1 - 1)];
  }
}

uint64_t ProtobufUtil::convert::cpbSyncState(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 96);
  if (v4)
  {
    result = ProtobufUtil::convert::cpbBand(*(result + 88));
    *a2 = result;
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
  }

  result = ProtobufUtil::convert::cpbGpsL1SyncState(v5, a2 + 1);
  v4 = *(v3 + 96);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  v6 = *(v3 + 16);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 16);
  }

  result = ProtobufUtil::convert::cpbGpsL2CSyncState(v6, a2 + 5);
  v4 = *(v3 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_19:
  v7 = *(v3 + 24);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
  }

  result = ProtobufUtil::convert::cpbGpsL5SyncState(v7, a2 + 10);
  v4 = *(v3 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_22:
  v8 = *(v3 + 32);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
  }

  result = ProtobufUtil::convert::cpbGlonassL1fSyncState(v8, a2 + 14);
  v4 = *(v3 + 96);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v9 = *(v3 + 40);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
  }

  result = ProtobufUtil::convert::cpbBeidouB1SyncState(v9, a2 + 19);
  v4 = *(v3 + 96);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_28:
  v10 = *(v3 + 48);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
  }

  result = ProtobufUtil::convert::cpbBeidouB2SyncState(v10, a2 + 23);
  v4 = *(v3 + 96);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_34:
    v12 = *(v3 + 64);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
    }

    result = ProtobufUtil::convert::cpbGalileoE5SyncState(v12, a2 + 31);
    v4 = *(v3 + 96);
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

LABEL_31:
  v11 = *(v3 + 56);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
  }

  result = ProtobufUtil::convert::cpbGalileoE1SyncState(v11, a2 + 27);
  v4 = *(v3 + 96);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  if ((v4 & 0x200) == 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  v13 = *(v3 + 72);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
  }

  v14 = *(v13 + 16);
  if (v14)
  {
    a2[41] = *(v13 + 8);
    if ((v14 & 2) == 0)
    {
LABEL_41:
      if ((v14 & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_41;
  }

  a2[42] = *(v13 + 9);
  if ((v14 & 4) != 0)
  {
LABEL_42:
    a2[43] = *(v13 + 10);
  }

LABEL_43:
  if ((v4 & 0x400) != 0)
  {
    v15 = *(v3 + 80);
    if (!v15)
    {
      v15 = *(CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
    }

    return ProtobufUtil::convert::cpbGpsL1SyncState(v15, a2 + 44);
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbSyncState(unsigned __int8 *a1, uint64_t a2)
{
  v4 = ProtobufUtil::convert::cpbBand(*a1);
  v5 = *(a2 + 96);
  *(a2 + 88) = v4;
  *(a2 + 96) = v5 | 3;
  v6 = *(a2 + 8);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 16) |= 0xFu;
  *(v6 + 8) = *(a1 + 1);
  *(a2 + 96) |= 4u;
  v7 = *(a2 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = *(v7 + 20) | 0x1F;
  *(v7 + 8) = *(a1 + 5);
  v9 = a1[9];
  *(v7 + 20) = v8;
  *(v7 + 12) = v9;
  *(a2 + 96) |= 8u;
  v10 = *(a2 + 24);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 16) |= 0xFu;
  *(v10 + 8) = *(a1 + 10);
  *(a2 + 96) |= 0x10u;
  v11 = *(a2 + 32);
  if (!v11)
  {
    operator new();
  }

  v12 = *(v11 + 20) | 0x1F;
  *(v11 + 8) = *(a1 + 14);
  v13 = a1[18];
  *(v11 + 20) = v12;
  *(v11 + 12) = v13;
  *(a2 + 96) |= 0x20u;
  v14 = *(a2 + 40);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 16) |= 0xFu;
  *(v14 + 8) = *(a1 + 19);
  *(a2 + 96) |= 0x40u;
  v15 = *(a2 + 48);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 16) |= 0xFu;
  *(v15 + 8) = *(a1 + 23);
  *(a2 + 96) |= 0x80u;
  v16 = *(a2 + 56);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 16) |= 0xFu;
  *(v16 + 8) = *(a1 + 27);
  *(a2 + 96) |= 0x100u;
  v17 = *(a2 + 64);
  if (!v17)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbGalileoE5SyncState((a1 + 31), v17);
  *(a2 + 96) |= 0x200u;
  v18 = *(a2 + 72);
  if (!v18)
  {
    operator new();
  }

  v19 = *(v18 + 16) | 7;
  *(v18 + 8) = a1[41];
  *(v18 + 9) = *(a1 + 21);
  *(v18 + 16) = v19;
  *(a2 + 96) |= 0x400u;
  result = *(a2 + 80);
  if (!result)
  {
    operator new();
  }

  *(result + 16) |= 0xFu;
  *(result + 8) = *(a1 + 11);
  return result;
}

uint64_t ProtobufUtil::convert::cpbSvTime(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      *(a2 + 16) = *(result + 24);
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbSvTime(__n128 *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  result = *a1;
  *(a2 + 8) = *a1;
  v4 = a1[1].n128_u8[0];
  *(a2 + 32) = v2 | 7;
  *(a2 + 24) = v4;
  return result;
}

uint64_t ProtobufUtil::convert::cpbFrequencyOffset(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      *(a2 + 16) = *(result + 24);
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbFrequencyOffset(__n128 *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  result = *a1;
  *(a2 + 8) = *a1;
  v4 = a1[1].n128_u8[0];
  *(a2 + 32) = v2 | 7;
  *(a2 + 24) = v4;
  return result;
}

uint64_t ProtobufUtil::convert::cpbFrequencyOffsetFromPhaseTracking(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    *(a2 + 17) = *(result + 25);
    return result;
  }

LABEL_8:
  *(a2 + 16) = *(result + 24);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbFrequencyOffsetFromPhaseTracking(__n128 *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  result = *a1;
  *(a2 + 8) = *a1;
  *(a2 + 24) = a1[1].n128_u16[0];
  *(a2 + 32) = v2 | 0xF;
  return result;
}

uint64_t ProtobufUtil::convert::cpbPhaseTracking(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a2 + 16) = *(result + 24);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 32) = *(result + 40);
    return result;
  }

LABEL_10:
  *(a2 + 24) = *(result + 32);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbPhaseTracking(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v4;
  v5 = *(a1 + 32);
  *(a2 + 48) = v2 | 0x1F;
  *(a2 + 40) = v5;
  return result;
}

float ProtobufUtil::convert::cpbSignalCorrelationPeak(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      v3 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8);
    }

    v4 = *(v3 + 32);
    if (v4)
    {
      v7 = *(v3 + 8);
      *a2 = v7;
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(v3 + 16);
    *(a2 + 8) = v7;
    if ((v4 & 4) != 0)
    {
LABEL_7:
      *(a2 + 16) = *(v3 + 24);
    }
  }

LABEL_8:
  if ((v2 & 2) == 0)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 16);
  }

  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(v5 + 8);
    *(a2 + 24) = v7;
    if ((v6 & 2) == 0)
    {
LABEL_13:
      if ((v6 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_13;
  }

  v7 = *(v5 + 16);
  *(a2 + 32) = v7;
  if ((v6 & 4) != 0)
  {
LABEL_14:
    *(a2 + 40) = *(v5 + 24);
  }

LABEL_15:
  if ((v2 & 4) != 0)
  {
    LODWORD(v7) = *(a1 + 24);
    *(a2 + 48) = v7;
  }

  return *&v7;
}

{
  *(a2 + 32) |= 1u;
  v3 = *(a2 + 8);
  if (!v3)
  {
    operator new();
  }

  v4 = *(v3 + 32) | 7;
  *(v3 + 8) = *a1;
  v5 = *(a1 + 16);
  *(v3 + 32) = v4;
  *(v3 + 24) = v5;
  *(a2 + 32) |= 2u;
  v6 = *(a2 + 16);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 32) | 7;
  *(v6 + 8) = *(a1 + 24);
  v8 = *(a1 + 40);
  *(v6 + 32) = v7;
  *(v6 + 24) = v8;
  result = *(a1 + 48);
  *(a2 + 32) |= 4u;
  *(a2 + 24) = result;
  return result;
}

unint64_t ProtobufUtil::convert::cpbFullSvTimeSource(unsigned int a1)
{
  v1 = 0x40302010000uLL >> (8 * a1);
  if (a1 >= 6)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 7;
}

uint64_t ProtobufUtil::convert::cpbFullSvTimeSource(char a1)
{
  if (((a1 - 1) & 0xFC) != 0)
  {
    return 1;
  }

  else
  {
    return (a1 - 1) + 2;
  }
}

uint64_t ProtobufUtil::convert::cpbFullSvTime(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a2 + 8) = *(result + 16);
    if ((v2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  *a2 = *(result + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v2 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v3 = *(result + 24);
  if (v3 >= 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x40302010000uLL >> (8 * v3);
  }

  *(a2 + 16) = v4;
  return result;
}

{
  v2 = *(a2 + 32);
  *(a2 + 8) = *result;
  if (((*(result + 16) - 1) & 0xFC) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = (*(result + 16) - 1) + 2;
  }

  *(a2 + 32) = v2 | 7;
  *(a2 + 24) = v3;
  return result;
}

float ProtobufUtil::convert::cpbSvMeasurementUsage(uint64_t a1, float *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    result = *(a1 + 8);
    *a2 = result;
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      result = *(a1 + 16);
      a2[2] = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 12);
  a2[1] = result;
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

float ProtobufUtil::convert::cpbSvMeasurementUsage(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  *(a2 + 8) = *a1;
  result = *(a1 + 8);
  *(a2 + 24) = v2 | 7;
  *(a2 + 16) = result;
  return result;
}

unint64_t ProtobufUtil::convert::cpbMeasurementDetectionMethod(unsigned int a1)
{
  v1 = 0x4030201000000uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 7;
}

uint64_t ProtobufUtil::convert::cpbMeasurementDetectionMethod(char a1)
{
  if (((a1 - 1) & 0xFC) != 0)
  {
    return 2;
  }

  else
  {
    return (a1 - 1) + 3;
  }
}

void ProtobufUtil::convert::cpbMeasurementExtension(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 116);
  if (v4)
  {
    *a2 = *(a1 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = *(a1 + 16);
      if (!v5)
      {
        v5 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
      }

      ProtobufUtil::convert::cpbFullSvTime(v5, a2 + 8);
      v4 = *(a1 + 116);
      if ((v4 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(a1 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v6 = *(a1 + 24);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  v7 = v6[6];
  if (v7)
  {
    *(a2 + 32) = v6[2];
    if ((v7 & 2) == 0)
    {
LABEL_15:
      if ((v7 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_15;
  }

  *(a2 + 36) = v6[3];
  if ((v7 & 4) != 0)
  {
LABEL_16:
    *(a2 + 40) = v6[4];
  }

LABEL_17:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_24;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  v9 = v8[6];
  if (v9)
  {
    *(a2 + 44) = v8[2];
    if ((v9 & 2) == 0)
    {
LABEL_22:
      if ((v9 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_22;
  }

  *(a2 + 48) = v8[3];
  if ((v9 & 4) != 0)
  {
LABEL_23:
    *(a2 + 52) = v8[4];
  }

LABEL_24:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_31;
  }

  v10 = *(a1 + 40);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
  }

  v11 = v10[6];
  if (v11)
  {
    *(a2 + 56) = v10[2];
    if ((v11 & 2) == 0)
    {
LABEL_29:
      if ((v11 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_29;
  }

  *(a2 + 60) = v10[3];
  if ((v11 & 4) != 0)
  {
LABEL_30:
    *(a2 + 64) = v10[4];
  }

LABEL_31:
  if ((v4 & 0x40) != 0)
  {
    *(a2 + 68) = *(a1 + 48);
    v4 = *(a1 + 116);
    if ((v4 & 0x80) == 0)
    {
LABEL_33:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_52;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_33;
  }

  *(a2 + 72) = *(a1 + 52);
  v4 = *(a1 + 116);
  if ((v4 & 0x100) == 0)
  {
LABEL_34:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_56;
  }

LABEL_52:
  v19 = *(a1 + 56);
  if (v19 >= 7)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x4030201000000uLL >> (8 * v19);
  }

  *(a2 + 76) = v20;
  if ((v4 & 0x200) == 0)
  {
LABEL_35:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_60;
  }

LABEL_56:
  v21 = *(a1 + 60);
  if (v21 >= 7)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x4030201000000uLL >> (8 * v21);
  }

  *(a2 + 77) = v22;
  if ((v4 & 0x400) == 0)
  {
LABEL_36:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a2 + 80) = *(a1 + 64);
  v4 = *(a1 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_37:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a2 + 84) = *(a1 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_38:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a2 + 88) = *(a1 + 72);
  if ((v4 & 0x2000) == 0)
  {
LABEL_39:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_63:
  std::string::operator=((a2 + 96), *(a1 + 80));
  if ((*(a1 + 116) & 0x4000) != 0)
  {
LABEL_40:
    *(a2 + 120) = *(a1 + 76);
  }

LABEL_41:
  v12 = *(a1 + 96);
  v13 = *(a2 + 128);
  v14 = *(a2 + 136);
  v15 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 3);
  v16 = v12 - v15;
  if (v12 <= v15)
  {
    if (v12 >= v15)
    {
      goto LABEL_78;
    }

    v14 = v13 + 56 * v12;
  }

  else
  {
    v17 = *(a2 + 144);
    if (0x6DB6DB6DB6DB6DB7 * ((v17 - v14) >> 3) < v16)
    {
      if ((v12 & 0x80000000) == 0)
      {
        v18 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v13) >> 3);
        if (2 * v18 > v12)
        {
          v12 = 2 * v18;
        }

        if (v18 >= 0x249249249249249)
        {
          v12 = 0x492492492492492;
        }

        if (v12 <= 0x492492492492492)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a2 + 136), 56 * ((56 * v16 - 56) / 0x38) + 56);
    v14 += 56 * ((56 * v16 - 56) / 0x38) + 56;
  }

  *(a2 + 136) = v14;
LABEL_78:
  v23 = *(a2 + 128);
  if (v14 != v23)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      if (v25 >= *(a1 + 96))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
        v23 = *(a2 + 128);
      }

      ProtobufUtil::convert::cpbSignalCorrelationPeak(*(*(a1 + 88) + 8 * v25++), v23 + v24);
      v23 = *(a2 + 128);
      v24 += 56;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((*(a2 + 136) - v23) >> 3) > v25);
  }
}

{
  v4 = *(a2 + 116);
  *(a2 + 8) = *a1;
  *(a2 + 116) = v4 | 7;
  v5 = *(a2 + 16);
  if (!v5)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbFullSvTime(a1 + 8, v5);
  *(a2 + 116) |= 8u;
  v6 = *(a2 + 24);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 24);
  *(v6 + 8) = *(a1 + 32);
  v8 = *(a1 + 40);
  *(v6 + 24) = v7 | 7;
  *(v6 + 16) = v8;
  *(a2 + 116) |= 0x10u;
  v9 = *(a2 + 32);
  if (!v9)
  {
    operator new();
  }

  v10 = *(v9 + 24);
  *(v9 + 8) = *(a1 + 44);
  v11 = *(a1 + 52);
  *(v9 + 24) = v10 | 7;
  *(v9 + 16) = v11;
  *(a2 + 116) |= 0x20u;
  v12 = *(a2 + 40);
  if (!v12)
  {
    operator new();
  }

  v13 = v12[3].i32[0];
  v14 = *(a1 + 56);
  v12[1] = v14;
  v14.i32[0] = *(a1 + 64);
  v12[3].i32[0] = v13 | 7;
  v12[2].i32[0] = v14.i32[0];
  v15 = *(a1 + 68);
  v16 = *(a2 + 116);
  *(a2 + 116) = v16 | 0x40;
  v17 = *(a1 + 72);
  *(a2 + 48) = v15;
  *(a2 + 52) = v17;
  *(a2 + 116) = v16 | 0x3C0;
  v14.i8[0] = *(a1 + 76);
  v14.i8[4] = *(a1 + 77);
  v18 = vand_s8(vadd_s32(v14, -1), 0xFF000000FFLL);
  *(a2 + 56) = vbsl_s8(vcgt_u32(0x400000004, v18), vadd_s32(v18, 0x300000003), 0x200000002);
  *(a2 + 64) = *(a1 + 80);
  *(a2 + 68) = *(a1 + 84);
  *(a2 + 116) = v16 | 0x3FC0;
  v19 = *(a2 + 80);
  if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v19, (a1 + 96));
  v20 = *(a1 + 120);
  *(a2 + 116) |= 0x4000u;
  *(a2 + 76) = v20;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 88), -1227133513 * ((*(a1 + 136) - *(a1 + 128)) >> 3));
  v21 = *(a1 + 128);
  if (*(a1 + 136) != v21)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(a2 + 100);
      v25 = *(a2 + 96);
      if (v25 >= v24)
      {
        if (v24 == *(a2 + 104))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 88), v24 + 1);
          v24 = *(a2 + 100);
        }

        *(a2 + 100) = v24 + 1;
        operator new();
      }

      v26 = *(a2 + 88);
      *(a2 + 96) = v25 + 1;
      ProtobufUtil::convert::cpbSignalCorrelationPeak(v21 + v22, *(v26 + 8 * v25));
      ++v23;
      v21 = *(a1 + 128);
      v22 += 56;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 136) - v21) >> 3) > v23);
  }
}

void sub_100067B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t ProtobufUtil::convert::cpbMultipathIndicator(int a1)
{
  if (a1 == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 != 2);
  }
}

{
  if (a1 == 1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

void ProtobufUtil::convert::cpbMeasurement(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
    }

    ProtobufUtil::convert::cpbSvId(v5, a2);
    v4 = *(a1 + 112);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
  }

  ProtobufUtil::convert::cpbSyncState(v6, (a2 + 40));
  v4 = *(a1 + 112);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 88) = *(a1 + 24);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    *(a2 + 104) = *(a1 + 40);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

LABEL_15:
  *(a2 + 96) = *(a1 + 32);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v7 = *(a1 + 48);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
  }

  v8 = *(v7 + 32);
  if (v8)
  {
    *(a2 + 112) = *(v7 + 8);
    if ((v8 & 2) == 0)
    {
LABEL_21:
      if ((v8 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_21;
  }

  *(a2 + 120) = *(v7 + 16);
  if ((v8 & 4) != 0)
  {
LABEL_22:
    *(a2 + 128) = *(v7 + 24);
  }

LABEL_23:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_30;
  }

  v9 = *(a1 + 56);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  v10 = *(v9 + 32);
  if (v10)
  {
    *(a2 + 136) = *(v9 + 8);
    if ((v10 & 2) == 0)
    {
LABEL_28:
      if ((v10 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_28;
  }

  *(a2 + 144) = *(v9 + 16);
  if ((v10 & 4) != 0)
  {
LABEL_29:
    *(a2 + 152) = *(v9 + 24);
  }

LABEL_30:
  if ((v4 & 0x80) != 0)
  {
    v11 = *(a1 + 64);
    if (!v11)
    {
      v11 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
    }

    ProtobufUtil::convert::cpbPhaseTracking(v11, a2 + 160);
    v4 = *(a1 + 112);
    if ((v4 & 0x100) == 0)
    {
LABEL_32:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  v12 = *(a1 + 72);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
  }

  ProtobufUtil::convert::cpbMeasurementExtension(v12, a2 + 200);
  v4 = *(a1 + 112);
  if ((v4 & 0x200) == 0)
  {
LABEL_33:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_34;
    }

LABEL_43:
    v13 = *(a1 + 84);
    if (v13 == 3)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2 * (v13 != 2);
    }

    *(a2 + 356) = v14;
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

LABEL_42:
  *(a2 + 352) = *(a1 + 80);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_43;
  }

LABEL_34:
  if ((v4 & 0x800) == 0)
  {
    goto LABEL_53;
  }

LABEL_47:
  v15 = *(a1 + 88);
  if (!v15)
  {
    v15 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
  }

  v16 = *(v15 + 32);
  if (v16)
  {
    *(a2 + 360) = *(v15 + 8);
    if ((v16 & 2) == 0)
    {
LABEL_51:
      if ((v16 & 4) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_51;
  }

  *(a2 + 368) = *(v15 + 16);
  if ((v16 & 4) != 0)
  {
LABEL_52:
    *(a2 + 376) = *(v15 + 24);
  }

LABEL_53:
  if ((v4 & 0x1000) != 0)
  {
    *(a2 + 384) = *(a1 + 104);
  }

  if ((v4 & 0x2000) != 0)
  {
    v17 = *(a1 + 96);
    if (!v17)
    {
      v17 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
    }

    ProtobufUtil::convert::cpbFrequencyOffsetFromPhaseTracking(v17, a2 + 392);
  }
}

__n128 ProtobufUtil::convert::cpbMeasurement(uint64_t a1, uint64_t a2)
{
  *(a2 + 112) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbSvId(a1, v4);
  *(a2 + 112) |= 2u;
  v5 = *(a2 + 16);
  if (!v5)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbSyncState((a1 + 40), v5);
  v6 = *(a2 + 112);
  *(a2 + 24) = *(a1 + 88);
  *(a2 + 40) = *(a1 + 104);
  *(a2 + 112) = v6 | 0x3C;
  v7 = *(a2 + 48);
  if (!v7)
  {
    operator new();
  }

  v8 = *(v7 + 32) | 7;
  *(v7 + 8) = *(a1 + 112);
  v9 = *(a1 + 128);
  *(v7 + 32) = v8;
  *(v7 + 24) = v9;
  *(a2 + 112) |= 0x40u;
  v10 = *(a2 + 56);
  if (!v10)
  {
    operator new();
  }

  v11 = *(v10 + 32) | 7;
  *(v10 + 8) = *(a1 + 136);
  v12 = *(a1 + 152);
  *(v10 + 32) = v11;
  *(v10 + 24) = v12;
  *(a2 + 112) |= 0x80u;
  v13 = *(a2 + 64);
  if (!v13)
  {
    operator new();
  }

  v14 = *(v13 + 48) | 0x1F;
  v15 = *(a1 + 176);
  *(v13 + 8) = *(a1 + 160);
  *(v13 + 24) = v15;
  v16 = *(a1 + 192);
  *(v13 + 48) = v14;
  *(v13 + 40) = v16;
  *(a2 + 112) |= 0x100u;
  v17 = *(a2 + 72);
  if (!v17)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbMeasurementExtension(a1 + 200, v17);
  v18 = *(a2 + 112);
  *(a2 + 80) = *(a1 + 352);
  v19 = *(a1 + 356);
  if (v19 == 1)
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  if (v19 == 2)
  {
    v21 = 4;
  }

  else
  {
    v21 = v20;
  }

  *(a2 + 84) = v21;
  *(a2 + 112) = v18 | 0xE00;
  v22 = *(a2 + 88);
  if (!v22)
  {
    operator new();
  }

  v23 = *(v22 + 32) | 7;
  *(v22 + 8) = *(a1 + 360);
  v24 = *(a1 + 376);
  *(v22 + 32) = v23;
  *(v22 + 24) = v24;
  v25 = *(a2 + 112);
  *(a2 + 104) = *(a1 + 384);
  *(a2 + 112) = v25 | 0x3000;
  v26 = *(a2 + 96);
  if (!v26)
  {
    operator new();
  }

  v27 = *(v26 + 32) | 0xF;
  result = *(a1 + 392);
  *(v26 + 8) = result;
  *(v26 + 24) = *(a1 + 408);
  *(v26 + 32) = v27;
  return result;
}

uint64_t ProtobufUtil::convert::cpbReceiverClockModel(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(result + 12);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a2 + 8) = *(result + 16);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 16) = *(result + 24);
    return result;
  }

LABEL_10:
  *(a2 + 12) = *(result + 20);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbReceiverClockModel(__n128 *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  result = *a1;
  *(a2 + 8) = *a1;
  v4 = a1[1].n128_u8[0];
  *(a2 + 32) = v2 | 0x1F;
  *(a2 + 24) = v4;
  return result;
}

double ProtobufUtil::convert::cpbReceiverClockCorrections(uint64_t a1, double *a2)
{
  v2 = *(a1 + 52);
  if (v2)
  {
    result = *(a1 + 8);
    *a2 = result;
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  a2[1] = result;
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  result = *(a1 + 24);
  a2[2] = result;
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    result = *(a1 + 40);
    a2[4] = result;
    return result;
  }

LABEL_10:
  result = *(a1 + 32);
  a2[3] = result;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

double ProtobufUtil::convert::cpbReceiverClockCorrections(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 52);
  *(a2 + 8) = *a1;
  *(a2 + 24) = *(a1 + 16);
  result = *(a1 + 32);
  *(a2 + 52) = v2 | 0x1F;
  *(a2 + 40) = result;
  return result;
}

float ProtobufUtil::convert::cpbReceiverToGpsTimeConversion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *a2 = *(a1 + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  LODWORD(v3) = *(a1 + 16);
  *(a2 + 8) = v3;
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  LODWORD(v3) = *(a1 + 20);
  *(a2 + 12) = v3;
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return *&v3;
    }

    goto LABEL_11;
  }

LABEL_10:
  v3 = *(a1 + 24);
  *(a2 + 16) = v3;
  if ((v2 & 0x10) == 0)
  {
    return *&v3;
  }

LABEL_11:
  LODWORD(v3) = *(a1 + 32);
  *(a2 + 24) = v3;
  return *&v3;
}

{
  v2 = *(a2 + 40);
  *(a2 + 8) = *a1;
  v3 = *(a1 + 16);
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 24) = v3;
  result = *(a1 + 24);
  *(a2 + 40) = v2 | 0x1F;
  *(a2 + 32) = result;
  return result;
}

float ProtobufUtil::convert::cpbClock(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 44);
  if (v4)
  {
    *a2 = *(a1 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
  }

  ProtobufUtil::convert::cpbReceiverClockModel(v5, a2 + 8);
  v4 = *(a1 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      return *&v6;
    }

    goto LABEL_13;
  }

LABEL_10:
  v7 = *(a1 + 24);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  v6 = ProtobufUtil::convert::cpbReceiverClockCorrections(v7, (a2 + 32));
  if ((*(a1 + 44) & 8) != 0)
  {
LABEL_13:
    v8 = *(a1 + 32);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    *&v6 = ProtobufUtil::convert::cpbReceiverToGpsTimeConversion(v8, a2 + 72);
  }

  return *&v6;
}

{
  v3 = *(a2 + 44);
  *(a2 + 8) = *a1;
  *(a2 + 44) = v3 | 3;
  v4 = *(a2 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = *(v4 + 32) | 0x1F;
  *(v4 + 8) = *(a1 + 8);
  v6 = *(a1 + 24);
  *(v4 + 32) = v5;
  *(v4 + 24) = v6;
  *(a2 + 44) |= 4u;
  v7 = *(a2 + 24);
  if (!v7)
  {
    operator new();
  }

  v8 = *(v7 + 52);
  *(v7 + 8) = *(a1 + 32);
  *(v7 + 24) = *(a1 + 48);
  v9 = *(a1 + 64);
  *(v7 + 52) = v8 | 0x1F;
  *(v7 + 40) = v9;
  *(a2 + 44) |= 8u;
  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  v11 = *(v10 + 40);
  *(v10 + 8) = *(a1 + 72);
  v12 = *(a1 + 88);
  *(v10 + 16) = *(a1 + 80);
  *(v10 + 24) = v12;
  result = *(a1 + 96);
  *(v10 + 40) = v11 | 0x1F;
  *(v10 + 32) = result;
  return result;
}

void ProtobufUtil::convert::cpbMeasurementReport(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 44))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    ProtobufUtil::convert::cpbClock(v4, a2);
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 104);
  v7 = *(a2 + 112);
  v8 = 0x4EC4EC4EC4EC4EC5 * ((v7 - v6) >> 5);
  v9 = v5 - v8;
  if (v5 > v8)
  {
    v10 = *(a2 + 120);
    if (0x4EC4EC4EC4EC4EC5 * ((v10 - v7) >> 5) < v9)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v11 = 0x4EC4EC4EC4EC4EC5 * ((v10 - v6) >> 5);
        if (2 * v11 > v5)
        {
          v5 = 2 * v11;
        }

        if (v11 >= 0x4EC4EC4EC4EC4ELL)
        {
          v5 = 0x9D89D89D89D89DLL;
        }

        if (v5 <= 0x9D89D89D89D89DLL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a2 + 112), 416 * ((416 * v9 - 416) / 0x1A0) + 416);
    v12 = v7 + 416 * ((416 * v9 - 416) / 0x1A0) + 416;
    goto LABEL_19;
  }

  if (v5 < v8)
  {
    v12 = v6 + 416 * v5;
    while (v7 != v12)
    {
      v7 -= 416;
      std::allocator<cCLP::LogEntry::PrivateData::Measurement>::destroy[abi:ne200100](v7);
    }

LABEL_19:
    *(a2 + 112) = v12;
    goto LABEL_21;
  }

  v12 = *(a2 + 112);
LABEL_21:
  v13 = *(a2 + 104);
  if (v12 != v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      if (v15 >= *(a1 + 24))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
        v13 = *(a2 + 104);
      }

      ProtobufUtil::convert::cpbMeasurement(*(*(a1 + 16) + 8 * v15++), v13 + v14);
      v13 = *(a2 + 104);
      v14 += 416;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((*(a2 + 112) - v13) >> 5) > v15);
  }
}

{
  *(a2 + 44) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbClock(a1, v4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16), -991146299 * ((*(a1 + 112) - *(a1 + 104)) >> 5));
  v5 = *(a1 + 104);
  if (*(a1 + 112) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(a2 + 28);
      v9 = *(a2 + 24);
      if (v9 >= v8)
      {
        if (v8 == *(a2 + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16), v8 + 1);
          v8 = *(a2 + 28);
        }

        *(a2 + 28) = v8 + 1;
        operator new();
      }

      v10 = *(a2 + 16);
      *(a2 + 24) = v9 + 1;
      ProtobufUtil::convert::cpbMeasurement(v5 + v6, *(v10 + 8 * v9));
      ++v7;
      v5 = *(a1 + 104);
      v6 += 416;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 112) - v5) >> 5) > v7);
  }
}

void sub_100068D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t ProtobufUtil::convert::cpbSvPositionSource(unsigned int a1)
{
  v1 = 0x3040002010000uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 7;
}

uint64_t ProtobufUtil::convert::cpbSvPositionSource(char a1)
{
  if ((a1 - 1) > 3u)
  {
    return 1;
  }

  else
  {
    return dword_100145AC0[(a1 - 1)];
  }
}

double ProtobufUtil::convert::cpbWgs84Ecef(uint64_t a1, double *a2)
{
  v2 = *(a1 + 36);
  if (v2)
  {
    result = *(a1 + 8);
    *a2 = result;
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      result = *(a1 + 24);
      a2[2] = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  a2[1] = result;
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

double ProtobufUtil::convert::cpbWgs84Ecef(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  *(a2 + 8) = *a1;
  result = *(a1 + 16);
  *(a2 + 36) = v2 | 7;
  *(a2 + 24) = result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSvHealthIndication(int a1)
{
  if (a1 == 4)
  {
    return 2;
  }

  else
  {
    return a1 == 3;
  }
}

{
  if (a1 == 1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t ProtobufUtil::convert::cpbIonosphericCorrectionSource(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

double ProtobufUtil::convert::cpbSvBandCorrections(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 44);
  if (v4)
  {
    *a2 = ProtobufUtil::convert::cpbBand(*(a1 + 24));
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 8);
  *(a2 + 8) = result;
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = *(a1 + 16);
  *(a2 + 16) = result;
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_14:
  result = *(a1 + 32);
  *(a2 + 24) = result;
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  v5 = *(a1 + 28);
  if (v5 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 1;
  }

  *(a2 + 32) = v6;
  return result;
}

uint64_t ProtobufUtil::convert::cpbSvBandCorrections(unsigned __int8 *a1, uint64_t a2)
{
  result = ProtobufUtil::convert::cpbBand(*a1);
  *(a2 + 8) = *(a1 + 8);
  v5 = *(a1 + 8);
  if (v5 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 1;
  }

  v7 = *(a2 + 44);
  *(a2 + 32) = *(a1 + 3);
  *(a2 + 44) = v7 | 0x1F;
  *(a2 + 24) = result;
  *(a2 + 28) = v6;
  return result;
}

double ProtobufUtil::convert::cpbSvPositionAtTime(uint64_t a1, double *a2)
{
  v2 = *(a1 + 28);
  if (v2)
  {
    result = *(a1 + 8);
    *a2 = result;
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
    }

    v5 = *(v4 + 36);
    if (v5)
    {
      result = *(v4 + 8);
      a2[1] = result;
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_9;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = *(v4 + 16);
    a2[2] = result;
    if ((v5 & 4) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(v4 + 24);
    a2[3] = result;
  }

  return result;
}

double ProtobufUtil::convert::cpbSvPositionAtTime(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 28);
  *(a2 + 8) = *a1;
  *(a2 + 28) = v3 | 3;
  v4 = *(a2 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = *(v4 + 36);
  *(v4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v4 + 36) = v5 | 7;
  *(v4 + 24) = result;
  return result;
}

double ProtobufUtil::convert::cpbPolynomialOrbit(uint64_t a1, void *a2)
{
  v4 = *(a1 + 76);
  if (v4)
  {
    *a2 = *(a1 + 8);
  }

  if ((v4 & 2) != 0)
  {
    a2[1] = *(a1 + 16);
  }

  std::vector<double>::resize((a2 + 2), *(a1 + 32));
  v5 = a2[2];
  v6 = a2[3];
  if (v6 != v5)
  {
    v7 = 0;
    do
    {
      if (v7 >= *(a1 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
        v5 = a2[2];
        v6 = a2[3];
      }

      *(v5 + 8 * v7) = *(*(a1 + 24) + 8 * v7);
      ++v7;
    }

    while (v7 < (v6 - v5) >> 3);
  }

  std::vector<double>::resize((a2 + 5), *(a1 + 48));
  v8 = a2[5];
  v9 = a2[6];
  if (v9 != v8)
  {
    v10 = 0;
    do
    {
      if (v10 >= *(a1 + 48))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
        v8 = a2[5];
        v9 = a2[6];
      }

      *(v8 + 8 * v10) = *(*(a1 + 40) + 8 * v10);
      ++v10;
    }

    while (v10 < (v9 - v8) >> 3);
  }

  std::vector<double>::resize((a2 + 8), *(a1 + 64));
  v12 = a2[8];
  v13 = a2[9];
  if (v13 != v12)
  {
    v14 = 0;
    do
    {
      if (v14 >= *(a1 + 64))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
        v12 = a2[8];
        v13 = a2[9];
      }

      result = *(*(a1 + 56) + 8 * v14);
      *(v12 + 8 * v14++) = result;
    }

    while (v14 < (v13 - v12) >> 3);
  }

  return result;
}

void sub_1000693E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::vector<double>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
      }

      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 8 * v6);
    v11 = v4 + 8 * v6;
  }

  *(a1 + 8) = v11;
}

void ProtobufUtil::convert::cpbPolynomialOrbit(uint64_t a1, uint64_t a2)
{
  *(a2 + 76) |= 3u;
  *(a2 + 8) = *a1;
  wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve((a2 + 24), (*(a1 + 24) - *(a1 + 16)) >> 3);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v6 >= *(a2 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
        v5 = *(a1 + 16);
        v4 = *(a1 + 24);
      }

      *(*(a2 + 24) + 8 * v6++) = v7;
    }

    while (v6 < (v4 - v5) >> 3);
  }

  wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve((a2 + 40), (*(a1 + 48) - *(a1 + 40)) >> 3);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8 != v9)
  {
    v10 = 0;
    do
    {
      v11 = *(v9 + 8 * v10);
      if (v10 >= *(a2 + 48))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
      }

      *(*(a2 + 40) + 8 * v10++) = v11;
    }

    while (v10 < (v8 - v9) >> 3);
  }

  wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve((a2 + 56), (*(a1 + 72) - *(a1 + 64)) >> 3);
  v13 = *(a1 + 64);
  v12 = *(a1 + 72);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      v15 = *(v13 + 8 * v14);
      if (v14 >= *(a2 + 64))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
        v13 = *(a1 + 64);
        v12 = *(a1 + 72);
      }

      *(*(a2 + 56) + 8 * v14++) = v15;
    }

    while (v14 < (v12 - v13) >> 3);
  }
}

void sub_10006973C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbSvReferencePoint(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

double ProtobufUtil::convert::cpbSvInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 172);
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    result = *(a1 + 16);
    *(a2 + 40) = result;
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v15 = *(a1 + 8);
  if (!v15)
  {
    v15 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
  }

  ProtobufUtil::convert::cpbSvId(v15, a2);
  v4 = *(a1 + 172);
  if ((v4 & 2) != 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(a1 + 56);
  if (v5 >= 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x3040002010000uLL >> (8 * v5);
  }

  *(a2 + 48) = v6;
LABEL_8:
  v7 = *(a1 + 32);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = (v9 - v8) >> 5;
  if (v7 <= v10)
  {
    if (v7 >= v10)
    {
      goto LABEL_27;
    }

    v9 = v8 + 32 * v7;
  }

  else
  {
    v11 = v7 - v10;
    v12 = *(a2 + 72);
    if (v11 > (v12 - v9) >> 5)
    {
      if ((v7 & 0x80000000) != 0)
      {
        std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
      }

      v13 = v12 - v8;
      if (v13 >> 4 > v7)
      {
        v7 = v13 >> 4;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFE0)
      {
        v14 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v7;
      }

      if (!(v14 >> 59))
      {
        operator new();
      }

      goto LABEL_123;
    }

    bzero(*(a2 + 64), 32 * v11);
    v9 += 32 * v11;
  }

  *(a2 + 64) = v9;
LABEL_27:
  v17 = *(a2 + 56);
  if (v9 != v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      if (v19 >= *(a1 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v54);
        v17 = *(a2 + 56);
      }

      result = ProtobufUtil::convert::cpbSvPositionAtTime(*(*(a1 + 24) + 8 * v19++), (v17 + v18));
      v17 = *(a2 + 56);
      v18 += 32;
    }

    while (v19 < (*(a2 + 64) - v17) >> 5);
  }

  v20 = *(a1 + 172);
  if ((v20 & 0x10) != 0)
  {
    result = *(a1 + 48);
    *(a2 + 80) = result;
    if ((v20 & 0x20) == 0)
    {
LABEL_34:
      if ((v20 & 0x40) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_57;
    }
  }

  else if ((v20 & 0x20) == 0)
  {
    goto LABEL_34;
  }

  result = *(a1 + 64);
  *(a2 + 88) = result;
  if ((v20 & 0x40) == 0)
  {
LABEL_35:
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = *(a1 + 72);
  *(a2 + 96) = result;
  if ((v20 & 0x80) == 0)
  {
LABEL_36:
    if ((v20 & 0x100) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_59;
  }

LABEL_58:
  LODWORD(result) = *(a1 + 60);
  *(a2 + 104) = LODWORD(result);
  if ((v20 & 0x100) == 0)
  {
LABEL_37:
    if ((v20 & 0x200) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_60;
  }

LABEL_59:
  LODWORD(result) = *(a1 + 80);
  *(a2 + 108) = LODWORD(result);
  if ((v20 & 0x200) == 0)
  {
LABEL_38:
    if ((v20 & 0x400) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_64;
  }

LABEL_60:
  v30 = *(a1 + 84);
  if (v30 == 4)
  {
    v31 = 2;
  }

  else
  {
    v31 = v30 == 3;
  }

  *(a2 + 112) = v31;
  if ((v20 & 0x400) == 0)
  {
LABEL_39:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_68;
  }

LABEL_64:
  v32 = *(a1 + 88);
  if (v32 == 4)
  {
    v33 = 2;
  }

  else
  {
    v33 = v32 == 3;
  }

  *(a2 + 113) = v33;
  if ((v20 & 0x800) == 0)
  {
LABEL_40:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_72;
  }

LABEL_68:
  v34 = *(a1 + 92);
  if (v34 == 4)
  {
    v35 = 2;
  }

  else
  {
    v35 = v34 == 3;
  }

  *(a2 + 114) = v35;
  if ((v20 & 0x1000) == 0)
  {
LABEL_41:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_72:
  v36 = *(a1 + 96);
  if (v36 == 4)
  {
    v37 = 2;
  }

  else
  {
    v37 = v36 == 3;
  }

  *(a2 + 115) = v37;
  if ((v20 & 0x2000) != 0)
  {
LABEL_42:
    v21 = *(a1 + 100);
    if (v21 == 4)
    {
      v22 = 2;
    }

    else
    {
      v22 = v21 == 3;
    }

    *(a2 + 116) = v22;
  }

LABEL_46:
  v23 = *(a1 + 112);
  v24 = *(a2 + 120);
  v25 = *(a2 + 128);
  v26 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - v24) >> 3);
  v27 = v23 - v26;
  if (v23 <= v26)
  {
    if (v23 >= v26)
    {
      goto LABEL_81;
    }

    v25 = v24 + 40 * v23;
  }

  else
  {
    v28 = *(a2 + 136);
    if (0xCCCCCCCCCCCCCCCDLL * ((v28 - v25) >> 3) < v27)
    {
      if ((v23 & 0x80000000) != 0)
      {
        std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0xCCCCCCCCCCCCCCCDLL * ((v28 - v24) >> 3);
      if (2 * v29 > v23)
      {
        v23 = 2 * v29;
      }

      if (v29 >= 0x333333333333333)
      {
        v23 = 0x666666666666666;
      }

      if (v23 <= 0x666666666666666)
      {
        operator new();
      }

LABEL_123:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(a2 + 128), 40 * ((40 * v27 - 40) / 0x28) + 40);
    v25 += 40 * ((40 * v27 - 40) / 0x28) + 40;
  }

  *(a2 + 128) = v25;
LABEL_81:
  v38 = *(a2 + 120);
  if (v25 != v38)
  {
    v39 = 0;
    v40 = 0;
    do
    {
      if (v40 >= *(a1 + 112))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v54);
        v38 = *(a2 + 120);
      }

      result = ProtobufUtil::convert::cpbSvBandCorrections(*(*(a1 + 104) + 8 * v40++), v38 + v39);
      v38 = *(a2 + 120);
      v39 += 40;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 128) - v38) >> 3) > v40);
  }

  v41 = *(a1 + 172);
  if ((v41 & 0x8000) != 0)
  {
    v43 = *(a1 + 128);
    if (!v43)
    {
      v43 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
    }

    result = ProtobufUtil::convert::cpbPolynomialOrbit(v43, (a2 + 144));
    v41 = *(a1 + 172);
    if ((v41 & 0x10000) == 0)
    {
LABEL_88:
      if ((v41 & 0x20000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_105;
    }
  }

  else if ((v41 & 0x10000) == 0)
  {
    goto LABEL_88;
  }

  v44 = *(a1 + 136);
  if (v44 == 4)
  {
    v45 = 2;
  }

  else
  {
    v45 = v44 == 3;
  }

  *(a2 + 232) = v45;
  if ((v41 & 0x20000) == 0)
  {
LABEL_89:
    if ((v41 & 0x40000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_109;
  }

LABEL_105:
  v46 = *(a1 + 140);
  if (v46 == 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v46 == 3;
  }

  *(a2 + 233) = v47;
  if ((v41 & 0x40000) == 0)
  {
LABEL_90:
    if ((v41 & 0x80000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_113;
  }

LABEL_109:
  v48 = *(a1 + 144);
  if (v48 == 4)
  {
    v49 = 2;
  }

  else
  {
    v49 = v48 == 3;
  }

  *(a2 + 234) = v49;
  if ((v41 & 0x80000) == 0)
  {
LABEL_91:
    if ((v41 & 0x100000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_117;
  }

LABEL_113:
  v50 = *(a1 + 148);
  if (v50 == 4)
  {
    v51 = 2;
  }

  else
  {
    v51 = v50 == 3;
  }

  *(a2 + 235) = v51;
  if ((v41 & 0x100000) == 0)
  {
LABEL_92:
    if ((v41 & 0x200000) == 0)
    {
      goto LABEL_93;
    }

LABEL_121:
    result = *(a1 + 152);
    *(a2 + 240) = result;
    if ((v41 & 0x400000) == 0)
    {
      return result;
    }

    goto LABEL_94;
  }

LABEL_117:
  v52 = *(a1 + 160);
  if (v52 == 4)
  {
    v53 = 2;
  }

  else
  {
    v53 = v52 == 3;
  }

  *(a2 + 236) = v53;
  if ((v41 & 0x200000) != 0)
  {
    goto LABEL_121;
  }

LABEL_93:
  if ((v41 & 0x400000) == 0)
  {
    return result;
  }

LABEL_94:
  v42 = *(a1 + 164);
  if ((v42 - 1) >= 3)
  {
    v42 = 0;
  }

  *(a2 + 248) = v42;
  return result;
}

void sub_100069E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void ProtobufUtil::convert::cpbSvInfo(uint64_t a1, uint64_t a2)
{
  *(a2 + 172) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbSvId(a1, v4);
  v5 = *(a2 + 172);
  *(a2 + 16) = *(a1 + 40);
  if ((*(a1 + 48) - 1) > 3u)
  {
    v6 = 1;
  }

  else
  {
    v6 = dword_100145AC0[(*(a1 + 48) - 1)];
  }

  *(a2 + 172) = v5 | 6;
  *(a2 + 56) = v6;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), (*(a1 + 64) - *(a1 + 56)) >> 5);
  v7 = *(a1 + 56);
  if (*(a1 + 64) != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2 + 36);
      v11 = *(a2 + 32);
      if (v11 >= v10)
      {
        if (v10 == *(a2 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v10 + 1);
          v10 = *(a2 + 36);
        }

        *(a2 + 36) = v10 + 1;
        operator new();
      }

      v12 = *(a2 + 24);
      *(a2 + 32) = v11 + 1;
      ProtobufUtil::convert::cpbSvPositionAtTime(v7 + v8, *(v12 + 8 * v11));
      ++v9;
      v7 = *(a1 + 56);
      v8 += 32;
    }

    while (v9 < (*(a1 + 64) - v7) >> 5);
  }

  v13 = *(a2 + 172);
  *(a2 + 48) = *(a1 + 80);
  v14 = *(a1 + 88);
  *(a2 + 64) = v14;
  v15 = *(a1 + 108);
  *(a2 + 60) = *(a1 + 104);
  *(a2 + 80) = v15;
  LODWORD(v14) = *(a1 + 112);
  *&v14 = vmovl_u8(*&v14).u64[0];
  v16.i64[0] = 0x200000002;
  v16.i64[1] = 0x200000002;
  v17.i64[0] = 0x300000003;
  v17.i64[1] = 0x300000003;
  v18 = vbslq_s8(vmovl_s16(vceq_s16(*&v14, 0x1000100010001)), v17, v16);
  v16.i16[1] = 2;
  v16.i16[3] = 2;
  v19 = vmovl_s16(vceq_s16(*&v14, *v16.i8));
  v16.i64[0] = 0x400000004;
  v16.i64[1] = 0x400000004;
  *(a2 + 84) = vbslq_s8(v19, v16, v18);
  v20 = *(a1 + 116);
  if (v20 == 1)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  if (v20 == 2)
  {
    v22 = 4;
  }

  else
  {
    v22 = v21;
  }

  *(a2 + 172) = v13 | 0x3FF0;
  *(a2 + 100) = v22;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 104), -858993459 * ((*(a1 + 128) - *(a1 + 120)) >> 3));
  v23 = *(a1 + 120);
  if (*(a1 + 128) != v23)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(a2 + 116);
      v27 = *(a2 + 112);
      if (v27 >= v26)
      {
        if (v26 == *(a2 + 120))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 104), v26 + 1);
          v26 = *(a2 + 116);
        }

        *(a2 + 116) = v26 + 1;
        operator new();
      }

      v28 = *(a2 + 104);
      *(a2 + 112) = v27 + 1;
      ProtobufUtil::convert::cpbSvBandCorrections((v23 + v24), *(v28 + 8 * v27));
      ++v25;
      v23 = *(a1 + 120);
      v24 += 40;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 128) - v23) >> 3) > v25);
  }

  *(a2 + 172) |= 0x8000u;
  v29 = *(a2 + 128);
  if (!v29)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbPolynomialOrbit(a1 + 144, v29);
  v30 = *(a2 + 172);
  v31.i32[0] = *(a1 + 232);
  v32 = vmovl_u8(v31).u64[0];
  v33.i64[0] = 0x200000002;
  v33.i64[1] = 0x200000002;
  v34.i64[0] = 0x300000003;
  v34.i64[1] = 0x300000003;
  v35 = vbslq_s8(vmovl_s16(vceq_s16(v32, 0x1000100010001)), v34, v33);
  v33.i16[1] = 2;
  v33.i16[3] = 2;
  v36 = vmovl_s16(vceq_s16(v32, *v33.i8));
  v33.i64[0] = 0x400000004;
  v33.i64[1] = 0x400000004;
  *(a2 + 136) = vbslq_s8(v36, v33, v35);
  v37 = *(a1 + 236);
  if (v37 == 1)
  {
    v38 = 3;
  }

  else
  {
    v38 = 2;
  }

  if (v37 == 2)
  {
    v39 = 4;
  }

  else
  {
    v39 = v38;
  }

  *(a2 + 152) = *(a1 + 240);
  v40 = *(a1 + 248);
  *(a2 + 172) = v30 | 0x7F0000;
  if ((v40 - 1) >= 3)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  *(a2 + 160) = v39;
  *(a2 + 164) = v41;
}

float ProtobufUtil::convert::cpbReceiverBandCorrections(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    *a2 = ProtobufUtil::convert::cpbBand(*(a1 + 16));
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      LODWORD(v5) = *(a1 + 20);
      *(a2 + 16) = v5;
      if ((v4 & 8) != 0)
      {
        goto LABEL_5;
      }

      return *&v5;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 8);
  *(a2 + 8) = v5;
  if ((v4 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v4 & 8) != 0)
  {
LABEL_5:
    LODWORD(v5) = *(a1 + 24);
    *(a2 + 20) = v5;
  }

  return *&v5;
}

double ProtobufUtil::convert::cpbReceiverBandCorrections(double *a1, uint64_t a2)
{
  v4 = ProtobufUtil::convert::cpbBand(*a1);
  v5 = *(a2 + 32);
  *(a2 + 16) = v4;
  result = a1[1];
  v7 = *(a1 + 2);
  *(a2 + 8) = result;
  *(a2 + 32) = v5 | 0xF;
  *(a2 + 20) = v7;
  return result;
}

uint64_t ProtobufUtil::convert::cpbLeapSecondChangeKnowledge(int a1)
{
  if (a1 == 4)
  {
    return 2;
  }

  else
  {
    return a1 == 3;
  }
}

{
  if (a1 == 1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t ProtobufUtil::convert::cpbLeapSecondChange(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    *(a2 + 8) = *(result + 16);
    return result;
  }

  *a2 = *(result + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t *ProtobufUtil::convert::cpbLeapSecondChange(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 24);
  *(a2 + 24) = v3 | 1;
  *(a2 + 8) = v2;
  LODWORD(v2) = *(result + 2);
  *(a2 + 24) = v3 | 3;
  *(a2 + 16) = v2;
  return result;
}

uint64_t ProtobufUtil::convert::cpbLeapSecondInfo(uint64_t result, uint64_t a2)
{
  v2 = *(result + 28);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = *(result + 12);
    if (v3 == 4)
    {
      v4 = 2;
    }

    else
    {
      v4 = v3 == 3;
    }

    *(a2 + 4) = v4;
    if ((v2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  *a2 = *(result + 8);
  v2 = *(result + 28);
  if ((v2 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v2 & 4) == 0)
  {
    return result;
  }

LABEL_10:
  v5 = *(result + 16);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 16);
  }

  v6 = *(v5 + 24);
  if (v6)
  {
    *(a2 + 8) = *(v5 + 8);
  }

  if ((v6 & 2) != 0)
  {
    *(a2 + 16) = *(v5 + 16);
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbLeapSecondInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (v3 == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (v3 == 2)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a2 + 28);
  *(a2 + 8) = *a1;
  *(a2 + 12) = v5;
  *(a2 + 28) = v6 | 7;
  result = *(a2 + 16);
  if (!result)
  {
    operator new();
  }

  v8 = *(a1 + 8);
  v9 = *(result + 24);
  *(result + 24) = v9 | 1;
  *(result + 8) = v8;
  LODWORD(v8) = *(a1 + 16);
  *(result + 24) = v9 | 3;
  *(result + 16) = v8;
  return result;
}

double ProtobufUtil::convert::cpbGpsToUtcConversion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 44);
  if (v2)
  {
    *a2 = *(a1 + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  *(a2 + 8) = result;
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a1 + 32);
    *(a2 + 24) = result;
    return result;
  }

LABEL_8:
  result = *(a1 + 24);
  *(a2 + 16) = result;
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

{
  v2 = *(a2 + 44);
  *(a2 + 8) = *a1;
  *(a2 + 16) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 44) = v2 | 0xF;
  *(a2 + 32) = result;
  return result;
}

double ProtobufUtil::convert::cpbGpsTimeInfo(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    *a2 = *(a1 + 24);
    v4 = *(a1 + 32);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8);
  }

  ProtobufUtil::convert::cpbLeapSecondInfo(v5, (a2 + 2));
  if ((*(a1 + 32) & 4) != 0)
  {
LABEL_9:
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 16);
    }

    return ProtobufUtil::convert::cpbGpsToUtcConversion(v7, (a2 + 8));
  }

  return result;
}

double ProtobufUtil::convert::cpbGpsTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a2 + 24) = *a1;
  *(a2 + 32) = v4 | 3;
  v5 = *(a2 + 8);
  if (!v5)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbLeapSecondInfo(a1 + 8, v5);
  *(a2 + 32) |= 4u;
  v6 = *(a2 + 16);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 44);
  *(v6 + 8) = *(a1 + 32);
  *(v6 + 16) = *(a1 + 40);
  result = *(a1 + 56);
  *(v6 + 44) = v7 | 0xF;
  *(v6 + 32) = result;
  return result;
}

double ProtobufUtil::convert::cpbGlonassSubsecondConversion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 28);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    result = *(a1 + 16);
    *(a2 + 8) = result;
    return result;
  }

  *a2 = *(a1 + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v2 = *(a2 + 28);
  *(a2 + 8) = *a1;
  result = *(a1 + 8);
  *(a2 + 28) = v2 | 3;
  *(a2 + 16) = result;
  return result;
}

double ProtobufUtil::convert::cpbGlonassTimeInfo(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a2 + 4) = *(a1 + 12);
    if ((*(a1 + 40) & 8) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  *a2 = *(a1 + 8);
  v2 = *(a1 + 40);
  if ((v2 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v2 & 8) == 0)
  {
    return result;
  }

LABEL_7:
  v3 = *(a1 + 16);
  if (!v3)
  {
    v3 = *(CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 16);
  }

  v4 = *(v3 + 28);
  if (v4)
  {
    *(a2 + 8) = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    result = *(v3 + 16);
    *(a2 + 16) = result;
  }

  return result;
}

double ProtobufUtil::convert::cpbGlonassTimeInfo(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  *(a2 + 40) = v4 | 1;
  v5 = a1[1];
  *(a2 + 8) = v3;
  *(a2 + 12) = v5;
  *(a2 + 40) = v4 | 0xB;
  v6 = *(a2 + 16);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 28);
  *(v6 + 8) = *(a1 + 1);
  result = *(a1 + 2);
  *(v6 + 28) = v7 | 3;
  *(v6 + 16) = result;
  return result;
}

double ProtobufUtil::convert::cpbSubSecondConversion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  if (v2)
  {
    *a2 = *(a1 + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      result = *(a1 + 24);
      *(a2 + 16) = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  *(a2 + 8) = result;
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbSubSecondConversion(uint64_t a1, __n128 *a2)
{
  v2 = a2[2].n128_u32[1];
  a2->n128_u64[1] = *a1;
  a2[2].n128_u32[1] = v2 | 7;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

double ProtobufUtil::convert::cpbBeidouTimeInfo(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *a2 = *(a1 + 48);
    v2 = *(a1 + 56);
  }

  if ((v2 & 4) != 0)
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      v3 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 16);
    }

    v4 = *(v3 + 36);
    if (v4)
    {
      *(a2 + 8) = *(v3 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_8:
        if ((v4 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = *(v3 + 16);
    *(a2 + 16) = result;
    if ((v4 & 4) != 0)
    {
LABEL_9:
      result = *(v3 + 24);
      *(a2 + 24) = result;
    }
  }

LABEL_10:
  if ((v2 & 8) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 24);
  }

  v7 = *(v6 + 36);
  if (v7)
  {
    *(a2 + 32) = *(v6 + 8);
    if ((v7 & 2) == 0)
    {
LABEL_15:
      if ((v7 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_15;
  }

  result = *(v6 + 16);
  *(a2 + 40) = result;
  if ((v7 & 4) != 0)
  {
LABEL_16:
    result = *(v6 + 24);
    *(a2 + 48) = result;
  }

LABEL_17:
  if ((v2 & 0x10) == 0)
  {
    return result;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 32);
  }

  v9 = *(v8 + 36);
  if (v9)
  {
    *(a2 + 56) = *(v8 + 8);
    if ((v9 & 2) == 0)
    {
LABEL_22:
      if ((v9 & 4) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_22;
  }

  result = *(v8 + 16);
  *(a2 + 64) = result;
  if ((v9 & 4) == 0)
  {
    return result;
  }

LABEL_23:
  result = *(v8 + 24);
  *(a2 + 72) = result;
  return result;
}

__n128 ProtobufUtil::convert::cpbBeidouTimeInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a2 + 48) = *a1;
  *(a2 + 56) = v3 | 5;
  v4 = *(a2 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = *(v4 + 36);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 36) = v5 | 7;
  *(v4 + 16) = *(a1 + 16);
  *(a2 + 56) |= 8u;
  v6 = *(a2 + 24);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 36);
  *(v6 + 8) = *(a1 + 32);
  *(v6 + 36) = v7 | 7;
  *(v6 + 16) = *(a1 + 40);
  *(a2 + 56) |= 0x10u;
  v8 = *(a2 + 32);
  if (!v8)
  {
    operator new();
  }

  v9 = v8[2].n128_u32[1];
  v8->n128_u64[1] = *(a1 + 56);
  v8[2].n128_u32[1] = v9 | 7;
  result = *(a1 + 64);
  v8[1] = result;
  return result;
}

double ProtobufUtil::convert::cpbGalileoTimeInfo(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *a2 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  if ((v2 & 4) != 0)
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      v3 = *(CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 16);
    }

    v4 = *(v3 + 36);
    if (v4)
    {
      *(a2 + 8) = *(v3 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_8:
        if ((v4 & 4) == 0)
        {
          return result;
        }

        goto LABEL_9;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = *(v3 + 16);
    *(a2 + 16) = result;
    if ((v4 & 4) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(v3 + 24);
    *(a2 + 24) = result;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbGalileoTimeInfo(__n128 *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a2 + 32) = a1->n128_u32[0];
  *(a2 + 40) = v3 | 5;
  v4 = *(a2 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = v4[2].n128_u32[1];
  v4->n128_u64[1] = a1->n128_u64[1];
  v4[2].n128_u32[1] = v5 | 7;
  result = a1[1];
  v4[1] = result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbNavicTimeInfo(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = *(result + 8);
  if (!v3)
  {
    v3 = *(CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8);
  }

  v4 = *(v3 + 36);
  if (v4)
  {
    *a2 = *(v3 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a2 + 8) = *(v3 + 16);
  if ((v4 & 4) != 0)
  {
LABEL_7:
    *(a2 + 16) = *(v3 + 24);
  }

LABEL_8:
  if ((v2 & 2) != 0)
  {
    *(a2 + 24) = *(result + 16);
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbNavicTimeInfo(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) |= 1u;
  v3 = *(a2 + 8);
  if (!v3)
  {
    operator new();
  }

  v4 = v3[2].n128_u32[1];
  v3->n128_u64[1] = *a1;
  v3[2].n128_u32[1] = v4 | 7;
  result = *(a1 + 8);
  v3[1] = result;
  v6 = *(a1 + 24);
  *(a2 + 24) |= 2u;
  *(a2 + 16) = v6;
  return result;
}

void ProtobufUtil::convert::cpbTimeConversionInfo(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 52);
  if (v4)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8);
    }

    ProtobufUtil::convert::cpbGpsTimeInfo(v5, a2);
    v4 = *(a1 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 16);
  }

  ProtobufUtil::convert::cpbGlonassTimeInfo(v6, (a2 + 16));
  v4 = *(a1 + 52);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v7 = *(a1 + 24);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 24);
  }

  ProtobufUtil::convert::cpbBeidouTimeInfo(v7, (a2 + 22));
  v4 = *(a1 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_16:
  v8 = *(a1 + 32);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 32);
  }

  ProtobufUtil::convert::cpbGalileoTimeInfo(v8, (a2 + 42));
  if ((*(a1 + 52) & 0x10) != 0)
  {
LABEL_19:
    v9 = *(a1 + 40);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 40);
    }

    ProtobufUtil::convert::cpbNavicTimeInfo(v9, (a2 + 50));
  }
}

double ProtobufUtil::convert::cpbTimeConversionInfo(uint64_t a1, uint64_t a2)
{
  *(a2 + 52) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbGpsTimeInfo(a1, v4);
  *(a2 + 52) |= 2u;
  v5 = *(a2 + 16);
  if (!v5)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbGlonassTimeInfo((a1 + 64), v5);
  *(a2 + 52) |= 4u;
  v6 = *(a2 + 24);
  if (!v6)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbBeidouTimeInfo(a1 + 88, v6);
  *(a2 + 52) |= 8u;
  v7 = *(a2 + 32);
  if (!v7)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbGalileoTimeInfo((a1 + 168), v7);
  *(a2 + 52) |= 0x10u;
  v8 = *(a2 + 40);
  if (!v8)
  {
    operator new();
  }

  *&result = ProtobufUtil::convert::cpbNavicTimeInfo(a1 + 200, v8).n128_u64[0];
  return result;
}

float ProtobufUtil::convert::cpbKlobucharModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2)
  {
    *a2 = *(a1 + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  *(a2 + 8) = result;
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = *(a1 + 20);
  *(a2 + 12) = result;
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = *(a1 + 24);
  *(a2 + 16) = result;
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = *(a1 + 28);
  *(a2 + 20) = result;
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = *(a1 + 32);
  *(a2 + 24) = result;
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = *(a1 + 36);
  *(a2 + 28) = result;
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      return result;
    }

LABEL_19:
    result = *(a1 + 44);
    *(a2 + 36) = result;
    return result;
  }

LABEL_18:
  result = *(a1 + 40);
  *(a2 + 32) = result;
  if ((v2 & 0x100) != 0)
  {
    goto LABEL_19;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbKlobucharModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 52);
  *(a2 + 8) = *a1;
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 52) = v2 | 0x1FF;
  result = *(a1 + 24);
  *(a2 + 32) = result;
  return result;
}

double ProtobufUtil::convert::cpbSfcfXyz(uint64_t a1, double *a2)
{
  v2 = *(a1 + 36);
  if (v2)
  {
    result = *(a1 + 8);
    *a2 = result;
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      result = *(a1 + 24);
      a2[2] = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  a2[1] = result;
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

double ProtobufUtil::convert::cpbSfcfXyz(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  *(a2 + 8) = *a1;
  result = *(a1 + 16);
  *(a2 + 36) = v2 | 7;
  *(a2 + 24) = result;
  return result;
}

double ProtobufUtil::convert::cpbAntennaPhaseCenterSvOffset(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 36);
  if (v4)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8);
    }

    ProtobufUtil::convert::cpbSvId(v5, a2);
    v4 = *(a1 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 40) = ProtobufUtil::convert::cpbBand(*(a1 + 16));
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      return result;
    }

LABEL_13:
    v8 = *(a1 + 24);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 24);
    }

    v9 = *(v8 + 36);
    if (v9)
    {
      result = *(v8 + 8);
      *(a2 + 48) = result;
      if ((v9 & 2) == 0)
      {
LABEL_17:
        if ((v9 & 4) == 0)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_17;
    }

    result = *(v8 + 16);
    *(a2 + 56) = result;
    if ((v9 & 4) == 0)
    {
      return result;
    }

LABEL_18:
    result = *(v8 + 24);
    *(a2 + 64) = result;
    return result;
  }

LABEL_10:
  v7 = *(a1 + 20);
  if ((v7 - 1) >= 3)
  {
    v7 = 0;
  }

  *(a2 + 44) = v7;
  if ((v4 & 8) != 0)
  {
    goto LABEL_13;
  }

  return result;
}

{
  *(a2 + 36) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbSvId(a1, v4);
  v5 = ProtobufUtil::convert::cpbBand(*(a1 + 40));
  v6 = *(a2 + 36);
  v7 = *(a1 + 44);
  if ((v7 - 1) >= 3)
  {
    v7 = 0;
  }

  *(a2 + 16) = v5;
  *(a2 + 20) = v7;
  *(a2 + 36) = v6 | 0xE;
  v8 = *(a2 + 24);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 36);
  *(v8 + 8) = *(a1 + 48);
  result = *(a1 + 64);
  *(v8 + 36) = v9 | 7;
  *(v8 + 24) = result;
  return result;
}

double ProtobufUtil::convert::cpbReceivedTimeStamp(uint64_t a1, double *a2)
{
  v2 = *(a1 + 36);
  if (v2)
  {
    result = *(a1 + 8);
    *a2 = result;
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        return result;
      }

LABEL_7:
      result = *(a1 + 24);
      a2[2] = result;
      return result;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  a2[1] = result;
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

double ProtobufUtil::convert::cpbReceivedTimeStamp(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  *(a2 + 8) = *a1;
  result = *(a1 + 16);
  *(a2 + 36) = v2 | 7;
  *(a2 + 24) = result;
  return result;
}

void ProtobufUtil::convert::cpbMeasurementReportCallbackContents(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 132);
  if (v4)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
    }

    v6 = *(v5 + 36);
    if (v6)
    {
      *a2 = *(v5 + 8);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a2 + 8) = *(v5 + 16);
    if ((v6 & 4) != 0)
    {
LABEL_7:
      *(a2 + 16) = *(v5 + 24);
    }
  }

LABEL_8:
  if ((v4 & 2) != 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    ProtobufUtil::convert::cpbMeasurementReport(v7, a2 + 24);
  }

  v8 = *(a1 + 32);
  v9 = *(a2 + 152);
  v10 = *(a2 + 160);
  v11 = (v10 - v9) >> 8;
  if (v8 > v11)
  {
    v12 = v8 - v11;
    v13 = *(a2 + 168);
    if (v12 > (v13 - v10) >> 8)
    {
      if ((v8 & 0x80000000) != 0)
      {
        std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
      }

      v14 = v13 - v9;
      if (v14 >> 7 > v8)
      {
        v8 = v14 >> 7;
      }

      if (v14 >= 0x7FFFFFFFFFFFFF00)
      {
        v15 = 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v8;
      }

      if (!HIBYTE(v15))
      {
        operator new();
      }

      goto LABEL_87;
    }

    bzero(*(a2 + 160), v12 << 8);
    v16 = &v10[32 * v12];
    goto LABEL_30;
  }

  if (v8 < v11)
  {
    v16 = (v9 + (v8 << 8));
    while (v10 != v16)
    {
      v10 -= 32;
      std::allocator_traits<std::allocator<cCLP::LogEntry::PrivateData::SvInfo>>::destroy[abi:ne200100]<cCLP::LogEntry::PrivateData::SvInfo,0>(v10);
    }

LABEL_30:
    *(a2 + 160) = v16;
    goto LABEL_32;
  }

  v16 = *(a2 + 160);
LABEL_32:
  v17 = *(a2 + 152);
  if (v16 != v17)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      if (v19 >= *(a1 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
        v17 = *(a2 + 152);
      }

      ProtobufUtil::convert::cpbSvInfo(*(*(a1 + 24) + 8 * v19++), &v17[v18]);
      v17 = *(a2 + 152);
      v18 += 32;
    }

    while (v19 < (*(a2 + 160) - v17) >> 8);
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 176);
  v22 = *(a2 + 184);
  v23 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3);
  v24 = v20 - v23;
  if (v20 <= v23)
  {
    if (v20 >= v23)
    {
      goto LABEL_50;
    }

    v22 = v21 + 24 * v20;
  }

  else
  {
    v25 = *(a2 + 192);
    if (0xAAAAAAAAAAAAAAABLL * ((v25 - v22) >> 3) < v24)
    {
      if ((v20 & 0x80000000) != 0)
      {
        std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
      }

      v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v21) >> 3);
      if (2 * v26 > v20)
      {
        v20 = 2 * v26;
      }

      if (v26 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v20 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_87;
    }

    bzero(*(a2 + 184), 24 * ((24 * v24 - 24) / 0x18) + 24);
    v22 += 24 * ((24 * v24 - 24) / 0x18) + 24;
  }

  *(a2 + 184) = v22;
LABEL_50:
  v27 = *(a2 + 176);
  if (v22 != v27)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      if (v29 >= *(a1 + 56))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
        v27 = *(a2 + 176);
      }

      ProtobufUtil::convert::cpbReceiverBandCorrections(*(*(a1 + 48) + 8 * v29++), v27 + v28);
      v27 = *(a2 + 176);
      v28 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 184) - v27) >> 3) > v29);
  }

  v30 = *(a1 + 132);
  if ((v30 & 0x10) != 0)
  {
    v31 = *(a1 + 72);
    if (!v31)
    {
      v31 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
    }

    ProtobufUtil::convert::cpbTimeConversionInfo(v31, (a2 + 200));
    v30 = *(a1 + 132);
    if ((v30 & 0x20) == 0)
    {
LABEL_57:
      if ((v30 & 0x40) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_64;
    }
  }

  else if ((v30 & 0x20) == 0)
  {
    goto LABEL_57;
  }

  *(a2 + 432) = *(a1 + 80);
  if ((v30 & 0x40) == 0)
  {
LABEL_58:
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a2 + 440) = *(a1 + 88);
  if ((v30 & 0x80) == 0)
  {
    goto LABEL_68;
  }

LABEL_65:
  v32 = *(a1 + 96);
  if (!v32)
  {
    v32 = *(CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 96);
  }

  ProtobufUtil::convert::cpbKlobucharModelParameters(v32, a2 + 448);
LABEL_68:
  v33 = *(a1 + 112);
  v34 = *(a2 + 488);
  v35 = *(a2 + 496);
  v36 = 0x8E38E38E38E38E39 * ((v35 - v34) >> 3);
  v37 = v33 - v36;
  if (v33 <= v36)
  {
    if (v33 >= v36)
    {
      goto LABEL_81;
    }

    v35 = v34 + 72 * v33;
  }

  else
  {
    v38 = *(a2 + 504);
    if (0x8E38E38E38E38E39 * ((v38 - v35) >> 3) < v37)
    {
      if ((v33 & 0x80000000) != 0)
      {
        std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
      }

      v39 = 0x8E38E38E38E38E39 * ((v38 - v34) >> 3);
      if (2 * v39 > v33)
      {
        v33 = 2 * v39;
      }

      if (v39 >= 0x1C71C71C71C71C7)
      {
        v33 = 0x38E38E38E38E38ELL;
      }

      if (v33 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

LABEL_87:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(a2 + 496), 72 * ((72 * v37 - 72) / 0x48) + 72);
    v35 += 72 * ((72 * v37 - 72) / 0x48) + 72;
  }

  *(a2 + 496) = v35;
LABEL_81:
  v40 = *(a2 + 488);
  if (v35 != v40)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      if (v42 >= *(a1 + 112))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v43);
        v40 = *(a2 + 488);
      }

      ProtobufUtil::convert::cpbAntennaPhaseCenterSvOffset(*(*(a1 + 104) + 8 * v42++), v40 + v41);
      v40 = *(a2 + 488);
      v41 += 72;
    }

    while (0x8E38E38E38E38E39 * ((*(a2 + 496) - v40) >> 3) > v42);
  }
}

{
  *(a2 + 132) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  v5 = *(v4 + 36);
  *(v4 + 8) = *a1;
  v6 = *(a1 + 16);
  *(v4 + 36) = v5 | 7;
  *(v4 + 24) = v6;
  *(a2 + 132) |= 2u;
  v7 = *(a2 + 16);
  if (!v7)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbMeasurementReport(a1 + 24, v7);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), (*(a1 + 160) - *(a1 + 152)) >> 8);
  v8 = *(a1 + 152);
  if (*(a1 + 160) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a2 + 36);
      v12 = *(a2 + 32);
      if (v12 >= v11)
      {
        if (v11 == *(a2 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v11 + 1);
          v11 = *(a2 + 36);
        }

        *(a2 + 36) = v11 + 1;
        operator new();
      }

      v13 = *(a2 + 24);
      *(a2 + 32) = v12 + 1;
      ProtobufUtil::convert::cpbSvInfo(v8 + v9, *(v13 + 8 * v12));
      ++v10;
      v8 = *(a1 + 152);
      v9 += 256;
    }

    while (v10 < (*(a1 + 160) - v8) >> 8);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 48), -1431655765 * ((*(a1 + 184) - *(a1 + 176)) >> 3));
  v14 = *(a1 + 176);
  v15 = *(a1 + 184);
  if (v15 != v14)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(a2 + 60);
      v19 = *(a2 + 56);
      if (v19 >= v18)
      {
        if (v18 == *(a2 + 64))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 48), v18 + 1);
          v18 = *(a2 + 60);
        }

        *(a2 + 60) = v18 + 1;
        operator new();
      }

      v20 = *(a2 + 48);
      *(a2 + 56) = v19 + 1;
      v21 = *(v20 + 8 * v19);
      v22 = v14;
      v23 = (v14 + v16);
      v24 = ProtobufUtil::convert::cpbBand(*v23);
      v25 = *(v23 + 2);
      *(v21 + 8) = *(v23 + 1);
      v26 = *(v21 + 32);
      *(v21 + 16) = v24;
      *(v21 + 32) = v26 | 0xF;
      *(v21 + 20) = v25;
      ++v17;
      v16 += 24;
      v14 = v22;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v15 - v22) >> 3) > v17);
  }

  *(a2 + 132) |= 0x10u;
  v27 = *(a2 + 72);
  if (!v27)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbTimeConversionInfo(a1 + 200, v27);
  v28 = *(a2 + 132);
  *(a2 + 80) = *(a1 + 432);
  *(a2 + 132) = v28 | 0xE0;
  v29 = *(a2 + 96);
  if (!v29)
  {
    operator new();
  }

  v30 = *(v29 + 52);
  *(v29 + 8) = *(a1 + 448);
  *(v29 + 16) = *(a1 + 456);
  *(v29 + 52) = v30 | 0x1FF;
  *(v29 + 32) = *(a1 + 472);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 104), 954437177 * ((*(a1 + 496) - *(a1 + 488)) >> 3));
  v31 = *(a1 + 488);
  if (*(a1 + 496) != v31)
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = *(a2 + 116);
      v35 = *(a2 + 112);
      if (v35 >= v34)
      {
        if (v34 == *(a2 + 120))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 104), v34 + 1);
          v34 = *(a2 + 116);
        }

        *(a2 + 116) = v34 + 1;
        operator new();
      }

      v36 = *(a2 + 104);
      *(a2 + 112) = v35 + 1;
      ProtobufUtil::convert::cpbAntennaPhaseCenterSvOffset(v31 + v32, *(v36 + 8 * v35));
      ++v33;
      v31 = *(a1 + 488);
      v32 += 72;
    }

    while (0x8E38E38E38E38E39 * ((*(a1 + 496) - v31) >> 3) > v33);
  }
}

void sub_10006BC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::allocator<cCLP::LogEntry::PrivateData::Measurement>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 328);
  if (v2)
  {
    *(a1 + 336) = v2;
    operator delete(v2);
  }

  if (*(a1 + 319) < 0)
  {
    v3 = *(a1 + 296);

    operator delete(v3);
  }
}

void std::allocator_traits<std::allocator<cCLP::LogEntry::PrivateData::SvInfo>>::destroy[abi:ne200100]<cCLP::LogEntry::PrivateData::SvInfo,0>(void *a1)
{
  v2 = a1[26];
  if (v2)
  {
    a1[27] = v2;
    operator delete(v2);
  }

  v3 = a1[23];
  if (v3)
  {
    a1[24] = v3;
    operator delete(v3);
  }

  v4 = a1[20];
  if (v4)
  {
    a1[21] = v4;
    operator delete(v4);
  }

  v5 = a1[15];
  if (v5)
  {
    a1[16] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;

    operator delete(v6);
  }
}

uint64_t ProtobufUtil::convert::cpbResult(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 7;
  }

  else
  {
    return dword_100145CB0[a1 - 1];
  }
}

uint64_t ProtobufUtil::convert::cpbResult(unsigned int a1)
{
  if (a1 > 8)
  {
    return 1;
  }

  else
  {
    return dword_100145CD4[a1];
  }
}

uint64_t ProtobufUtil::convert::cpbGnssContent(int a1)
{
  if ((a1 - 2) >= 4)
  {
    return 0;
  }

  else
  {
    return (a1 - 1);
  }
}

{
  if ((a1 - 1) < 4)
  {
    return (a1 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t ProtobufUtil::convert::cpbEstimationTechnology(int a1)
{
  if ((a1 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return (a1 - 1);
  }
}

{
  if ((a1 - 1) < 3)
  {
    return (a1 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t ProtobufUtil::convert::cpbTimeQuality(int a1)
{
  if ((a1 - 2) >= 5)
  {
    return 0;
  }

  else
  {
    return (a1 - 1);
  }
}

{
  if ((a1 - 1) < 5)
  {
    return (a1 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t ProtobufUtil::convert::cpbPositionAssistType(int a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

{
  if (a1 == 1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t ProtobufUtil::convert::cpbReliability(int a1)
{
  if (a1 == 75)
  {
    v1 = 75;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 50)
  {
    v1 = 50;
  }

  if (a1 == 25)
  {
    v2 = 25;
  }

  else
  {
    v2 = 0;
  }

  if (a1 == 10)
  {
    v2 = 10;
  }

  if (a1 <= 49)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

{
  if (a1 == 75)
  {
    v1 = 75;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 50)
  {
    v1 = 50;
  }

  if (a1 == 25)
  {
    v2 = 25;
  }

  else
  {
    v2 = 1;
  }

  if (a1 == 10)
  {
    v2 = 10;
  }

  if (a1 <= 49)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

BOOL ProtobufUtil::convert::cpbPosition(ProtobufUtil::convert *this, const gnss::Position *a2, proto::gnss::Position *a3)
{
  v5 = *(a2 + 24);
  *(a2 + 8) = *this;
  *(a2 + 24) = *(this + 1);
  *(a2 + 40) = *(this + 2);
  *(a2 + 24) = v5 | 0xFF;
  *(a2 + 56) = *(this + 3);
  v6 = *(this + 16);
  v7 = *(this + 17);
  *(a2 + 24) = v5 | 0x1FF;
  *(a2 + 18) = v6;
  if (v7 == 75)
  {
    v8 = 75;
  }

  else
  {
    v8 = 1;
  }

  if (v7 == 50)
  {
    v8 = 50;
  }

  if (v7 == 25)
  {
    v9 = 25;
  }

  else
  {
    v9 = 1;
  }

  if (v7 == 10)
  {
    v9 = 10;
  }

  if (v7 <= 49)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  result = proto::gnss::Reliability_IsValid(v10);
  if (!result)
  {
    __assert_rtn("set_reliability", "GnssTypes.pb.h", 1975, "::proto::gnss::Reliability_IsValid(value)");
  }

  *(a2 + 19) = v10;
  *(a2 + 10) = *(this + 9);
  v12 = *(this + 20);
  if ((v12 - 1) < 4)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 1;
  }

  *(a2 + 24) = v5 | 0xFFF;
  *(a2 + 22) = v13;
  return result;
}

double ProtobufUtil::convert::cpbVelocity(ProtobufUtil::convert *this, const proto::gnss::Velocity *a2, gnss::Velocity *a3)
{
  v3 = *(this + 15);
  if (v3)
  {
    result = *(this + 1);
    *a2 = result;
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(this + 2);
  *(a2 + 1) = result;
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = *(this + 3);
  *(a2 + 2) = result;
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = *(this + 4);
  *(a2 + 3) = result;
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      return result;
    }

LABEL_13:
    result = *(this + 6);
    *(a2 + 5) = result;
    return result;
  }

LABEL_12:
  result = *(this + 5);
  *(a2 + 4) = result;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_13;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbVelocity(ProtobufUtil::convert *this, const gnss::Velocity *a2, proto::gnss::Velocity *a3)
{
  v3 = *(a2 + 15);
  *(a2 + 8) = *this;
  *(a2 + 24) = *(this + 1);
  *(a2 + 15) = v3 | 0x3F;
  result = *(this + 2);
  *(a2 + 40) = result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbTime(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(a2 + 12) = *(result + 20);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 16) = *(result + 64);
  v2 = *(result + 72);
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a2 + 24) = *(result + 24);
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 32) = *(result + 32);
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a2 + 40) = *(result + 40);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      return result;
    }

LABEL_19:
    *(a2 + 56) = *(result + 56);
    return result;
  }

LABEL_18:
  *(a2 + 48) = *(result + 48);
  if ((v2 & 0x100) != 0)
  {
    goto LABEL_19;
  }

  return result;
}

__n128 ProtobufUtil::convert::cpbTime(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(a2 + 8) = *a1;
  *(a2 + 16) = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 72) = v2 | 7;
  *(a2 + 20) = v3;
  *(a2 + 64) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 72) = v2 | 0x1FF;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void ProtobufUtil::convert::cpbFix(uint64_t a1, uint64_t a2, gnss::Velocity *a3)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    v9 = *(a1 + 8);
    if (!v9)
    {
      v9 = *(proto::gnss::Fix::default_instance_ + 8);
    }

    ProtobufUtil::convert::cpbTime(v9, a2);
    v5 = *(a1 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    v10 = *(proto::gnss::Fix::default_instance_ + 16);
  }

  ProtobufUtil::convert::cpbPosition(v10, a2 + 64);
  v5 = *(a1 + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  v11 = *(a1 + 24);
  if (!v11)
  {
    v11 = *(proto::gnss::Fix::default_instance_ + 24);
  }

  ProtobufUtil::convert::cpbVelocity(v11, (a2 + 152), a3);
  v5 = *(a1 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_19:
  *(a2 + 200) = *(a1 + 32);
  if ((v5 & 0x10) == 0)
  {
    return;
  }

LABEL_6:
  v6 = *(a1 + 40);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 3)
  {
    v8 = 0;
  }

  *(a2 + 208) = v8;
}

uint64_t ProtobufUtil::convert::cpbFix(ProtobufUtil::convert *this, const gnss::Fix *a2, proto::gnss::Fix *a3)
{
  *(a2 + 12) |= 1u;
  v5 = *(a2 + 1);
  if (!v5)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbTime(this, v5);
  *(a2 + 12) |= 2u;
  v7 = *(a2 + 2);
  if (!v7)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbPosition((this + 64), v7, v6);
  *(a2 + 12) |= 4u;
  result = *(a2 + 3);
  if (!result)
  {
    operator new();
  }

  v9 = *(result + 60);
  *(result + 8) = *(this + 152);
  *(result + 24) = *(this + 168);
  *(result + 60) = v9 | 0x3F;
  *(result + 40) = *(this + 184);
  v10 = *(a2 + 12);
  *(a2 + 4) = *(this + 25);
  v11 = *(this + 52);
  if ((v11 - 1) < 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  *(a2 + 12) = v10 | 0x18;
  *(a2 + 10) = v12;
  return result;
}

uint64_t ProtobufUtil::convert::cpbTimeTransferData(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    *a2 = *(result + 16);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(result + 8);
  if (!v5)
  {
    v5 = *(proto::gnss::TimeTransferData::default_instance_ + 8);
  }

  result = ProtobufUtil::convert::cpbTime(v5, a2 + 8);
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v6 = *(v3 + 20);
  v7 = v6 - 2;
  v8 = v6 - 1;
  if (v7 >= 5)
  {
    v8 = 0;
  }

  *(a2 + 72) = v8;
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 76) = *(v3 + 40);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_17:
  *(a2 + 80) = *(v3 + 24);
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(a2 + 88) = *(v3 + 32);
  return result;
}

__n128 ProtobufUtil::convert::cpbTimeTransferData(__n128 *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a2 + 16) = a1->n128_u8[0];
  *(a2 + 48) = v4 | 3;
  v5 = *(a2 + 8);
  if (!v5)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbTime(&a1->n128_i64[1], v5);
  v6 = *(a2 + 48);
  *(a2 + 48) = v6 | 4;
  v7 = a1[4].n128_u32[2];
  v8 = a1[4].n128_u32[3];
  if (v7 - 1 < 5)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = 1;
  }

  *(a2 + 20) = v9;
  *(a2 + 40) = v8;
  *(a2 + 48) = v6 | 0x3C;
  result = a1[5];
  *(a2 + 24) = result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbTimeTransferDataExtend(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 52);
  if (v4)
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(proto::gnss::TimeTransferDataExtend::default_instance_ + 8);
    }

    result = ProtobufUtil::convert::cpbTimeTransferData(v5, a2);
    v4 = *(v3 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  a2[12] = *(v3 + 16);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  a2[13] = *(v3 + 24);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_13:
  a2[14] = *(v3 + 32);
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  a2[15] = *(v3 + 40);
  return result;
}

__n128 ProtobufUtil::convert::cpbTimeTransferDataExtend(uint64_t a1, uint64_t a2)
{
  *(a2 + 52) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  ProtobufUtil::convert::cpbTimeTransferData(a1, v4);
  v5 = *(a2 + 52);
  *(a2 + 16) = *(a1 + 96);
  *(a2 + 52) = v5 | 0x1E;
  result = *(a1 + 112);
  *(a2 + 32) = result;
  return result;
}

float ProtobufUtil::convert::cpbRawPressureSample(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    result = *(a1 + 16);
    *(a2 + 8) = result;
    return result;
  }

  *a2 = *(a1 + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v2 = *(a2 + 24);
  *(a2 + 8) = *a1;
  result = *(a1 + 8);
  *(a2 + 24) = v2 | 3;
  *(a2 + 16) = result;
  return result;
}

float ProtobufUtil::convert::cpbSensorSample3Axis(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *a2 = *(a1 + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = *(a1 + 16);
  *(a2 + 8) = result;
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a1 + 24);
    *(a2 + 16) = result;
    return result;
  }

LABEL_8:
  result = *(a1 + 20);
  *(a2 + 12) = result;
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

{
  v2 = *(a2 + 32);
  *(a2 + 8) = *a1;
  *(a2 + 16) = *(a1 + 8);
  result = *(a1 + 16);
  *(a2 + 32) = v2 | 0xF;
  *(a2 + 24) = result;
  return result;
}

uint64_t ProtobufUtil::convert::cpbMotionActivityContext(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_100145CF8[a1 - 1];
  }
}

{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_100145D1C[a1 - 1];
  }
}

uint64_t ProtobufUtil::convert::cpbMovingState(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t ProtobufUtil::convert::cpbDeviceMountState(int a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

{
  if (a1 == 1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t ProtobufUtil::convert::cpbSignalEnvironmentType(uint64_t result)
{
  if ((result - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

{
  if ((result - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__n128 ProtobufUtil::convert::cpbSvId(__n128 *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  result = *a1;
  *(a2 + 32) = v2 | 1;
  result.n128_u32[1] = a1->n128_u32[1];
  *(a2 + 32) = v2 | 3;
  result.n128_u32[2] = a1->n128_u32[2];
  *(a2 + 32) = v2 | 7;
  result.n128_u32[3] = a1->n128_u32[3];
  *(a2 + 32) = v2 | 0xF;
  *(a2 + 8) = result;
  v4 = a1[1].n128_u32[0];
  *(a2 + 32) = v2 | 0x1F;
  *(a2 + 24) = v4;
  return result;
}

BOOL ProtobufUtil::convert::cpbDeleteGnssDataBitMask(int a1)
{
  return a1 != 0;
}

{
  return a1 != 0;
}

uint64_t ProtobufUtil::convert::cpbPwrMeasurement(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a2 + 16) = *(result + 24);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 32) = 0;
    return result;
  }

LABEL_10:
  *(a2 + 24) = *(result + 32);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t ProtobufUtil::convert::cpbPowerLoggingStatus()
{
  return 0;
}

{
  return 1;
}

__n128 ProtobufUtil::convert::cpbPwrMeasurement(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 8) = *a1;
  result = *(a1 + 16);
  *(a2 + 24) = result;
  *(a2 + 48) = v2 | 0x1F;
  *(a2 + 40) = 1;
  return result;
}

uint64_t ProtobufUtil::convert::cpbDecodedRti(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_5:
    *(a2 + 8) = *(result + 16);
    return result;
  }

  *a2 = *(result + 8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

{
  v2 = *(a2 + 24);
  *(a2 + 8) = *result;
  v3 = *(result + 8);
  *(a2 + 24) = v2 | 3;
  *(a2 + 16) = v3;
  return result;
}

uint64_t ProtobufUtil::convert::cpbDecodedExtendedEphemeris(uint64_t result, uint64_t a2)
{
  v2 = *(result + 36);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      *(a2 + 16) = *(result + 16);
      if ((v2 & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 24);
  if ((v2 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v2 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v3 = *(result + 28);
  if (v3 >= 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x3040002010000uLL >> (8 * v3);
  }

  *(a2 + 24) = v4;
  return result;
}

uint64_t *ProtobufUtil::convert::cpbDecodedExtendedEphemeris(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(a2 + 36);
  *(a2 + 24) = *(result + 8);
  v4 = result[2];
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  if ((*(result + 24) - 1) > 3u)
  {
    v5 = 1;
  }

  else
  {
    v5 = dword_100145AC0[(*(result + 24) - 1)];
  }

  *(a2 + 36) = v3 | 0xF;
  *(a2 + 28) = v5;
  return result;
}

uint64_t gnss::Convert::fromProtobuf(uint64_t result)
{
  if ((result - 25) > 0x32 || ((1 << (result - 25)) & 0x4000002000001) == 0)
  {
    if (result == 10)
    {
      return 10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t gnss::Convert::toProtobuf(uint64_t result)
{
  if ((result - 25) > 0x32 || ((1 << (result - 25)) & 0x4000002000001) == 0)
  {
    if (result == 10)
    {
      return 10;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

{
  if ((result - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t gnss::Convert::toProtobuf(int a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_100145D70[a1 - 1];
  }
}

float ProtobufUtil::toProtobuf(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(a2 + 8) = *a1;
  result = *(a1 + 8);
  *(a2 + 16) = result;
  v4 = *(a1 + 12);
  *(a2 + 72) = v2 | 7;
  *(a2 + 20) = v4;
  *(a2 + 64) = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 72) = v2 | 0x1F;
  *(a2 + 24) = v5;
  return result;
}

uint64_t ProtobufUtil::toProtobuf(int a1)
{
  if ((a1 + 1) >= 4)
  {
    return 0;
  }

  else
  {
    return (a1 + 2);
  }
}

{
  if ((a1 + 1) >= 5)
  {
    return 0;
  }

  else
  {
    return (a1 + 2);
  }
}

{
  if ((a1 + 1) >= 6)
  {
    return 0;
  }

  else
  {
    return (a1 + 2);
  }
}

{
  if ((a1 + 1) >= 4)
  {
    return 0;
  }

  else
  {
    return (a1 + 2);
  }
}

{
  if ((a1 + 1) >= 3)
  {
    return 0;
  }

  else
  {
    return (a1 + 2);
  }
}

{
  if (a1 == 255)
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 10)
  {
    v2 = 7;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 9)
  {
    v3 = 6;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == 8)
  {
    v4 = 5;
  }

  else
  {
    v4 = v3;
  }

  if (a1 <= 9)
  {
    v2 = v4;
  }

  if (a1 == 5)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (a1 == 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (a1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (a1 <= 2)
  {
    v6 = v8;
  }

  if (a1 <= 7)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

{
  if (a1 == 255)
  {
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 3)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (a1 <= 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

{
  if ((a1 + 1) >= 4)
  {
    return 0;
  }

  else
  {
    return (a1 + 2);
  }
}

uint64_t ProtobufUtil::toProtobuf(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 124);
  *(a2 + 8) = *a1;
  *(a2 + 24) = *(a1 + 16);
  *(a2 + 124) = v4 | 0x3F;
  *(a2 + 40) = *(a1 + 32);
  v6 = *(a1 + 48);
  v5 = *(a1 + 52);
  *(a2 + 56) = v6;
  v7 = ProtobufUtil::toProtobuf(v5);
  v9 = *(a1 + 56);
  v8 = *(a1 + 60);
  if (v9 < 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 60) = v7;
  *(a2 + 64) = v10;
  *(a2 + 68) = ProtobufUtil::toProtobuf(v8);
  *(a2 + 72) = *(a1 + 64);
  *(a2 + 88) = *(a1 + 80);
  *(a2 + 96) = ProtobufUtil::toProtobuf(*(a1 + 88));
  result = ProtobufUtil::toProtobuf(*(a1 + 92));
  *(a2 + 100) = result;
  *(a2 + 104) = *(a1 + 96);
  v12 = *(a1 + 104);
  *(a2 + 124) = v4 | 0x3FFFF;
  *(a2 + 112) = v12;
  LODWORD(v12) = *(a1 + 120);
  *(a2 + 124) = v4 | 0x7FFFF;
  *(a2 + 108) = v12;
  return result;
}

uint64_t ProtobufUtil::toProtobuf(ProtobufUtil *this, const gnss::Emergency::Supl::LocationId *a2, proto::gnss::Emergency::LocationId *a3)
{
  v5 = ProtobufUtil::toProtobuf(*this);
  *(a2 + 22) |= 1u;
  *(a2 + 20) = v5;
  v6 = -1227133513 * ((*(this + 2) - *(this + 1)) >> 2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8), v6);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 & 0x7FFFFFFF;
    do
    {
      v9 = *(this + 1);
      v10 = *(a2 + 5);
      v11 = *(a2 + 4);
      if (v11 >= v10)
      {
        if (v10 == *(a2 + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8), v10 + 1);
          v10 = *(a2 + 5);
        }

        *(a2 + 5) = v10 + 1;
        operator new();
      }

      v12 = *(a2 + 1);
      *(a2 + 4) = v11 + 1;
      ProtobufUtil::toProtobuf(v9 + v7, *(v12 + 8 * v11));
      v7 += 28;
      --v8;
    }

    while (v8);
  }

  v13 = *(this + 5) - *(this + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 32), v13 >> 4);
  if ((v13 >> 4) >= 1)
  {
    v14 = 0;
    v15 = (v13 >> 4) & 0x7FFFFFFF;
    do
    {
      v16 = *(this + 4);
      v17 = *(a2 + 11);
      v18 = *(a2 + 10);
      if (v18 >= v17)
      {
        if (v17 == *(a2 + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 32), v17 + 1);
          v17 = *(a2 + 11);
        }

        *(a2 + 11) = v17 + 1;
        operator new();
      }

      v19 = *(a2 + 4);
      *(a2 + 10) = v18 + 1;
      v20 = *(v19 + 8 * v18);
      v21 = *(v20 + 32);
      *(v20 + 8) = *(v16 + v14);
      v22 = *(v16 + v14 + 2);
      *(v20 + 32) = v21 | 7;
      v23 = *(v16 + v14 + 4);
      *(v20 + 12) = v22;
      *(v20 + 16) = v23;
      v24 = *(v16 + v14 + 8);
      *(v20 + 32) = v21 | 0xF;
      v25 = *(v16 + v14 + 12);
      *(v20 + 32) = v21 | 0x1F;
      *(v20 + 20) = v24;
      *(v20 + 24) = v25;
      v14 += 16;
      --v15;
    }

    while (v15);
  }

  v26 = *(this + 8) - *(this + 7);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 56), v26 >> 5);
  if ((v26 >> 5) >= 1)
  {
    v28 = 0;
    v29 = (v26 >> 5) & 0x7FFFFFFF;
    do
    {
      v30 = *(this + 7);
      v31 = *(a2 + 17);
      v32 = *(a2 + 16);
      if (v32 >= v31)
      {
        if (v31 == *(a2 + 18))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 56), v31 + 1);
          v31 = *(a2 + 17);
        }

        *(a2 + 17) = v31 + 1;
        operator new();
      }

      v33 = *(a2 + 7);
      *(a2 + 16) = v32 + 1;
      result = ProtobufUtil::toProtobuf(v30 + v28, *(v33 + 8 * v32));
      v28 += 32;
      --v29;
    }

    while (v29);
  }

  return result;
}