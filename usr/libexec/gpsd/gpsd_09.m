void ProtobufUtil::fromProtobuf(uint64_t a1, uint64_t *a2)
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
          v11 = 0x492492492492492;
        }

        else
        {
          v11 = v4;
        }

        if (v11 <= 0x492492492492492)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 + 56 * v8;
    do
    {
      *v6 = 0uLL;
      *(v6 + 16) = 0uLL;
      *(v6 + 24) = -1;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      v6 += 56;
    }

    while (v6 != v12);
    goto LABEL_17;
  }

  if (v4 < v7)
  {
    v12 = v5 + 56 * v4;
    while (v6 != v12)
    {
      v6 -= 56;
      std::allocator<cproto::gpsd::RecoveryStatistics::RecoveryPoint>::destroy[abi:ne200100](v6);
    }

LABEL_17:
    a2[1] = v12;
    goto LABEL_19;
  }

  v12 = a2[1];
LABEL_19:
  v13 = *(a1 + 16);
  v14 = -1227133513 * ((v12 - *a2) >> 3);
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if (v15 >= 1)
  {
    v16 = 0;
    for (i = 0; i != v15; ++i)
    {
      if (i >= *(a1 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
      }

      ProtobufUtil::fromProtobuf(*(*(a1 + 8) + 8 * i), (*a2 + v16));
      v16 += 56;
    }
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    v18 = *(a1 + 32);
    if (!v18)
    {
      v18 = *(proto::gpsd::RecoveryStatistics::default_instance_ + 32);
    }

    ProtobufUtil::fromProtobuf(v18, (a2 + 3));
  }
}

void sub_100076FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *ProtobufUtil::toProtobuf(_DWORD *result, uint64_t a2)
{
  v2 = *result + 2;
  if ((*result + 1) >= 4)
  {
    v2 = 0;
  }

  *(a2 + 16) |= 1u;
  *(a2 + 8) = v2;
  return result;
}

void ProtobufUtil::fromProtobuf(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 52);
  if (v4)
  {
    *a2 = *(a1 + 8);
    v4 = *(a1 + 52);
  }

  if ((v4 & 2) != 0)
  {
    a2[1] = *(a1 + 12);
  }

  v5 = *(a1 + 24);
  if (v5 >= 1)
  {
    v6 = 0;
    if (v5 >= 0x87)
    {
      v7 = 135;
    }

    else
    {
      v7 = v5;
    }

    do
    {
      if (v6 >= *(a1 + 24))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      a2[v6 + 2] = *(*(a1 + 16) + 4 * v6);
      ++v6;
    }

    while (v7 != v6);
  }

  v8 = *(a1 + 40);
  if (v8 >= 1)
  {
    v9 = 0;
    if (v8 >= 0x87)
    {
      v10 = 135;
    }

    else
    {
      v10 = v8;
    }

    do
    {
      if (v9 >= *(a1 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      *(a2 + v9 + 274) = *(*(a1 + 32) + 4 * v9);
      ++v9;
    }

    while (v10 != v9);
  }
}

void sub_1000772C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000773C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *ProtobufUtil::fromProtobuf(void *result, _BYTE *__dst)
{
  v3 = result;
  v4 = *(result + 8);
  if ((v4 & 2) != 0)
  {
    __dst[6] = *(result + 16);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  __dst[7] = *(result + 17);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(__dst + 4) = *(result + 5);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v5 = *(result + 1);
  v6 = *(v5 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *v5;
    v6 = *(*(result + 1) + 8);
  }

  if (v6)
  {
    result = memmove(__dst, v5, v6);
    v4 = v3[8];
  }

LABEL_13:
  if ((v4 & 0x10) != 0)
  {
    *(__dst + 5) = v3[6];
  }

  return result;
}

void sub_10007786C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::vector<gnss::Emergency::Supl::WlanMeasurementElement>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<gnss::Emergency::Supl::WlanMeasurementElement>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

BOOL ProtobufUtil::fromProtobuf(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a2 != 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    v2 = *(proto::gnss::Fix::default_instance_ + 8);
  }

  *a2 = *(v2 + 8);
  *(a2 + 8) = *(v2 + 16);
  *(a2 + 12) = *(v2 + 20);
  *(a2 + 16) = *(v2 + 64);
  *(a2 + 24) = *(v2 + 24);
  v3 = *(a1 + 16);
  if (!v3)
  {
    v3 = *(proto::gnss::Fix::default_instance_ + 16);
  }

  *(a2 + 48) = *(v3 + 8);
  *(a2 + 64) = *(v3 + 24);
  *(a2 + 80) = *(v3 + 40);
  *(a2 + 96) = *(v3 + 56);
  v4 = *(v3 + 76);
  if (v4 <= 0x32)
  {
    if (((1 << v4) & 0x4000002000400) != 0)
    {
LABEL_11:
      *(a2 + 116) = v4;
      goto LABEL_12;
    }

    if (((1 << v4) & 3) != 0)
    {
      v4 = 0;
      goto LABEL_11;
    }
  }

  if (v4 == 75)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(a2 + 120) = *(v3 + 80);
  v5 = *(v3 + 88);
  if (v5 <= 5)
  {
    *(a2 + 128) = dword_100146040[v5];
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    v6 = *(proto::gnss::Fix::default_instance_ + 24);
  }

  *(a2 + 136) = *(v6 + 8);
  *(a2 + 152) = *(v6 + 24);
  *(a2 + 168) = *(v6 + 40);
  *(a2 + 184) = *(a1 + 32);
  if (*(a1 + 40) <= 4u)
  {
    *(a2 + 192) = 0;
  }

  return a2 != 0;
}

uint64_t ProtobufUtil::fromProtobuf(uint64_t a1, int *a2, float *a3, void *a4)
{
  if ((*(a1 + 76) & 2) != 0)
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 16);
    }

    if (*(v9 + 24))
    {
      if (*(v9 + 52))
      {
        v14 = *(v9 + 8);
        if (!v14)
        {
          v14 = *(CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8);
        }

        v15 = *(v14 + 8);
        *a2 = v15;
        v16 = *(v14 + 12);
        *a3 = v16;
        if ((LODWORD(v16) & 0x7FFFFFFFu) > 0x7F7FFFFF || v16 < 0.0 || v16 >= 604800.0)
        {
          v17 = GpsdLogObjectWarning;
          if (!os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
          {
            return 0;
          }

          *buf = 67240448;
          *&buf[4] = v15;
          LOWORD(v75) = 2050;
          *(&v75 + 2) = v16;
          v5 = "#rof,fromProtobuf,invalid applicability time,week,%{public}u,tow,%{public}.2f.";
          v10 = v17;
          v11 = 18;
          goto LABEL_13;
        }

        v18 = *(v9 + 24);
        if (!v18)
        {
          return 1;
        }

        v19 = *(v9 + 16);
        v68 = &v19[v18];
        while (1)
        {
          v20 = *v19;
          if ((~*(*v19 + 64) & 0xF) != 0)
          {
            break;
          }

          v73 = 0.0;
          *__p = 0u;
          v72 = 0u;
          v69 = 0u;
          *v70 = 0u;
          v69 = *(v20 + 8);
          v73 = *(v20 + 56);
          v21 = *(v20 + 32);
          if (((DWORD2(v69) + 2 + (DWORD2(v69) + 2) * DWORD2(v69)) >> 1) - ((DWORD2(v69) - HIDWORD(v69) + (DWORD2(v69) - HIDWORD(v69)) * (DWORD2(v69) - HIDWORD(v69))) >> 1) == v21)
          {
            std::vector<float>::reserve(v70, v21);
            v22 = *(v20 + 32);
            if (v22)
            {
              v23 = *(v20 + 24);
              v24 = 4 * v22;
              do
              {
                std::vector<float>::push_back[abi:ne200100](v70, v23++);
                v24 -= 4;
              }

              while (v24);
            }
          }

          v25 = *(v20 + 48);
          if (~DWORD2(v69) + ((DWORD2(v69) + 2 + (DWORD2(v69) + 2) * DWORD2(v69)) >> 1) - ((DWORD2(v69) - HIDWORD(v69) + (DWORD2(v69) - HIDWORD(v69)) * (DWORD2(v69) - HIDWORD(v69))) >> 1) == v25)
          {
            std::vector<float>::reserve(&__p[1], v25);
            v26 = *(v20 + 48);
            if (v26)
            {
              v27 = *(v20 + 40);
              v28 = 4 * v26;
              do
              {
                std::vector<float>::push_back[abi:ne200100](&__p[1], v27++);
                v28 -= 4;
              }

              while (v28);
            }
          }

          v29 = v69;
          if (v69 > 3)
          {
            goto LABEL_54;
          }

          if (DWORD2(v69) > 0xF || HIDWORD(v69) > DWORD2(v69))
          {
            goto LABEL_54;
          }

          v31 = (LODWORD(v73) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
          v32 = v73 < 0.0 && ((LODWORD(v73) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
          if (v73 >= 0.0)
          {
            v31 = 0;
          }

          v33 = (LODWORD(v73) & 0x7FFFFFFF) == 0x7F800000 || v31;
          if ((LODWORD(v73) & 0x7FFFFFFFu) > 0x7F800000)
          {
            v33 = 1;
          }

          if (((v33 | v32) & 1) != 0 || !gnss::SphericalHarmonicsIonosphereParameters::isValidCosCoeffs(&v69) || !gnss::SphericalHarmonicsIonosphereParameters::isValidSinCoeffs(&v69))
          {
LABEL_54:
            v37 = GpsdLogObjectWarning;
            v12 = 0;
            if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
            {
              v67 = v19;
              v38 = *v8;
              v39 = *v7;
              v41 = DWORD1(v69);
              v40 = DWORD2(v69);
              v42 = HIDWORD(v69);
              if (gnss::SphericalHarmonicsIonosphereParameters::isValidCosCoeffs(&v69))
              {
                v43 = "true";
              }

              else
              {
                v43 = "false";
              }

              v66 = v43;
              if (v70[1] == v70[0])
              {
                v44 = 0.0;
              }

              else
              {
                v44 = *v70[0];
              }

              v45 = v39;
              v46 = (v40 + 2 + (v40 + 2) * v40) >> 1;
              v47 = (v40 - v42 + (v40 - v42) * (v40 - v42)) >> 1;
              v48 = (v70[1] - v70[0]) >> 2;
              isValidSinCoeffs = gnss::SphericalHarmonicsIonosphereParameters::isValidSinCoeffs(&v69);
              v50 = "false";
              if (isValidSinCoeffs)
              {
                v50 = "true";
              }

              *buf = 67243522;
              *&buf[4] = v38;
              LOWORD(v75) = 2050;
              *(&v75 + 2) = v45;
              WORD5(v75) = 1026;
              HIDWORD(v75) = v29;
              LOWORD(v76) = 1026;
              *(&v76 + 2) = v41;
              HIWORD(v76) = 1026;
              *v77 = v40;
              *&v77[4] = 1026;
              *&v77[6] = v42;
              v78 = 2082;
              v79 = v66;
              v80 = 1026;
              v81 = v46 - v47;
              v82 = 2050;
              v83 = v48;
              v84 = 2050;
              v85 = v44;
              v86 = 2082;
              v87 = v50;
              v88 = 1026;
              v89 = v46 + ~v40 - v47;
              v90 = 2050;
              v91 = (v72 - __p[1]) >> 2;
              v92 = 2050;
              v93 = v73;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#rof,fromProtobuf,invalid ionospheric parameters,week,%{public}u,towSec,%{public}.2f,layerNumber,%{public}u,height,%{public}u,degreeN,%{public}u,orderM,%{public}u,cosCoeffsValidity,%{public}s,expectedCosCoeffsNum,%{public}u,actualCosCoeffsNum,%{public}zu,C0,%{public}.3f,sinCoeffsValidity,%{public}s,expectedSinCoeffsNum,%{public}u,actualSinCoeffsNum,%{public}zu,vtecQualityIndicator,%{public}.2f", buf, 0x72u);
              v12 = 0;
              v7 = a3;
              v6 = a4;
              v8 = a2;
              v19 = v67;
            }
          }

          else
          {
            v35 = v6[1];
            v34 = v6[2];
            if (v35 >= v34)
            {
              v52 = 0x8E38E38E38E38E39 * ((v35 - *v6) >> 3);
              v53 = v52 + 1;
              if (v52 + 1 > 0x38E38E38E38E38ELL)
              {
                std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
              }

              v54 = 0x8E38E38E38E38E39 * ((v34 - *v6) >> 3);
              if (2 * v54 > v53)
              {
                v53 = 2 * v54;
              }

              if (v54 >= 0x1C71C71C71C71C7)
              {
                v55 = 0x38E38E38E38E38ELL;
              }

              else
              {
                v55 = v53;
              }

              *v77 = v6;
              if (v55)
              {
                if (v55 <= 0x38E38E38E38E38ELL)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v56 = 72 * v52;
              *buf = 0;
              *&v75 = v56;
              *(&v75 + 1) = v56;
              v76 = 0;
              *v56 = v69;
              *(v56 + 16) = 0;
              *(v56 + 24) = 0;
              *(v56 + 32) = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v56 + 16, v70[0], v70[1], (v70[1] - v70[0]) >> 2);
              *(v56 + 40) = 0;
              *(v56 + 48) = 0;
              *(v56 + 56) = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v56 + 40, __p[1], v72, (v72 - __p[1]) >> 2);
              *(v56 + 64) = v73;
              v36 = *(&v75 + 1) + 72;
              *(&v75 + 1) += 72;
              v58 = *v6;
              v57 = v6[1];
              v59 = v75 + *v6 - v57;
              if (*v6 != v57)
              {
                v60 = *v6;
                v61 = v75 + *v6 - v57;
                do
                {
                  *v61 = *v60;
                  *(v61 + 24) = 0;
                  *(v61 + 32) = 0;
                  *(v61 + 16) = 0;
                  *(v61 + 16) = *(v60 + 1);
                  *(v61 + 32) = v60[4];
                  v60[2] = 0;
                  v60[3] = 0;
                  v60[4] = 0;
                  *(v61 + 40) = 0;
                  *(v61 + 48) = 0;
                  *(v61 + 56) = 0;
                  *(v61 + 40) = *(v60 + 5);
                  *(v61 + 56) = v60[7];
                  v60[5] = 0;
                  v60[6] = 0;
                  v60[7] = 0;
                  *(v61 + 64) = *(v60 + 16);
                  v60 += 9;
                  v61 += 72;
                }

                while (v60 != v57);
                do
                {
                  std::allocator<gnss::SphericalHarmonicsIonosphereParameters>::destroy[abi:ne200100](v6, v58);
                  v58 += 9;
                }

                while (v58 != v57);
                v58 = *v6;
                v36 = *(&v75 + 1);
              }

              *v6 = v59;
              v6[1] = v36;
              v62 = v6[2];
              v6[2] = v76;
              *(&v75 + 1) = v58;
              v76 = v62;
              *buf = v58;
              *&v75 = v58;
              std::__split_buffer<gnss::SphericalHarmonicsIonosphereParameters>::~__split_buffer(buf);
            }

            else
            {
              *v35 = v69;
              *(v35 + 16) = 0;
              *(v35 + 24) = 0;
              *(v35 + 32) = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v35 + 16, v70[0], v70[1], (v70[1] - v70[0]) >> 2);
              *(v35 + 40) = 0;
              *(v35 + 48) = 0;
              *(v35 + 56) = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v35 + 40, __p[1], v72, (v72 - __p[1]) >> 2);
              *(v35 + 64) = v73;
              v36 = v35 + 72;
              v6[1] = v35 + 72;
            }

            v6[1] = v36;
            v12 = 1;
          }

          if (__p[1])
          {
            *&v72 = __p[1];
            operator delete(__p[1]);
          }

          if (v70[0])
          {
            v70[1] = v70[0];
            operator delete(v70[0]);
          }

          if (++v19 == v68)
          {
            v51 = 0;
          }

          else
          {
            v51 = v12;
          }

          if ((v51 & 1) == 0)
          {
            return v12;
          }
        }

        v4 = GpsdLogObjectWarning;
        if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v5 = "#rof,fromProtobuf,incomplete sh-iono-model layer.";
          goto LABEL_12;
        }
      }

      else
      {
        v4 = GpsdLogObjectWarning;
        if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v5 = "#rof,fromProtobuf,no applicability time.";
          goto LABEL_12;
        }
      }
    }

    else
    {
      v4 = GpsdLogObjectWarning;
      if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = "#rof,fromProtobuf,no ionospheric model layers.";
        goto LABEL_12;
      }
    }
  }

  else
  {
    v4 = GpsdLogObjectWarning;
    if (os_log_type_enabled(GpsdLogObjectWarning, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "#rof,fromProtobuf,no ionosphere corrections.";
LABEL_12:
      v10 = v4;
      v11 = 2;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v5, buf, v11);
    }
  }

  return 0;
}

void sub_1000785CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 24) = v14;
    operator delete(v14);
  }

  *(a7 + 8) = v11;
  gnss::SphericalHarmonicsIonosphereParameters::~SphericalHarmonicsIonosphereParameters(va);
  _Unwind_Resume(a1);
}

