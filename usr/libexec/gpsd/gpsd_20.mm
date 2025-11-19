void sub_1000F0FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectRavenOrbitFile::MergeFrom(proto::gpsd::InjectRavenOrbitFile *this, const proto::gpsd::InjectRavenOrbitFile *a2)
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

void sub_1000F10A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Request::CopyFrom(proto::gpsd::Request *this, const proto::gpsd::Request *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Request::MergeFrom(this, a2);
  }
}

double proto::gpsd::Request::Swap(proto::gpsd::Request *this, proto::gpsd::Request *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
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
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v13;
    v14 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v14;
    v15 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v15;
    v16 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v16;
    v17 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v18;
    v19 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v19;
    v20 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v20;
    v21 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v21;
    v22 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v22;
    v23 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v23;
    v24 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v24;
    v25 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v25;
    v26 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v26;
    v27 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v27;
    v28 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v28;
    v29 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v29;
    v30 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v30;
    v31 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v31;
    v32 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v32;
    v33 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v33;
    LODWORD(v33) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v33;
    v34 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v34;
    v35 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v35;
    v36 = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v36;
    v37 = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v37;
    v38 = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v38;
    v39 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v39;
    v40 = *(this + 41);
    *(this + 41) = *(a2 + 41);
    v41 = *(a2 + 42);
    *(a2 + 41) = v40;
    v42 = *(this + 42);
    *(this + 42) = v41;
    *(a2 + 42) = v42;
    v43 = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v43;
    LODWORD(v43) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v43;
    v44 = *(this + 44);
    *(this + 44) = *(a2 + 44);
    result = *(a2 + 45);
    *(a2 + 44) = v44;
    v46 = *(this + 45);
    *(this + 45) = result;
    *(a2 + 45) = v46;
    LOBYTE(v44) = *(this + 368);
    *(this + 368) = *(a2 + 368);
    *(a2 + 368) = v44;
    LODWORD(v44) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v44;
    v47 = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v47;
    v48 = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v48;
    LODWORD(v48) = *(this + 99);
    *(this + 99) = *(a2 + 99);
    *(a2 + 99) = v48;
    LODWORD(v48) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v48;
    LODWORD(v48) = *(this + 98);
    *(this + 98) = *(a2 + 98);
    *(a2 + 98) = v48;
  }

  return result;
}

void *proto::gpsd::Response::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gpsd::Response *proto::gpsd::Response::Response(proto::gpsd::Response *this, const proto::gpsd::Response *a2)
{
  *this = off_100179C88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gpsd::Response::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Response::MergeFrom(proto::gpsd::Response *this, const proto::gpsd::Response *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 4);
      if (!proto::gpsd::Request_Type_IsValid(v5))
      {
        __assert_rtn("set_request_type", "GpsdProtocol.pb.h", 7674, "::proto::gpsd::Request_Type_IsValid(value)");
      }

      *(this + 7) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 2u;
      *(this + 1) = v6;
      v4 = *(a2 + 7);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 5);
      if (v7 >= 0xA)
      {
        __assert_rtn("set_result_code", "GpsdProtocol.pb.h", 7719, "::proto::gnss::Result_IsValid(value)");
      }

      *(this + 7) |= 4u;
      *(this + 5) = v7;
    }
  }
}