BOOL gnss::SphericalHarmonicsIonosphereParameters::isValidCosCoeffs(gnss::SphericalHarmonicsIonosphereParameters *this)
{
  v2 = *(this + 2);
  v1 = *(this + 3);
  v3 = *(this + 2);
  if (((v3 + 2 + (v3 + 2) * v3) >> 1) - ((v3 - *(this + 3) + (v3 - *(this + 3)) * (v3 - *(this + 3))) >> 1) != v1 - v2)
  {
    return 0;
  }

  v4 = *v2;
  if (*v2 < 1.0 || v4 > 1000.0)
  {
    return 0;
  }

  for (result = 1; v2 != v1; ++v2)
  {
    result = result && (*v2 & 0x7FFFFFFFu) <= 0x7F7FFFFF && fabsf(*v2) <= v4;
  }

  return result;
}

BOOL gnss::SphericalHarmonicsIonosphereParameters::isValidSinCoeffs(gnss::SphericalHarmonicsIonosphereParameters *this)
{
  v2 = *(this + 5);
  v1 = *(this + 6);
  v3 = *(this + 2);
  if (~v3 + ((v3 + 2 + (v3 + 2) * v3) >> 1) - ((v3 - *(this + 3) + (v3 - *(this + 3)) * (v3 - *(this + 3))) >> 1) != v1 - v2)
  {
    return 0;
  }

  v4 = **(this + 2);
  if (v4 < 1.0 || v4 > 1000.0)
  {
    return 0;
  }

  for (result = 1; v2 != v1; ++v2)
  {
    result = result && (*v2 & 0x7FFFFFFFu) <= 0x7F7FFFFF && fabsf(*v2) <= v4;
  }

  return result;
}

double ProtobufUtil::shorthandStringify@<D0>(int a1@<W0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = "INJECT_TIME";
  switch(a1)
  {
    case 8:
      v3 = "INJECT_POSITION";
      goto LABEL_45;
    case 9:
      goto LABEL_45;
    case 10:
      v3 = "INJECT_FILE";
      goto LABEL_45;
    case 11:
      v3 = "INJECT_RTI";
      goto LABEL_45;
    case 12:
      v3 = "INJECT_BLOCKLIST";
      goto LABEL_45;
    case 14:
      v3 = "ACCEL";
      goto LABEL_45;
    case 15:
      v3 = "GYRO";
      goto LABEL_45;
    case 16:
      v3 = "DEM";
      goto LABEL_45;
    case 17:
      v3 = "MAP_VECTOR";
      goto LABEL_45;
    case 18:
      v3 = "MOTION_CONTEXT";
      goto LABEL_45;
    case 19:
      v3 = "MOUNT_STATE";
      goto LABEL_45;
    case 20:
      v3 = "SIGNAL_ENV";
      goto LABEL_45;
    case 21:
      v3 = "SPEED_CONSTRAINT";
      goto LABEL_45;
    case 22:
      v3 = "ALONG_TRACK_VEL";
      goto LABEL_45;
    case 23:
      v3 = "SET_POWER_REPORT";
      goto LABEL_45;
    case 24:
      v3 = "CONFIG_SIM";
      goto LABEL_45;
    case 25:
      v3 = "CONFIG_CONSTELL";
      goto LABEL_45;
    case 26:
      v3 = "CONFIG_DUTY";
      goto LABEL_45;
    case 27:
      v3 = "SET_TT_PULSE";
      goto LABEL_45;
    case 28:
      v3 = "CLEAN_TT_PULSE";
      goto LABEL_45;
    case 31:
      v3 = "THERMAL_RISK";
      goto LABEL_45;
    case 35:
      v3 = "TERM_IMMINENT";
      goto LABEL_45;
    case 37:
      v3 = "FORCE_CLEAR";
      goto LABEL_45;
    case 38:
      v3 = "CONFIG_BANDS";
      goto LABEL_45;
    case 39:
      v3 = "INJECT_RAVEN_ORBIT_FILE";
      goto LABEL_45;
    case 51:
      v3 = "START_PREEMPT";
      goto LABEL_45;
    case 52:
      v3 = "STOP_PREEMPT";
      goto LABEL_45;
    case 53:
      v3 = "EMERG_CONFIG";
      goto LABEL_45;
    case 54:
      v3 = "EMERG_SUMMARY";
      goto LABEL_45;
    case 60:
      v3 = "START_EMERG";
      goto LABEL_45;
    case 61:
      v3 = "STOP_EMERG";
      goto LABEL_45;
    case 62:
      v3 = "EMERG_POS_RPT";
      goto LABEL_45;
    case 64:
      v3 = "NW_NEEDED_RPT";
      goto LABEL_45;
    case 65:
      v3 = "NW_REF_TIME";
      goto LABEL_45;
    case 66:
      v3 = "NW_REF_POS";
      goto LABEL_45;
    case 67:
      v3 = "NW_EPHEM";
      goto LABEL_45;
    case 68:
      v3 = "NW_GPS_ACQUISITION";
      goto LABEL_45;
    case 69:
      v3 = "INJECT_FTA_1x";
      goto LABEL_45;
    case 70:
      v3 = "DEC_SUPL_INIT";
      goto LABEL_45;
    case 71:
      v3 = "SUPL_INIT";
      goto LABEL_45;
    case 72:
      v3 = "SUPL_LOCID_NEED";
      goto LABEL_45;
    case 73:
      v3 = "SUPL_LOCID";
      goto LABEL_45;
    case 74:
      v3 = "ABORT_SUPL";
      goto LABEL_45;
    case 75:
      v3 = "SUPL_STATUS";
LABEL_45:
      std::string::assign(a2, v3);
      break;
    default:
      ProtobufUtil::stringify(a1, &v5);
      result = *&v5;
      *&a2->__r_.__value_.__l.__data_ = v5;
      a2->__r_.__value_.__r.__words[2] = v6;
      break;
  }

  return result;
}

void sub_100078A08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ProtobufUtil::decodeCoexConfig(ProtobufUtil *this, const proto::gpsd::Request *a2)
{
  v3 = *(GpsdPlatformInfo::instance(0) + 8) - 103;
  v4 = v3 > 4;
  v5 = (1 << v3) & 0x19;
  if (!v4 && v5 != 0)
  {
    if ((*(this + 399) & 8) == 0)
    {
      v7 = 0;
LABEL_7:
      v8 = 0;
      goto LABEL_26;
    }

    v9 = *(this + 27);
    v10 = v9;
    if (!v9)
    {
      v10 = *(proto::gpsd::Request::default_instance_ + 216);
    }

    if (*(v10 + 16) == 1)
    {
      v11 = GpsdPreferences::instance(0);
      if (GpsdPreferences::useB14LteFilterSettingsForB13(v11))
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      if ((*(this + 399) & 8) == 0)
      {
        goto LABEL_7;
      }

      v9 = *(this + 27);
      if (!v9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v7 = 0;
      if (!v9)
      {
LABEL_24:
        v9 = *(proto::gpsd::Request::default_instance_ + 216);
      }
    }

    v8 = *(v9 + 18);
LABEL_26:
    v15 = GpsdLogObjectGeneral;
    if (!os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return v7 | (v8 << 32);
    }

    v19 = 134349824;
    v16 = v7 | (v8 << 32);
    v20 = v16;
    v21 = 1026;
    v22 = v7;
    v23 = 1026;
    v24 = 0;
    v25 = 1026;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#gdm,decodeCoexConfig,#coexConfig,0x%{public}llx,lte,%{public}d,blanking,%{public}d,bitMask,%{public}uX", &v19, 0x1Eu);
    return v16;
  }

  if ((*(GpsdPlatformInfo::instance(0) + 8) - 301) > 1)
  {
    return 0;
  }

  if ((*(this + 399) & 8) == 0)
  {
    goto LABEL_22;
  }

  v12 = *(this + 27);
  if (!v12)
  {
    v12 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  if ((*(v12 + 24) & 8) != 0)
  {
    v13 = *(v12 + 8);
    v14 = 1;
  }

  else
  {
LABEL_22:
    v13 = 0;
    v14 = 0;
  }

  v18 = GpsdPreferences::instance(0);

  return GpsdPreferences::determineLibindusFinalCoExConfig(v18, v13, v14);
}

void gnss::SphericalHarmonicsIonosphereParameters::~SphericalHarmonicsIonosphereParameters(gnss::SphericalHarmonicsIonosphereParameters *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void std::vector<gnss::Emergency::Supl::WlanMeasurementElement>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 12 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 8) = 0x7FFFFFFF;
        v3 += 12;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0x1555555555555555)
    {
      std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x1555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 12 * v5;
    v11 = 12 * v5 + 12 * a2;
    v12 = v10;
    do
    {
      *v12 = 0;
      *(v12 + 8) = 0x7FFFFFFF;
      v12 += 12;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v10 - v14;
    memcpy((v10 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(result, a4);
    }

    std::vector<gnss::SensorSample3Axis>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_100078EB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<gnss::SphericalHarmonicsIonosphereParameters>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 72;
    std::allocator<gnss::SphericalHarmonicsIonosphereParameters>::destroy[abi:ne200100](v4, (i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t CLP::LogEntry::protobuf_ShutdownFile_CLPLogEntry_2eproto(CLP::LogEntry *this)
{
  if (CLP::LogEntry::LogEntry::default_instance_)
  {
    (*(*CLP::LogEntry::LogEntry::default_instance_ + 8))(CLP::LogEntry::LogEntry::default_instance_);
  }

  result = CLP::LogEntry::LogEntry_TimeStamp::default_instance_;
  if (CLP::LogEntry::LogEntry_TimeStamp::default_instance_)
  {
    v2 = *(*CLP::LogEntry::LogEntry_TimeStamp::default_instance_ + 8);

    return v2();
  }

  return result;
}

void CLP::LogEntry::protobuf_AddDesc_CLPLogEntry_2eproto(CLP::LogEntry *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((CLP::LogEntry::protobuf_AddDesc_CLPLogEntry_2eproto(void)::already_here & 1) == 0)
  {
    CLP::LogEntry::protobuf_AddDesc_CLPLogEntry_2eproto(void)::already_here = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/CLPLogEntry.pb.cc", a4);
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPPrivateDataCapture_2eproto(v4, v5, v6, v7);
    operator new();
  }
}

double CLP::LogEntry::LogEntry_TimeStamp::LogEntry_TimeStamp(CLP::LogEntry::LogEntry_TimeStamp *this)
{
  *this = off_100173FF8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = off_100173FF8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void CLP::LogEntry::LogEntry::InitAsDefaultInstance(CLP::LogEntry::LogEntry *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = CLP::LogEntry::LogEntry_TimeStamp::default_instance_;
  if (!CLP::LogEntry::LogEntry_TimeStamp::default_instance_)
  {
    CLP::LogEntry::protobuf_AddDesc_CLPLogEntry_2eproto(this, a2, a3, a4);
    v5 = CLP::LogEntry::LogEntry_TimeStamp::default_instance_;
  }

  *(this + 4) = v5;
  v6 = CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_;
  if (!CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPPrivateDataCapture_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_;
  }

  *(this + 5) = v6;
}

double CLP::LogEntry::LogEntry_TimeStamp::SharedCtor(CLP::LogEntry::LogEntry_TimeStamp *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::LogEntry_TimeStamp *CLP::LogEntry::LogEntry_TimeStamp::LogEntry_TimeStamp(CLP::LogEntry::LogEntry_TimeStamp *this, const CLP::LogEntry::LogEntry_TimeStamp *a2)
{
  *this = off_100173FF8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::LogEntry_TimeStamp::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::LogEntry_TimeStamp::MergeFrom(CLP::LogEntry::LogEntry_TimeStamp *this, const CLP::LogEntry::LogEntry_TimeStamp *a2)
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
      result = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = result;
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
    v6 = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = v6;
  }

  return result;
}

void sub_100079318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CLP::LogEntry::LogEntry_TimeStamp::default_instance(CLP::LogEntry::LogEntry_TimeStamp *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::LogEntry_TimeStamp::default_instance_;
  if (!CLP::LogEntry::LogEntry_TimeStamp::default_instance_)
  {
    CLP::LogEntry::protobuf_AddDesc_CLPLogEntry_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::LogEntry_TimeStamp::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::LogEntry_TimeStamp::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::LogEntry_TimeStamp::MergePartialFromCodedStream(CLP::LogEntry::LogEntry_TimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 1)
          {
            goto LABEL_28;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_25;
      }

      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v17;
      *(this + 11) |= 1u;
      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_20:
        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v17;
        *(this + 11) |= 2u;
        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 25)
        {
          *(a2 + 1) = v12 + 1;
LABEL_28:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v17;
          *(this + 11) |= 4u;
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v13 < v9 && *v13 == 32)
          {
            v10 = v13 + 1;
            *(a2 + 1) = v10;
LABEL_32:
            v17 = 0;
            if (v10 >= v9 || (v14 = *v10, (v14 & 0x8000000000000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v17);
              if (!result)
              {
                return result;
              }

              v14 = v17;
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v15 = v10 + 1;
              *(a2 + 1) = v15;
            }

            *(this + 4) = v14;
            *(this + 11) |= 8u;
            if (v15 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

double CLP::LogEntry::LogEntry_TimeStamp::CheckTypeAndMergeFrom(CLP::LogEntry::LogEntry_TimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::LogEntry_TimeStamp::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::LogEntry_TimeStamp::CopyFrom(CLP::LogEntry::LogEntry_TimeStamp *this, const CLP::LogEntry::LogEntry_TimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::LogEntry_TimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::LogEntry_TimeStamp::Swap(CLP::LogEntry::LogEntry_TimeStamp *this, CLP::LogEntry::LogEntry_TimeStamp *a2)
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
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
  }

  return result;
}

void *CLP::LogEntry::LogEntry::SharedCtor(void *this)
{
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

CLP::LogEntry::LogEntry *CLP::LogEntry::LogEntry::LogEntry(CLP::LogEntry::LogEntry *this, const CLP::LogEntry::LogEntry *a2)
{
  *this = off_100174070;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  CLP::LogEntry::LogEntry::MergeFrom(this, a2);
  return this;
}

void sub_100079868(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

uint64_t CLP::LogEntry::LogEntry::MergeFrom(CLP::LogEntry::LogEntry *this, const CLP::LogEntry::LogEntry *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(this + 13) |= 1u;
      v5 = *(this + 4);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 4);
      if (!v6)
      {
        v6 = *(CLP::LogEntry::LogEntry::default_instance_ + 32);
      }

      CLP::LogEntry::LogEntry_TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 13);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 13) |= 2u;
      v7 = *(this + 5);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 5);
      if (!v8)
      {
        v8 = *(CLP::LogEntry::LogEntry::default_instance_ + 40);
      }

      CLP::LogEntry::PrivateData::PrivateDataCapture::MergeFrom(v7, v8);
    }
  }

  return wireless_diagnostics::google::protobuf::internal::ExtensionSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1000799F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CLP::LogEntry::LogEntry::default_instance(CLP::LogEntry::LogEntry *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::LogEntry::default_instance_;
  if (!CLP::LogEntry::LogEntry::default_instance_)
  {
    CLP::LogEntry::protobuf_AddDesc_CLPLogEntry_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::LogEntry::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::LogEntry::Clear(CLP::LogEntry::LogEntry *this)
{
  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::Clear((this + 8));
  LOBYTE(v3) = *(this + 52);
  if (v3)
  {
    if (*(this + 52))
    {
      v4 = *(this + 4);
      if (v4)
      {
        if (*(v4 + 44))
        {
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        *(v4 + 44) = 0;
        v3 = *(this + 13);
      }
    }

    if ((v3 & 2) != 0)
    {
      v5 = *(this + 5);
      if (v5)
      {
        if (*(v5 + 20))
        {
          result = *(v5 + 8);
          if (result)
          {
            result = proto::gpsd::LogEntry::Clear(result);
          }
        }

        *(v5 + 20) = 0;
      }
    }
  }

  *(this + 13) = 0;
  return result;
}

uint64_t CLP::LogEntry::LogEntry::MergePartialFromCodedStream(CLP::LogEntry::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 4)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(this + 13) |= 1u;
      v8 = *(this + 4);
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
      if (!CLP::LogEntry::LogEntry_TimeStamp::MergePartialFromCodedStream(v8, a2, v13) || *(a2 + 36) != 1)
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
      if (v17 < *(a2 + 2) && *v17 == 34)
      {
        *(a2 + 1) = v17 + 1;
LABEL_30:
        *(this + 13) |= 2u;
        v18 = *(this + 5);
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
        if (!CLP::LogEntry::PrivateData::PrivateDataCapture::MergePartialFromCodedStream(v18, a2, v23) || *(a2 + 36) != 1)
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
      goto LABEL_30;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((TagFallback & 0xFFFFFFF8) == 0x10)
    {
      if ((wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField((this + 8), TagFallback, a2, CLP::LogEntry::LogEntry::default_instance_) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CLP::LogEntry::LogEntry::CheckTypeAndMergeFrom(CLP::LogEntry::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::LogEntry::MergeFrom(this, lpsrc);
}

const CLP::LogEntry::LogEntry *CLP::LogEntry::LogEntry::CopyFrom(const CLP::LogEntry::LogEntry *this, const CLP::LogEntry::LogEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);

    return CLP::LogEntry::LogEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t CLP::LogEntry::LogEntry::Swap(uint64_t this, CLP::LogEntry::LogEntry *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v3;
    LODWORD(v3) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v3;
    return wireless_diagnostics::google::protobuf::internal::ExtensionSet::Swap((this + 8), (a2 + 8));
  }

  return this;
}

double ProtobufLogger::generateVendorLoggerConfig@<D0>(uint64_t a1@<X8>)
{
  VendorLogger::generateDefaultConfig(a1);
  std::string::assign(a1, "proto");
  std::string::assign((a1 + 72), "bin");
  *(a1 + 148) = 0;
  GpsdPreferences::instance(0);
  GpsdPreferences::protobufLogDirectory(&v6);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  v3 = GpsdPreferences::instance(0);
  GpsdPreferences::protobufLogRetentionDays(v3);
  result = ((v4 * 24.0) * 3600.0);
  *(a1 + 120) = result;
  return result;
}

void ProtobufLogger::ProtobufLogger(ProtobufLogger *this)
{
  *this = off_100174118;
  *(this + 1) = off_100174158;
  ProtobufLogger::generateVendorLoggerConfig(v3);
  VendorLogger::VendorLogger(this, v3);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  *this = off_100174118;
  *(this + 1) = off_100174158;
  LOWORD(v3[0]) = 32126;
  BYTE2(v3[0]) = 1;
  *(this + 112) = 0;
  *(this + 114) = 0;
  *(this + 113) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 896, v3, v3 + 3, 3);
  v2 = GpsdLogObjectGeneral;
  if (os_log_type_enabled(GpsdLogObjectGeneral, OS_LOG_TYPE_INFO))
  {
    LOWORD(v3[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#protoLogger,created", v3, 2u);
  }
}

void VendorLogger::log(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v3 = a3 - __src;
  if ((a3 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 > 0x16)
  {
    operator new();
  }

  v7 = a3 - __src;
  p_dst = &__dst;
  if (__src != a3)
  {
    memcpy(&__dst, __src, v3);
    p_dst = (&__dst + v3);
  }

  *p_dst = 0;
  (*(*a1 + 16))(a1, &__dst);
  if (v7 < 0)
  {
    operator delete(__dst);
  }
}

void sub_10007A358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ProtobufLogger::~ProtobufLogger(ProtobufLogger *this)
{
  ProtobufLogger::~ProtobufLogger(this);

  operator delete();
}

{
  *this = off_100174118;
  *(this + 1) = off_100174158;
  v2 = *(this + 112);
  if (v2)
  {
    *(this + 113) = v2;
    operator delete(v2);
  }

  VendorLogger::~VendorLogger(this);
}

void non-virtual thunk toProtobufLogger::~ProtobufLogger(ProtobufLogger *this)
{
  ProtobufLogger::~ProtobufLogger((this - 8));
}

{
  ProtobufLogger::~ProtobufLogger((this - 8));

  operator delete();
}

void proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto(proto::gnsshal *this, uint64_t a2, uint64_t a3, const char *a4)
{
  proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(this, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  v7 = 20;
  strcpy(__p, "GnssHalNvStore.proto");
  FileByName = wireless_diagnostics::google::protobuf::DescriptorPool::FindFileByName();
  if (!FileByName)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__p);
  }

  _MergedGlobals_2 = *(FileByName + 80);
  operator new();
}

void proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(proto::gnsshal *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(void)::already_here & 1) == 0)
  {
    proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/GnssHalNvStore.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x14GnssHalNvStore.proto\x12\rproto.gnsshalI\n\aNvStore\x12\x13\n\aversion\x18\x01 \x01(\x05:\x02-1\x12)\n\x05items\x18\x02 \x03(\v2\x1A.proto.gnsshal.NvStoreItem\xB9\x01\n\vNvStoreItem\x12\n\n\x02id\x18\x01 \x01(\x03\x12\f\n\x04blob\x18\x02 \x01(\f\x12 \n\x15blob_truncated_sha256\x18\x03 \x01(\r:\x010\x12\x1E\n\x12modification_count\x18\x04 \x01(\x03:\x02-1\x12$\n\x18creation_cf_time_seconds\x18\x05 \x01(\x01:\x02-1\x12(\n\x1Cmodification_cf_time_seconds\x18\x06 \x01(\x01:\x02-1", 0x12C, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t proto::gnsshal::protobuf_ShutdownFile_GnssHalNvStore_2eproto(proto::gnsshal *this)
{
  if (proto::gnsshal::NvStore::default_instance_)
  {
    (*(*proto::gnsshal::NvStore::default_instance_ + 8))(proto::gnsshal::NvStore::default_instance_);
  }

  if (qword_100180F70)
  {
    (*(*qword_100180F70 + 8))(qword_100180F70);
  }

  if (proto::gnsshal::NvStoreItem::default_instance_)
  {
    (*(*proto::gnsshal::NvStoreItem::default_instance_ + 8))(proto::gnsshal::NvStoreItem::default_instance_);
  }

  result = qword_100180F80;
  if (qword_100180F80)
  {
    v2 = *(*qword_100180F80 + 8);

    return v2();
  }

  return result;
}

uint64_t proto::gnsshal::anonymous namespace::protobuf_RegisterTypes(proto::gnsshal *a1)
{
  v1 = qword_100180F88;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v4[1] = proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto;
    v5 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  if (!proto::gnsshal::NvStore::default_instance_)
  {
    proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(a1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!proto::gnsshal::NvStoreItem::default_instance_)
  {
    proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(v2);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_10007A958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

proto::gnsshal::NvStore *proto::gnsshal::NvStore::NvStore(proto::gnsshal::NvStore *this)
{
  *this = off_1001741A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((this + 8));
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 5) = 0xFFFFFFFFLL;
  *(this + 12) = 0;
  return this;
}

double proto::gnsshal::NvStore::SharedCtor(proto::gnsshal::NvStore *this)
{
  *&result = 0xFFFFFFFFLL;
  *(this + 5) = 0xFFFFFFFFLL;
  *(this + 12) = 0;
  return result;
}

proto::gnsshal::NvStore *proto::gnsshal::NvStore::NvStore(proto::gnsshal::NvStore *this, const proto::gnsshal::NvStore *a2)
{
  *this = off_1001741A0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((this + 8));
  *(this + 1) = 0u;
  *(this + 8) = 0;
  *(this + 5) = 0xFFFFFFFFLL;
  *(this + 12) = 0;
  proto::gnsshal::NvStore::MergeFrom(this, a2);
  return this;
}

void sub_10007AA84(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStore::MergeFrom(proto::gnsshal::NvStore *this, const proto::gnsshal::NvStore *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::MergeFrom((this + 16), a2 + 16);
  if (*(a2 + 48))
  {
    v4 = *(a2 + 10);
    *(this + 12) |= 1u;
    *(this + 10) = v4;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_10007AB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnsshal::NvStore::~NvStore(proto::gnsshal::NvStore *this)
{
  *this = off_1001741A0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 2);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

{
  proto::gnsshal::NvStore::~NvStore(this);

  operator delete();
}

uint64_t proto::gnsshal::NvStore::descriptor(proto::gnsshal::NvStore *this)
{
  v1 = qword_100180F88;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[1] = proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return _MergedGlobals_2;
}

void sub_10007ACA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStore::default_instance(proto::gnsshal::NvStore *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnsshal::NvStore::default_instance_;
  if (!proto::gnsshal::NvStore::default_instance_)
  {
    proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(0, a2, a3, a4);
    return proto::gnsshal::NvStore::default_instance_;
  }

  return result;
}

uint64_t proto::gnsshal::NvStore::Clear(proto::gnsshal::NvStore *this)
{
  if (*(this + 48))
  {
    *(this + 10) = -1;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 16);
  v4 = *(this + 1);
  v3 = (this + 8);
  *(v3 + 10) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t proto::gnsshal::NvStore::MergePartialFromCodedStream(proto::gnsshal::NvStore *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
        *(a2 + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v28 = 0;
      v9 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v9 >= v10 || (v11 = *v9, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
        if (!result)
        {
          return result;
        }

        v11 = v28;
        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v12 = v9 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 10) = v11;
      *(this + 12) |= 1u;
      if (v12 < v10 && *v12 == 18)
      {
        do
        {
          *(a2 + 1) = v12 + 1;
LABEL_21:
          v14 = *(this + 7);
          v15 = *(this + 6);
          if (v15 >= v14)
          {
            if (v14 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16), v14 + 1);
              v14 = *(this + 7);
            }

            *(this + 7) = v14 + 1;
            wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<proto::gnsshal::NvStoreItem>::New();
          }

          v16 = *(this + 2);
          *(this + 6) = v15 + 1;
          v17 = *(v16 + 8 * v15);
          v29 = 0;
          v18 = *(a2 + 1);
          if (v18 >= *(a2 + 2) || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
            {
              return 0;
            }
          }

          else
          {
            v29 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v19 = *(a2 + 14);
          v20 = *(a2 + 15);
          *(a2 + 14) = v19 + 1;
          if (v19 >= v20)
          {
            return 0;
          }

          v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v29);
          if (!proto::gnsshal::NvStoreItem::MergePartialFromCodedStream(v17, a2, v22, v23) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v21);
          v24 = *(a2 + 14);
          v25 = __OFSUB__(v24, 1);
          v26 = v24 - 1;
          if (v26 < 0 == v25)
          {
            *(a2 + 14) = v26;
          }

          v12 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        while (v12 < v27 && *v12 == 18);
        if (v12 == v27 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, this + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t proto::gnsshal::NvStore::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 48))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 40), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

unsigned __int8 *proto::gnsshal::NvStore::SerializeWithCachedSizesToArray(proto::gnsshal::NvStore *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 48))
  {
    v6 = *(this + 10);
    *a2 = 8;
    v7 = a2 + 1;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, v7, a3);
    }

    else
    {
      if (v6 <= 0x7F)
      {
        v4[1] = v6;
        v4 += 2;
        goto LABEL_8;
      }

      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v7, a3);
    }

    v4 = v8;
  }

LABEL_8:
  if (*(this + 6) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(this + 2) + 8 * v9);
      *v4 = 18;
      v11 = v10[15];
      if (v11 > 0x7F)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v4 + 1, a3);
      }

      else
      {
        v4[1] = v11;
        v12 = v4 + 2;
      }

      v4 = proto::gnsshal::NvStoreItem::SerializeWithCachedSizesToArray(v10, v12, a3, a4);
      ++v9;
    }

    while (v9 < *(this + 6));
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, v4, a3);
}

uint64_t proto::gnsshal::NvStore::ByteSize(proto::gnsshal::NvStore *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(this + 48))
  {
    v4 = *(this + 10);
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

  v5 = *(this + 6);
  v6 = (v5 + v3);
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = proto::gnsshal::NvStoreItem::ByteSize(*(*(this + 2) + 8 * v7), a2);
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

    while (v7 < *(this + 6));
  }

  v11 = *(this + 1);
  if (v11 && *v11 != v11[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((this + 8), a2) + v6;
  }

  *(this + 11) = v6;
  return v6;
}

uint64_t proto::gnsshal::NvStore::MergeFrom(char **this, char **lpsrc)
{
  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return proto::gnsshal::NvStore::MergeFrom(this, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_10007B390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  LODWORD(v5) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v8 + 1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        wireless_diagnostics::google::protobuf::internal::GenericTypeHandler<proto::gnsshal::NvStoreItem>::New();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = proto::gnsshal::NvStoreItem::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_10007B4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStore::CopyFrom(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

const proto::gnsshal::NvStore *proto::gnsshal::NvStore::CopyFrom(const proto::gnsshal::NvStore *this, const proto::gnsshal::NvStore *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);

    return proto::gnsshal::NvStore::MergeFrom(v4, a2);
  }

  return this;
}

proto::gnsshal::NvStore *proto::gnsshal::NvStore::Swap(proto::gnsshal::NvStore *this, proto::gnsshal::NvStore *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 16), (a2 + 16));
    v5 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
    v6 = *(v3 + 1);
    *(v3 + 1) = *(a2 + 1);
    *(a2 + 1) = v6;
    LODWORD(v6) = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
  }

  return this;
}

uint64_t proto::gnsshal::NvStore::GetMetadata(proto::gnsshal::NvStore *this)
{
  v1 = qword_100180F88;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[1] = proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return _MergedGlobals_2;
}

void sub_10007B6F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

proto::gnsshal::NvStoreItem *proto::gnsshal::NvStoreItem::NvStoreItem(proto::gnsshal::NvStoreItem *this)
{
  *this = off_100174250;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((this + 8));
  *(this + 60) = 0;
  *(this + 2) = 0;
  *(this + 3) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 14) = 0;
  *(this + 4) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 40) = _Q0;
  return this;
}

__n128 proto::gnsshal::NvStoreItem::SharedCtor(proto::gnsshal::NvStoreItem *this)
{
  *(this + 60) = 0;
  *(this + 2) = 0;
  *(this + 3) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 14) = 0;
  *(this + 4) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 40) = result;
  return result;
}

proto::gnsshal::NvStoreItem *proto::gnsshal::NvStoreItem::NvStoreItem(proto::gnsshal::NvStoreItem *this, const proto::gnsshal::NvStoreItem *a2)
{
  *this = off_100174250;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((this + 8));
  *(this + 60) = 0;
  *(this + 2) = 0;
  *(this + 3) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 14) = 0;
  *(this + 4) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 40) = _Q0;
  proto::gnsshal::NvStoreItem::MergeFrom(this, a2);
  return this;
}

void sub_10007B834(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStoreItem::MergeFrom(proto::gnsshal::NvStoreItem *this, const proto::gnsshal::NvStoreItem *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 64);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
  }

  if (*(a2 + 64))
  {
    v7 = *(a2 + 2);
    *(this + 16) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 16);
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

  else if ((*(a2 + 64) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 16) |= 2u;
  v9 = *(this + 3);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 16);
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
  v10 = *(a2 + 14);
  *(this + 16) |= 4u;
  *(this + 14) = v10;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v12 = *(a2 + 5);
    *(this + 16) |= 0x10u;
    *(this + 5) = v12;
    if ((*(a2 + 16) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_17:
  v11 = *(a2 + 4);
  *(this + 16) |= 8u;
  *(this + 4) = v11;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 6);
    *(this + 16) |= 0x20u;
    *(this + 6) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_10007B9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnsshal::NvStoreItem::~NvStoreItem(proto::gnsshal::NvStoreItem *this)
{
  *this = off_100174250;
  v2 = (this + 8);
  proto::gnsshal::NvStoreItem::SharedDtor(this);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(this);
}

{
  proto::gnsshal::NvStoreItem::~NvStoreItem(this);

  operator delete();
}

uint64_t proto::gnsshal::NvStoreItem::SharedDtor(uint64_t this)
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

uint64_t proto::gnsshal::NvStoreItem::descriptor(proto::gnsshal::NvStoreItem *this)
{
  v1 = qword_100180F88;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[1] = proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_100180F78;
}

void sub_10007BB9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStoreItem::default_instance(proto::gnsshal::NvStoreItem *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnsshal::NvStoreItem::default_instance_;
  if (!proto::gnsshal::NvStoreItem::default_instance_)
  {
    proto::gnsshal::protobuf_AddDesc_GnssHalNvStore_2eproto(0, a2, a3, a4);
    return proto::gnsshal::NvStoreItem::default_instance_;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *proto::gnsshal::NvStoreItem::Clear(proto::gnsshal::NvStoreItem *this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 2) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 3);
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

    *(this + 14) = 0;
    *(this + 4) = -1;
    __asm { FMOV            V0.2D, #-1.0 }

    *(this + 40) = _Q0;
  }

  v9 = *(this + 1);
  result = (this + 8);
  *(result + 14) = 0;
  if (v9)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t proto::gnsshal::NvStoreItem::MergePartialFromCodedStream(proto::gnsshal::NvStoreItem *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(a2 + 1);
          if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
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
            *(a2 + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v8 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_48;
            }

            goto LABEL_26;
          }

          if (v8 == 5)
          {
            if (v9 != 1)
            {
              goto LABEL_26;
            }

LABEL_56:
            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v25) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = v25;
            *(this + 16) |= 0x10u;
            v24 = *(a2 + 1);
            if (v24 < *(a2 + 2) && *v24 == 49)
            {
              *(a2 + 1) = v24 + 1;
              goto LABEL_60;
            }
          }

          else
          {
            if (v8 != 6 || v9 != 1)
            {
              goto LABEL_26;
            }

LABEL_60:
            v25 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v25) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = v25;
            *(this + 16) |= 0x20u;
            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (v8 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v25 = 0;
        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v13 >= v12 || (v14 = *v13, (v14 & 0x8000000000000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v25);
          if (!result)
          {
            return result;
          }

          v14 = v25;
          v15 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 2) = v14;
        v17 = *(this + 16) | 1;
        *(this + 16) = v17;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_34;
        }
      }

      if (v8 != 2)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_26;
      }

      v17 = *(this + 16);
LABEL_34:
      *(this + 16) = v17 | 2;
      if (*(this + 3) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v19 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v19 < v10 && *v19 == 24)
      {
        v11 = v19 + 1;
        *(a2 + 1) = v11;
LABEL_40:
        if (v11 >= v10 || (v20 = *v11, v20 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v20;
          v21 = v11 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 16) |= 4u;
        if (v21 < v10 && *v21 == 32)
        {
          v16 = v21 + 1;
          *(a2 + 1) = v16;
LABEL_48:
          v25 = 0;
          if (v16 >= v10 || (v22 = *v16, (v22 & 0x8000000000000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v22 = v25;
            v23 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v23 = v16 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 4) = v22;
          *(this + 16) |= 8u;
          if (v23 < v10 && *v23 == 41)
          {
            *(a2 + 1) = v23 + 1;
            goto LABEL_56;
          }
        }
      }
    }

    if (v8 == 3 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_40;
    }

LABEL_26:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(a2, TagFallback, this + 8, a4) & 1) != 0);
  return 0;
}

uint64_t proto::gnsshal::NvStoreItem::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 16), a2, a4);
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

  v10 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 56), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
    if ((*(v5 + 64) & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v6 & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  }

LABEL_8:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

unsigned __int8 *proto::gnsshal::NvStoreItem::SerializeWithCachedSizesToArray(proto::gnsshal::NvStoreItem *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 8;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, (a2 + 1), a3);
    v5 = *(this + 16);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 3);
  *a2 = 18;
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8 > 0x7F)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
  }

  else
  {
    a2[1] = v8;
    v9 = a2 + 2;
  }

  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v7 + 23);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, a4);
  if ((*(this + 16) & 4) != 0)
  {
LABEL_18:
    v13 = *(this + 14);
    *a2 = 24;
    if (v13 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, a2 + 1, a3);
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
    }
  }

LABEL_21:
  v14 = *(this + 16);
  if ((v14 & 8) == 0)
  {
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_23;
    }

LABEL_32:
    v20 = *(this + 5);
    *a2 = 41;
    *(a2 + 1) = v20;
    a2 += 9;
    if ((*(this + 16) & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v19 = *(this + 4);
  *a2 = 32;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v19, (a2 + 1), a3);
  v14 = *(this + 16);
  if ((v14 & 0x10) != 0)
  {
    goto LABEL_32;
  }

LABEL_23:
  if ((v14 & 0x20) != 0)
  {
LABEL_24:
    v15 = *(this + 6);
    *a2 = 49;
    *(a2 + 1) = v15;
    a2 += 9;
  }

LABEL_25:
  v18 = *(this + 1);
  v17 = (this + 8);
  v16 = v18;
  if (!v18 || *v16 == v16[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, a2, a3);
}

uint64_t proto::gnsshal::NvStoreItem::ByteSize(proto::gnsshal::NvStoreItem *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 64);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_24;
  }

  if (*(this + 64))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2), a2) + 1;
    v3 = *(this + 16);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 64) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 3);
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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 16);
    v8 = *(v6 + 23);
  }

  else
  {
    v11 = 1;
  }

  if (v8 < 0)
  {
    v7 = v9;
  }

  v4 += v11 + v7 + 1;
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v15 = *(this + 14);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = *(this + 16);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
    if ((v3 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((v3 & 8) != 0)
  {
LABEL_18:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4), a2) + 1;
    v3 = *(this + 16);
  }