void sub_1000F1654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Response::~Response(proto::gpsd::Response *this)
{
  *this = off_100179C88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179C88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179C88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::Response::default_instance(proto::gpsd::Response *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Response::default_instance_;
  if (!proto::gpsd::Response::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Response::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Response::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gpsd::Response::MergePartialFromCodedStream(proto::gpsd::Response *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_35;
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

      v19 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
        if (!result)
        {
          return result;
        }

        v9 = v19;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (proto::gpsd::Request_Type_IsValid(v9))
      {
        *(this + 7) |= 1u;
        *(this + 4) = v9;
      }

      v13 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v13 < v10 && *v13 == 16)
      {
        v11 = v13 + 1;
        *(a2 + 1) = v11;
LABEL_27:
        if (v11 >= v10 || (v14 = *v11, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v11 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 7) |= 2u;
        if (v15 < v10 && *v15 == 24)
        {
          v12 = v15 + 1;
          *(a2 + 1) = v12;
LABEL_35:
          v18 = 0;
          if (v12 >= v10 || (v16 = *v12, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
            if (!result)
            {
              return result;
            }

            v16 = v18;
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v16 <= 9)
          {
            *(this + 7) |= 4u;
            *(this + 5) = v16;
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

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_27;
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

uint64_t proto::gpsd::Response::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 8), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
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
  v7 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v7, a2, a4);
}

void proto::gpsd::Response::CheckTypeAndMergeFrom(proto::gpsd::Response *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Response::MergeFrom(this, lpsrc);
}

void proto::gpsd::Response::CopyFrom(proto::gpsd::Response *this, const proto::gpsd::Response *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Response::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::Response::Swap(uint64_t this, proto::gpsd::Response *a2)
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
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

double proto::gpsd::Indication::SharedCtor(proto::gpsd::Indication *this)
{
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
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

uint64_t proto::gpsd::Status::default_instance(proto::gpsd::Status *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Status::default_instance_;
  if (!proto::gpsd::Status::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Status::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::RecoveryStatistics::default_instance(proto::gpsd::RecoveryStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::RecoveryStatistics::default_instance_;
  if (!proto::gpsd::RecoveryStatistics::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::RecoveryStatistics::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfoRequest::default_instance(proto::gpsd::LtlInfoRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfoRequest::default_instance_;
  if (!proto::gpsd::LtlInfoRequest::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfoRequest::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Exception::default_instance(proto::gpsd::Exception *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Exception::default_instance_;
  if (!proto::gpsd::Exception::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Exception::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::AskBasebandReset::default_instance(proto::gpsd::AskBasebandReset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::AskBasebandReset::default_instance_;
  if (!proto::gpsd::AskBasebandReset::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::AskBasebandReset::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Indication::default_instance(proto::gpsd::Indication *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Indication::default_instance_;
  if (!proto::gpsd::Indication::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Indication::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Status::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 23) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::Clear(uint64_t this)
{
  v1 = this;
  if ((*(this + 44) & 2) != 0)
  {
    v2 = *(this + 32);
    if (v2)
    {
      if (*(v2 + 20))
      {
        *(v2 + 11) = 0;
        *(v2 + 8) = 0;
      }

      *(v2 + 20) = 0;
    }
  }

  if (*(this + 16) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 8) + 8 * v3);
      this = (*(*v4 + 32))(v4);
      ++v3;
    }

    while (v3 < *(v1 + 16));
  }

  *(v1 + 16) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfoRequest::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::Exception::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::AskBasebandReset::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 24);
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

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::Indication::MergePartialFromCodedStream(proto::gpsd::Indication *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_66;
        }

        v224 = 0;
        v8 = *(a2 + 1);
        if (v8 < *(a2 + 2))
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(a2 + 1) = v8 + 1;
            goto LABEL_72;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224);
        if (result)
        {
          v9 = v224;
LABEL_72:
          if (v9 <= 0x1B && ((1 << v9) & 0xFDFFE3F) != 0)
          {
            if (v9 > 0x1B || ((1 << v9) & 0xFDFFE3F) == 0)
            {
              __assert_rtn("set_type", "GpsdProtocol.pb.h", 7746, "::proto::gpsd::Indication_Type_IsValid(value)");
            }

            *(this + 54) |= 1u;
            *(this + 2) = v9;
          }

          v27 = *(a2 + 1);
          v19 = *(a2 + 2);
          if (v27 < v19 && *v27 == 16)
          {
            v20 = v27 + 1;
            *(a2 + 1) = v20;
            goto LABEL_82;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
LABEL_82:
        v224 = 0;
        if (v20 >= v19 || (v28 = *v20, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224);
          if (!result)
          {
            return result;
          }

          v28 = v224;
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (proto::gpsd::Request_Type_IsValid(v28))
        {
          *(this + 54) |= 2u;
          *(this + 3) = v28;
        }

        v29 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v29 >= v17 || *v29 != 24)
        {
          continue;
        }

        v18 = v29 + 1;
        *(a2 + 1) = v18;
LABEL_92:
        if (v18 >= v17 || (v30 = *v18, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v30;
          v31 = v18 + 1;
          *(a2 + 1) = v31;
        }

        v21 = *(this + 54) | 4;
        *(this + 54) = v21;
        if (v31 >= v17 || *v31 != 34)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_100:
        *(this + 54) = v21 | 8;
        v32 = *(this + 3);
        if (!v32)
        {
          operator new();
        }

        v224 = 0;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v33;
          *(a2 + 1) = v33 + 1;
        }

        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        *(a2 + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::Fix::MergePartialFromCodedStream(v32, a2, v37) || *(a2 + 36) != 1)
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
        if (v41 >= *(a2 + 2) || *v41 != 42)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_114:
        *(this + 54) |= 0x10u;
        v42 = *(this + 4);
        if (!v42)
        {
          operator new();
        }

        v224 = 0;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v43;
          *(a2 + 1) = v43 + 1;
        }

        v44 = *(a2 + 14);
        v45 = *(a2 + 15);
        *(a2 + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergePartialFromCodedStream(v42, a2, v47) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v46);
        v48 = *(a2 + 14);
        v39 = __OFSUB__(v48, 1);
        v49 = v48 - 1;
        if (v49 < 0 == v39)
        {
          *(a2 + 14) = v49;
        }

        v50 = *(a2 + 1);
        if (v50 >= *(a2 + 2) || *v50 != 50)
        {
          continue;
        }

        *(a2 + 1) = v50 + 1;
LABEL_128:
        *(this + 54) |= 0x20u;
        v51 = *(this + 5);
        if (!v51)
        {
          operator new();
        }

        v224 = 0;
        v52 = *(a2 + 1);
        if (v52 >= *(a2 + 2) || *v52 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v52;
          *(a2 + 1) = v52 + 1;
        }

        v53 = *(a2 + 14);
        v54 = *(a2 + 15);
        *(a2 + 14) = v53 + 1;
        if (v53 >= v54)
        {
          return 0;
        }

        v55 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::PwrMeasurement::MergePartialFromCodedStream(v51, a2, v56) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v55);
        v57 = *(a2 + 14);
        v39 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v39)
        {
          *(a2 + 14) = v58;
        }

        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 74)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_142:
        *(this + 54) |= 0x40u;
        v60 = *(this + 6);
        if (!v60)
        {
          operator new();
        }

        v224 = 0;
        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v61;
          *(a2 + 1) = v61 + 1;
        }

        v62 = *(a2 + 14);
        v63 = *(a2 + 15);
        *(a2 + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gpsd::Status::MergePartialFromCodedStream(v60, a2, v65) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v64);
        v66 = *(a2 + 14);
        v39 = __OFSUB__(v66, 1);
        v67 = v66 - 1;
        if (v67 < 0 == v39)
        {
          *(a2 + 14) = v67;
        }

        v68 = *(a2 + 1);
        if (v68 >= *(a2 + 2) || *v68 != 82)
        {
          continue;
        }

        *(a2 + 1) = v68 + 1;
LABEL_156:
        *(this + 54) |= 0x80u;
        v69 = *(this + 7);
        if (!v69)
        {
          operator new();
        }

        v224 = 0;
        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v70;
          *(a2 + 1) = v70 + 1;
        }

        v71 = *(a2 + 14);
        v72 = *(a2 + 15);
        *(a2 + 14) = v71 + 1;
        if (v71 >= v72)
        {
          return 0;
        }

        v73 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::TimeTransferDataExtend::MergePartialFromCodedStream(v69, a2, v74) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v73);
        v75 = *(a2 + 14);
        v39 = __OFSUB__(v75, 1);
        v76 = v75 - 1;
        if (v76 < 0 == v39)
        {
          *(a2 + 14) = v76;
        }

        v77 = *(a2 + 1);
        if (*(a2 + 4) - v77 <= 1 || *v77 != 130 || v77[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v77 + 2;
LABEL_171:
        *(this + 54) |= 0x100u;
        v78 = *(this + 8);
        if (!v78)
        {
          operator new();
        }

        v224 = 0;
        v79 = *(a2 + 1);
        if (v79 >= *(a2 + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v79;
          *(a2 + 1) = v79 + 1;
        }

        v80 = *(a2 + 14);
        v81 = *(a2 + 15);
        *(a2 + 14) = v80 + 1;
        if (v80 >= v81)
        {
          return 0;
        }

        v82 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gpsd::RecoveryStatistics::MergePartialFromCodedStream(v78, a2, v83) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v82);
        v84 = *(a2 + 14);
        v39 = __OFSUB__(v84, 1);
        v85 = v84 - 1;
        if (v85 < 0 == v39)
        {
          *(a2 + 14) = v85;
        }

        v86 = *(a2 + 1);
        if (*(a2 + 4) - v86 <= 1 || *v86 != 138 || v86[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v86 + 2;
LABEL_186:
        *(this + 54) |= 0x200u;
        v87 = *(this + 9);
        if (!v87)
        {
          operator new();
        }

        v224 = 0;
        v88 = *(a2 + 1);
        if (v88 >= *(a2 + 2) || *v88 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v88;
          *(a2 + 1) = v88 + 1;
        }

        v89 = *(a2 + 14);
        v90 = *(a2 + 15);
        *(a2 + 14) = v89 + 1;
        if (v89 >= v90)
        {
          return 0;
        }

        v91 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gpsd::LtlInfoRequest::MergePartialFromCodedStream(v87, a2, v92) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v91);
        v93 = *(a2 + 14);
        v39 = __OFSUB__(v93, 1);
        v94 = v93 - 1;
        if (v94 < 0 == v39)
        {
          *(a2 + 14) = v94;
        }

        v95 = *(a2 + 1);
        if (*(a2 + 4) - v95 <= 1 || *v95 != 146 || v95[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v95 + 2;
LABEL_201:
        *(this + 54) |= 0x400u;
        v96 = *(this + 10);
        if (!v96)
        {
          operator new();
        }

        v224 = 0;
        v97 = *(a2 + 1);
        if (v97 >= *(a2 + 2) || *v97 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v97;
          *(a2 + 1) = v97 + 1;
        }

        v98 = *(a2 + 14);
        v99 = *(a2 + 15);
        *(a2 + 14) = v98 + 1;
        if (v98 >= v99)
        {
          return 0;
        }

        v100 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::DecodedExtendedEphemeris::MergePartialFromCodedStream(v96, a2, v101) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v100);
        v102 = *(a2 + 14);
        v39 = __OFSUB__(v102, 1);
        v103 = v102 - 1;
        if (v103 < 0 == v39)
        {
          *(a2 + 14) = v103;
        }

        v104 = *(a2 + 1);
        if (*(a2 + 4) - v104 <= 1 || *v104 != 154 || v104[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v104 + 2;
LABEL_216:
        *(this + 54) |= 0x800u;
        v105 = *(this + 11);
        if (!v105)
        {
          operator new();
        }

        v224 = 0;
        v106 = *(a2 + 1);
        if (v106 >= *(a2 + 2) || *v106 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v106;
          *(a2 + 1) = v106 + 1;
        }

        v107 = *(a2 + 14);
        v108 = *(a2 + 15);
        *(a2 + 14) = v107 + 1;
        if (v107 >= v108)
        {
          return 0;
        }

        v109 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::DecodedRti::MergePartialFromCodedStream(v105, a2, v110) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v109);
        v111 = *(a2 + 14);
        v39 = __OFSUB__(v111, 1);
        v112 = v111 - 1;
        if (v112 < 0 == v39)
        {
          *(a2 + 14) = v112;
        }

        v113 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v15 - v113 <= 1 || *v113 != 160 || v113[1] != 1)
        {
          continue;
        }

        v16 = (v113 + 2);
        *(a2 + 1) = v16;
LABEL_231:
        v224 = 0;
        if (v16 >= v15 || (v114 = *v16, (v114 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224);
          if (!result)
          {
            return result;
          }

          v114 = v224;
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v114 <= 9)
        {
          *(this + 54) |= 0x2000u;
          *(this + 25) = v114;
        }

        v115 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v10 - v115 < 2 || *v115 != 176 || v115[1] != 1)
        {
          continue;
        }

        v11 = (v115 + 2);
        *(a2 + 1) = v11;
LABEL_242:
        v224 = 0;
        if (v11 >= v10 || (v116 = *v11, (v116 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224);
          if (!result)
          {
            return result;
          }

          v116 = v224;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v116 <= 9)
        {
          *(this + 54) |= 0x1000u;
          *(this + 24) = v116;
        }

        v117 = *(a2 + 1);
        if (*(a2 + 4) - v117 < 2 || *v117 != 186 || v117[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v117 + 2;
LABEL_253:
        *(this + 54) |= 0x4000u;
        v118 = *(this + 13);
        if (!v118)
        {
          operator new();
        }

        v224 = 0;
        v119 = *(a2 + 1);
        if (v119 >= *(a2 + 2) || *v119 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v119;
          *(a2 + 1) = v119 + 1;
        }

        v120 = *(a2 + 14);
        v121 = *(a2 + 15);
        *(a2 + 14) = v120 + 1;
        if (v120 >= v121)
        {
          return 0;
        }

        v122 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gpsd::Exception::MergePartialFromCodedStream(v118, a2, v123) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v122);
        v124 = *(a2 + 14);
        v39 = __OFSUB__(v124, 1);
        v125 = v124 - 1;
        if (v125 < 0 == v39)
        {
          *(a2 + 14) = v125;
        }

        v126 = *(a2 + 1);
        if (*(a2 + 4) - v126 <= 1 || *v126 != 202 || v126[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v126 + 2;
LABEL_268:
        *(this + 54) |= 0x8000u;
        v127 = *(this + 14);
        if (!v127)
        {
          operator new();
        }

        v224 = 0;
        v128 = *(a2 + 1);
        if (v128 >= *(a2 + 2) || *v128 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v128;
          *(a2 + 1) = v128 + 1;
        }

        v129 = *(a2 + 14);
        v130 = *(a2 + 15);
        *(a2 + 14) = v129 + 1;
        if (v129 >= v130)
        {
          return 0;
        }

        v131 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gpsd::AskBasebandReset::MergePartialFromCodedStream(v127, a2, v132) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v131);
        v133 = *(a2 + 14);
        v39 = __OFSUB__(v133, 1);
        v134 = v133 - 1;
        if (v134 < 0 == v39)
        {
          *(a2 + 14) = v134;
        }

        v135 = *(a2 + 1);
        if (*(a2 + 4) - v135 <= 1 || *v135 != 242 || v135[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v135 + 2;
LABEL_283:
        *(this + 54) |= 0x10000u;
        v136 = *(this + 15);
        if (!v136)
        {
          operator new();
        }

        v224 = 0;
        v137 = *(a2 + 1);
        if (v137 >= *(a2 + 2) || *v137 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v137;
          *(a2 + 1) = v137 + 1;
        }

        v138 = *(a2 + 14);
        v139 = *(a2 + 15);
        *(a2 + 14) = v138 + 1;
        if (v138 >= v139)
        {
          return 0;
        }

        v140 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::Emergency::SummaryReport::MergePartialFromCodedStream(v136, a2, v141) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v140);
        v142 = *(a2 + 14);
        v39 = __OFSUB__(v142, 1);
        v143 = v142 - 1;
        if (v143 < 0 == v39)
        {
          *(a2 + 14) = v143;
        }

        v144 = *(a2 + 1);
        if (*(a2 + 4) - v144 <= 1 || *v144 != 250 || v144[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v144 + 2;
LABEL_298:
        *(this + 54) |= 0x20000u;
        if (*(this + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v145 = *(a2 + 1);
        if (*(a2 + 4) - v145 < 2 || *v145 != 194 || v145[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v145 + 2;
LABEL_305:
        *(this + 54) |= 0x40000u;
        v146 = *(this + 17);
        if (!v146)
        {
          operator new();
        }

        v224 = 0;
        v147 = *(a2 + 1);
        if (v147 >= *(a2 + 2) || *v147 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v147;
          *(a2 + 1) = v147 + 1;
        }

        v148 = *(a2 + 14);
        v149 = *(a2 + 15);
        *(a2 + 14) = v148 + 1;
        if (v148 >= v149)
        {
          return 0;
        }

        v150 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::Emergency::PositionReport::MergePartialFromCodedStream(v146, a2, v151) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v150);
        v152 = *(a2 + 14);
        v39 = __OFSUB__(v152, 1);
        v153 = v152 - 1;
        if (v153 < 0 == v39)
        {
          *(a2 + 14) = v153;
        }

        v154 = *(a2 + 1);
        if (*(a2 + 4) - v154 <= 1 || *v154 != 202 || v154[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v154 + 2;
LABEL_320:
        *(this + 54) |= 0x80000u;
        v155 = *(this + 18);
        if (!v155)
        {
          operator new();
        }

        v224 = 0;
        v156 = *(a2 + 1);
        if (v156 >= *(a2 + 2) || *v156 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v156;
          *(a2 + 1) = v156 + 1;
        }

        v157 = *(a2 + 14);
        v158 = *(a2 + 15);
        *(a2 + 14) = v157 + 1;
        if (v157 >= v158)
        {
          return 0;
        }

        v159 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::Emergency::MeasurementReport::MergePartialFromCodedStream(v155, a2, v160) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v159);
        v161 = *(a2 + 14);
        v39 = __OFSUB__(v161, 1);
        v162 = v161 - 1;
        if (v162 < 0 == v39)
        {
          *(a2 + 14) = v162;
        }

        v163 = *(a2 + 1);
        if (*(a2 + 4) - v163 <= 1 || *v163 != 210 || v163[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v163 + 2;
LABEL_335:
        *(this + 54) |= 0x100000u;
        v164 = *(this + 19);
        if (!v164)
        {
          operator new();
        }

        v224 = 0;
        v165 = *(a2 + 1);
        if (v165 >= *(a2 + 2) || *v165 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v165;
          *(a2 + 1) = v165 + 1;
        }

        v166 = *(a2 + 14);
        v167 = *(a2 + 15);
        *(a2 + 14) = v166 + 1;
        if (v166 >= v167)
        {
          return 0;
        }

        v168 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::Emergency::AssistanceNeededReport::MergePartialFromCodedStream(v164, a2, v169) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v168);
        v170 = *(a2 + 14);
        v39 = __OFSUB__(v170, 1);
        v171 = v170 - 1;
        if (v171 < 0 == v39)
        {
          *(a2 + 14) = v171;
        }

        v172 = *(a2 + 1);
        if (*(a2 + 4) - v172 <= 1 || *v172 != 218 || v172[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v172 + 2;
LABEL_350:
        *(this + 54) |= 0x200000u;
        v173 = *(this + 20);
        if (!v173)
        {
          operator new();
        }

        v224 = 0;
        v174 = *(a2 + 1);
        if (v174 >= *(a2 + 2) || *v174 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v174;
          *(a2 + 1) = v174 + 1;
        }

        v175 = *(a2 + 14);
        v176 = *(a2 + 15);
        *(a2 + 14) = v175 + 1;
        if (v175 >= v176)
        {
          return 0;
        }

        v177 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::Emergency::CellFTAssistanceRequest::MergePartialFromCodedStream(v173, a2, v178) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v177);
        v179 = *(a2 + 14);
        v39 = __OFSUB__(v179, 1);
        v180 = v179 - 1;
        if (v180 < 0 == v39)
        {
          *(a2 + 14) = v180;
        }

        v181 = *(a2 + 1);
        if (*(a2 + 4) - v181 <= 1 || *v181 != 226 || v181[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v181 + 2;
LABEL_365:
        *(this + 54) |= 0x400000u;
        v182 = *(this + 21);
        if (!v182)
        {
          operator new();
        }

        v224 = 0;
        v183 = *(a2 + 1);
        if (v183 >= *(a2 + 2) || *v183 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v183;
          *(a2 + 1) = v183 + 1;
        }

        v184 = *(a2 + 14);
        v185 = *(a2 + 15);
        *(a2 + 14) = v184 + 1;
        if (v184 >= v185)
        {
          return 0;
        }

        v186 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::Emergency::MeasurementReportWithEstimate::MergePartialFromCodedStream(v182, a2, v187) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v186);
        v188 = *(a2 + 14);
        v39 = __OFSUB__(v188, 1);
        v189 = v188 - 1;
        if (v189 < 0 == v39)
        {
          *(a2 + 14) = v189;
        }

        v190 = *(a2 + 1);
        if (*(a2 + 4) - v190 <= 1 || *v190 != 146 || v190[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v190 + 2;
LABEL_380:
        *(this + 54) |= 0x800000u;
        v191 = *(this + 22);
        if (!v191)
        {
          operator new();
        }

        v224 = 0;
        v192 = *(a2 + 1);
        if (v192 >= *(a2 + 2) || *v192 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v192;
          *(a2 + 1) = v192 + 1;
        }

        v193 = *(a2 + 14);
        v194 = *(a2 + 15);
        *(a2 + 14) = v193 + 1;
        if (v193 >= v194)
        {
          return 0;
        }

        v195 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::Emergency::SessionStatus::MergePartialFromCodedStream(v191, a2, v196) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v195);
        v197 = *(a2 + 14);
        v39 = __OFSUB__(v197, 1);
        v198 = v197 - 1;
        if (v198 < 0 == v39)
        {
          *(a2 + 14) = v198;
        }

        v199 = *(a2 + 1);
        if (*(a2 + 4) - v199 <= 1 || *v199 != 154 || v199[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v199 + 2;
LABEL_395:
        *(this + 54) |= 0x1000000u;
        v200 = *(this + 23);
        if (!v200)
        {
          operator new();
        }

        v224 = 0;
        v201 = *(a2 + 1);
        if (v201 >= *(a2 + 2) || *v201 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v201;
          *(a2 + 1) = v201 + 1;
        }

        v202 = *(a2 + 14);
        v203 = *(a2 + 15);
        *(a2 + 14) = v202 + 1;
        if (v202 >= v203)
        {
          return 0;
        }

        v204 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::Emergency::Init::MergePartialFromCodedStream(v200, a2, v205) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v204);
        v206 = *(a2 + 14);
        v39 = __OFSUB__(v206, 1);
        v207 = v206 - 1;
        if (v207 < 0 == v39)
        {
          *(a2 + 14) = v207;
        }

        v208 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v208 <= 1 || *v208 != 160 || v208[1] != 3)
        {
          continue;
        }

        v13 = (v208 + 2);
        *(a2 + 1) = v13;
LABEL_410:
        if (v13 >= v12 || (v209 = *v13, v209 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
          if (!result)
          {
            return result;
          }

          v210 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 48) = v209;
          v210 = (v13 + 1);
          *(a2 + 1) = v210;
        }

        *(this + 54) |= 0x2000000u;
        if (v12 - v210 < 2 || *v210 != 168 || v210[1] != 3)
        {
          continue;
        }

        v24 = (v210 + 2);
        *(a2 + 1) = v24;
LABEL_419:
        v224 = 0;
        if (v24 >= v12 || (v211 = *v24, (v211 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224);
          if (!result)
          {
            return result;
          }

          v211 = v224;
        }

        else
        {
          *(a2 + 1) = v24 + 1;
        }

        if (v211 <= 4 && v211 != 3)
        {
          *(this + 54) |= 0x4000000u;
          *(this + 49) = v211;
        }

        v213 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v213 < 2 || *v213 != 176 || v213[1] != 3)
        {
          continue;
        }

        v23 = (v213 + 2);
        *(a2 + 1) = v23;
LABEL_433:
        if (v23 >= v22 || (v214 = *v23, v214 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
          if (!result)
          {
            return result;
          }

          v215 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *(this + 52) = v214;
          v215 = (v23 + 1);
          *(a2 + 1) = v215;
        }

        v14 = *(this + 54) | 0x8000000;
        *(this + 54) = v14;
        if (v22 - v215 < 2 || *v215 != 186 || v215[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v215 + 2;
LABEL_442:
        *(this + 54) = v14 | 0x10000000;
        v216 = *(this + 25);
        if (!v216)
        {
          operator new();
        }

        v224 = 0;
        v217 = *(a2 + 1);
        if (v217 >= *(a2 + 2) || *v217 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v217;
          *(a2 + 1) = v217 + 1;
        }

        v218 = *(a2 + 14);
        v219 = *(a2 + 15);
        *(a2 + 14) = v218 + 1;
        if (v218 >= v219)
        {
          return 0;
        }

        v220 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2, v224);
        if (!proto::gnss::Emergency::WlanMeasurementRequest::MergePartialFromCodedStream(v216, a2, v221) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2, v220);
        v222 = *(a2 + 14);
        v39 = __OFSUB__(v222, 1);
        v223 = v222 - 1;
        if (v223 < 0 == v39)
        {
          *(a2 + 14) = v223;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_92;
      case 4u:
        if (v7 != 2)
        {
          goto LABEL_66;
        }

        v21 = *(this + 54);
        goto LABEL_100;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_114;
        }

        goto LABEL_66;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_128;
        }

        goto LABEL_66;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_66;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_156;
        }

        goto LABEL_66;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_66;
      case 0x11u:
        if (v7 == 2)
        {
          goto LABEL_186;
        }

        goto LABEL_66;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_201;
        }

        goto LABEL_66;
      case 0x13u:
        if (v7 == 2)
        {
          goto LABEL_216;
        }

        goto LABEL_66;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_231;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_242;
      case 0x17u:
        if (v7 == 2)
        {
          goto LABEL_253;
        }

        goto LABEL_66;
      case 0x19u:
        if (v7 == 2)
        {
          goto LABEL_268;
        }

        goto LABEL_66;
      case 0x1Eu:
        if (v7 == 2)
        {
          goto LABEL_283;
        }

        goto LABEL_66;
      case 0x1Fu:
        if (v7 == 2)
        {
          goto LABEL_298;
        }

        goto LABEL_66;
      case 0x28u:
        if (v7 == 2)
        {
          goto LABEL_305;
        }

        goto LABEL_66;
      case 0x29u:
        if (v7 == 2)
        {
          goto LABEL_320;
        }

        goto LABEL_66;
      case 0x2Au:
        if (v7 == 2)
        {
          goto LABEL_335;
        }

        goto LABEL_66;
      case 0x2Bu:
        if (v7 == 2)
        {
          goto LABEL_350;
        }

        goto LABEL_66;
      case 0x2Cu:
        if (v7 == 2)
        {
          goto LABEL_365;
        }

        goto LABEL_66;
      case 0x32u:
        if (v7 == 2)
        {
          goto LABEL_380;
        }

        goto LABEL_66;
      case 0x33u:
        if (v7 == 2)
        {
          goto LABEL_395;
        }

        goto LABEL_66;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_410;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_419;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_433;
      case 0x37u:
        if (v7 != 2)
        {
          goto LABEL_66;
        }

        v14 = *(this + 54);
        goto LABEL_442;
      default:
LABEL_66:
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

    return result;
  }
}

void proto::gpsd::Indication::CheckTypeAndMergeFrom(proto::gpsd::Indication *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Indication::MergeFrom(this, lpsrc);
}

void proto::gpsd::Status::MergeFrom(proto::gpsd::Status *this, const proto::gpsd::Status *a2)
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

        goto LABEL_13;
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
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 24);
    *(this + 8) |= 4u;
    *(this + 24) = v8;
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
    v9 = *(a2 + 25);
    *(this + 8) |= 8u;
    *(this + 25) = v9;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 26);
    *(this + 8) |= 0x10u;
    *(this + 26) = v5;
  }
}

void sub_1000F3F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::RecoveryStatistics::MergeFrom(proto::gpsd::RecoveryStatistics *this, const proto::gpsd::RecoveryStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
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
      proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 4);
    }

    while (v5 < v4);
  }

  if ((*(a2 + 44) & 2) != 0)
  {
    *(this + 11) |= 2u;
    v10 = *(this + 4);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 4);
    if (!v11)
    {
      v11 = *(proto::gpsd::RecoveryStatistics::default_instance_ + 32);
    }

    proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(v10, v11);
  }
}

void sub_1000F4190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::LtlInfoRequest::MergeFrom(proto::gpsd::LtlInfoRequest *this, const proto::gpsd::LtlInfoRequest *a2)
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
    v4 = *(a2 + 2);
    if (v4 >= 5)
    {
      __assert_rtn("set_info_type", "GpsdProtocol.pb.h", 11098, "::proto::gpsd::LtlInfoType_IsValid(value)");
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_1000F4264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Exception::MergeFrom(proto::gpsd::Exception *this, const proto::gpsd::Exception *a2)
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

void sub_1000F4350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::AskBasebandReset::MergeFrom(proto::gpsd::AskBasebandReset *this, const proto::gpsd::AskBasebandReset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = v6;
    if ((*(a2 + 9) & 4) == 0)
    {
      return;
    }

LABEL_10:
    v7 = *(a2 + 3);
    *(this + 9) |= 4u;
    v8 = *(this + 3);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
  }
}

void sub_1000F4478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Indication::CopyFrom(proto::gpsd::Indication *this, const proto::gpsd::Indication *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Indication::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::Indication::Swap(uint64_t this, proto::gpsd::Indication *a2)
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
    v5 = *(this + 24);
    v6 = *(a2 + 3);
    *(this + 16) = *(a2 + 2);
    *(this + 24) = v6;
    *(a2 + 2) = v4;
    *(a2 + 3) = v5;
    v7 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v9;
    v10 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v10;
    v11 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v11;
    v12 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v12;
    v13 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v13;
    v14 = *(this + 88);
    *(this + 88) = *(a2 + 11);
    *(a2 + 11) = v14;
    LODWORD(v14) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v14;
    LODWORD(v14) = *(this + 100);
    *(this + 100) = *(a2 + 25);
    *(a2 + 25) = v14;
    v15 = *(this + 104);
    *(this + 104) = *(a2 + 13);
    *(a2 + 13) = v15;
    v16 = *(this + 112);
    *(this + 112) = *(a2 + 14);
    *(a2 + 14) = v16;
    v17 = *(this + 120);
    *(this + 120) = *(a2 + 15);
    *(a2 + 15) = v17;
    v18 = *(this + 128);
    *(this + 128) = *(a2 + 16);
    *(a2 + 16) = v18;
    v19 = *(this + 136);
    *(this + 136) = *(a2 + 17);
    *(a2 + 17) = v19;
    v20 = *(this + 144);
    *(this + 144) = *(a2 + 18);
    *(a2 + 18) = v20;
    v21 = *(this + 152);
    *(this + 152) = *(a2 + 19);
    *(a2 + 19) = v21;
    v22 = *(this + 160);
    *(this + 160) = *(a2 + 20);
    *(a2 + 20) = v22;
    v23 = *(this + 168);
    *(this + 168) = *(a2 + 21);
    *(a2 + 21) = v23;
    v24 = *(this + 176);
    *(this + 176) = *(a2 + 22);
    *(a2 + 22) = v24;
    v25 = *(this + 184);
    *(this + 184) = *(a2 + 23);
    *(a2 + 23) = v25;
    LODWORD(v25) = *(this + 192);
    *(this + 192) = *(a2 + 48);
    *(a2 + 48) = v25;
    LODWORD(v25) = *(this + 196);
    *(this + 196) = *(a2 + 49);
    *(a2 + 49) = v25;
    LODWORD(v25) = *(this + 208);
    *(this + 208) = *(a2 + 52);
    *(a2 + 52) = v25;
    v26 = *(this + 200);
    *(this + 200) = *(a2 + 25);
    *(a2 + 25) = v26;
    LODWORD(v26) = *(this + 216);
    *(this + 216) = *(a2 + 54);
    *(a2 + 54) = v26;
    LODWORD(v26) = *(this + 212);
    *(this + 212) = *(a2 + 53);
    *(a2 + 53) = v26;
  }

  return this;
}

uint64_t proto::gpsd::Status::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 23) = 0;
  return this;
}

proto::gpsd::Status *proto::gpsd::Status::Status(proto::gpsd::Status *this, const proto::gpsd::Status *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_100179D78;
  *(this + 23) = 0;
  proto::gpsd::Status::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::Status::~Status(proto::gpsd::Status *this)
{
  *this = off_100179D78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179D78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179D78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::Status::MergePartialFromCodedStream(proto::gpsd::Status *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 8) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          if (v10 >= v8 || (v16 = *v10, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            v27 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
              if (!result)
              {
                return result;
              }

              v18 = v27;
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 24) = v18 != 0;
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
      v26 = 0;
      if (v12 >= v8 || (v20 = *v12, (v20 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
        if (!result)
        {
          return result;
        }

        v20 = v26;
        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 25) = v20 != 0;
      *(this + 8) |= 8u;
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

        *(this + 26) = v22 != 0;
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

uint64_t proto::gpsd::Status::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 25), a2, a4);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
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
  v7 = *(v5 + 26);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t proto::gpsd::Status::ByteSize(proto::gpsd::Status *this, unint64_t a2)
{
  v3 = *(this + 8);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 8);
      if ((v3 & 2) == 0)
      {
LABEL_8:
        result = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2) + ((v3 >> 3) & 2);
        goto LABEL_9;
      }
    }

    else
    {
      v4 = 0;
      if ((v3 & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2), a2) + 1;
    v3 = *(this + 8);
    goto LABEL_8;
  }

  result = 0;
LABEL_9:
  *(this + 7) = result;
  return result;
}

void proto::gpsd::Status::CheckTypeAndMergeFrom(proto::gpsd::Status *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Status::MergeFrom(this, lpsrc);
}

void proto::gpsd::Status::CopyFrom(proto::gpsd::Status *this, const proto::gpsd::Status *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::Status::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::Status::Swap(uint64_t this, proto::gpsd::Status *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v3;
    LOBYTE(v3) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v3;
    LOBYTE(v3) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

uint64_t proto::gpsd::SetPvtmReport::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  return this;
}

proto::gpsd::SetPvtmReport *proto::gpsd::SetPvtmReport::SetPvtmReport(proto::gpsd::SetPvtmReport *this, const proto::gpsd::SetPvtmReport *a2)
{
  *this = off_100179DF0;
  *(this + 2) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  proto::gpsd::SetPvtmReport::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetPvtmReport::~SetPvtmReport(proto::gpsd::SetPvtmReport *this)
{
  *this = off_100179DF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179DF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179DF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::SetPvtmReport::MergePartialFromCodedStream(proto::gpsd::SetPvtmReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
              goto LABEL_51;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_67;
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

        v28 = 0;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v12 = v28;
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 8) = v12 != 0;
        *(this + 5) |= 1u;
        if (v13 < v8 && *v13 == 16)
        {
          v15 = v13 + 1;
          *(a2 + 1) = v15;
          goto LABEL_35;
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
LABEL_35:
      v28 = 0;
      if (v15 >= v8 || (v17 = *v15, (v17 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
        if (!result)
        {
          return result;
        }

        v17 = v28;
        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v18 = v15 + 1;
        *(a2 + 1) = v18;
      }

      *(this + 9) = v17 != 0;
      *(this + 5) |= 2u;
      if (v18 < v8 && *v18 == 24)
      {
        v9 = v18 + 1;
        *(a2 + 1) = v9;
LABEL_43:
        v28 = 0;
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v19 = v28;
          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 10) = v19 != 0;
        *(this + 5) |= 4u;
        if (v20 < v8 && *v20 == 32)
        {
          v14 = v20 + 1;
          *(a2 + 1) = v14;
LABEL_51:
          v28 = 0;
          if (v14 >= v8 || (v21 = *v14, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
            if (!result)
            {
              return result;
            }

            v21 = v28;
            v22 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v22 = v14 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 11) = v21 != 0;
          *(this + 5) |= 8u;
          if (v22 < v8 && *v22 == 40)
          {
            v16 = v22 + 1;
            *(a2 + 1) = v16;
LABEL_59:
            v28 = 0;
            if (v16 >= v8 || (v23 = *v16, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
              if (!result)
              {
                return result;
              }

              v23 = v28;
              v24 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v24 = v16 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 12) = v23 != 0;
            *(this + 5) |= 0x10u;
            if (v24 < v8 && *v24 == 48)
            {
              v10 = v24 + 1;
              *(a2 + 1) = v10;
LABEL_67:
              v28 = 0;
              if (v10 >= v8 || (v25 = *v10, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
                if (!result)
                {
                  return result;
                }

                v25 = v28;
                v26 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v26 = v10 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 13) = v25 != 0;
              *(this + 5) |= 0x20u;
              if (v26 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_43;
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

uint64_t proto::gpsd::SetPvtmReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_10;
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

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), v4, a4);
  v6 = *(v5 + 20);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), v4, a4);
    if ((*(v5 + 20) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), v4, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 13);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v7, v4, a4);
}

uint64_t proto::gpsd::SetPvtmReport::ByteSize(proto::gpsd::SetPvtmReport *this)
{
  if (*(this + 5))
  {
    v1.i64[0] = 0x200000002;
    v1.i64[1] = 0x200000002;
    v2 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(*(this + 5)), xmmword_1001461A0), v1)) + 2 * (*(this + 5) & 1) + (*(this + 5) & 2u);
  }

  else
  {
    v2 = 0;
  }

  *(this + 4) = v2;
  return v2;
}

void proto::gpsd::SetPvtmReport::CheckTypeAndMergeFrom(proto::gpsd::SetPvtmReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetPvtmReport::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetPvtmReport::CopyFrom(proto::gpsd::SetPvtmReport *this, const proto::gpsd::SetPvtmReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetPvtmReport::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetPvtmReport::Swap(uint64_t this, proto::gpsd::SetPvtmReport *a2)
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
    v8 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v9;
  }

  return this;
}

void *proto::gpsd::InjectAssistanceFile::SharedCtor(void *this)
{
  this[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  this[2] = 0;
  this[3] = 0;
  return this;
}

proto::gpsd::InjectAssistanceFile *proto::gpsd::InjectAssistanceFile::InjectAssistanceFile(proto::gpsd::InjectAssistanceFile *this, const proto::gpsd::InjectAssistanceFile *a2)
{
  *this = off_100179E68;
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 2) = 0;
  *(this + 3) = 0;
  proto::gpsd::InjectAssistanceFile::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectAssistanceFile::CheckTypeAndMergeFrom(proto::gpsd::InjectAssistanceFile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectAssistanceFile::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistanceFile::CopyFrom(proto::gpsd::InjectAssistanceFile *this, const proto::gpsd::InjectAssistanceFile *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectAssistanceFile::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectAssistanceFile::Swap(uint64_t this, proto::gpsd::InjectAssistanceFile *a2)
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

uint64_t proto::gpsd::InjectRtiFile::SharedCtor(uint64_t this)
{
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::InjectRtiFile *proto::gpsd::InjectRtiFile::InjectRtiFile(proto::gpsd::InjectRtiFile *this, const proto::gpsd::InjectRtiFile *a2)
{
  *this = off_100179EE0;
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 2) = 0;
  proto::gpsd::InjectRtiFile::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectRtiFile::CheckTypeAndMergeFrom(proto::gpsd::InjectRtiFile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectRtiFile::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectRtiFile::CopyFrom(proto::gpsd::InjectRtiFile *this, const proto::gpsd::InjectRtiFile *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectRtiFile::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectRtiFile::Swap(uint64_t this, proto::gpsd::InjectRtiFile *a2)
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

uint64_t proto::gpsd::InjectRavenOrbitFile::SharedCtor(uint64_t this)
{
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::InjectRavenOrbitFile *proto::gpsd::InjectRavenOrbitFile::InjectRavenOrbitFile(proto::gpsd::InjectRavenOrbitFile *this, const proto::gpsd::InjectRavenOrbitFile *a2)
{
  *this = off_100179F58;
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 2) = 0;
  proto::gpsd::InjectRavenOrbitFile::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::InjectRavenOrbitFile::~InjectRavenOrbitFile(proto::gpsd::InjectRavenOrbitFile *this)
{
  *this = off_100179F58;
  proto::gpsd::InjectRavenOrbitFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179F58;
  proto::gpsd::InjectRavenOrbitFile::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_100179F58;
  proto::gpsd::InjectRavenOrbitFile::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::InjectRavenOrbitFile::SharedDtor(uint64_t this)
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

uint64_t proto::gpsd::InjectRavenOrbitFile::MergePartialFromCodedStream(proto::gpsd::InjectRavenOrbitFile *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
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

uint64_t proto::gpsd::InjectRavenOrbitFile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    v2 = *(this + 8);
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

  return this;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::ByteSize(proto::gpsd::InjectRavenOrbitFile *this, unsigned int a2)
{
  if (*(this + 20))
  {
    v4 = *(this + 1);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::InjectRavenOrbitFile::CheckTypeAndMergeFrom(proto::gpsd::InjectRavenOrbitFile *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectRavenOrbitFile::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectRavenOrbitFile::CopyFrom(proto::gpsd::InjectRavenOrbitFile *this, const proto::gpsd::InjectRavenOrbitFile *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectRavenOrbitFile::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectRavenOrbitFile::Swap(uint64_t this, proto::gpsd::InjectRavenOrbitFile *a2)
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

proto::gpsd::InjectSvidBlocklist *proto::gpsd::InjectSvidBlocklist::InjectSvidBlocklist(proto::gpsd::InjectSvidBlocklist *this, const proto::gpsd::InjectSvidBlocklist *a2)
{
  *this = off_100179FD0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gpsd::InjectSvidBlocklist::MergeFrom(this, a2);
  return this;
}

void sub_1000F635C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::InjectSvidBlocklist::~InjectSvidBlocklist(proto::gpsd::InjectSvidBlocklist *this)
{
  *this = off_100179FD0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::InjectSvidBlocklist::~InjectSvidBlocklist(this);

  operator delete();
}

uint64_t proto::gpsd::InjectSvidBlocklist::MergePartialFromCodedStream(proto::gpsd::InjectSvidBlocklist *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (!proto::gnss::SvId::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
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

uint64_t proto::gpsd::InjectSvidBlocklist::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t proto::gpsd::InjectSvidBlocklist::ByteSize(proto::gpsd::InjectSvidBlocklist *this, unsigned int a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = proto::gnss::SvId::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  *(this + 8) = v3;
  return v3;
}

void proto::gpsd::InjectSvidBlocklist::CheckTypeAndMergeFrom(proto::gpsd::InjectSvidBlocklist *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectSvidBlocklist::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectSvidBlocklist::CopyFrom(proto::gpsd::InjectSvidBlocklist *this, const proto::gpsd::InjectSvidBlocklist *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectSvidBlocklist::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectSvidBlocklist::Swap(uint64_t this, proto::gpsd::InjectSvidBlocklist *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 8), (a2 + 8));
    v4 = *(v3 + 36);
    *(v3 + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 32);
    *(v3 + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

proto::gpsd::InjectAssistancePosition *proto::gpsd::InjectAssistancePosition::InjectAssistancePosition(proto::gpsd::InjectAssistancePosition *this, const proto::gpsd::InjectAssistancePosition *a2)
{
  *this = off_10017A048;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  proto::gpsd::InjectAssistancePosition::MergeFrom(this, a2);
  return this;
}

void *proto::gpsd::InjectAssistancePosition::SharedDtor(void *this)
{
  if (proto::gpsd::InjectAssistancePosition::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, v8, a2, a4);
}

uint64_t proto::gpsd::InjectAssistancePosition::ByteSize(proto::gpsd::InjectAssistancePosition *this, unint64_t a2)
{
  v3 = *(this + 9);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_20;
  }

  if (v3)
  {
    v6 = *(this + 1);
    if (!v6)
    {
      v6 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
    }

    v7 = proto::gnss::Position::ByteSize(v6, a2);
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
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(this + 4);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
  }

LABEL_20:
  *(this + 8) = v5;
  return v5;
}

void proto::gpsd::InjectAssistancePosition::CheckTypeAndMergeFrom(proto::gpsd::InjectAssistancePosition *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectAssistancePosition::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistancePosition::CopyFrom(proto::gpsd::InjectAssistancePosition *this, const proto::gpsd::InjectAssistancePosition *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectAssistancePosition::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectAssistancePosition::Swap(uint64_t this, proto::gpsd::InjectAssistancePosition *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
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

double proto::gpsd::InjectAssistanceTime::SharedCtor(proto::gpsd::InjectAssistanceTime *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gpsd::InjectAssistanceTime *proto::gpsd::InjectAssistanceTime::InjectAssistanceTime(proto::gpsd::InjectAssistanceTime *this, const proto::gpsd::InjectAssistanceTime *a2)
{
  *this = off_10017A0C0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gpsd::InjectAssistanceTime::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gpsd::InjectAssistanceTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t proto::gpsd::InjectAssistanceTime::ByteSize(proto::gpsd::InjectAssistanceTime *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  if (*(this + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((*(this + 36) & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2), a2) + 1;
    v3 = *(this + 9);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3), a2) + 1;
  }

LABEL_10:
  *(this + 8) = v4;
  return v4;
}

void proto::gpsd::InjectAssistanceTime::CheckTypeAndMergeFrom(proto::gpsd::InjectAssistanceTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::InjectAssistanceTime::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistanceTime::CopyFrom(proto::gpsd::InjectAssistanceTime *this, const proto::gpsd::InjectAssistanceTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::InjectAssistanceTime::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::InjectAssistanceTime::Swap(uint64_t this, proto::gpsd::InjectAssistanceTime *a2)
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

uint64_t proto::gpsd::DeleteGnssData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::DeleteGnssData *proto::gpsd::DeleteGnssData::DeleteGnssData(proto::gpsd::DeleteGnssData *this, const proto::gpsd::DeleteGnssData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_10017A138;
  proto::gpsd::DeleteGnssData::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::DeleteGnssData::~DeleteGnssData(proto::gpsd::DeleteGnssData *this)
{
  *this = off_10017A138;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A138;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A138;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::DeleteGnssData::MergePartialFromCodedStream(proto::gpsd::DeleteGnssData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback != 8)
      {
        break;
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

      *(this + 5) |= 1u;
      if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gpsd::DeleteGnssData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::DeleteGnssData::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1], a2) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::DeleteGnssData::CheckTypeAndMergeFrom(proto::gpsd::DeleteGnssData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::DeleteGnssData::MergeFrom(this, lpsrc);
}

void proto::gpsd::DeleteGnssData::CopyFrom(proto::gpsd::DeleteGnssData *this, const proto::gpsd::DeleteGnssData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::DeleteGnssData::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::DeleteGnssData::Swap(uint64_t this, proto::gpsd::DeleteGnssData *a2)
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

uint64_t proto::gpsd::SetNmeaHandler::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::SetNmeaHandler *proto::gpsd::SetNmeaHandler::SetNmeaHandler(proto::gpsd::SetNmeaHandler *this, const proto::gpsd::SetNmeaHandler *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_10017A1B0;
  proto::gpsd::SetNmeaHandler::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetNmeaHandler::~SetNmeaHandler(proto::gpsd::SetNmeaHandler *this)
{
  *this = off_10017A1B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A1B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A1B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::SetNmeaHandler::MergePartialFromCodedStream(proto::gpsd::SetNmeaHandler *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback != 8)
      {
        break;
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

      *(this + 5) |= 1u;
      if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t proto::gpsd::SetNmeaHandler::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetNmeaHandler::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1], a2) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::SetNmeaHandler::CheckTypeAndMergeFrom(proto::gpsd::SetNmeaHandler *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetNmeaHandler::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetNmeaHandler::CopyFrom(proto::gpsd::SetNmeaHandler *this, const proto::gpsd::SetNmeaHandler *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetNmeaHandler::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetNmeaHandler::Swap(uint64_t this, proto::gpsd::SetNmeaHandler *a2)
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

proto::gpsd::SetAssistancePressure *proto::gpsd::SetAssistancePressure::SetAssistancePressure(proto::gpsd::SetAssistancePressure *this, const proto::gpsd::SetAssistancePressure *a2)
{
  *this = off_10017A228;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gpsd::SetAssistancePressure::MergeFrom(this, a2);
  return this;
}

void sub_1000F7A54(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistancePressure::~SetAssistancePressure(proto::gpsd::SetAssistancePressure *this)
{
  *this = off_10017A228;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::SetAssistancePressure::~SetAssistancePressure(this);

  operator delete();
}

uint64_t proto::gpsd::SetAssistancePressure::MergePartialFromCodedStream(proto::gpsd::SetAssistancePressure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (!proto::gnss::RawPressureSample::MergePartialFromCodedStream(v10, a2, v15) || *(a2 + 36) != 1)
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

uint64_t proto::gpsd::SetAssistancePressure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t proto::gpsd::SetAssistancePressure::ByteSize(proto::gpsd::SetAssistancePressure *this, unint64_t a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = proto::gnss::RawPressureSample::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  *(this + 8) = v3;
  return v3;
}

void proto::gpsd::SetAssistancePressure::CheckTypeAndMergeFrom(proto::gpsd::SetAssistancePressure *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistancePressure::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistancePressure::CopyFrom(proto::gpsd::SetAssistancePressure *this, const proto::gpsd::SetAssistancePressure *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistancePressure::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetAssistancePressure::Swap(uint64_t this, proto::gpsd::SetAssistancePressure *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 8), (a2 + 8));
    v4 = *(v3 + 36);
    *(v3 + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 32);
    *(v3 + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

proto::gpsd::SetAssistanceAccel *proto::gpsd::SetAssistanceAccel::SetAssistanceAccel(proto::gpsd::SetAssistanceAccel *this, const proto::gpsd::SetAssistanceAccel *a2)
{
  *this = off_10017A2A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gpsd::SetAssistanceAccel::MergeFrom(this, a2);
  return this;
}

void sub_1000F8090(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

uint64_t proto::gpsd::SetAssistanceAccel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t proto::gpsd::SetAssistanceAccel::ByteSize(proto::gpsd::SetAssistanceAccel *this, unint64_t a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = proto::gnss::SensorSample3Axis::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  *(this + 8) = v3;
  return v3;
}

void proto::gpsd::SetAssistanceAccel::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceAccel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceAccel::MergeFrom(this, lpsrc);
}

void wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnss::SensorSample3Axis>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
      }

      v6 = *(*a2 + 8 * v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v7 + 1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      proto::gnss::SensorSample3Axis::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
      v4 = *(a2 + 8);
    }

    while (v5 < v4);
  }
}

void sub_1000F840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::SetAssistanceAccel::CopyFrom(proto::gpsd::SetAssistanceAccel *this, const proto::gpsd::SetAssistanceAccel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceAccel::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetAssistanceAccel::Swap(uint64_t this, proto::gpsd::SetAssistanceAccel *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 8), (a2 + 8));
    v4 = *(v3 + 36);
    *(v3 + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 32);
    *(v3 + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

proto::gpsd::SetAssistanceGyro *proto::gpsd::SetAssistanceGyro::SetAssistanceGyro(proto::gpsd::SetAssistanceGyro *this, const proto::gpsd::SetAssistanceGyro *a2)
{
  *this = off_10017A318;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  proto::gpsd::SetAssistanceGyro::MergeFrom(this, a2);
  return this;
}

void sub_1000F8598(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

uint64_t proto::gpsd::SetAssistanceGyro::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t proto::gpsd::SetAssistanceGyro::ByteSize(proto::gpsd::SetAssistanceGyro *this, unint64_t a2)
{
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = proto::gnss::SensorSample3Axis::ByteSize(*(*(this + 1) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 4));
  }

  *(this + 8) = v3;
  return v3;
}

void proto::gpsd::SetAssistanceGyro::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceGyro *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceGyro::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistanceGyro::CopyFrom(proto::gpsd::SetAssistanceGyro *this, const proto::gpsd::SetAssistanceGyro *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceGyro::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetAssistanceGyro::Swap(uint64_t this, proto::gpsd::SetAssistanceGyro *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap((this + 8), (a2 + 8));
    v4 = *(v3 + 36);
    *(v3 + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 32);
    *(v3 + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

double proto::gpsd::SetAssistanceDem::SharedCtor(proto::gpsd::SetAssistanceDem *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gpsd::SetAssistanceDem *proto::gpsd::SetAssistanceDem::SetAssistanceDem(proto::gpsd::SetAssistanceDem *this, const proto::gpsd::SetAssistanceDem *a2)
{
  *this = off_10017A390;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gpsd::SetAssistanceDem::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gpsd::SetAssistanceDem::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetAssistanceDem::ByteSize(proto::gpsd::SetAssistanceDem *this, unint64_t a2)
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

double proto::gpsd::SetAssistanceDem::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceDem *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gpsd::SetAssistanceDem::MergeFrom(this, lpsrc);
}

double proto::gpsd::SetAssistanceDem::CopyFrom(proto::gpsd::SetAssistanceDem *this, const proto::gpsd::SetAssistanceDem *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gpsd::SetAssistanceDem::MergeFrom(this, a2);
  }

  return result;
}

double proto::gpsd::SetAssistanceDem::Swap(proto::gpsd::SetAssistanceDem *this, proto::gpsd::SetAssistanceDem *a2)
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

double proto::gpsd::SetAssistanceMapVector::SharedCtor(proto::gpsd::SetAssistanceMapVector *this)
{
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  return result;
}

proto::gpsd::SetAssistanceMapVector *proto::gpsd::SetAssistanceMapVector::SetAssistanceMapVector(proto::gpsd::SetAssistanceMapVector *this, const proto::gpsd::SetAssistanceMapVector *a2)
{
  *this = off_10017A408;
  *(this + 9) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  proto::gpsd::SetAssistanceMapVector::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetAssistanceMapVector::~SetAssistanceMapVector(proto::gpsd::SetAssistanceMapVector *this)
{
  *this = off_10017A408;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A408;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A408;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::SetAssistanceMapVector::MergePartialFromCodedStream(proto::gpsd::SetAssistanceMapVector *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_34;
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

        *(this + 19) |= 1u;
        if (v11 < v8 && *v11 == 17)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_43;
        }

        continue;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_34;
        }

LABEL_43:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v39;
        *(this + 19) |= 2u;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 25)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_47:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v39;
        *(this + 19) |= 4u;
        v22 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v22 >= v16 || *v22 != 32)
        {
          continue;
        }

        v17 = v22 + 1;
        *(a2 + 1) = v17;
LABEL_51:
        v39[0] = 0;
        if (v17 >= v16 || (v23 = *v17, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
          if (!result)
          {
            return result;
          }

          v23 = v39[0];
          v24 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          v24 = v17 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 64) = v23 != 0;
        *(this + 19) |= 8u;
        if (v24 >= v16 || *v24 != 41)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
LABEL_59:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v39;
        *(this + 19) |= 0x10u;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 != 49)
        {
          continue;
        }

        *(a2 + 1) = v25 + 1;
LABEL_63:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v39;
        *(this + 19) |= 0x20u;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 != 57)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
LABEL_67:
        *v39 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v39;
        *(this + 19) |= 0x40u;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 != 65)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_71:
        *v39 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39))
        {
          *(this + 7) = *v39;
          *(this + 19) |= 0x80u;
          v28 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v28 < v12 && *v28 == 72)
          {
            v19 = v28 + 1;
            *(a2 + 1) = v19;
LABEL_75:
            v39[0] = 0;
            if (v19 >= v12 || (v29 = *v19, (v29 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
              if (!result)
              {
                return result;
              }

              v29 = v39[0];
              v30 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              v30 = v19 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 65) = v29 != 0;
            *(this + 19) |= 0x100u;
            if (v30 < v12 && *v30 == 80)
            {
              v15 = v30 + 1;
              *(a2 + 1) = v15;
LABEL_83:
              v39[0] = 0;
              if (v15 >= v12 || (v31 = *v15, (v31 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
                if (!result)
                {
                  return result;
                }

                v31 = v39[0];
                v32 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                v32 = v15 + 1;
                *(a2 + 1) = v32;
              }

              *(this + 66) = v31 != 0;
              *(this + 19) |= 0x200u;
              if (v32 < v12 && *v32 == 88)
              {
                v18 = v32 + 1;
                *(a2 + 1) = v18;
LABEL_91:
                v39[0] = 0;
                if (v18 >= v12 || (v33 = *v18, (v33 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
                  if (!result)
                  {
                    return result;
                  }

                  v33 = v39[0];
                  v34 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  v34 = v18 + 1;
                  *(a2 + 1) = v34;
                }

                *(this + 67) = v33 != 0;
                *(this + 19) |= 0x400u;
                if (v34 < v12 && *v34 == 96)
                {
                  v13 = v34 + 1;
                  *(a2 + 1) = v13;
LABEL_99:
                  v39[0] = 0;
                  if (v13 >= v12 || (v35 = *v13, (v35 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = v39[0];
                    v36 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    v36 = v13 + 1;
                    *(a2 + 1) = v36;
                  }

                  *(this + 68) = v35 != 0;
                  *(this + 19) |= 0x800u;
                  if (v36 < v12 && *v36 == 104)
                  {
                    v14 = v36 + 1;
                    *(a2 + 1) = v14;
LABEL_107:
                    v39[0] = 0;
                    if (v14 >= v12 || (v37 = *v14, (v37 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
                      if (!result)
                      {
                        return result;
                      }

                      v37 = v39[0];
                      v38 = *(a2 + 1);
                      v12 = *(a2 + 2);
                    }

                    else
                    {
                      v38 = v14 + 1;
                      *(a2 + 1) = v38;
                    }

                    *(this + 69) = v37 != 0;
                    *(this + 19) |= 0x1000u;
                    if (v38 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_47;
        }

        goto LABEL_34;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_51;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_59;
        }

        goto LABEL_34;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_63;
        }

        goto LABEL_34;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_67;
        }

        goto LABEL_34;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_71;
        }

        goto LABEL_34;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v19 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_75;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_83;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_91;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_99;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_34;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_107;
      default:
LABEL_34:
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

uint64_t proto::gpsd::SetAssistanceMapVector::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 76);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, *(v5 + 24), a3);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 64), v4, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, v4, *(v5 + 32), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, v4, *(v5 + 40), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, v4, *(v5 + 48), a3);
  v6 = *(v5 + 76);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, v4, *(v5 + 56), a3);
  v6 = *(v5 + 76);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 65), v4, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, *(v5 + 66), v4, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xC, *(v5 + 68), v4, a4);
    if ((*(v5 + 76) & 0x1000) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xB, *(v5 + 67), v4, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v6 & 0x1000) == 0)
  {
    return this;
  }

LABEL_27:
  v7 = *(v5 + 69);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, v7, v4, a4);
}

uint64_t proto::gpsd::SetAssistanceMapVector::ByteSize(proto::gpsd::SetAssistanceMapVector *this, unint64_t a2)
{
  v3 = *(this + 19);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
      v3 = *(this + 19);
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

    v6 = v4 + ((v3 >> 2) & 2);
    if ((v3 & 0x10) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v6 + 9;
    }

    else
    {
      result = v6;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v7.i64[0] = 0x200000002;
    v7.i64[1] = 0x200000002;
    result = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_100148900), v7)) + ((v3 >> 11) & 2) + result;
  }

  *(this + 18) = result;
  return result;
}

void proto::gpsd::SetAssistanceMapVector::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceMapVector *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceMapVector::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistanceMapVector::CopyFrom(proto::gpsd::SetAssistanceMapVector *this, const proto::gpsd::SetAssistanceMapVector *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceMapVector::MergeFrom(this, a2);
  }
}

double proto::gpsd::SetAssistanceMapVector::Swap(proto::gpsd::SetAssistanceMapVector *this, proto::gpsd::SetAssistanceMapVector *a2)
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
    LOBYTE(v2) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v2;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    result = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = result;
    LOBYTE(v2) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v2;
    LOBYTE(v2) = *(this + 66);
    *(this + 66) = *(a2 + 66);
    *(a2 + 66) = v2;
    LOBYTE(v2) = *(this + 67);
    *(this + 67) = *(a2 + 67);
    *(a2 + 67) = v2;
    LOBYTE(v2) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v2;
    LOBYTE(v2) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v2;
    LODWORD(v2) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
  }

  return result;
}

double proto::gpsd::SetAssistanceMotionActivityContext::SharedCtor(proto::gpsd::SetAssistanceMotionActivityContext *this)
{
  *(this + 1) = 0;
  *&result = 0x400000000;
  *(this + 2) = 0x400000000;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

proto::gpsd::SetAssistanceMotionActivityContext *proto::gpsd::SetAssistanceMotionActivityContext::SetAssistanceMotionActivityContext(proto::gpsd::SetAssistanceMotionActivityContext *this, const proto::gpsd::SetAssistanceMotionActivityContext *a2)
{
  *this = off_10017A480;
  *(this + 1) = 0;
  *(this + 2) = 0x400000000;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, v5[5], v4, a4);
      if ((v5[8] & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v5[4], v4, a4);
  v6 = v5[8];
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
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, v4, a4);
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::ByteSize(proto::gpsd::SetAssistanceMotionActivityContext *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(this + 32))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1), a2) + 1;
    v3 = *(this + 8);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v7 = *(this + 5);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v8 = 2;
  }

  v4 = (v8 + v4);
  if ((v3 & 8) != 0)
  {
LABEL_22:
    v9 = *(this + 6);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
  }

LABEL_28:
  *(this + 7) = v4;
  return v4;
}

void proto::gpsd::SetAssistanceMotionActivityContext::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceMotionActivityContext *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistanceMotionActivityContext::CopyFrom(proto::gpsd::SetAssistanceMotionActivityContext *this, const proto::gpsd::SetAssistanceMotionActivityContext *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::Swap(uint64_t this, proto::gpsd::SetAssistanceMotionActivityContext *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return this;
}

uint64_t proto::gpsd::SetAssistanceMountState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 4;
  *(this + 24) = 0;
  return this;
}

proto::gpsd::SetAssistanceMountState *proto::gpsd::SetAssistanceMountState::SetAssistanceMountState(proto::gpsd::SetAssistanceMountState *this, const proto::gpsd::SetAssistanceMountState *a2)
{
  *this = off_10017A4F8;
  *(this + 1) = 0;
  *(this + 2) = 4;
  *(this + 6) = 0;
  proto::gpsd::SetAssistanceMountState::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gpsd::SetAssistanceMountState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetAssistanceMountState::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
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

void proto::gpsd::SetAssistanceMountState::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceMountState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceMountState::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistanceMountState::CopyFrom(proto::gpsd::SetAssistanceMountState *this, const proto::gpsd::SetAssistanceMountState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceMountState::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetAssistanceMountState::Swap(uint64_t this, proto::gpsd::SetAssistanceMountState *a2)
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

double proto::gpsd::SetAssistanceSignalEnvironment::SharedCtor(proto::gpsd::SetAssistanceSignalEnvironment *this)
{
  *&result = 15;
  *(this + 1) = 15;
  *(this + 4) = 0;
  return result;
}

proto::gpsd::SetAssistanceSignalEnvironment *proto::gpsd::SetAssistanceSignalEnvironment::SetAssistanceSignalEnvironment(proto::gpsd::SetAssistanceSignalEnvironment *this, const proto::gpsd::SetAssistanceSignalEnvironment *a2)
{
  *this = off_10017A570;
  *(this + 1) = 15;
  *(this + 4) = 0;
  proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::ByteSize(proto::gpsd::SetAssistanceSignalEnvironment *this, unsigned int a2)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 3) = result;
  return result;
}

void proto::gpsd::SetAssistanceSignalEnvironment::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceSignalEnvironment *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetAssistanceSignalEnvironment::CopyFrom(proto::gpsd::SetAssistanceSignalEnvironment *this, const proto::gpsd::SetAssistanceSignalEnvironment *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(this, a2);
  }
}

proto::gpsd::SetAssistanceSignalEnvironment *proto::gpsd::SetAssistanceSignalEnvironment::Swap(proto::gpsd::SetAssistanceSignalEnvironment *this, proto::gpsd::SetAssistanceSignalEnvironment *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
  }

  return this;
}

double proto::gpsd::SetAssistanceSpeedConstraint::SharedCtor(proto::gpsd::SetAssistanceSpeedConstraint *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gpsd::SetAssistanceSpeedConstraint *proto::gpsd::SetAssistanceSpeedConstraint::SetAssistanceSpeedConstraint(proto::gpsd::SetAssistanceSpeedConstraint *this, const proto::gpsd::SetAssistanceSpeedConstraint *a2)
{
  *this = off_10017A5E8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetAssistanceSpeedConstraint::~SetAssistanceSpeedConstraint(proto::gpsd::SetAssistanceSpeedConstraint *this)
{
  *this = off_10017A5E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A5E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A5E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::MergePartialFromCodedStream(proto::gpsd::SetAssistanceSpeedConstraint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::ByteSize(proto::gpsd::SetAssistanceSpeedConstraint *this, unint64_t a2)
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

double proto::gpsd::SetAssistanceSpeedConstraint::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceSpeedConstraint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(this, lpsrc);
}

double proto::gpsd::SetAssistanceSpeedConstraint::CopyFrom(proto::gpsd::SetAssistanceSpeedConstraint *this, const proto::gpsd::SetAssistanceSpeedConstraint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(this, a2);
  }

  return result;
}

double proto::gpsd::SetAssistanceSpeedConstraint::Swap(proto::gpsd::SetAssistanceSpeedConstraint *this, proto::gpsd::SetAssistanceSpeedConstraint *a2)
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

double proto::gpsd::SetAssistanceAlongTrackVelocity::SharedCtor(proto::gpsd::SetAssistanceAlongTrackVelocity *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

proto::gpsd::SetAssistanceAlongTrackVelocity *proto::gpsd::SetAssistanceAlongTrackVelocity::SetAssistanceAlongTrackVelocity(proto::gpsd::SetAssistanceAlongTrackVelocity *this, const proto::gpsd::SetAssistanceAlongTrackVelocity *a2)
{
  *this = off_10017A660;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetAssistanceAlongTrackVelocity::~SetAssistanceAlongTrackVelocity(proto::gpsd::SetAssistanceAlongTrackVelocity *this)
{
  *this = off_10017A660;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A660;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A660;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::MergePartialFromCodedStream(proto::gpsd::SetAssistanceAlongTrackVelocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::ByteSize(proto::gpsd::SetAssistanceAlongTrackVelocity *this, unint64_t a2)
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

double proto::gpsd::SetAssistanceAlongTrackVelocity::CheckTypeAndMergeFrom(proto::gpsd::SetAssistanceAlongTrackVelocity *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(this, lpsrc);
}

double proto::gpsd::SetAssistanceAlongTrackVelocity::CopyFrom(proto::gpsd::SetAssistanceAlongTrackVelocity *this, const proto::gpsd::SetAssistanceAlongTrackVelocity *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(this, a2);
  }

  return result;
}

double proto::gpsd::SetAssistanceAlongTrackVelocity::Swap(proto::gpsd::SetAssistanceAlongTrackVelocity *this, proto::gpsd::SetAssistanceAlongTrackVelocity *a2)
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

uint64_t proto::gpsd::SetThermalRiskState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

proto::gpsd::SetThermalRiskState *proto::gpsd::SetThermalRiskState::SetThermalRiskState(proto::gpsd::SetThermalRiskState *this, const proto::gpsd::SetThermalRiskState *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_10017A6D8;
  *(this + 6) = 0;
  proto::gpsd::SetThermalRiskState::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetThermalRiskState::~SetThermalRiskState(proto::gpsd::SetThermalRiskState *this)
{
  *this = off_10017A6D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A6D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A6D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::SetThermalRiskState::MergePartialFromCodedStream(proto::gpsd::SetThermalRiskState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

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

uint64_t proto::gpsd::SetThermalRiskState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetThermalRiskState::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this, unint64_t a2)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1], a2) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v4 = *(this + 4);
    if (v4 >= 0x80)
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

LABEL_11:
  *(this + 5) = v3;
  return v3;
}

void proto::gpsd::SetThermalRiskState::CheckTypeAndMergeFrom(proto::gpsd::SetThermalRiskState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetThermalRiskState::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetThermalRiskState::CopyFrom(proto::gpsd::SetThermalRiskState *this, const proto::gpsd::SetThermalRiskState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetThermalRiskState::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetThermalRiskState::Swap(uint64_t this, proto::gpsd::SetThermalRiskState *a2)
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

uint64_t proto::gpsd::SetConfigSimulatorMode::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  return this;
}

proto::gpsd::SetConfigSimulatorMode *proto::gpsd::SetConfigSimulatorMode::SetConfigSimulatorMode(proto::gpsd::SetConfigSimulatorMode *this, const proto::gpsd::SetConfigSimulatorMode *a2)
{
  *this = off_10017A750;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  proto::gpsd::SetConfigSimulatorMode::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::SetConfigSimulatorMode::~SetConfigSimulatorMode(proto::gpsd::SetConfigSimulatorMode *this)
{
  *this = off_10017A750;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A750;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A750;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::SetConfigSimulatorMode::MergePartialFromCodedStream(proto::gpsd::SetConfigSimulatorMode *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v15 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v9 = v15;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) = v9 != 0;
      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        v16 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v12 = v16;
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

uint64_t proto::gpsd::SetConfigSimulatorMode::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v7, v4, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::ByteSize(proto::gpsd::SetConfigSimulatorMode *this, unsigned int a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = 2 * (v3 & 1u);
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
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 4) = v4;
  return v4;
}

void proto::gpsd::SetConfigSimulatorMode::CheckTypeAndMergeFrom(proto::gpsd::SetConfigSimulatorMode *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetConfigSimulatorMode::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetConfigSimulatorMode::CopyFrom(proto::gpsd::SetConfigSimulatorMode *this, const proto::gpsd::SetConfigSimulatorMode *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetConfigSimulatorMode::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetConfigSimulatorMode::Swap(uint64_t this, proto::gpsd::SetConfigSimulatorMode *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::SetConfigEnableGnssConstellations *proto::gpsd::SetConfigEnableGnssConstellations::SetConfigEnableGnssConstellations(proto::gpsd::SetConfigEnableGnssConstellations *this, const proto::gpsd::SetConfigEnableGnssConstellations *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = off_10017A7C8;
  proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::ByteSize(proto::gpsd::SetConfigEnableGnssConstellations *this, unsigned int a2)
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

void proto::gpsd::SetConfigEnableGnssConstellations::CheckTypeAndMergeFrom(proto::gpsd::SetConfigEnableGnssConstellations *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetConfigEnableGnssConstellations::CopyFrom(proto::gpsd::SetConfigEnableGnssConstellations *this, const proto::gpsd::SetConfigEnableGnssConstellations *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(this, a2);
  }
}

proto::gpsd::SetConfigEnableGnssConstellations *proto::gpsd::SetConfigEnableGnssConstellations::Swap(proto::gpsd::SetConfigEnableGnssConstellations *this, proto::gpsd::SetConfigEnableGnssConstellations *a2)
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

uint64_t proto::gpsd::SetConfigRfBandEnable::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gpsd::SetConfigRfBandEnable *proto::gpsd::SetConfigRfBandEnable::SetConfigRfBandEnable(proto::gpsd::SetConfigRfBandEnable *this, const proto::gpsd::SetConfigRfBandEnable *a2)
{
  *this = off_10017A840;
  *(this + 12) = 0;
  *(this + 4) = 0;
  proto::gpsd::SetConfigRfBandEnable::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t proto::gpsd::SetConfigRfBandEnable::ByteSize(proto::gpsd::SetConfigRfBandEnable *this)
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

void proto::gpsd::SetConfigRfBandEnable::CheckTypeAndMergeFrom(proto::gpsd::SetConfigRfBandEnable *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetConfigRfBandEnable::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetConfigRfBandEnable::CopyFrom(proto::gpsd::SetConfigRfBandEnable *this, const proto::gpsd::SetConfigRfBandEnable *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetConfigRfBandEnable::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetConfigRfBandEnable::Swap(uint64_t this, proto::gpsd::SetConfigRfBandEnable *a2)
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

uint64_t proto::gpsd::SetConfigDutyCycling::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

proto::gpsd::SetConfigDutyCycling *proto::gpsd::SetConfigDutyCycling::SetConfigDutyCycling(proto::gpsd::SetConfigDutyCycling *this, const proto::gpsd::SetConfigDutyCycling *a2)
{
  *this = off_10017A8B8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  proto::gpsd::SetConfigDutyCycling::MergeFrom(this, a2);
  return this;
}

uint64_t proto::gpsd::SetConfigDutyCycling::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::SetConfigDutyCycling::ByteSize(proto::gpsd::SetConfigDutyCycling *this)
{
  if (*(this + 4))
  {
    v1 = 2 * (*(this + 4) & 1u);
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void proto::gpsd::SetConfigDutyCycling::CheckTypeAndMergeFrom(proto::gpsd::SetConfigDutyCycling *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::SetConfigDutyCycling::MergeFrom(this, lpsrc);
}

void proto::gpsd::SetConfigDutyCycling::CopyFrom(proto::gpsd::SetConfigDutyCycling *this, const proto::gpsd::SetConfigDutyCycling *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::SetConfigDutyCycling::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::SetConfigDutyCycling::Swap(uint64_t this, proto::gpsd::SetConfigDutyCycling *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v4;
  }

  return this;
}

uint64_t proto::gpsd::TerminationImminent::SharedCtor(uint64_t this)
{
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::TerminationImminent *proto::gpsd::TerminationImminent::TerminationImminent(proto::gpsd::TerminationImminent *this, const proto::gpsd::TerminationImminent *a2)
{
  *this = off_10017A930;
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 2) = 0;
  proto::gpsd::TerminationImminent::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::TerminationImminent::~TerminationImminent(proto::gpsd::TerminationImminent *this)
{
  *this = off_10017A930;
  proto::gpsd::TerminationImminent::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A930;
  proto::gpsd::TerminationImminent::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A930;
  proto::gpsd::TerminationImminent::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::TerminationImminent::SharedDtor(uint64_t this)
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

uint64_t proto::gpsd::TerminationImminent::MergePartialFromCodedStream(proto::gpsd::TerminationImminent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
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

uint64_t proto::gpsd::TerminationImminent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    v2 = *(this + 8);
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t proto::gpsd::TerminationImminent::ByteSize(proto::gpsd::TerminationImminent *this, unsigned int a2)
{
  if (*(this + 20))
  {
    v4 = *(this + 1);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::TerminationImminent::CheckTypeAndMergeFrom(proto::gpsd::TerminationImminent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::TerminationImminent::MergeFrom(this, lpsrc);
}

void proto::gpsd::TerminationImminent::CopyFrom(proto::gpsd::TerminationImminent *this, const proto::gpsd::TerminationImminent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::TerminationImminent::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::TerminationImminent::Swap(uint64_t this, proto::gpsd::TerminationImminent *a2)
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

uint64_t proto::gpsd::ExitMessage::SharedCtor(uint64_t this)
{
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 16) = 0;
  return this;
}

proto::gpsd::ExitMessage *proto::gpsd::ExitMessage::ExitMessage(proto::gpsd::ExitMessage *this, const proto::gpsd::ExitMessage *a2)
{
  *this = off_10017A9A8;
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 2) = 0;
  proto::gpsd::ExitMessage::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::ExitMessage::~ExitMessage(proto::gpsd::ExitMessage *this)
{
  *this = off_10017A9A8;
  proto::gpsd::ExitMessage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A9A8;
  proto::gpsd::ExitMessage::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017A9A8;
  proto::gpsd::ExitMessage::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::ExitMessage::SharedDtor(uint64_t this)
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

uint64_t proto::gpsd::ExitMessage::MergePartialFromCodedStream(proto::gpsd::ExitMessage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
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

uint64_t proto::gpsd::ExitMessage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 20))
  {
    v2 = *(this + 8);
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t proto::gpsd::ExitMessage::ByteSize(proto::gpsd::ExitMessage *this, unsigned int a2)
{
  if (*(this + 20))
  {
    v4 = *(this + 1);
    v5 = *(v4 + 23);
    v6 = v5;
    v7 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = v7;
    }

    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v5 = *(v4 + 23);
      v7 = *(v4 + 8);
      v9 = v10 + 1;
      v6 = *(v4 + 23);
    }

    else
    {
      v9 = 2;
    }

    if (v6 < 0)
    {
      v5 = v7;
    }

    result = (v9 + v5);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::ExitMessage::CheckTypeAndMergeFrom(proto::gpsd::ExitMessage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::ExitMessage::MergeFrom(this, lpsrc);
}

void proto::gpsd::ExitMessage::CopyFrom(proto::gpsd::ExitMessage *this, const proto::gpsd::ExitMessage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::ExitMessage::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::ExitMessage::Swap(uint64_t this, proto::gpsd::ExitMessage *a2)
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

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  return this;
}

proto::gpsd::RecoveryStatistics_RecoveryStatus *proto::gpsd::RecoveryStatistics_RecoveryStatus::RecoveryStatistics_RecoveryStatus(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, const proto::gpsd::RecoveryStatistics_RecoveryStatus *a2)
{
  *this = off_10017AA20;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 11) = 0;
  proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, const proto::gpsd::RecoveryStatistics_RecoveryStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 12);
      *(this + 5) |= 1u;
      *(this + 12) = v6;
      v4 = *(a2 + 5);
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

    else if ((*(a2 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 5) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 5);
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
    v8 = *(a2 + 13);
    *(this + 5) |= 4u;
    *(this + 13) = v8;
    if ((*(a2 + 5) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 14);
    *(this + 5) |= 8u;
    *(this + 14) = v5;
  }
}

void sub_1000FD1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::RecoveryStatistics_RecoveryStatus::~RecoveryStatistics_RecoveryStatus(proto::gpsd::RecoveryStatistics_RecoveryStatus *this)
{
  *this = off_10017AA20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AA20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AA20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_;
  if (!proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 11) = 0;
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::MergePartialFromCodedStream(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 12) = v12 != 0;
      *(this + 5) |= 1u;
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

        *(this + 2) = v15;
        *(this + 5) |= 2u;
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

          *(this + 13) = v17 != 0;
          *(this + 5) |= 4u;
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

            *(this + 14) = v19 != 0;
            *(this + 5) |= 8u;
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

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 12), a2, a4);
    v6 = *(v5 + 20);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 13), v4, a4);
      if ((*(v5 + 20) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 8), v4, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 14);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, v4, a4);
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::ByteSize(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, unsigned int a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = 2 * (v3 & 1);
    if ((v3 & 2) != 0)
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(this + 5);
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    result = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void proto::gpsd::RecoveryStatistics_RecoveryStatus::CheckTypeAndMergeFrom(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(this, lpsrc);
}

void proto::gpsd::RecoveryStatistics_RecoveryStatus::CopyFrom(proto::gpsd::RecoveryStatistics_RecoveryStatus *this, const proto::gpsd::RecoveryStatistics_RecoveryStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::RecoveryStatistics_RecoveryStatus::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::Swap(uint64_t this, proto::gpsd::RecoveryStatistics_RecoveryStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v3;
    LOBYTE(v3) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v3;
    v4 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::SharedCtor(uint64_t this)
{
  *(this + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 24) = 0;
  *(this + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 32) = 0;
  return this;
}

proto::gpsd::RecoveryStatistics_RecoveryPoint *proto::gpsd::RecoveryStatistics_RecoveryPoint::RecoveryStatistics_RecoveryPoint(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, const proto::gpsd::RecoveryStatistics_RecoveryPoint *a2)
{
  *this = off_10017AA98;
  *(this + 1) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 2) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(this + 3) = 0;
  *(this + 8) = 0;
  proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(this, a2);
  return this;
}

void proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, const proto::gpsd::RecoveryStatistics_RecoveryPoint *a2)
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
      v5 = *(a2 + 1);
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v7;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_12:
    v8 = *(a2 + 2);
    *(this + 8) |= 4u;
    v9 = *(this + 2);
    if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v9, v8);
  }
}

void sub_1000FDAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::RecoveryStatistics_RecoveryPoint::~RecoveryStatistics_RecoveryPoint(proto::gpsd::RecoveryStatistics_RecoveryPoint *this)
{
  *this = off_10017AA98;
  proto::gpsd::RecoveryStatistics_RecoveryPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AA98;
  proto::gpsd::RecoveryStatistics_RecoveryPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = off_10017AA98;
  proto::gpsd::RecoveryStatistics_RecoveryPoint::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete();
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::SharedDtor(uint64_t this)
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

  v3 = *(this + 16);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_;
  if (!proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::RecoveryStatistics_RecoveryPoint::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::Clear(uint64_t this)
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

    *(this + 24) = 0;
    if ((*(this + 32) & 4) != 0)
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
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::MergePartialFromCodedStream(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 != 2)
          {
            goto LABEL_22;
          }

          v15 = *(this + 8);
LABEL_31:
          *(this + 8) = v15 | 4;
          if (*(this + 2) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }

        if (v7 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_18:
        v16 = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
          if (!result)
          {
            return result;
          }

          v13 = v16;
          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 6) = v13;
        v15 = *(this + 8) | 2;
        *(this + 8) = v15;
        if (v14 < v10 && *v14 == 26)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_31;
        }
      }

      if (v7 != 1 || v8 != 2)
      {
        break;
      }

      *(this + 8) |= 1u;
      if (*(this + 1) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
        goto LABEL_18;
      }
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

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 24), v4, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v7 = *(this + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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
  v8 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::ByteSize(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(this + 32))
  {
    v5 = *(this + 1);
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
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
      v6 = *(v5 + 23);
      v8 = *(v5 + 8);
      v10 = v11 + 1;
      v3 = *(this + 8);
      v7 = *(v5 + 23);
    }

    else
    {
      v10 = 2;
    }

    if (v7 < 0)
    {
      v6 = v8;
    }

    v4 = (v10 + v6);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  v12 = *(this + 6);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(this + 8);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
LABEL_21:
  if ((v3 & 4) != 0)
  {
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

    v4 = (v4 + v19 + v15 + 1);
  }

LABEL_31:
  *(this + 7) = v4;
  return v4;
}

void proto::gpsd::RecoveryStatistics_RecoveryPoint::CheckTypeAndMergeFrom(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(this, lpsrc);
}

void proto::gpsd::RecoveryStatistics_RecoveryPoint::CopyFrom(proto::gpsd::RecoveryStatistics_RecoveryPoint *this, const proto::gpsd::RecoveryStatistics_RecoveryPoint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    proto::gpsd::RecoveryStatistics_RecoveryPoint::MergeFrom(this, a2);
  }
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::Swap(uint64_t this, proto::gpsd::RecoveryStatistics_RecoveryPoint *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

proto::gpsd::RecoveryStatistics *proto::gpsd::RecoveryStatistics::RecoveryStatistics(proto::gpsd::RecoveryStatistics *this, const proto::gpsd::RecoveryStatistics *a2)
{
  *this = off_10017AB10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  proto::gpsd::RecoveryStatistics::MergeFrom(this, a2);
  return this;
}

void sub_1000FE380(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::RecoveryStatistics::~RecoveryStatistics(proto::gpsd::RecoveryStatistics *this)
{
  *this = off_10017AB10;
  if (proto::gpsd::RecoveryStatistics::default_instance_ != this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::RecoveryStatistics::~RecoveryStatistics(this);

  operator delete();
}