LABEL_19:
  v12 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v12 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 = v12 + 9;
  }

  else
  {
    v5 = v12;
  }

LABEL_24:
  v13 = *(this + 1);
  if (v13 && *v13 != v13[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((this + 8), a2) + v5;
  }

  *(this + 15) = v5;
  return v5;
}

uint64_t proto::gnsshal::NvStoreItem::MergeFrom(char **this, char **lpsrc)
{
  if (lpsrc == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return proto::gnsshal::NvStoreItem::MergeFrom(this, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_10007C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gnsshal::NvStoreItem::CopyFrom(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))(result);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

const proto::gnsshal::NvStoreItem *proto::gnsshal::NvStoreItem::CopyFrom(const proto::gnsshal::NvStoreItem *this, const proto::gnsshal::NvStoreItem *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);

    return proto::gnsshal::NvStoreItem::MergeFrom(v4, a2);
  }

  return this;
}

double proto::gnsshal::NvStoreItem::Swap(proto::gnsshal::NvStoreItem *this, proto::gnsshal::NvStoreItem *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    v4 = *(this + 1);
    v3 = *(this + 2);
    v5 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v5;
    *(a2 + 2) = v3;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    *(a2 + 16) = v6;
    *(a2 + 1) = v4;
    LODWORD(v6) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v6;
  }

  return result;
}

uint64_t proto::gnsshal::NvStoreItem::GetMetadata(proto::gnsshal::NvStoreItem *this)
{
  v1 = qword_100180F88;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[1] = proto::gnsshal::protobuf_AssignDesc_GnssHalNvStore_2eproto;
    v4 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_100180F78;
}

void sub_10007C740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t CLP::LogEntry::PrivateData::protobuf_ShutdownFile_CLPPrivateDataCapture_2eproto(CLP::LogEntry::PrivateData *this)
{
  result = CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_;
  if (CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_)
  {
    return (*(*CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8))();
  }

  return result;
}

void CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPPrivateDataCapture_2eproto(CLP::LogEntry::PrivateData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPPrivateDataCapture_2eproto(void)::already_here & 1) == 0)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPPrivateDataCapture_2eproto(void)::already_here = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/CLPPrivateDataCapture.pb.cc", a4);
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v4, v5, v6, v7);
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(v8, v9, v10, v11);
    CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CLPRavenGnssAssistanceFile_2eproto(v12, v13, v14, v15);
    operator new();
  }
}

void *CLP::LogEntry::PrivateData::PrivateDataCapture::PrivateDataCapture(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100174330;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100174330;
  return this;
}

void CLP::LogEntry::PrivateData::PrivateDataCapture::InitAsDefaultInstance(CLP::LogEntry::PrivateData::PrivateDataCapture *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gpsd::LogEntry::default_instance_;
  if (!proto::gpsd::LogEntry::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v5 = proto::gpsd::LogEntry::default_instance_;
  }

  *(this + 1) = v5;
}

uint64_t CLP::LogEntry::PrivateData::PrivateDataCapture::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CLP::LogEntry::PrivateData::PrivateDataCapture *CLP::LogEntry::PrivateData::PrivateDataCapture::PrivateDataCapture(CLP::LogEntry::PrivateData::PrivateDataCapture *this, const CLP::LogEntry::PrivateData::PrivateDataCapture *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100174330;
  CLP::LogEntry::PrivateData::PrivateDataCapture::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::PrivateDataCapture::MergeFrom(CLP::LogEntry::PrivateData::PrivateDataCapture *this, const CLP::LogEntry::PrivateData::PrivateDataCapture *a2)
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
    *(this + 5) |= 1u;
    v4 = *(this + 1);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 1);
    if (!v5)
    {
      v5 = *(CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8);
    }

    proto::gpsd::LogEntry::MergeFrom(v4, v5);
  }
}

void sub_10007CA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *CLP::LogEntry::PrivateData::PrivateDataCapture::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance(CLP::LogEntry::PrivateData::PrivateDataCapture *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_;
  if (!CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPPrivateDataCapture_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::PrivateDataCapture::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 20))
  {
    this = *(this + 8);
    if (this)
    {
      this = proto::gpsd::LogEntry::Clear(this);
    }
  }

  *(v1 + 20) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::PrivateDataCapture::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::PrivateDataCapture *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback != 8034)
      {
        break;
      }

      *(this + 5) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v17 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17))
        {
          return 0;
        }
      }

      else
      {
        v17 = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v9 = *(a2 + 14);
      v10 = *(a2 + 15);
      *(a2 + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v17);
      if (!proto::gpsd::LogEntry::MergePartialFromCodedStream(v7, a2, v12) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v11);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
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

void CLP::LogEntry::PrivateData::PrivateDataCapture::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::PrivateDataCapture *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::PrivateDataCapture::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::PrivateDataCapture::CopyFrom(CLP::LogEntry::PrivateData::PrivateDataCapture *this, const CLP::LogEntry::PrivateData::PrivateDataCapture *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::PrivateDataCapture::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::PrivateDataCapture::Swap(uint64_t this, CLP::LogEntry::PrivateData::PrivateDataCapture *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

uint64_t proto::gnss::Emergency::protobuf_ShutdownFile_GnssEmergencyTypes_2eproto(proto::gnss::Emergency *this)
{
  if (proto::gnss::Emergency::Configuration::default_instance_)
  {
    (*(*proto::gnss::Emergency::Configuration::default_instance_ + 8))(proto::gnss::Emergency::Configuration::default_instance_);
  }

  if (proto::gnss::Emergency::SummaryReport::default_instance_)
  {
    (*(*proto::gnss::Emergency::SummaryReport::default_instance_ + 8))(proto::gnss::Emergency::SummaryReport::default_instance_);
  }

  if (proto::gnss::Emergency::SuplConfig::default_instance_)
  {
    (*(*proto::gnss::Emergency::SuplConfig::default_instance_ + 8))(proto::gnss::Emergency::SuplConfig::default_instance_);
  }

  if (proto::gnss::Emergency::LteCellInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::LteCellInfo::default_instance_ + 8))(proto::gnss::Emergency::LteCellInfo::default_instance_);
  }

  if (proto::gnss::Emergency::GsmCellInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::GsmCellInfo::default_instance_ + 8))(proto::gnss::Emergency::GsmCellInfo::default_instance_);
  }

  if (proto::gnss::Emergency::WcdmaCellInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::WcdmaCellInfo::default_instance_ + 8))(proto::gnss::Emergency::WcdmaCellInfo::default_instance_);
  }

  if (proto::gnss::Emergency::LocationId::default_instance_)
  {
    (*(*proto::gnss::Emergency::LocationId::default_instance_ + 8))(proto::gnss::Emergency::LocationId::default_instance_);
  }

  if (proto::gnss::Emergency::WlanMeasurementRequest::default_instance_)
  {
    (*(*proto::gnss::Emergency::WlanMeasurementRequest::default_instance_ + 8))(proto::gnss::Emergency::WlanMeasurementRequest::default_instance_);
  }

  if (proto::gnss::Emergency::WlanMeasurementElement::default_instance_)
  {
    (*(*proto::gnss::Emergency::WlanMeasurementElement::default_instance_ + 8))(proto::gnss::Emergency::WlanMeasurementElement::default_instance_);
  }

  if (proto::gnss::Emergency::WlanMeasurementList::default_instance_)
  {
    (*(*proto::gnss::Emergency::WlanMeasurementList::default_instance_ + 8))(proto::gnss::Emergency::WlanMeasurementList::default_instance_);
  }

  if (proto::gnss::Emergency::QoP::default_instance_)
  {
    (*(*proto::gnss::Emergency::QoP::default_instance_ + 8))(proto::gnss::Emergency::QoP::default_instance_);
  }

  if (proto::gnss::Emergency::SLPAddress::default_instance_)
  {
    (*(*proto::gnss::Emergency::SLPAddress::default_instance_ + 8))(proto::gnss::Emergency::SLPAddress::default_instance_);
  }

  if (proto::gnss::Emergency::Notification::default_instance_)
  {
    (*(*proto::gnss::Emergency::Notification::default_instance_ + 8))(proto::gnss::Emergency::Notification::default_instance_);
  }

  if (proto::gnss::Emergency::SuplInitVer2Extension::default_instance_)
  {
    (*(*proto::gnss::Emergency::SuplInitVer2Extension::default_instance_ + 8))(proto::gnss::Emergency::SuplInitVer2Extension::default_instance_);
  }

  if (proto::gnss::Emergency::Init::default_instance_)
  {
    (*(*proto::gnss::Emergency::Init::default_instance_ + 8))(proto::gnss::Emergency::Init::default_instance_);
  }

  if (proto::gnss::Emergency::SuplContext::default_instance_)
  {
    (*(*proto::gnss::Emergency::SuplContext::default_instance_ + 8))(proto::gnss::Emergency::SuplContext::default_instance_);
  }

  if (proto::gnss::Emergency::SessionStatus::default_instance_)
  {
    (*(*proto::gnss::Emergency::SessionStatus::default_instance_ + 8))(proto::gnss::Emergency::SessionStatus::default_instance_);
  }

  if (proto::gnss::Emergency::ClsGpsCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::ClsGpsCellTime::default_instance_ + 8))(proto::gnss::Emergency::ClsGpsCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::ClsUtranCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::ClsUtranCellTime::default_instance_ + 8))(proto::gnss::Emergency::ClsUtranCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::Plmn::default_instance_)
  {
    (*(*proto::gnss::Emergency::Plmn::default_instance_ + 8))(proto::gnss::Emergency::Plmn::default_instance_);
  }

  if (proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::SessionInfo::default_instance_ + 8))(proto::gnss::Emergency::SessionInfo::default_instance_);
  }

  if (proto::gnss::Emergency::PositionRequest::default_instance_)
  {
    (*(*proto::gnss::Emergency::PositionRequest::default_instance_ + 8))(proto::gnss::Emergency::PositionRequest::default_instance_);
  }

  if (proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_)
  {
    (*(*proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_ + 8))(proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_);
  }

  if (proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_)
  {
    (*(*proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_ + 8))(proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_);
  }

  if (proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_)
  {
    (*(*proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_ + 8))(proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_);
  }

  if (proto::gnss::Emergency::GpsTimeMeasured::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsTimeMeasured::default_instance_ + 8))(proto::gnss::Emergency::GpsTimeMeasured::default_instance_);
  }

  if (proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_ + 8))(proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_);
  }

  if (proto::gnss::Emergency::GpsTOD::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsTOD::default_instance_ + 8))(proto::gnss::Emergency::GpsTOD::default_instance_);
  }

  if (proto::gnss::Emergency::LocationInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::LocationInfo::default_instance_ + 8))(proto::gnss::Emergency::LocationInfo::default_instance_);
  }

  if (proto::gnss::Emergency::CellInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::CellInfo::default_instance_ + 8))(proto::gnss::Emergency::CellInfo::default_instance_);
  }

  if (proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_)
  {
    (*(*proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_ + 8))(proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_);
  }

  if (proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_)
  {
    (*(*proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_ + 8))(proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_);
  }

  if (proto::gnss::Emergency::ClsEutranCell::default_instance_)
  {
    (*(*proto::gnss::Emergency::ClsEutranCell::default_instance_ + 8))(proto::gnss::Emergency::ClsEutranCell::default_instance_);
  }

  if (proto::gnss::Emergency::GanssTimeMeasured::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssTimeMeasured::default_instance_ + 8))(proto::gnss::Emergency::GanssTimeMeasured::default_instance_);
  }

  if (proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_ + 8))(proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_);
  }

  if (proto::gnss::Emergency::GanssLocationInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssLocationInfo::default_instance_ + 8))(proto::gnss::Emergency::GanssLocationInfo::default_instance_);
  }

  if (proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    (*(*proto::gnss::Emergency::EllipsoidPoint::default_instance_ + 8))(proto::gnss::Emergency::EllipsoidPoint::default_instance_);
  }

  if (proto::gnss::Emergency::PointUncertainCircle::default_instance_)
  {
    (*(*proto::gnss::Emergency::PointUncertainCircle::default_instance_ + 8))(proto::gnss::Emergency::PointUncertainCircle::default_instance_);
  }

  if (proto::gnss::Emergency::PointUncertainEllipse::default_instance_)
  {
    (*(*proto::gnss::Emergency::PointUncertainEllipse::default_instance_ + 8))(proto::gnss::Emergency::PointUncertainEllipse::default_instance_);
  }

  if (proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_)
  {
    (*(*proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_ + 8))(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_);
  }

  if (proto::gnss::Emergency::EllipsoidArc::default_instance_)
  {
    (*(*proto::gnss::Emergency::EllipsoidArc::default_instance_ + 8))(proto::gnss::Emergency::EllipsoidArc::default_instance_);
  }

  if (proto::gnss::Emergency::PointAltitude::default_instance_)
  {
    (*(*proto::gnss::Emergency::PointAltitude::default_instance_ + 8))(proto::gnss::Emergency::PointAltitude::default_instance_);
  }

  if (proto::gnss::Emergency::Polygon::default_instance_)
  {
    (*(*proto::gnss::Emergency::Polygon::default_instance_ + 8))(proto::gnss::Emergency::Polygon::default_instance_);
  }

  if (proto::gnss::Emergency::ShapeInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::ShapeInfo::default_instance_ + 8))(proto::gnss::Emergency::ShapeInfo::default_instance_);
  }

  if (proto::gnss::Emergency::LocEstimate::default_instance_)
  {
    (*(*proto::gnss::Emergency::LocEstimate::default_instance_ + 8))(proto::gnss::Emergency::LocEstimate::default_instance_);
  }

  if (proto::gnss::Emergency::HorizontalVelocity::default_instance_)
  {
    (*(*proto::gnss::Emergency::HorizontalVelocity::default_instance_ + 8))(proto::gnss::Emergency::HorizontalVelocity::default_instance_);
  }

  if (proto::gnss::Emergency::HorizWithVertVelocity::default_instance_)
  {
    (*(*proto::gnss::Emergency::HorizWithVertVelocity::default_instance_ + 8))(proto::gnss::Emergency::HorizWithVertVelocity::default_instance_);
  }

  if (proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_)
  {
    (*(*proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_ + 8))(proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_);
  }

  if (proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_)
  {
    (*(*proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_ + 8))(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_);
  }

  if (proto::gnss::Emergency::VelocityInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::VelocityInfo::default_instance_ + 8))(proto::gnss::Emergency::VelocityInfo::default_instance_);
  }

  if (proto::gnss::Emergency::VelocityEstimate::default_instance_)
  {
    (*(*proto::gnss::Emergency::VelocityEstimate::default_instance_ + 8))(proto::gnss::Emergency::VelocityEstimate::default_instance_);
  }

  if (proto::gnss::Emergency::PositionReport::default_instance_)
  {
    (*(*proto::gnss::Emergency::PositionReport::default_instance_ + 8))(proto::gnss::Emergency::PositionReport::default_instance_);
  }

  if (proto::gnss::Emergency::GanssMeasurementElement::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssMeasurementElement::default_instance_ + 8))(proto::gnss::Emergency::GanssMeasurementElement::default_instance_);
  }

  if (proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_ + 8))(proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_);
  }

  if (proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_ + 8))(proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_);
  }

  if (proto::gnss::Emergency::GanssMeasurements::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssMeasurements::default_instance_ + 8))(proto::gnss::Emergency::GanssMeasurements::default_instance_);
  }

  if (proto::gnss::Emergency::GpsMeasurementElement::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsMeasurementElement::default_instance_ + 8))(proto::gnss::Emergency::GpsMeasurementElement::default_instance_);
  }

  if (proto::gnss::Emergency::GpsMeasurements::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsMeasurements::default_instance_ + 8))(proto::gnss::Emergency::GpsMeasurements::default_instance_);
  }

  if (proto::gnss::Emergency::MeasurementReport::default_instance_)
  {
    (*(*proto::gnss::Emergency::MeasurementReport::default_instance_ + 8))(proto::gnss::Emergency::MeasurementReport::default_instance_);
  }

  if (proto::gnss::Emergency::GpsAssistanceRequest::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsAssistanceRequest::default_instance_ + 8))(proto::gnss::Emergency::GpsAssistanceRequest::default_instance_);
  }

  if (proto::gnss::Emergency::GanssTimeModelElem::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssTimeModelElem::default_instance_ + 8))(proto::gnss::Emergency::GanssTimeModelElem::default_instance_);
  }

  if (proto::gnss::Emergency::GanssDataBitAssist::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssDataBitAssist::default_instance_ + 8))(proto::gnss::Emergency::GanssDataBitAssist::default_instance_);
  }

  if (proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_ + 8))(proto::gnss::Emergency::GanssStoredSatDataElem::default_instance_);
  }

  if (proto::gnss::Emergency::GanssNavModelAddData::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssNavModelAddData::default_instance_ + 8))(proto::gnss::Emergency::GanssNavModelAddData::default_instance_);
  }

  if (proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_ + 8))(proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_);
  }

  if (proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_ + 8))(proto::gnss::Emergency::GanssAidRequestPerGanss::default_instance_);
  }

  if (proto::gnss::Emergency::GanssAssistanceRequest::default_instance_)
  {
    (*(*proto::gnss::Emergency::GanssAssistanceRequest::default_instance_ + 8))(proto::gnss::Emergency::GanssAssistanceRequest::default_instance_);
  }

  if (proto::gnss::Emergency::AssistanceNeededReport::default_instance_)
  {
    (*(*proto::gnss::Emergency::AssistanceNeededReport::default_instance_ + 8))(proto::gnss::Emergency::AssistanceNeededReport::default_instance_);
  }

  if (proto::gnss::Emergency::EutranCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::EutranCellTime::default_instance_ + 8))(proto::gnss::Emergency::EutranCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::ClsGeranCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::ClsGeranCellTime::default_instance_ + 8))(proto::gnss::Emergency::ClsGeranCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_ + 8))(proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::CtsEutranCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::CtsEutranCellTime::default_instance_ + 8))(proto::gnss::Emergency::CtsEutranCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::CtsCdmaCellTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::CtsCdmaCellTime::default_instance_ + 8))(proto::gnss::Emergency::CtsCdmaCellTime::default_instance_);
  }

  if (proto::gnss::Emergency::CellTimeData::default_instance_)
  {
    (*(*proto::gnss::Emergency::CellTimeData::default_instance_ + 8))(proto::gnss::Emergency::CellTimeData::default_instance_);
  }

  if (proto::gnss::Emergency::CellTimeAssistance::default_instance_)
  {
    (*(*proto::gnss::Emergency::CellTimeAssistance::default_instance_ + 8))(proto::gnss::Emergency::CellTimeAssistance::default_instance_);
  }

  if (proto::gnss::Emergency::TowAssist::default_instance_)
  {
    (*(*proto::gnss::Emergency::TowAssist::default_instance_ + 8))(proto::gnss::Emergency::TowAssist::default_instance_);
  }

  if (proto::gnss::Emergency::GpsReferenceTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsReferenceTime::default_instance_ + 8))(proto::gnss::Emergency::GpsReferenceTime::default_instance_);
  }

  if (proto::gnss::Emergency::ReferenceLocation::default_instance_)
  {
    (*(*proto::gnss::Emergency::ReferenceLocation::default_instance_ + 8))(proto::gnss::Emergency::ReferenceLocation::default_instance_);
  }

  if (proto::gnss::Emergency::GpsEphemeris::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsEphemeris::default_instance_ + 8))(proto::gnss::Emergency::GpsEphemeris::default_instance_);
  }

  if (proto::gnss::Emergency::GpsNavigationModel::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsNavigationModel::default_instance_ + 8))(proto::gnss::Emergency::GpsNavigationModel::default_instance_);
  }

  if (proto::gnss::Emergency::CplaneConfig::default_instance_)
  {
    (*(*proto::gnss::Emergency::CplaneConfig::default_instance_ + 8))(proto::gnss::Emergency::CplaneConfig::default_instance_);
  }

  if (proto::gnss::Emergency::CplaneContext::default_instance_)
  {
    (*(*proto::gnss::Emergency::CplaneContext::default_instance_ + 8))(proto::gnss::Emergency::CplaneContext::default_instance_);
  }

  if (proto::gnss::Emergency::EmergConfig::default_instance_)
  {
    (*(*proto::gnss::Emergency::EmergConfig::default_instance_ + 8))(proto::gnss::Emergency::EmergConfig::default_instance_);
  }

  if (proto::gnss::Emergency::GpsAcqElement::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsAcqElement::default_instance_ + 8))(proto::gnss::Emergency::GpsAcqElement::default_instance_);
  }

  if (proto::gnss::Emergency::GpsAcqAssistance::default_instance_)
  {
    (*(*proto::gnss::Emergency::GpsAcqAssistance::default_instance_ + 8))(proto::gnss::Emergency::GpsAcqAssistance::default_instance_);
  }

  if (proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_)
  {
    (*(*proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_ + 8))(proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_);
  }

  if (proto::gnss::Emergency::CellFTAssistance::default_instance_)
  {
    (*(*proto::gnss::Emergency::CellFTAssistance::default_instance_ + 8))(proto::gnss::Emergency::CellFTAssistance::default_instance_);
  }

  if (proto::gnss::Emergency::NetworkReferenceLocation::default_instance_)
  {
    (*(*proto::gnss::Emergency::NetworkReferenceLocation::default_instance_ + 8))(proto::gnss::Emergency::NetworkReferenceLocation::default_instance_);
  }

  if (proto::gnss::Emergency::NetworkReferenceTime::default_instance_)
  {
    (*(*proto::gnss::Emergency::NetworkReferenceTime::default_instance_ + 8))(proto::gnss::Emergency::NetworkReferenceTime::default_instance_);
  }

  if (proto::gnss::Emergency::Is801VelocityInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::Is801VelocityInfo::default_instance_ + 8))(proto::gnss::Emergency::Is801VelocityInfo::default_instance_);
  }

  if (proto::gnss::Emergency::Is801ClockInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::Is801ClockInfo::default_instance_ + 8))(proto::gnss::Emergency::Is801ClockInfo::default_instance_);
  }

  if (proto::gnss::Emergency::Is801HeightInfo::default_instance_)
  {
    (*(*proto::gnss::Emergency::Is801HeightInfo::default_instance_ + 8))(proto::gnss::Emergency::Is801HeightInfo::default_instance_);
  }

  if (proto::gnss::Emergency::Is801LocationInd::default_instance_)
  {
    (*(*proto::gnss::Emergency::Is801LocationInd::default_instance_ + 8))(proto::gnss::Emergency::Is801LocationInd::default_instance_);
  }

  if (proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_)
  {
    (*(*proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_ + 8))(proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_);
  }

  result = proto::gnss::Emergency::Cdma1xContext::default_instance_;
  if (proto::gnss::Emergency::Cdma1xContext::default_instance_)
  {
    v2 = *(*proto::gnss::Emergency::Cdma1xContext::default_instance_ + 8);

    return v2();
  }

  return result;
}

void proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(proto::gnss::Emergency *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(void)::already_here & 1) == 0)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(void)::already_here = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/GnssEmergencyTypes.pb.cc", a4);
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(v4, v5, v6, v7);
    operator new();
  }
}

uint64_t proto::gnss::Emergency::Configuration::Configuration(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *this = off_1001743C0;
  *(this + 8) = 0;
  return this;
}

{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *this = off_1001743C0;
  *(this + 8) = 0;
  return this;
}

double proto::gnss::Emergency::SummaryReport::SummaryReport(proto::gnss::Emergency::SummaryReport *this)
{
  *this = off_100174438;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 52) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 31) = 0;
  return result;
}

{
  *this = off_100174438;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 52) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 31) = 0;
  return result;
}

void *proto::gnss::Emergency::SuplConfig::SuplConfig(void *this)
{
  *this = off_1001744B0;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_1001744B0;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gnss::Emergency::LteCellInfo::LteCellInfo(proto::gnss::Emergency::LteCellInfo *this)
{
  *this = off_100174528;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_100174528;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::GsmCellInfo::GsmCellInfo(uint64_t this)
{
  *this = off_1001745A0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_1001745A0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

double proto::gnss::Emergency::WcdmaCellInfo::WcdmaCellInfo(proto::gnss::Emergency::WcdmaCellInfo *this)
{
  *this = off_100174618;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = off_100174618;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 11) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::LocationId::LocationId(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100174690;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100174690;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementRequest::WlanMeasurementRequest(uint64_t this)
{
  *this = off_100174708;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = off_100174708;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementElement::WlanMeasurementElement(uint64_t this)
{
  *(this + 28) = 0;
  *this = off_100174780;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *this = off_100174780;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::WlanMeasurementList::WlanMeasurementList(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001747F8;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001747F8;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::QoP::QoP(uint64_t this)
{
  *this = off_100174870;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_100174870;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SLPAddress::SLPAddress(uint64_t this)
{
  *this = off_1001748E8;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 24) = 0;
  return this;
}

{
  *this = off_1001748E8;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Notification::Notification(uint64_t this)
{
  *this = off_100174960;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = off_100174960;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SuplInitVer2Extension::SuplInitVer2Extension(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001749D8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001749D8;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::Init::Init(proto::gnss::Emergency::Init *this)
{
  *this = off_100174A50;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = off_100174A50;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

void *proto::gnss::Emergency::SuplContext::SuplContext(void *this)
{
  *this = off_100174AC8;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[3] = 0;
  this[4] = 0;
  this[5] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[6] = 0;
  return this;
}

{
  *this = off_100174AC8;
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[3] = 0;
  this[4] = 0;
  this[5] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[6] = 0;
  return this;
}

double proto::gnss::Emergency::SessionStatus::SessionStatus(proto::gnss::Emergency::SessionStatus *this)
{
  *this = off_100174B40;
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

{
  *this = off_100174B40;
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

void *proto::gnss::Emergency::ClsGpsCellTime::ClsGpsCellTime(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100174BB8;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100174BB8;
  return this;
}

double proto::gnss::Emergency::ClsUtranCellTime::ClsUtranCellTime(proto::gnss::Emergency::ClsUtranCellTime *this)
{
  *this = off_100174C30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100174C30;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::Plmn::Plmn(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100174CA8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100174CA8;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SessionInfo::SessionInfo(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100174D20;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100174D20;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::PositionRequest::PositionRequest(proto::gnss::Emergency::PositionRequest *this)
{
  *this = off_100174D98;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

{
  *this = off_100174D98;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

void *proto::gnss::Emergency::UtranGpsTimeMeasured::UtranGpsTimeMeasured(void *this)
{
  *this = off_100174E10;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100174E10;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *proto::gnss::Emergency::GeranGpsTimeMeasuredBased::GeranGpsTimeMeasuredBased(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100174E88;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100174E88;
  return this;
}

void *proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::GeranGpsTimeMeasuredAssisted(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100174F00;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100174F00;
  return this;
}

double proto::gnss::Emergency::GpsTimeMeasured::GpsTimeMeasured(proto::gnss::Emergency::GpsTimeMeasured *this)
{
  *this = off_100174F78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100174F78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::GpsTimeMeasuredParams::GpsTimeMeasuredParams(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100174FF0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100174FF0;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GpsTOD::GpsTOD(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175068;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175068;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::LocationInfo::LocationInfo(proto::gnss::Emergency::LocationInfo *this)
{
  *this = off_1001750E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_1001750E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::CellInfo::CellInfo(uint64_t this)
{
  *this = off_100175158;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_100175158;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gnss::Emergency::UtranGanssTimeMeasured::UtranGanssTimeMeasured(proto::gnss::Emergency::UtranGanssTimeMeasured *this)
{
  *this = off_1001751D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_1001751D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *proto::gnss::Emergency::GeranGanssTimeMeasured::GeranGanssTimeMeasured(void *this)
{
  *this = off_100175248;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100175248;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gnss::Emergency::ClsEutranCell::ClsEutranCell(proto::gnss::Emergency::ClsEutranCell *this)
{
  *this = off_1001752C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = off_1001752C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double proto::gnss::Emergency::GanssTimeMeasured::GanssTimeMeasured(proto::gnss::Emergency::GanssTimeMeasured *this)
{
  *this = off_100175338;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100175338;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::GanssTimeMeasuredParams::GanssTimeMeasuredParams(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001753B0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001753B0;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::GanssLocationInfo::GanssLocationInfo(proto::gnss::Emergency::GanssLocationInfo *this)
{
  *this = off_100175428;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100175428;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *proto::gnss::Emergency::EllipsoidPoint::EllipsoidPoint(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_1001754A0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_1001754A0;
  return this;
}

uint64_t proto::gnss::Emergency::PointUncertainCircle::PointUncertainCircle(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175518;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175518;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::PointUncertainEllipse::PointUncertainEllipse(proto::gnss::Emergency::PointUncertainEllipse *this)
{
  *this = off_100175590;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100175590;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::PointAltitudeUncertainEllipsoid(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this)
{
  *this = off_100175608;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = off_100175608;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double proto::gnss::Emergency::EllipsoidArc::EllipsoidArc(proto::gnss::Emergency::EllipsoidArc *this)
{
  *this = off_100175680;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_100175680;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::PointAltitude::PointAltitude(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001756F8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001756F8;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Polygon::Polygon(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175770;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175770;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

double proto::gnss::Emergency::ShapeInfo::ShapeInfo(proto::gnss::Emergency::ShapeInfo *this)
{
  *this = off_1001757E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

{
  *this = off_1001757E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::LocEstimate::LocEstimate(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175860;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175860;
  *(this + 24) = 0;
  return this;
}

void *proto::gnss::Emergency::HorizontalVelocity::HorizontalVelocity(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_1001758D8;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_1001758D8;
  return this;
}

void *proto::gnss::Emergency::HorizWithVertVelocity::HorizWithVertVelocity(void *this)
{
  *this = off_100175950;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100175950;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t proto::gnss::Emergency::HorizWithUncertaintyVelocity::HorizWithUncertaintyVelocity(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001759C8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001759C8;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::HorizWithVertUncertaintyVelocity(proto::gnss::Emergency::HorizWithVertUncertaintyVelocity *this)
{
  *this = off_100175A40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = off_100175A40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double proto::gnss::Emergency::VelocityInfo::VelocityInfo(proto::gnss::Emergency::VelocityInfo *this)
{
  *this = off_100175AB8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = off_100175AB8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::VelocityEstimate::VelocityEstimate(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175B30;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175B30;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::PositionReport::PositionReport(proto::gnss::Emergency::PositionReport *this)
{
  *this = off_100175BA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = off_100175BA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

double proto::gnss::Emergency::GanssMeasurementElement::GanssMeasurementElement(proto::gnss::Emergency::GanssMeasurementElement *this)
{
  *this = off_100175C20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = off_100175C20;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

uint64_t proto::gnss::Emergency::GanssSignalMeasurementInfo::GanssSignalMeasurementInfo(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = off_100175C98;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = off_100175C98;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::GanssMeasurementsForSingleGanss::GanssMeasurementsForSingleGanss(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175D10;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100175D10;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::GanssMeasurements::GanssMeasurements(proto::gnss::Emergency::GanssMeasurements *this)
{
  *this = off_100175D88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = off_100175D88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double proto::gnss::Emergency::GpsMeasurementElement::GpsMeasurementElement(proto::gnss::Emergency::GpsMeasurementElement *this)
{
  *this = off_100175E00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = off_100175E00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

double proto::gnss::Emergency::GpsMeasurements::GpsMeasurements(proto::gnss::Emergency::GpsMeasurements *this)
{
  *this = off_100175E78;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_100175E78;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double proto::gnss::Emergency::MeasurementReport::MeasurementReport(proto::gnss::Emergency::MeasurementReport *this)
{
  *this = off_100175EF0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

{
  *this = off_100175EF0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

double proto::gnss::Emergency::GpsAssistanceRequest::GpsAssistanceRequest(proto::gnss::Emergency::GpsAssistanceRequest *this)
{
  *this = off_100175F68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = off_100175F68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

void *proto::gnss::Emergency::GanssTimeModelElem::GanssTimeModelElem(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100175FE0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100175FE0;
  return this;
}

double proto::gnss::Emergency::GanssDataBitAssist::GanssDataBitAssist(proto::gnss::Emergency::GanssDataBitAssist *this)
{
  *this = off_100176058;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = off_100176058;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

void *proto::gnss::Emergency::GanssStoredSatDataElem::GanssStoredSatDataElem(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_1001760D0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_1001760D0;
  return this;
}

double proto::gnss::Emergency::GanssNavModelAddData::GanssNavModelAddData(proto::gnss::Emergency::GanssNavModelAddData *this)
{
  *this = off_100176148;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_100176148;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

void *proto::gnss::Emergency::GanssAddAssistDataChoices::GanssAddAssistDataChoices(void *this)
{
  *this = off_1001761C0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_1001761C0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gnss::Emergency::GanssAidRequestPerGanss::GanssAidRequestPerGanss(proto::gnss::Emergency::GanssAidRequestPerGanss *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *this = off_100176238;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *this = off_100176238;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

double proto::gnss::Emergency::GanssAssistanceRequest::GanssAssistanceRequest(proto::gnss::Emergency::GanssAssistanceRequest *this)
{
  *this = off_1001762B0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = off_1001762B0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double proto::gnss::Emergency::AssistanceNeededReport::AssistanceNeededReport(proto::gnss::Emergency::AssistanceNeededReport *this)
{
  *this = off_100176328;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = off_100176328;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::EutranCellTime::EutranCellTime(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001763A0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001763A0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

double proto::gnss::Emergency::ClsGeranCellTime::ClsGeranCellTime(proto::gnss::Emergency::ClsGeranCellTime *this)
{
  *this = off_100176418;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_100176418;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

void *proto::gnss::Emergency::GpsTowCdmaCellTime::GpsTowCdmaCellTime(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100176490;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100176490;
  return this;
}

uint64_t proto::gnss::Emergency::CtsEutranCellTime::CtsEutranCellTime(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100176508;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100176508;
  *(this + 24) = 0;
  return this;
}

void *proto::gnss::Emergency::CtsCdmaCellTime::CtsCdmaCellTime(void *this)
{
  *this = off_100176580;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100176580;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *proto::gnss::Emergency::CellTimeData::CellTimeData(void *this)
{
  *this = off_1001765F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_1001765F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CellTimeAssistance::CellTimeAssistance(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100176670;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100176670;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::TowAssist::TowAssist(uint64_t this)
{
  *this = off_1001766E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_1001766E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gnss::Emergency::GpsReferenceTime::GpsReferenceTime(proto::gnss::Emergency::GpsReferenceTime *this)
{
  *this = off_100176760;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_100176760;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double proto::gnss::Emergency::ReferenceLocation::ReferenceLocation(proto::gnss::Emergency::ReferenceLocation *this)
{
  *this = off_1001767D8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = off_1001767D8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

double proto::gnss::Emergency::GpsEphemeris::GpsEphemeris(proto::gnss::Emergency::GpsEphemeris *this)
{
  *this = off_100176850;
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
  *(this + 38) = 0;
  return result;
}

{
  *this = off_100176850;
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
  *(this + 38) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::GpsNavigationModel::GpsNavigationModel(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001768C8;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_1001768C8;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::CplaneConfig::CplaneConfig(uint64_t this)
{
  *this = off_100176940;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = off_100176940;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

void *proto::gnss::Emergency::CplaneContext::CplaneContext(void *this)
{
  *this = off_1001769B8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_1001769B8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t proto::gnss::Emergency::EmergConfig::EmergConfig(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 32) = 0;
  *this = off_100176A30;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 36) = 0;
  *(this + 32) = 0;
  *this = off_100176A30;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

double proto::gnss::Emergency::GpsAcqElement::GpsAcqElement(proto::gnss::Emergency::GpsAcqElement *this)
{
  *this = off_100176AA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = off_100176AA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

double proto::gnss::Emergency::GpsAcqAssistance::GpsAcqAssistance(proto::gnss::Emergency::GpsAcqAssistance *this)
{
  *this = off_100176B20;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = off_100176B20;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::CellFTAssistanceRequest::CellFTAssistanceRequest(uint64_t this)
{
  *this = off_100176B98;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_100176B98;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

void *proto::gnss::Emergency::CellFTAssistance::CellFTAssistance(void *this)
{
  *this = off_100176C10;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100176C10;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gnss::Emergency::NetworkReferenceLocation::NetworkReferenceLocation(proto::gnss::Emergency::NetworkReferenceLocation *this)
{
  *this = off_100176C88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = off_100176C88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

void *proto::gnss::Emergency::NetworkReferenceTime::NetworkReferenceTime(void *this)
{
  *this = off_100176D00;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = off_100176D00;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Is801VelocityInfo::Is801VelocityInfo(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100176D78;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = off_100176D78;
  *(this + 24) = 0;
  return this;
}

void *proto::gnss::Emergency::Is801ClockInfo::Is801ClockInfo(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100176DF0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100176DF0;
  return this;
}

void *proto::gnss::Emergency::Is801HeightInfo::Is801HeightInfo(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = off_100176E68;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = off_100176E68;
  return this;
}

double proto::gnss::Emergency::Is801LocationInd::Is801LocationInd(proto::gnss::Emergency::Is801LocationInd *this)
{
  *this = off_100176EE0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 55) = 0;
  return result;
}

{
  *this = off_100176EE0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 55) = 0;
  return result;
}

double proto::gnss::Emergency::MeasurementReportWithEstimate::MeasurementReportWithEstimate(proto::gnss::Emergency::MeasurementReportWithEstimate *this)
{
  *this = off_100176F58;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

{
  *this = off_100176F58;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

uint64_t proto::gnss::Emergency::Cdma1xContext::Cdma1xContext(uint64_t this)
{
  *this = off_100176FD0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_100176FD0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

void proto::gnss::Emergency::SuplInitVer2Extension::InitAsDefaultInstance(proto::gnss::Emergency::SuplInitVer2Extension *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::SLPAddress::default_instance_;
  if (!proto::gnss::Emergency::SLPAddress::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::SLPAddress::default_instance_;
  }

  *(this + 1) = v5;
}

proto::gnss::Emergency *proto::gnss::Emergency::Init::InitAsDefaultInstance(proto::gnss::Emergency *this)
{
  v1 = this;
  v2 = proto::gnss::Emergency::QoP::default_instance_;
  if (!proto::gnss::Emergency::QoP::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v2 = proto::gnss::Emergency::QoP::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = proto::gnss::Emergency::SLPAddress::default_instance_;
  if (!proto::gnss::Emergency::SLPAddress::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v3 = proto::gnss::Emergency::SLPAddress::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = proto::gnss::Emergency::Notification::default_instance_;
  if (!proto::gnss::Emergency::Notification::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v4 = proto::gnss::Emergency::Notification::default_instance_;
  }

  *(v1 + 3) = v4;
  v5 = proto::gnss::Emergency::SuplInitVer2Extension::default_instance_;
  if (!proto::gnss::Emergency::SuplInitVer2Extension::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v5 = proto::gnss::Emergency::SuplInitVer2Extension::default_instance_;
  }

  *(v1 + 4) = v5;
  return this;
}

void proto::gnss::Emergency::SuplContext::InitAsDefaultInstance(proto::gnss::Emergency::SuplContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::Configuration::default_instance_;
  if (!proto::gnss::Emergency::Configuration::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::Configuration::default_instance_;
  }

  *(this + 3) = v5;
}

void proto::gnss::Emergency::SessionStatus::InitAsDefaultInstance(proto::gnss::Emergency::SessionStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::NetworkReferenceLocation::default_instance_;
  if (!proto::gnss::Emergency::NetworkReferenceLocation::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::NetworkReferenceLocation::default_instance_;
  }

  *(this + 10) = v5;
  v6 = proto::gnss::Emergency::NetworkReferenceTime::default_instance_;
  if (!proto::gnss::Emergency::NetworkReferenceTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::NetworkReferenceTime::default_instance_;
  }

  *(this + 11) = v6;
}

void proto::gnss::Emergency::ClsUtranCellTime::InitAsDefaultInstance(proto::gnss::Emergency::ClsUtranCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::ClsGpsCellTime::default_instance_;
  if (!proto::gnss::Emergency::ClsGpsCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::ClsGpsCellTime::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::UtranGpsTimeMeasured::InitAsDefaultInstance(proto::gnss::Emergency::UtranGpsTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::ClsUtranCellTime::default_instance_;
  if (!proto::gnss::Emergency::ClsUtranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::ClsUtranCellTime::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Emergency::ClsGpsCellTime::default_instance_;
  if (!proto::gnss::Emergency::ClsGpsCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::ClsGpsCellTime::default_instance_;
  }

  *(this + 2) = v6;
}

void proto::gnss::Emergency::GpsTimeMeasured::InitAsDefaultInstance(proto::gnss::Emergency::GpsTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::UtranGpsTimeMeasured::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_;
  if (!proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GeranGpsTimeMeasuredBased::default_instance_;
  }

  *(this + 2) = v6;
  v7 = proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_;
  if (!proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::GeranGpsTimeMeasuredAssisted::default_instance_;
  }

  *(this + 3) = v7;
}

void proto::gnss::Emergency::GpsTimeMeasuredParams::InitAsDefaultInstance(proto::gnss::Emergency::GpsTimeMeasuredParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GpsTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GpsTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GpsTimeMeasured::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::LocationInfo::InitAsDefaultInstance(proto::gnss::Emergency::LocationInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GpsTOD::default_instance_;
  if (!proto::gnss::Emergency::GpsTOD::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GpsTOD::default_instance_;
  }

  *(this + 3) = v5;
}

void proto::gnss::Emergency::CellInfo::InitAsDefaultInstance(proto::gnss::Emergency::CellInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::Plmn::default_instance_;
  if (!proto::gnss::Emergency::Plmn::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::Plmn::default_instance_;
  }

  *(this + 2) = v5;
}

void proto::gnss::Emergency::UtranGanssTimeMeasured::InitAsDefaultInstance(proto::gnss::Emergency::UtranGanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CellInfo::default_instance_;
  if (!proto::gnss::Emergency::CellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CellInfo::default_instance_;
  }

  *(this + 3) = v5;
}

void proto::gnss::Emergency::GeranGanssTimeMeasured::InitAsDefaultInstance(proto::gnss::Emergency::GeranGanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CellInfo::default_instance_;
  if (!proto::gnss::Emergency::CellInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CellInfo::default_instance_;
  }

  *(this + 2) = v5;
}

void proto::gnss::Emergency::ClsEutranCell::InitAsDefaultInstance(proto::gnss::Emergency::ClsEutranCell *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::Plmn::default_instance_;
  if (!proto::gnss::Emergency::Plmn::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::Plmn::default_instance_;
  }

  *(this + 3) = v5;
}

void proto::gnss::Emergency::GanssTimeMeasured::InitAsDefaultInstance(proto::gnss::Emergency::GanssTimeMeasured *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::UtranGanssTimeMeasured::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GeranGanssTimeMeasured::default_instance_;
  }

  *(this + 2) = v6;
  v7 = proto::gnss::Emergency::ClsEutranCell::default_instance_;
  if (!proto::gnss::Emergency::ClsEutranCell::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::ClsEutranCell::default_instance_;
  }

  *(this + 3) = v7;
}

void proto::gnss::Emergency::GanssTimeMeasuredParams::InitAsDefaultInstance(proto::gnss::Emergency::GanssTimeMeasuredParams *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GanssTimeMeasured::default_instance_;
  if (!proto::gnss::Emergency::GanssTimeMeasured::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GanssTimeMeasured::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::PointUncertainCircle::InitAsDefaultInstance(proto::gnss::Emergency::PointUncertainCircle *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::PointUncertainEllipse::InitAsDefaultInstance(proto::gnss::Emergency::PointUncertainEllipse *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::InitAsDefaultInstance(proto::gnss::Emergency::PointAltitudeUncertainEllipsoid *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::EllipsoidArc::InitAsDefaultInstance(proto::gnss::Emergency::EllipsoidArc *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::PointAltitude::InitAsDefaultInstance(proto::gnss::Emergency::PointAltitude *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(this + 1) = v5;
}

proto::gnss::Emergency *proto::gnss::Emergency::ShapeInfo::InitAsDefaultInstance(proto::gnss::Emergency *this)
{
  v1 = this;
  v2 = proto::gnss::Emergency::PointUncertainCircle::default_instance_;
  if (!proto::gnss::Emergency::PointUncertainCircle::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v2 = proto::gnss::Emergency::PointUncertainCircle::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = proto::gnss::Emergency::PointUncertainEllipse::default_instance_;
  if (!proto::gnss::Emergency::PointUncertainEllipse::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v3 = proto::gnss::Emergency::PointUncertainEllipse::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_;
  if (!proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v4 = proto::gnss::Emergency::PointAltitudeUncertainEllipsoid::default_instance_;
  }

  *(v1 + 3) = v4;
  v5 = proto::gnss::Emergency::EllipsoidArc::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidArc::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v5 = proto::gnss::Emergency::EllipsoidArc::default_instance_;
  }

  *(v1 + 4) = v5;
  v6 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  if (!proto::gnss::Emergency::EllipsoidPoint::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v6 = proto::gnss::Emergency::EllipsoidPoint::default_instance_;
  }

  *(v1 + 5) = v6;
  v7 = proto::gnss::Emergency::PointAltitude::default_instance_;
  if (!proto::gnss::Emergency::PointAltitude::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v7 = proto::gnss::Emergency::PointAltitude::default_instance_;
  }

  *(v1 + 6) = v7;
  v8 = proto::gnss::Emergency::Polygon::default_instance_;
  if (!proto::gnss::Emergency::Polygon::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v8 = proto::gnss::Emergency::Polygon::default_instance_;
  }

  *(v1 + 7) = v8;
  return this;
}

void proto::gnss::Emergency::LocEstimate::InitAsDefaultInstance(proto::gnss::Emergency::LocEstimate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::ShapeInfo::default_instance_;
  if (!proto::gnss::Emergency::ShapeInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::ShapeInfo::default_instance_;
  }

  *(this + 1) = v5;
}

proto::gnss::Emergency *proto::gnss::Emergency::VelocityInfo::InitAsDefaultInstance(proto::gnss::Emergency *this)
{
  v1 = this;
  v2 = proto::gnss::Emergency::HorizontalVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizontalVelocity::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v2 = proto::gnss::Emergency::HorizontalVelocity::default_instance_;
  }

  *(v1 + 1) = v2;
  v3 = proto::gnss::Emergency::HorizWithVertVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizWithVertVelocity::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v3 = proto::gnss::Emergency::HorizWithVertVelocity::default_instance_;
  }

  *(v1 + 2) = v3;
  v4 = proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v4 = proto::gnss::Emergency::HorizWithUncertaintyVelocity::default_instance_;
  }

  *(v1 + 3) = v4;
  v5 = proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_;
  if (!proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v5 = proto::gnss::Emergency::HorizWithVertUncertaintyVelocity::default_instance_;
  }

  *(v1 + 4) = v5;
  return this;
}

void proto::gnss::Emergency::VelocityEstimate::InitAsDefaultInstance(proto::gnss::Emergency::VelocityEstimate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::VelocityInfo::default_instance_;
  if (!proto::gnss::Emergency::VelocityInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::VelocityInfo::default_instance_;
  }

  *(this + 1) = v5;
}

proto::gnss::Emergency *proto::gnss::Emergency::PositionReport::InitAsDefaultInstance(proto::gnss::Emergency *this)
{
  v1 = this;
  v2 = proto::gnss::Emergency::SessionInfo::default_instance_;
  if (!proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v2 = proto::gnss::Emergency::SessionInfo::default_instance_;
  }

  *(v1 + 2) = v2;
  v3 = proto::gnss::Emergency::LocationInfo::default_instance_;
  if (!proto::gnss::Emergency::LocationInfo::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v3 = proto::gnss::Emergency::LocationInfo::default_instance_;
  }

  *(v1 + 3) = v3;
  v4 = proto::gnss::Emergency::GanssLocationInfo::default_instance_;
  if (!proto::gnss::Emergency::GanssLocationInfo::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v4 = proto::gnss::Emergency::GanssLocationInfo::default_instance_;
  }

  *(v1 + 4) = v4;
  v5 = proto::gnss::Emergency::LocEstimate::default_instance_;
  if (!proto::gnss::Emergency::LocEstimate::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v5 = proto::gnss::Emergency::LocEstimate::default_instance_;
  }

  *(v1 + 5) = v5;
  v6 = proto::gnss::Emergency::VelocityEstimate::default_instance_;
  if (!proto::gnss::Emergency::VelocityEstimate::default_instance_)
  {
    this = proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this);
    v6 = proto::gnss::Emergency::VelocityEstimate::default_instance_;
  }

  *(v1 + 6) = v6;
  return this;
}

void proto::gnss::Emergency::GanssMeasurementsForSingleGanss::InitAsDefaultInstance(proto::gnss::Emergency::GanssMeasurementsForSingleGanss *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_;
  if (!proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GanssSignalMeasurementInfo::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::GanssMeasurements::InitAsDefaultInstance(proto::gnss::Emergency::GanssMeasurements *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_;
  if (!proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GanssTimeMeasuredParams::default_instance_;
  }

  *(this + 3) = v5;
  v6 = proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_;
  if (!proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GanssMeasurementsForSingleGanss::default_instance_;
  }

  *(this + 5) = v6;
}

void proto::gnss::Emergency::GpsMeasurements::InitAsDefaultInstance(proto::gnss::Emergency::GpsMeasurements *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_;
  if (!proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GpsTimeMeasuredParams::default_instance_;
  }

  *(this + 6) = v5;
  v6 = proto::gnss::Emergency::GpsTOD::default_instance_;
  if (!proto::gnss::Emergency::GpsTOD::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GpsTOD::default_instance_;
  }

  *(this + 8) = v6;
}

void proto::gnss::Emergency::MeasurementReport::InitAsDefaultInstance(proto::gnss::Emergency::MeasurementReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  if (!proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  }

  *(this + 2) = v5;
  v6 = proto::gnss::Emergency::GpsMeasurements::default_instance_;
  if (!proto::gnss::Emergency::GpsMeasurements::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GpsMeasurements::default_instance_;
  }

  *(this + 3) = v6;
  v7 = proto::gnss::Emergency::GanssMeasurements::default_instance_;
  if (!proto::gnss::Emergency::GanssMeasurements::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::GanssMeasurements::default_instance_;
  }

  *(this + 4) = v7;
}

void proto::gnss::Emergency::GanssAidRequestPerGanss::InitAsDefaultInstance(proto::gnss::Emergency::GanssAidRequestPerGanss *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GanssDataBitAssist::default_instance_;
  if (!proto::gnss::Emergency::GanssDataBitAssist::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GanssDataBitAssist::default_instance_;
  }

  *(this + 5) = v5;
  v6 = proto::gnss::Emergency::GanssNavModelAddData::default_instance_;
  if (!proto::gnss::Emergency::GanssNavModelAddData::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GanssNavModelAddData::default_instance_;
  }

  *(this + 6) = v6;
  v7 = proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_;
  if (!proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::GanssAddAssistDataChoices::default_instance_;
  }

  *(this + 7) = v7;
}

void proto::gnss::Emergency::AssistanceNeededReport::InitAsDefaultInstance(proto::gnss::Emergency::AssistanceNeededReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  if (!proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  }

  *(this + 2) = v5;
  v6 = proto::gnss::Emergency::GpsAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::GpsAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GpsAssistanceRequest::default_instance_;
  }

  *(this + 3) = v6;
  v7 = proto::gnss::Emergency::GanssAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::GanssAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::GanssAssistanceRequest::default_instance_;
  }

  *(this + 4) = v7;
}

void proto::gnss::Emergency::CtsCdmaCellTime::InitAsDefaultInstance(proto::gnss::Emergency::CtsCdmaCellTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_;
  if (!proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::GpsTowCdmaCellTime::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::CellTimeData::InitAsDefaultInstance(proto::gnss::Emergency::CellTimeData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CtsEutranCellTime::default_instance_;
  if (!proto::gnss::Emergency::CtsEutranCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CtsEutranCellTime::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Emergency::CtsCdmaCellTime::default_instance_;
  if (!proto::gnss::Emergency::CtsCdmaCellTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::CtsCdmaCellTime::default_instance_;
  }

  *(this + 2) = v6;
}

void proto::gnss::Emergency::CellTimeAssistance::InitAsDefaultInstance(proto::gnss::Emergency::CellTimeAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CellTimeData::default_instance_;
  if (!proto::gnss::Emergency::CellTimeData::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CellTimeData::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gnss::Emergency::CplaneContext::InitAsDefaultInstance(proto::gnss::Emergency::CplaneContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::Configuration::default_instance_;
  if (!proto::gnss::Emergency::Configuration::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::Configuration::default_instance_;
  }

  *(this + 1) = v5;
  v6 = proto::gnss::Emergency::Cdma1xContext::default_instance_;
  if (!proto::gnss::Emergency::Cdma1xContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::Cdma1xContext::default_instance_;
  }

  *(this + 2) = v6;
}

void proto::gnss::Emergency::EmergConfig::InitAsDefaultInstance(proto::gnss::Emergency::EmergConfig *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CplaneConfig::default_instance_;
  if (!proto::gnss::Emergency::CplaneConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CplaneConfig::default_instance_;
  }

  *(this + 2) = v5;
  v6 = proto::gnss::Emergency::SuplConfig::default_instance_;
  if (!proto::gnss::Emergency::SuplConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::SuplConfig::default_instance_;
  }

  *(this + 3) = v6;
}

void proto::gnss::Emergency::GpsAcqAssistance::InitAsDefaultInstance(proto::gnss::Emergency::GpsAcqAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CellTimeAssistance::default_instance_;
  if (!proto::gnss::Emergency::CellTimeAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CellTimeAssistance::default_instance_;
  }

  *(this + 2) = v5;
}

void proto::gnss::Emergency::CellFTAssistance::InitAsDefaultInstance(proto::gnss::Emergency::CellFTAssistance *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::CellTimeData::default_instance_;
  if (!proto::gnss::Emergency::CellTimeData::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::CellTimeData::default_instance_;
  }

  *(this + 2) = v5;
}

void proto::gnss::Emergency::Is801LocationInd::InitAsDefaultInstance(proto::gnss::Emergency::Is801LocationInd *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::Is801VelocityInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801VelocityInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::Is801VelocityInfo::default_instance_;
  }

  *(this + 4) = v5;
  v6 = proto::gnss::Emergency::Is801ClockInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801ClockInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::Is801ClockInfo::default_instance_;
  }

  *(this + 5) = v6;
  v7 = proto::gnss::Emergency::Is801HeightInfo::default_instance_;
  if (!proto::gnss::Emergency::Is801HeightInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::Is801HeightInfo::default_instance_;
  }

  *(this + 6) = v7;
}

void proto::gnss::Emergency::MeasurementReportWithEstimate::InitAsDefaultInstance(proto::gnss::Emergency::MeasurementReportWithEstimate *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  if (!proto::gnss::Emergency::SessionInfo::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Emergency::SessionInfo::default_instance_;
  }

  *(this + 2) = v5;
  v6 = proto::gnss::Emergency::GpsMeasurements::default_instance_;
  if (!proto::gnss::Emergency::GpsMeasurements::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v6 = proto::gnss::Emergency::GpsMeasurements::default_instance_;
  }

  *(this + 3) = v6;
  v7 = proto::gnss::Emergency::Is801LocationInd::default_instance_;
  if (!proto::gnss::Emergency::Is801LocationInd::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::Emergency::Is801LocationInd::default_instance_;
  }

  *(this + 4) = v7;
}

BOOL proto::gnss::Emergency::SupportedGADShapes_IsValid(proto::gnss::Emergency *this)
{
  v1 = this;
  result = 1;
  if (v1 - 4 > 0x3C || ((1 << (v1 - 4)) & 0x1000000010001011) == 0)
  {
    return v1 < 3;
  }

  return result;
}

uint64_t proto::gnss::Emergency::AidMask_IsValid(proto::gnss::Emergency *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 3)
  {
    if (v1 >= 3)
    {
      return 0;
    }
  }

  else if (((v1 - 4) > 0x3C || ((1 << (v1 - 4)) & 0x1000000010001011) == 0) && v1 != 128 && v1 != 256)
  {
    return 0;
  }

  return result;
}

uint64_t proto::gnss::Emergency::GanssGenericAidMask_IsValid(proto::gnss::Emergency *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 3)
  {
    if (v1 >= 3)
    {
      return 0;
    }
  }

  else if (((v1 - 4) > 0x3C || ((1 << (v1 - 4)) & 0x1000000010001011) == 0) && v1 != 128 && v1 != 256)
  {
    return 0;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Configuration::SharedCtor(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gnss::Emergency::Configuration *proto::gnss::Emergency::Configuration::Configuration(proto::gnss::Emergency::Configuration *this, const proto::gnss::Emergency::Configuration *a2)
{
  *(this + 20) = 0;
  *(this + 8) = 0;
  *this = off_1001743C0;
  *(this + 1) = 0;
  proto::gnss::Emergency::Configuration::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::Configuration::MergeFrom(proto::gnss::Emergency::Configuration *this, const proto::gnss::Emergency::Configuration *a2)
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
      v6 = *(a2 + 16);
      *(this + 6) |= 1u;
      *(this + 16) = v6;
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

    v7 = *(a2 + 17);
    *(this + 6) |= 2u;
    *(this + 17) = v7;
    if ((*(a2 + 6) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 1);
    *(this + 6) |= 4u;
    *(this + 1) = v5;
  }
}

void sub_100082504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::Configuration::~Configuration(proto::gnss::Emergency::Configuration *this)
{
  *this = off_1001743C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001743C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001743C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::Configuration::default_instance(proto::gnss::Emergency::Configuration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::Configuration::default_instance_;
  if (!proto::gnss::Emergency::Configuration::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::Configuration::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::Configuration::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::Configuration::MergePartialFromCodedStream(proto::gnss::Emergency::Configuration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_32;
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

      v17[0] = 0;
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v10 >= v9 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v17);
        if (!result)
        {
          return result;
        }

        v11 = v17[0];
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 16) = v11 != 0;
      *(this + 6) |= 1u;
      if (v12 < v9 && *v12 == 16)
      {
        v13 = v12 + 1;
        *(a2 + 1) = v13;
LABEL_24:
        v17[0] = 0;
        if (v13 >= v9 || (v15 = *v13, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v17);
          if (!result)
          {
            return result;
          }

          v15 = v17[0];
          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v16 = v13 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 17) = v15 != 0;
        *(this + 6) |= 2u;
        if (v16 < v9 && *v16 == 25)
        {
          *(a2 + 1) = v16 + 1;
LABEL_32:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = *v17;
          *(this + 6) |= 4u;
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

    if ((TagFallback & 7) == 0)
    {
      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
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

uint64_t proto::gnss::Emergency::Configuration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 24);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), v4, a4);
    if ((*(v5 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
  v6 = *(v5 + 24);
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
  v7 = *(v5 + 8);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, v7, a3);
}

uint64_t proto::gnss::Emergency::Configuration::ByteSize(proto::gnss::Emergency::Configuration *this)
{
  v1 = 2 * (*(this + 6) & 1) + (*(this + 6) & 2);
  if ((*(this + 6) & 4) != 0)
  {
    v1 |= 9u;
  }

  if (*(this + 6))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  *(this + 5) = v2;
  return v2;
}

void proto::gnss::Emergency::Configuration::CheckTypeAndMergeFrom(proto::gnss::Emergency::Configuration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::Configuration::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::Configuration::CopyFrom(proto::gnss::Emergency::Configuration *this, const proto::gnss::Emergency::Configuration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::Configuration::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::Configuration::Swap(proto::gnss::Emergency::Configuration *this, proto::gnss::Emergency::Configuration *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v3;
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return result;
}

double proto::gnss::Emergency::SummaryReport::SharedCtor(proto::gnss::Emergency::SummaryReport *this)
{
  *(this + 52) = 0;
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 31) = 0;
  return result;
}

proto::gnss::Emergency::SummaryReport *proto::gnss::Emergency::SummaryReport::SummaryReport(proto::gnss::Emergency::SummaryReport *this, const proto::gnss::Emergency::SummaryReport *a2)
{
  *this = off_100174438;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 52) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *(this + 31) = 0;
  proto::gnss::Emergency::SummaryReport::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::SummaryReport::MergeFrom(proto::gnss::Emergency::SummaryReport *this, const proto::gnss::Emergency::SummaryReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 31);
  if (v4)
  {
    if (v4)
    {
      v5 = *(a2 + 1);
      *(this + 31) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 31);
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

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 31) |= 2u;
    *(this + 2) = v6;
    v4 = *(a2 + 31);
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
    v7 = *(a2 + 3);
    *(this + 31) |= 4u;
    *(this + 3) = v7;
    v4 = *(a2 + 31);
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
    v8 = *(a2 + 4);
    *(this + 31) |= 8u;
    *(this + 4) = v8;
    v4 = *(a2 + 31);
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
    v9 = *(a2 + 5);
    *(this + 31) |= 0x10u;
    *(this + 5) = v9;
    v4 = *(a2 + 31);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 6);
    *(this + 31) |= 0x20u;
    *(this + 6) = v10;
    v4 = *(a2 + 31);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 14);
    *(this + 31) |= 0x40u;
    *(this + 14) = v11;
    v4 = *(a2 + 31);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v12 = *(a2 + 15);
    if (v12 >= 0x12)
    {
      __assert_rtn("set_method_type", "GnssEmergencyTypes.pb.h", 13226, "::proto::gnss::Emergency::PositionMethod_IsValid(value)");
    }

    *(this + 31) |= 0x80u;
    *(this + 15) = v12;
    v4 = *(a2 + 31);
  }

LABEL_22:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v4 & 0x100) != 0)
  {
    v13 = *(a2 + 16);
    if (v13 >= 4)
    {
      __assert_rtn("set_session_type", "GnssEmergencyTypes.pb.h", 13249, "::proto::gnss::Emergency::PositionSession_IsValid(value)");
    }

    *(this + 31) |= 0x100u;
    *(this + 16) = v13;
    v4 = *(a2 + 31);
  }

  if ((v4 & 0x200) != 0)
  {
    v14 = *(a2 + 17);
    if (v14 >= 7)
    {
      __assert_rtn("set_protocol_type", "GnssEmergencyTypes.pb.h", 13272, "::proto::gnss::Emergency::PositionProtocol_IsValid(value)");
    }

    *(this + 31) |= 0x200u;
    *(this + 17) = v14;
    v4 = *(a2 + 31);
  }

  if ((v4 & 0x400) != 0)
  {
    v17 = *(a2 + 9);
    *(this + 31) |= 0x400u;
    *(this + 9) = v17;
    v4 = *(a2 + 31);
    if ((v4 & 0x800) == 0)
    {
LABEL_31:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_31;
  }

  v18 = *(a2 + 10);
  *(this + 31) |= 0x800u;
  *(this + 10) = v18;
  v4 = *(a2 + 31);
  if ((v4 & 0x1000) == 0)
  {
LABEL_32:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_44:
  v19 = *(a2 + 11);
  *(this + 31) |= 0x1000u;
  *(this + 11) = v19;
  v4 = *(a2 + 31);
  if ((v4 & 0x2000) == 0)
  {
LABEL_33:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

LABEL_45:
  v20 = *(a2 + 24);
  if (v20 >= 8)
  {
    __assert_rtn("set_pos_req_type", "GnssEmergencyTypes.pb.h", 13361, "::proto::gnss::Emergency::PositionReqType_IsValid(value)");
  }

  *(this + 31) |= 0x2000u;
  *(this + 24) = v20;
  v4 = *(a2 + 31);
  if ((v4 & 0x4000) == 0)
  {
LABEL_34:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_47:
  v21 = *(a2 + 25);
  if (v21 >= 0x11)
  {
    __assert_rtn("set_error_code", "GnssEmergencyTypes.pb.h", 13384, "::proto::gnss::Emergency::SessionErrorCode_IsValid(value)");
  }

  *(this + 31) |= 0x4000u;
  *(this + 25) = v21;
  v4 = *(a2 + 31);
  if ((v4 & 0x8000) != 0)
  {
LABEL_35:
    v15 = *(a2 + 104);
    *(this + 31) |= 0x8000u;
    *(this + 104) = v15;
    v4 = *(a2 + 31);
  }

LABEL_36:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v22 = *(a2 + 105);
    *(this + 31) |= 0x10000u;
    *(this + 105) = v22;
    v4 = *(a2 + 31);
    if ((v4 & 0x20000) == 0)
    {
LABEL_39:
      if ((v4 & 0x40000) == 0)
      {
        return;
      }

      goto LABEL_40;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_39;
  }

  v23 = *(a2 + 14);
  *(this + 31) |= 0x20000u;
  *(this + 14) = v23;
  if ((*(a2 + 31) & 0x40000) != 0)
  {
LABEL_40:
    v16 = *(a2 + 27);
    *(this + 31) |= 0x40000u;
    *(this + 27) = v16;
  }
}

void sub_100082F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SummaryReport::~SummaryReport(proto::gnss::Emergency::SummaryReport *this)
{
  *this = off_100174438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100174438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::SummaryReport::default_instance(proto::gnss::Emergency::SummaryReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::SummaryReport::default_instance_;
  if (!proto::gnss::Emergency::SummaryReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::SummaryReport::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::SummaryReport::Clear(uint64_t this)
{
  v1 = *(this + 124);
  if (v1)
  {
    *(this + 56) = 0;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 89) = 0u;
    *(this + 64) = 0u;
    *(this + 80) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 105) = 0;
    *(this + 112) = 0;
    *(this + 108) = 0;
  }

  *(this + 124) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SummaryReport::MergePartialFromCodedStream(proto::gnss::Emergency::SummaryReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v7 != 1)
        {
          goto LABEL_68;
        }

        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v54) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v54;
        *(this + 31) |= 1u;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 != 17)
        {
          continue;
        }

        *(a2 + 1) = v8 + 1;
        goto LABEL_33;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_68;
        }

LABEL_33:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v54) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v54;
        *(this + 31) |= 2u;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 != 25)
        {
          continue;
        }

        *(a2 + 1) = v18 + 1;
LABEL_37:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v54) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v54;
        *(this + 31) |= 4u;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 != 33)
        {
          continue;
        }

        *(a2 + 1) = v19 + 1;
LABEL_41:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v54) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v54;
        *(this + 31) |= 8u;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 != 41)
        {
          continue;
        }

        *(a2 + 1) = v20 + 1;
LABEL_45:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v54) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v54;
        *(this + 31) |= 0x10u;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 49)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_52:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v54) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v54;
        *(this + 31) |= 0x20u;
        v23 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v23 >= v16 || *v23 != 56)
        {
          continue;
        }

        v24 = v23 + 1;
        *(a2 + 1) = v24;
LABEL_60:
        v54[0] = 0;
        if (v24 >= v16 || (v27 = *v24, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v54);
          if (!result)
          {
            return result;
          }

          v27 = v54[0];
          v28 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          v28 = v24 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 14) = v27;
        *(this + 31) |= 0x40u;
        if (v28 >= v16 || *v28 != 64)
        {
          continue;
        }

        v17 = v28 + 1;
        *(a2 + 1) = v17;
LABEL_77:
        v54[0] = 0;
        if (v17 >= v16 || (v33 = *v17, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v54);
          if (!result)
          {
            return result;
          }

          v33 = v54[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v33 <= 0x11)
        {
          *(this + 31) |= 0x80u;
          *(this + 15) = v33;
        }

        v34 = *(a2 + 1);
        v30 = *(a2 + 2);
        if (v34 >= v30 || *v34 != 72)
        {
          continue;
        }

        v31 = v34 + 1;
        *(a2 + 1) = v31;
LABEL_87:
        v54[0] = 0;
        if (v31 >= v30 || (v35 = *v31, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v54);
          if (!result)
          {
            return result;
          }

          v35 = v54[0];
        }

        else
        {
          *(a2 + 1) = v31 + 1;
        }

        if (v35 <= 3)
        {
          *(this + 31) |= 0x100u;
          *(this + 16) = v35;
        }

        v36 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v36 >= v13 || *v36 != 80)
        {
          continue;
        }

        v14 = v36 + 1;
        *(a2 + 1) = v14;
LABEL_97:
        v54[0] = 0;
        if (v14 >= v13 || (v37 = *v14, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v54);
          if (!result)
          {
            return result;
          }

          v37 = v54[0];
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v37 <= 6)
        {
          *(this + 31) |= 0x200u;
          *(this + 17) = v37;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 89)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_107:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v54) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v54;
        *(this + 31) |= 0x400u;
        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 97)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_111:
        *v54 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v54) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v54;
        *(this + 31) |= 0x800u;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 105)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_115:
        *v54 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v54))
        {
          *(this + 11) = *v54;
          *(this + 31) |= 0x1000u;
          v41 = *(a2 + 1);
          v25 = *(a2 + 2);
          if (v41 < v25 && *v41 == 112)
          {
            v26 = v41 + 1;
            *(a2 + 1) = v26;
LABEL_119:
            v54[0] = 0;
            if (v26 >= v25 || (v42 = *v26, (v42 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v54);
              if (!result)
              {
                return result;
              }

              v42 = v54[0];
            }

            else
            {
              *(a2 + 1) = v26 + 1;
            }

            if (v42 <= 7)
            {
              *(this + 31) |= 0x2000u;
              *(this + 24) = v42;
            }

            v43 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v43 < v11 && *v43 == 120)
            {
              v12 = v43 + 1;
              *(a2 + 1) = v12;
LABEL_129:
              v54[0] = 0;
              if (v12 >= v11 || (v44 = *v12, (v44 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v54);
                if (!result)
                {
                  return result;
                }

                v44 = v54[0];
              }

              else
              {
                *(a2 + 1) = v12 + 1;
              }

              if (v44 <= 0x10)
              {
                *(this + 31) |= 0x4000u;
                *(this + 25) = v44;
              }

              v45 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v9 - v45 >= 2 && *v45 == 128 && v45[1] == 1)
              {
                v15 = (v45 + 2);
                *(a2 + 1) = v15;
LABEL_140:
                v54[0] = 0;
                if (v15 >= v9 || (v46 = *v15, (v46 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v54);
                  if (!result)
                  {
                    return result;
                  }

                  v46 = v54[0];
                  v47 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v47 = (v15 + 1);
                  *(a2 + 1) = v47;
                }

                *(this + 104) = v46 != 0;
                *(this + 31) |= 0x8000u;
                if (v9 - v47 >= 2 && *v47 == 136 && v47[1] == 1)
                {
                  v10 = (v47 + 2);
                  *(a2 + 1) = v10;
LABEL_149:
                  v54[0] = 0;
                  if (v10 >= v9 || (v48 = *v10, (v48 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v54);
                    if (!result)
                    {
                      return result;
                    }

                    v48 = v54[0];
                    v49 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    v49 = (v10 + 1);
                    *(a2 + 1) = v49;
                  }

                  *(this + 105) = v48 != 0;
                  *(this + 31) |= 0x10000u;
                  if (v9 - v49 >= 2 && *v49 == 144 && v49[1] == 1)
                  {
                    v22 = (v49 + 2);
                    *(a2 + 1) = v22;
LABEL_158:
                    if (v22 >= v9 || (v50 = *v22, v50 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 14);
                      if (!result)
                      {
                        return result;
                      }

                      v51 = *(a2 + 1);
                      v9 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 14) = v50;
                      v51 = (v22 + 1);
                      *(a2 + 1) = v51;
                    }

                    *(this + 31) |= 0x20000u;
                    if (v9 - v51 >= 2 && *v51 == 152 && v51[1] == 1)
                    {
                      v29 = (v51 + 2);
                      *(a2 + 1) = v29;
LABEL_167:
                      if (v29 >= v9 || (v52 = *v29, v52 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
                        if (!result)
                        {
                          return result;
                        }

                        v53 = *(a2 + 1);
                        v9 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 27) = v52;
                        v53 = v29 + 1;
                        *(a2 + 1) = v53;
                      }

                      *(this + 31) |= 0x40000u;
                      if (v53 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_37;
        }

        goto LABEL_68;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_41;
        }

        goto LABEL_68;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_68;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v24 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_60;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_77;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_87;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_97;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_107;
        }

        goto LABEL_68;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_111;
        }

        goto LABEL_68;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_115;
        }

        goto LABEL_68;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_119;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_129;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_140;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_149;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_158;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_68;
        }

        v29 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_167;
      default:
LABEL_68:
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

uint64_t proto::gnss::Emergency::SummaryReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 124);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 124);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 124);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 124);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 56), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 60), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 64), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 68), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 80), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 88), a3);
  v6 = *(v5 + 124);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 96), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 100), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 104), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x12, *(v5 + 112), a2, a4);
    if ((*(v5 + 124) & 0x40000) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 105), a2, a4);
  v6 = *(v5 + 124);
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v6 & 0x40000) == 0)
  {
    return this;
  }

LABEL_39:
  v7 = *(v5 + 108);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, v7, a2, a4);
}

uint64_t proto::gnss::Emergency::SummaryReport::ByteSize(proto::gnss::Emergency::SummaryReport *this, unint64_t a2)
{
  v3 = *(this + 31);
  if (v3)
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
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x40) != 0)
    {
      v6 = *(this + 14);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(this + 31);
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }

    if ((v3 & 0x80) != 0)
    {
      v8 = *(this + 15);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = *(this + 31);
      }

      else
      {
        v9 = 2;
      }

      v5 = (v9 + v5);
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
      v10 = *(this + 16);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = *(this + 31);
      }

      else
      {
        v11 = 2;
      }

      LODWORD(v5) = v11 + v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v12 = *(this + 17);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 11;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
        v3 = *(this + 31);
      }

      else
      {
        v13 = 2;
      }

      LODWORD(v5) = v13 + v5;
    }

    v14 = v5 + 9;
    if ((v3 & 0x400) == 0)
    {
      v14 = v5;
    }

    if ((v3 & 0x800) != 0)
    {
      v14 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      LODWORD(v5) = v14 + 9;
    }

    else
    {
      LODWORD(v5) = v14;
    }

    if ((v3 & 0x2000) != 0)
    {
      v15 = *(this + 24);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 11;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
        v3 = *(this + 31);
      }

      else
      {
        v16 = 2;
      }

      LODWORD(v5) = v16 + v5;
    }

    if ((v3 & 0x4000) != 0)
    {
      v17 = *(this + 25);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = 11;
      }

      else if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
        v3 = *(this + 31);
      }

      else
      {
        v18 = 2;
      }

      LODWORD(v5) = v18 + v5;
    }

    if ((v3 & 0x8000) != 0)
    {
      v5 = (v5 + 3);
    }

    else
    {
      v5 = v5;
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v5 = (v5 + 3);
    }

    else
    {
      v5 = v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 14), a2) + 2;
      v3 = *(this + 31);
    }

    if ((v3 & 0x40000) != 0)
    {
      v19 = *(this + 27);
      if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 2;
      }

      else
      {
        v20 = 3;
      }

      v5 = (v20 + v5);
    }
  }

  *(this + 30) = v5;
  return v5;
}

void proto::gnss::Emergency::SummaryReport::CheckTypeAndMergeFrom(proto::gnss::Emergency::SummaryReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gnss::Emergency::SummaryReport::MergeFrom(this, lpsrc);
}

void proto::gnss::Emergency::SummaryReport::CopyFrom(proto::gnss::Emergency::SummaryReport *this, const proto::gnss::Emergency::SummaryReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gnss::Emergency::SummaryReport::MergeFrom(this, a2);
  }
}

double proto::gnss::Emergency::SummaryReport::Swap(proto::gnss::Emergency::SummaryReport *this, proto::gnss::Emergency::SummaryReport *a2)
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
    v12 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v12;
    v13 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v13;
    result = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = result;
    v15 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v15;
    v16 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v16;
    LOBYTE(v16) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v16;
    LOBYTE(v16) = *(this + 105);
    *(this + 105) = *(a2 + 105);
    *(a2 + 105) = v16;
    v17 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v17;
    LODWORD(v17) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v17;
    LODWORD(v17) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v17;
    LODWORD(v17) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v17;
  }

  return result;
}

void *proto::gnss::Emergency::SuplConfig::SharedCtor(void *this)
{
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gnss::Emergency::SuplConfig *proto::gnss::Emergency::SuplConfig::SuplConfig(proto::gnss::Emergency::SuplConfig *this, const proto::gnss::Emergency::SuplConfig *a2)
{
  *this = off_1001744B0;
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gnss::Emergency::SuplConfig::MergeFrom(this, a2);
  return this;
}

void proto::gnss::Emergency::SuplConfig::MergeFrom(proto::gnss::Emergency::SuplConfig *this, const proto::gnss::Emergency::SuplConfig *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 4);
      *(this + 7) |= 1u;
      *(this + 4) = v6;
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 1);
    *(this + 7) |= 2u;
    v8 = *(this + 1);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 7);
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
    v9 = *(a2 + 20);
    *(this + 7) |= 4u;
    *(this + 20) = v9;
    v4 = *(a2 + 7);
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
    v10 = *(a2 + 21);
    *(this + 7) |= 8u;
    *(this + 21) = v10;
    v4 = *(a2 + 7);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_18:
    v11 = *(a2 + 22);
    *(this + 7) |= 0x10u;
    *(this + 22) = v11;
    if ((*(a2 + 7) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 23);
    *(this + 7) |= 0x20u;
    *(this + 23) = v5;
  }
}

void sub_1000842AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gnss::Emergency::SuplConfig::~SuplConfig(proto::gnss::Emergency::SuplConfig *this)
{
  *this = off_1001744B0;
  proto::gnss::Emergency::SuplConfig::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001744B0;
  proto::gnss::Emergency::SuplConfig::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_1001744B0;
  proto::gnss::Emergency::SuplConfig::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gnss::Emergency::SuplConfig::SharedDtor(uint64_t this)
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

uint64_t proto::gnss::Emergency::SuplConfig::default_instance(proto::gnss::Emergency::SuplConfig *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gnss::Emergency::SuplConfig::default_instance_;
  if (!proto::gnss::Emergency::SuplConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(0, a2, a3, a4);
    return proto::gnss::Emergency::SuplConfig::default_instance_;
  }

  return result;
}

uint64_t proto::gnss::Emergency::SuplConfig::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 16) = 0;
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

    *(this + 20) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gnss::Emergency::SuplConfig::MergePartialFromCodedStream(proto::gnss::Emergency::SuplConfig *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
              v16 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_49;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_57;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_65;
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

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v13 >= v12 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        v17 = *(this + 7) | 1;
        *(this + 7) = v17;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_35;
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

      v17 = *(this + 7);
LABEL_35:
      *(this + 7) = v17 | 2;
      if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v19 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v19 < v9 && *v19 == 24)
      {
        v10 = v19 + 1;
        *(a2 + 1) = v10;
LABEL_41:
        v29 = 0;
        if (v10 >= v9 || (v20 = *v10, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
          if (!result)
          {
            return result;
          }

          v20 = v29;
          v21 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v21 = v10 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 20) = v20 != 0;
        *(this + 7) |= 4u;
        if (v21 < v9 && *v21 == 32)
        {
          v16 = v21 + 1;
          *(a2 + 1) = v16;
LABEL_49:
          v29 = 0;
          if (v16 >= v9 || (v22 = *v16, (v22 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
            if (!result)
            {
              return result;
            }

            v22 = v29;
            v23 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v23 = v16 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 21) = v22 != 0;
          *(this + 7) |= 8u;
          if (v23 < v9 && *v23 == 40)
          {
            v18 = v23 + 1;
            *(a2 + 1) = v18;
LABEL_57:
            v29 = 0;
            if (v18 >= v9 || (v24 = *v18, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
              if (!result)
              {
                return result;
              }

              v24 = v29;
              v25 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v25 = v18 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 22) = v24 != 0;
            *(this + 7) |= 0x10u;
            if (v25 < v9 && *v25 == 48)
            {
              v11 = v25 + 1;
              *(a2 + 1) = v11;
LABEL_65:
              v29 = 0;
              if (v11 >= v9 || (v26 = *v11, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
                if (!result)
                {
                  return result;
                }

                v26 = v29;
                v27 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v27 = v11 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 23) = v26 != 0;
              *(this + 7) |= 0x20u;
              if (v27 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_41;
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

uint64_t proto::gnss::Emergency::SuplConfig::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 28);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 28);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), v4, a4);
  v6 = *(v5 + 28);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 22), v4, a4);
    if ((*(v5 + 28) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 21), v4, a4);
  v6 = *(v5 + 28);
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
  v8 = *(v5 + 23);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v8, v4, a4);
}