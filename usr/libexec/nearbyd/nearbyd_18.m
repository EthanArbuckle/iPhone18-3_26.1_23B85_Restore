uint64_t sub_100101D2C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  sub_100116598((a1 + 40), a2 + 40);
  LOBYTE(v4) = *(a2 + 72);
  if (v4)
  {
    if (*(a2 + 72))
    {
      v5 = *(a2 + 16);
      *(a1 + 72) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 72);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 72) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 24);
    *(a1 + 72) |= 2u;
    *(a1 + 24) = v6;
    v4 = *(a2 + 72);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 0x10) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

LABEL_12:
      v8 = *(a2 + 64);
      if (v8 >= 5)
      {
        sub_10049DFC4();
      }

      *(a1 + 72) |= 0x10u;
      *(a1 + 64) = v8;
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

LABEL_11:
    v7 = *(a2 + 32);
    *(a1 + 72) |= 4u;
    *(a1 + 32) = v7;
    if ((*(a2 + 72) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_12;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100101E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100101E5C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 28))
  {
    v4 = *(a2 + 16);
    *(a1 + 28) |= 1u;
    *(a1 + 16) = v4;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100101EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100101F0C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  LOBYTE(v4) = *(a2 + 72);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 72))
  {
    v5 = *(a2 + 16);
    *(a1 + 72) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 72) & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 24);
  *(a1 + 72) |= 2u;
  *(a1 + 24) = v6;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = *(a2 + 32);
  *(a1 + 72) |= 4u;
  *(a1 + 32) = v7;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    *(a1 + 72) |= 0x10u;
    v9 = *(a1 + 40);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 40);
    if (!v10)
    {
      v10 = *(qword_1009F9CA0 + 40);
    }

    sub_10009BA40(v9, v10);
    v4 = *(a2 + 72);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_26;
    }

    goto LABEL_21;
  }

LABEL_15:
  v8 = *(a2 + 64);
  *(a1 + 72) |= 8u;
  *(a1 + 64) = v8;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_21:
  *(a1 + 72) |= 0x20u;
  v11 = *(a1 + 48);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 48);
  if (!v12)
  {
    v12 = *(qword_1009F9CA0 + 48);
  }

  sub_10009E24C(v11, v12);
  if ((*(a2 + 72) & 0x40) != 0)
  {
LABEL_26:
    *(a1 + 72) |= 0x40u;
    v13 = *(a1 + 56);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 56);
    if (!v14)
    {
      v14 = *(qword_1009F9CA0 + 56);
    }

    sub_1000E2BF4(v13, v14);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_100102174(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 16);
      *(a1 + 44) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 44);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }

LABEL_12:
        *(a1 + 44) |= 4u;
        v8 = *(a1 + 32);
        if (!v8)
        {
          operator new();
        }

        v9 = *(a2 + 32);
        if (!v9)
        {
          v9 = *(qword_1009F9CA8 + 32);
        }

        sub_100103E18(v8, v9);
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v7;
    if ((*(a2 + 44) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_12;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_100102308(uint64_t result, uint64_t a2)
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

uint64_t sub_10010239C()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDC68;
}

void sub_100102430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100102444(uint64_t a1)
{
  *a1 = off_100992830;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_1001024B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 56);
  if (v4)
  {
    if (*(a2 + 56))
    {
      v10 = *(a2 + 16);
      *(a1 + 56) |= 1u;
      v11 = *(a1 + 16);
      if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v11, v10);
      v4 = *(a2 + 56);
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

    else if ((*(a2 + 56) & 2) == 0)
    {
      goto LABEL_6;
    }

    v12 = *(a2 + 24);
    *(a1 + 56) |= 2u;
    *(a1 + 24) = v12;
    v4 = *(a2 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
LABEL_9:
        if ((v4 & 0x10) != 0)
        {
          v6 = *(a2 + 36);
          if (v6 >= 9)
          {
            sub_10049E01C();
          }

          *(a1 + 56) |= 0x10u;
          *(a1 + 36) = v6;
          v4 = *(a2 + 56);
        }

        if ((v4 & 0x20) != 0)
        {
          v7 = *(a2 + 40);
          *(a1 + 56) |= 0x20u;
          *(a1 + 40) = v7;
          v4 = *(a2 + 56);
        }

        if ((v4 & 0x40) != 0)
        {
          v8 = *(a2 + 49);
          *(a1 + 56) |= 0x40u;
          *(a1 + 49) = v8;
        }

        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

LABEL_8:
      v5 = *(a2 + 48);
      *(a1 + 56) |= 8u;
      *(a1 + 48) = v5;
      v4 = *(a2 + 56);
      goto LABEL_9;
    }

LABEL_21:
    v13 = *(a2 + 32);
    if (v13 >= 4)
    {
      sub_10049DFF0();
    }

    *(a1 + 56) |= 4u;
    *(a1 + 32) = v13;
    v4 = *(a2 + 56);
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100102664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10010267C(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100992830;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001026E0(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_10010267C(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100102784(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 56))
    {
      v1 = *(a1 + 16);
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

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    *(a1 + 40) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 12) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001027E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 2)
          {
            goto LABEL_35;
          }

          *(a1 + 56) |= 1u;
          if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v17 = *(a1 + 16);
          if ((*(v17 + 23) & 0x8000000000000000) != 0)
          {
            v18 = *v17;
            v19 = *(*(a1 + 16) + 8);
          }

          wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
          v20 = *(this + 1);
          if (v20 < *(this + 2) && *v20 == 17)
          {
            *(this + 1) = v20 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v8 != 2)
          {
            if (v8 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_35;
            }

            v13 = *(this + 1);
            v12 = *(this + 2);
            goto LABEL_42;
          }

          if (v9 != 1)
          {
            goto LABEL_35;
          }

LABEL_38:
          *v34 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v34) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v34;
          *(a1 + 56) |= 2u;
          v23 = *(this + 1);
          v12 = *(this + 2);
          if (v23 < v12 && *v23 == 24)
          {
            v13 = v23 + 1;
            *(this + 1) = v13;
LABEL_42:
            v34[0] = 0;
            if (v13 >= v12 || (v24 = *v13, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34);
              if (!result)
              {
                return result;
              }

              v24 = v34[0];
            }

            else
            {
              *(this + 1) = v13 + 1;
            }

            if (v24 > 3)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v24);
            }

            else
            {
              *(a1 + 56) |= 4u;
              *(a1 + 32) = v24;
            }

            v25 = *(this + 1);
            v10 = *(this + 2);
            if (v25 < v10 && *v25 == 32)
            {
              v21 = v25 + 1;
              *(this + 1) = v21;
              goto LABEL_53;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v8 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v22 = *(this + 1);
            v14 = *(this + 2);
            goto LABEL_72;
          }
        }

        else if (v8 == 7 && (TagFallback & 7) == 0)
        {
          v15 = *(this + 1);
          v14 = *(this + 2);
          goto LABEL_80;
        }

        goto LABEL_35;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_35;
      }

      v21 = *(this + 1);
      v10 = *(this + 2);
LABEL_53:
      v34[0] = 0;
      if (v21 >= v10 || (v26 = *v21, (v26 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34);
        if (!result)
        {
          return result;
        }

        v26 = v34[0];
        v27 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v27 = v21 + 1;
        *(this + 1) = v27;
      }

      *(a1 + 48) = v26 != 0;
      *(a1 + 56) |= 8u;
      if (v27 < v10 && *v27 == 40)
      {
        v11 = v27 + 1;
        *(this + 1) = v11;
LABEL_61:
        v34[0] = 0;
        if (v11 >= v10 || (v28 = *v11, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34);
          if (!result)
          {
            return result;
          }

          v28 = v34[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v28 > 8)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 5, v28);
        }

        else
        {
          *(a1 + 56) |= 0x10u;
          *(a1 + 36) = v28;
        }

        v29 = *(this + 1);
        v14 = *(this + 2);
        if (v29 < v14 && *v29 == 48)
        {
          v22 = v29 + 1;
          *(this + 1) = v22;
LABEL_72:
          *v34 = 0;
          if (v22 >= v14 || (v30 = *v22, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v34);
            if (!result)
            {
              return result;
            }

            v30 = *v34;
            v31 = *(this + 1);
            v14 = *(this + 2);
          }

          else
          {
            v31 = v22 + 1;
            *(this + 1) = v31;
          }

          *(a1 + 40) = v30;
          *(a1 + 56) |= 0x20u;
          if (v31 < v14 && *v31 == 56)
          {
            v15 = v31 + 1;
            *(this + 1) = v15;
LABEL_80:
            v34[0] = 0;
            if (v15 >= v14 || (v32 = *v15, (v32 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v34);
              if (!result)
              {
                return result;
              }

              v32 = v34[0];
              v33 = *(this + 1);
              v14 = *(this + 2);
            }

            else
            {
              v33 = v15 + 1;
              *(this + 1) = v33;
            }

            *(a1 + 49) = v32 != 0;
            *(a1 + 56) |= 0x40u;
            if (v33 == v14 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_61;
    }

LABEL_35:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100102C44(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    v10 = *(this + 16);
    if ((*(v10 + 23) & 0x8000000000000000) != 0)
    {
      v11 = *v10;
      v12 = *(*(v5 + 16) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v13 = *(v5 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 48), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(6, *(v5 + 40), a2, a4);
    if ((*(v5 + 56) & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_7:
  if ((v6 & 0x40) != 0)
  {
LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 49), a2, a4);
  }

LABEL_9:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100102D7C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 14);
  if (v5)
  {
    v6 = *(this + 2);
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      v7 = *v6;
      v8 = *(*(this + 2) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v11 = *(this + 2);
    *a2 = 10;
    v12 = *(v11 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = *(v11 + 8);
    }

    if (v12 > 0x7F)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, a2 + 1, v9);
    }

    else
    {
      *(a2 + 1) = v12;
      v13 = a2 + 2;
    }

    v14 = *(v11 + 23);
    if (v14 >= 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = *v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v11 + 23);
    }

    else
    {
      v16 = *(v11 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v15, v16, v13, v10);
    v5 = *(this + 14);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v17 = *(this + 3);
  *a2 = 17;
  *(a2 + 1) = v17;
  a2 = (a2 + 9);
  if ((*(this + 14) & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v18 = *(this + 8);
  *a2 = 24;
  v19 = a2 + 1;
  if ((v18 & 0x80000000) != 0)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, v19, a3);
  }

  else
  {
    if (v18 <= 0x7F)
    {
      *(a2 + 1) = v18;
      a2 = (a2 + 2);
      goto LABEL_26;
    }

    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v19, a3);
  }

  a2 = v20;
LABEL_26:
  v21 = *(this + 14);
  if ((v21 & 8) != 0)
  {
    v22 = *(this + 48);
    *a2 = 32;
    *(a2 + 1) = v22;
    a2 = (a2 + 2);
    v21 = *(this + 14);
  }

  if ((v21 & 0x10) != 0)
  {
    v23 = *(this + 9);
    *a2 = 40;
    v24 = a2 + 1;
    if ((v23 & 0x80000000) != 0)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v23, v24, a3);
    }

    else
    {
      if (v23 <= 0x7F)
      {
        *(a2 + 1) = v23;
        a2 = (a2 + 2);
        goto LABEL_35;
      }

      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v24, a3);
    }

    a2 = v25;
  }

LABEL_35:
  v26 = *(this + 14);
  if ((v26 & 0x20) != 0)
  {
    v27 = *(this + 5);
    *a2 = 48;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v27, a2 + 1, a3);
    v26 = *(this + 14);
  }

  if ((v26 & 0x40) != 0)
  {
    v28 = *(this + 49);
    *a2 = 56;
    *(a2 + 1) = v28;
    a2 = (a2 + 2);
  }

  v31 = *(this + 1);
  v30 = (this + 8);
  v29 = v31;
  if (!v31 || *v29 == v29[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v30, a2, a3);
}

uint64_t sub_100102F9C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 16);
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
        v3 = *(a1 + 56);
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

    if ((v3 & 2) != 0)
    {
      v13 = v4 + 9;
    }

    else
    {
      v13 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v14 = *(a1 + 32);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
        v3 = *(a1 + 56);
      }

      else
      {
        v15 = 2;
      }

      v13 += v15;
    }

    v16 = ((v3 >> 2) & 2) + v13;
    if ((v3 & 0x10) != 0)
    {
      v17 = *(a1 + 36);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = 11;
      }

      else if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
        v3 = *(a1 + 56);
      }

      else
      {
        v18 = 2;
      }

      v16 += v18;
    }

    if ((v3 & 0x20) != 0)
    {
      v16 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
      v3 = *(a1 + 56);
    }

    v5 = ((v3 >> 5) & 2) + v16;
  }

  else
  {
    v5 = 0;
  }

  v19 = *(a1 + 8);
  if (v19 && *v19 != v19[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 52) = v5;
  return v5;
}

uint64_t sub_1001030F8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1001024B4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001031CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001031E4(uint64_t result, uint64_t a2)
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

uint64_t sub_100103278()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDC78;
}

void sub_10010330C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100103320(uint64_t a1)
{
  *a1 = off_1009928E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_100103384(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 48))
  {
    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      sub_10049E048();
    }

    *(a1 + 48) |= 1u;
    *(a1 + 40) = v5;
    v4 = *(a2 + 48);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    v9 = *(a2 + 24);
    *(a1 + 48) |= 4u;
    *(a1 + 24) = v9;
    if ((*(a2 + 48) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

  v8 = *(a2 + 16);
  *(a1 + 48) |= 2u;
  *(a1 + 16) = v8;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v4 & 8) != 0)
  {
LABEL_10:
    v6 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10010348C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001034A4(uint64_t a1)
{
  *a1 = off_1009928E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001034F8(uint64_t a1)
{
  *a1 = off_1009928E0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001035CC(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001035F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if (v9 != 1)
          {
            goto LABEL_20;
          }

LABEL_35:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v16;
          *(a1 + 48) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 33)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_39;
          }
        }

        else
        {
          if (v8 != 4 || v9 != 1)
          {
            goto LABEL_20;
          }

LABEL_39:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = *v16;
          *(a1 + 48) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
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
        goto LABEL_20;
      }

      v16[0] = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
        if (!result)
        {
          return result;
        }

        v11 = v16[0];
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (v11 > 1)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v11);
      }

      else
      {
        *(a1 + 48) |= 1u;
        *(a1 + 40) = v11;
      }

      v13 = *(this + 1);
      if (v13 < *(this + 2) && *v13 == 17)
      {
        *(this + 1) = v13 + 1;
LABEL_31:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v16;
        *(a1 + 48) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_35;
        }
      }
    }

    if (v8 == 2 && v9 == 1)
    {
      goto LABEL_31;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100103848(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

LABEL_14:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 48) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 48);
  if ((v6 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  }

LABEL_6:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

_BYTE *sub_100103914(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 48))
  {
    v4 = *(this + 10);
    *a2 = 8;
    if ((v4 & 0x80000000) != 0)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v4, (a2 + 1), a3);
    }

    else
    {
      if (v4 <= 0x7F)
      {
        a2[1] = v4;
        a2 += 2;
        goto LABEL_8;
      }

      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    a2 = v5;
  }

LABEL_8:
  v6 = *(this + 12);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v13 = *(this + 3);
    *a2 = 25;
    *(a2 + 1) = v13;
    a2 += 9;
    if ((*(this + 12) & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v12 = *(this + 2);
  *a2 = 17;
  *(a2 + 1) = v12;
  a2 += 9;
  v6 = *(this + 12);
  if ((v6 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v6 & 8) != 0)
  {
LABEL_11:
    v7 = *(this + 4);
    *a2 = 33;
    *(a2 + 1) = v7;
    a2 += 9;
  }

LABEL_12:
  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3);
}

uint64_t sub_100103ABC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (v3)
  {
    if (*(a1 + 48))
    {
      v6 = *(a1 + 40);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 48);
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
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 8);
  if (v7 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 44) = v5;
  return v5;
}

uint64_t sub_100103B70(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100103384(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100103C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100103C5C(uint64_t result, uint64_t a2)
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

uint64_t sub_100103CF0()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDC98;
}

void sub_100103D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100103D98(uint64_t a1)
{
  *a1 = off_100992990;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *&v2 = 0;
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = v2;
  return a1;
}

uint64_t sub_100103E18(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 84);
  if (!v4)
  {
    goto LABEL_19;
  }

  if (v4)
  {
    v11 = *(a2 + 16);
    *(a1 + 84) |= 1u;
    v12 = *(a1 + 16);
    if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v12, v11);
    v4 = *(a2 + 84);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_26:
      v14 = *(a2 + 48);
      if (v14 >= 4)
      {
        sub_10049E074();
      }

      *(a1 + 84) |= 4u;
      *(a1 + 48) = v14;
      v4 = *(a2 + 84);
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(a2 + 24);
  *(a1 + 84) |= 2u;
  *(a1 + 24) = v13;
  v4 = *(a2 + 84);
  if ((v4 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 32);
    *(a1 + 84) |= 8u;
    *(a1 + 32) = v5;
    v4 = *(a2 + 84);
  }

LABEL_9:
  if ((v4 & 0x10) != 0)
  {
    *(a1 + 84) |= 0x10u;
    v6 = *(a1 + 40);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 40);
    if (!v7)
    {
      v7 = *(qword_1009F9C48 + 40);
    }

    sub_100103384(v6, v7);
    v4 = *(a2 + 84);
  }

  if ((v4 & 0x20) != 0)
  {
    v15 = *(a2 + 56);
    *(a1 + 84) |= 0x20u;
    *(a1 + 56) = v15;
    v4 = *(a2 + 84);
    if ((v4 & 0x40) == 0)
    {
LABEL_17:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_17;
  }

  v16 = *(a2 + 52);
  *(a1 + 84) |= 0x40u;
  *(a1 + 52) = v16;
  v4 = *(a2 + 84);
  if ((v4 & 0x80) != 0)
  {
LABEL_18:
    v8 = *(a2 + 64);
    *(a1 + 84) |= 0x80u;
    *(a1 + 64) = v8;
    v4 = *(a2 + 84);
  }

LABEL_19:
  if ((v4 & 0x100) != 0)
  {
    v9 = *(a2 + 72);
    *(a1 + 84) |= 0x100u;
    *(a1 + 72) = v9;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100104074(void *a1)
{
  *a1 = off_100992990;
  v2 = (a1 + 1);
  sub_1001040D4(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1001040D4(void *result)
{
  v1 = result[2];
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  if (qword_1009F9C48 != result)
  {
    result = result[5];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10010418C(void *a1)
{
  sub_100104074(a1);

  operator delete();
}

uint64_t sub_100104230(uint64_t this)
{
  v1 = this;
  v2 = *(this + 84);
  if (v2)
  {
    if (v2)
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

    *(this + 48) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
    if ((*(this + 84) & 0x10) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        if (*(this + 48))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 40) = 0;
          *(this + 32) = 0;
        }

        v4 = *(this + 8);
        this += 8;
        *(this + 40) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 60) = 0;
    *(v1 + 52) = 0;
    *(v1 + 68) = 0;
    v2 = *(v1 + 84);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  *(v5 + 19) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t sub_100104318(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v8 != 3)
          {
            if (v8 != 4 || v9 != 1)
            {
              goto LABEL_43;
            }

            goto LABEL_62;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v16 = *(this + 1);
          v10 = *(this + 2);
LABEL_51:
          v38[0] = 0;
          if (v16 >= v10 || (v20 = *v16, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38);
            if (!result)
            {
              return result;
            }

            v20 = v38[0];
          }

          else
          {
            *(this + 1) = v16 + 1;
          }

          if (v20 > 3)
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v20);
          }

          else
          {
            *(a1 + 84) |= 4u;
            *(a1 + 48) = v20;
          }

          v21 = *(this + 1);
          if (v21 < *(this + 2) && *v21 == 33)
          {
            *(this + 1) = v21 + 1;
LABEL_62:
            *v38 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = *v38;
            v19 = *(a1 + 84) | 8;
            *(a1 + 84) = v19;
            v22 = *(this + 1);
            if (v22 < *(this + 2) && *v22 == 42)
            {
              *(this + 1) = v22 + 1;
              goto LABEL_66;
            }
          }
        }

        else
        {
          if (v8 != 1)
          {
            if (v8 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_33;
          }

          if (v9 != 2)
          {
            goto LABEL_43;
          }

          *(a1 + 84) |= 1u;
          if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v10 = *(this + 2);
          if (v13 < v10 && *v13 == 16)
          {
            v11 = v13 + 1;
            *(this + 1) = v11;
LABEL_33:
            if (v11 >= v10 || (v14 = *v11, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v15 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 24) = v14;
              v15 = v11 + 1;
              *(this + 1) = v15;
            }

            *(a1 + 84) |= 2u;
            if (v15 < v10 && *v15 == 24)
            {
              v16 = v15 + 1;
              *(this + 1) = v16;
              goto LABEL_51;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v8 == 7)
      {
        if ((TagFallback & 7) == 0)
        {
          v18 = *(this + 1);
          v17 = *(this + 2);
          goto LABEL_84;
        }

LABEL_43:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8 == 8)
      {
        if (v9 != 1)
        {
          goto LABEL_43;
        }

LABEL_92:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v38;
        *(a1 + 84) |= 0x80u;
        v37 = *(this + 1);
        if (v37 < *(this + 2) && *v37 == 73)
        {
          *(this + 1) = v37 + 1;
          goto LABEL_96;
        }
      }

      else
      {
        if (v8 != 9 || v9 != 1)
        {
          goto LABEL_43;
        }

LABEL_96:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v38;
        *(a1 + 84) |= 0x100u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 != 5)
    {
      if (v8 != 6 || v9 != 1)
      {
        goto LABEL_43;
      }

      goto LABEL_80;
    }

    if (v9 != 2)
    {
      goto LABEL_43;
    }

    v19 = *(a1 + 84);
LABEL_66:
    *(a1 + 84) = v19 | 0x10;
    v23 = *(a1 + 40);
    if (!v23)
    {
      operator new();
    }

    v38[0] = 0;
    v24 = *(this + 1);
    if (v24 >= *(this + 2) || *v24 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v38))
      {
        return 0;
      }
    }

    else
    {
      v38[0] = *v24;
      *(this + 1) = v24 + 1;
    }

    v25 = *(this + 14);
    v26 = *(this + 15);
    *(this + 14) = v25 + 1;
    if (v25 >= v26)
    {
      return 0;
    }

    v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v38[0]);
    if (!sub_1001035F4(v23, this, v28, v29) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
    v30 = *(this + 14);
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v32 < 0 == v31)
    {
      *(this + 14) = v32;
    }

    v33 = *(this + 1);
    if (v33 < *(this + 2) && *v33 == 49)
    {
      *(this + 1) = v33 + 1;
LABEL_80:
      *v38 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v38) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 56) = *v38;
      *(a1 + 84) |= 0x20u;
      v34 = *(this + 1);
      v17 = *(this + 2);
      if (v34 < v17 && *v34 == 56)
      {
        v18 = v34 + 1;
        *(this + 1) = v18;
LABEL_84:
        if (v18 >= v17 || (v35 = *v18, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v17 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v35;
          v36 = v18 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 84) |= 0x40u;
        if (v36 < v17 && *v36 == 65)
        {
          *(this + 1) = v36 + 1;
          goto LABEL_92;
        }
      }
    }
  }
}

uint64_t sub_100104878(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    v10 = *(this + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v6 = *(v5 + 84);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 48), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 84);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_1009F9C48 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v11, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 56), a3);
  v6 = *(v5 + 84);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
    if ((*(v5 + 84) & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 52), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  if ((v6 & 0x100) != 0)
  {
LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  }

LABEL_11:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001049E0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 21);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v7 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v7 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
    v6 = *(this + 21);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 3);
  *v4 = 16;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v14, v4 + 1, a3);
  if ((*(this + 21) & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v15 = *(this + 12);
  *v4 = 24;
  v16 = v4 + 1;
  if ((v15 & 0x80000000) != 0)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v16, a3);
  }

  else
  {
    if (v15 <= 0x7F)
    {
      *(v4 + 1) = v15;
      v4 = (v4 + 2);
      goto LABEL_24;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v16, a3);
  }

  v4 = v17;
LABEL_24:
  v18 = *(this + 21);
  if ((v18 & 8) != 0)
  {
    v19 = *(this + 4);
    *v4 = 33;
    *(v4 + 1) = v19;
    v4 = (v4 + 9);
    v18 = *(this + 21);
    if ((v18 & 0x10) == 0)
    {
LABEL_26:
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_36;
    }
  }

  else if ((v18 & 0x10) == 0)
  {
    goto LABEL_26;
  }

  v20 = *(this + 5);
  if (!v20)
  {
    v20 = *(qword_1009F9C48 + 40);
  }

  *v4 = 42;
  v21 = v20[11];
  if (v21 > 0x7F)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v21;
    v22 = v4 + 2;
  }

  v4 = sub_100103914(v20, v22, a3);
  v18 = *(this + 21);
  if ((v18 & 0x20) == 0)
  {
LABEL_27:
    if ((v18 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_36:
  v23 = *(this + 7);
  *v4 = 49;
  *(v4 + 1) = v23;
  v4 = (v4 + 9);
  if ((*(this + 21) & 0x40) == 0)
  {
    goto LABEL_40;
  }

LABEL_37:
  v24 = *(this + 13);
  *v4 = 56;
  if (v24 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v24;
    v4 = (v4 + 2);
  }

LABEL_40:
  v25 = *(this + 21);
  if ((v25 & 0x80) != 0)
  {
    v26 = *(this + 8);
    *v4 = 65;
    *(v4 + 1) = v26;
    v4 = (v4 + 9);
    v25 = *(this + 21);
  }

  if ((v25 & 0x100) != 0)
  {
    v27 = *(this + 9);
    *v4 = 73;
    *(v4 + 1) = v27;
    v4 = (v4 + 9);
  }

  v30 = *(this + 1);
  v29 = (this + 8);
  v28 = v30;
  if (!v30 || *v28 == v28[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v29, v4, a3);
}

uint64_t sub_100104CF8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 84);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_43;
  }

  if (v3)
  {
    v6 = *(a1 + 16);
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
      v3 = *(a1 + 84);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  v3 = *(a1 + 84);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 48);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(a1 + 84);
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

  if ((v3 & 8) != 0)
  {
    v15 = v4 + 9;
  }

  else
  {
    v15 = v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v16 = *(a1 + 40);
    if (!v16)
    {
      v16 = *(qword_1009F9C48 + 40);
    }

    v17 = sub_100103ABC(v16, a2);
    v18 = v17;
    if (v17 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
    }

    else
    {
      v19 = 1;
    }

    v15 += v18 + v19 + 1;
    v3 = *(a1 + 84);
  }

  if ((v3 & 0x20) != 0)
  {
    v20 = v15 + 9;
  }

  else
  {
    v20 = v15;
  }

  if ((v3 & 0x40) != 0)
  {
    v21 = *(a1 + 52);
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      v3 = *(a1 + 84);
    }

    else
    {
      v22 = 2;
    }

    v20 += v22;
  }

  v5 = v20 + 9;
  if ((v3 & 0x80) == 0)
  {
    v5 = v20;
  }

LABEL_43:
  if ((v3 & 0x100) != 0)
  {
    v23 = v5 + 9;
  }

  else
  {
    v23 = v5;
  }

  v24 = *(a1 + 8);
  if (v24 && *v24 != v24[1])
  {
    v23 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v23;
  }

  *(a1 + 80) = v23;
  return v23;
}

uint64_t sub_100104EA8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100103E18(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100104F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100104F94(uint64_t result, uint64_t a2)
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

uint64_t sub_100105028()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDC88;
}

void sub_1001050BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001050D0(uint64_t a1)
{
  *a1 = off_100992A40;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_100105130(void *a1)
{
  *a1 = off_100992A40;
  if (qword_1009F9C58 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1001051C8(void *a1)
{
  sub_100105130(a1);

  operator delete();
}

uint64_t sub_10010526C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) == 0)
        {
          v15 = *(this + 1);
          v14 = *(this + 2);
          goto LABEL_35;
        }

LABEL_22:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 1)
      {
        goto LABEL_22;
      }

      v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v28) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v28;
      v10 = *(a1 + 44) | 1;
      *(a1 + 44) = v10;
      v11 = *(this + 1);
      if (v11 < *(this + 2) && *v11 == 18)
      {
        *(this + 1) = v11 + 1;
        goto LABEL_16;
      }
    }

    if (v9 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a1 + 44);
LABEL_16:
    *(a1 + 44) = v10 | 2;
    v12 = *(a1 + 24);
    if (!v12)
    {
      operator new();
    }

    v29 = 0;
    v13 = *(this + 1);
    if (v13 >= *(this + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
      {
        return 0;
      }
    }

    else
    {
      v29 = *v13;
      *(this + 1) = v13 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v29);
    if (!sub_100104318(v12, this, v19, v20) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
    v21 = *(this + 14);
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v23 < 0 == v22)
    {
      *(this + 14) = v23;
    }

    v24 = *(this + 1);
    v14 = *(this + 2);
    if (v24 < v14 && *v24 == 24)
    {
      v15 = v24 + 1;
      *(this + 1) = v15;
LABEL_35:
      if (v15 >= v14 || (v25 = *v15, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v26 = *(this + 1);
        v14 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v25;
        v26 = v15 + 1;
        *(this + 1) = v26;
      }

      *(a1 + 44) |= 4u;
      if (v26 == v14 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t sub_10010550C(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    v10 = *(v5 + 24);
    if (!v10)
    {
      v10 = *(qword_1009F9C58 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v10, a2, a4);
    if ((*(v5 + 44) & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v6 & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 32), a2, a4);
  }

LABEL_5:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001055CC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 11);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    v12 = *(this + 3);
    if (!v12)
    {
      v12 = *(qword_1009F9C58 + 24);
    }

    *a2 = 18;
    v13 = v12[20];
    if (v13 > 0x7F)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v13;
      v14 = (a2 + 2);
    }

    a2 = sub_1001049E0(v12, v14, a3, a4);
    if ((*(this + 11) & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  v11 = *(this + 2);
  *a2 = 9;
  *(a2 + 1) = v11;
  a2 = (a2 + 9);
  v5 = *(this + 11);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 4) != 0)
  {
LABEL_4:
    v6 = *(this + 4);
    *a2 = 24;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, a2 + 1, a3);
  }

LABEL_5:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_1001056F8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 44);
  if (*(a1 + 44))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 24);
      if (!v5)
      {
        v5 = *(qword_1009F9C58 + 24);
      }

      v6 = sub_100104CF8(v5, a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
      }

      else
      {
        v8 = 1;
      }

      v4 = (v4 + v7 + v8 + 1);
      v3 = *(a1 + 44);
    }

    if ((v3 & 4) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 40) = v4;
  return v4;
}

uint64_t sub_1001057C0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1001008D8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100105894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001058AC(uint64_t result, uint64_t a2)
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

uint64_t sub_100105940()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDCA8;
}

void sub_1001059D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1001059E8(void *a1)
{
  *a1 = off_100992AF0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

void sub_100105A48(void *a1)
{
  *a1 = off_100992AF0;
  if (qword_1009F9C60 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100105AE0(void *a1)
{
  sub_100105A48(a1);

  operator delete();
}

uint64_t sub_100105B84(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
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

        if (TagFallback >> 3 != 1 || v8 != 1)
        {
          goto LABEL_14;
        }

        v22 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v22) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v22;
        v9 = *(a1 + 36) | 1;
        *(a1 + 36) = v9;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 18)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_18;
        }
      }

      if (v8 == 2)
      {
        break;
      }

LABEL_14:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 36);
LABEL_18:
    *(a1 + 36) = v9 | 2;
    v11 = *(a1 + 24);
    if (!v11)
    {
      operator new();
    }

    v23 = 0;
    v12 = *(this + 1);
    if (v12 >= *(this + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v12;
      *(this + 1) = v12 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v23);
    if (!sub_100104318(v11, this, v16, v17) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
    v18 = *(this + 14);
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v20 < 0 == v19)
    {
      *(this + 14) = v20;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_100105DB4(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 36);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 24);
    if (!v7)
    {
      v7 = *(qword_1009F9C60 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v7, a2, a4);
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100105E50(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 9);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 = (a2 + 9);
    v5 = *(this + 9);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 3);
    if (!v7)
    {
      v7 = *(qword_1009F9C60 + 24);
    }

    *a2 = 18;
    v8 = v7[20];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v8;
      v9 = (a2 + 2);
    }

    a2 = sub_1001049E0(v7, v9, a3, a4);
  }

  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_100105F54(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 24);
      if (!v5)
      {
        v5 = *(qword_1009F9C60 + 24);
      }

      v6 = sub_100104CF8(v5, a2);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
      }

      else
      {
        v8 = 1;
      }

      v4 = (v4 + v7 + v8 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_100106004(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100101108(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001060D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001060F0(uint64_t result, uint64_t a2)
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

uint64_t sub_100106184()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDCB8;
}

void sub_100106218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010622C(uint64_t a1)
{
  *a1 = off_100992BA0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 45) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 56) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 64) = 0;
  return a1;
}

void sub_10010629C(void *a1)
{
  *a1 = off_100992BA0;
  v2 = (a1 + 1);
  sub_1001062FC(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1001062FC(void *result)
{
  v1 = result;
  v2 = result[7];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_1009F9C68 != result)
  {
    v4 = result[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    result = v1[5];
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  return result;
}

void sub_10010640C(void *a1)
{
  sub_10010629C(a1);

  operator delete();
}

uint64_t sub_1001064B0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 1)
            {
              goto LABEL_31;
            }

            *v50 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v50) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = *v50;
            v11 = *(a1 + 68) | 1;
            *(a1 + 68) = v11;
            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 18)
            {
              *(this + 1) = v12 + 1;
              goto LABEL_35;
            }
          }

          else
          {
            if (v8 != 2)
            {
              if (v8 != 3 || v9 != 2)
              {
                goto LABEL_31;
              }

              goto LABEL_49;
            }

            if (v9 != 2)
            {
              goto LABEL_31;
            }

            v11 = *(a1 + 68);
LABEL_35:
            *(a1 + 68) = v11 | 2;
            v15 = *(a1 + 24);
            if (!v15)
            {
              operator new();
            }

            v50[0] = 0;
            v16 = *(this + 1);
            if (v16 >= *(this + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50))
              {
                return 0;
              }
            }

            else
            {
              v50[0] = *v16;
              *(this + 1) = v16 + 1;
            }

            v17 = *(this + 14);
            v18 = *(this + 15);
            *(this + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50[0]);
            if (!sub_100104318(v15, this, v20, v21) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
            v22 = *(this + 14);
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v24 < 0 == v23)
            {
              *(this + 14) = v24;
            }

            v25 = *(this + 1);
            if (v25 < *(this + 2) && *v25 == 26)
            {
              *(this + 1) = v25 + 1;
LABEL_49:
              *(a1 + 68) |= 4u;
              v26 = *(a1 + 32);
              if (!v26)
              {
                operator new();
              }

              v50[0] = 0;
              v27 = *(this + 1);
              if (v27 >= *(this + 2) || *v27 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50))
                {
                  return 0;
                }
              }

              else
              {
                v50[0] = *v27;
                *(this + 1) = v27 + 1;
              }

              v28 = *(this + 14);
              v29 = *(this + 15);
              *(this + 14) = v28 + 1;
              if (v28 >= v29)
              {
                return 0;
              }

              v30 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50[0]);
              if (!sub_1001027E4(v26, this, v31, v32) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v30);
              v33 = *(this + 14);
              v23 = __OFSUB__(v33, 1);
              v34 = v33 - 1;
              if (v34 < 0 == v23)
              {
                *(this + 14) = v34;
              }

              v35 = *(this + 1);
              if (v35 < *(this + 2) && *v35 == 34)
              {
                *(this + 1) = v35 + 1;
                goto LABEL_63;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (v8 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v13 = *(this + 2);
            goto LABEL_81;
          }

          goto LABEL_31;
        }

        if (v8 != 7 || v9 != 2)
        {
          goto LABEL_31;
        }

        v10 = *(a1 + 68);
LABEL_89:
        *(a1 + 68) = v10 | 0x40;
        if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_31;
      }

LABEL_63:
      *(a1 + 68) |= 8u;
      v36 = *(a1 + 40);
      if (!v36)
      {
        operator new();
      }

      v50[0] = 0;
      v37 = *(this + 1);
      if (v37 >= *(this + 2) || *v37 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50))
        {
          return 0;
        }
      }

      else
      {
        v50[0] = *v37;
        *(this + 1) = v37 + 1;
      }

      v38 = *(this + 14);
      v39 = *(this + 15);
      *(this + 14) = v38 + 1;
      if (v38 >= v39)
      {
        return 0;
      }

      v40 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v50[0]);
      if (!sub_1001027E4(v36, this, v41, v42) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v40);
      v43 = *(this + 14);
      v23 = __OFSUB__(v43, 1);
      v44 = v43 - 1;
      if (v44 < 0 == v23)
      {
        *(this + 14) = v44;
      }

      v45 = *(this + 1);
      if (v45 < *(this + 2) && *v45 == 45)
      {
        *(this + 1) = v45 + 1;
LABEL_77:
        v50[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v50) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v50[0];
        *(a1 + 68) |= 0x10u;
        v46 = *(this + 1);
        v13 = *(this + 2);
        if (v46 < v13 && *v46 == 48)
        {
          v14 = v46 + 1;
          *(this + 1) = v14;
LABEL_81:
          v50[0] = 0;
          if (v14 >= v13 || (v47 = *v14, (v47 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v50);
            if (!result)
            {
              return result;
            }

            v47 = v50[0];
            v48 = *(this + 1);
            v13 = *(this + 2);
          }

          else
          {
            v48 = v14 + 1;
            *(this + 1) = v48;
          }

          *(a1 + 52) = v47 != 0;
          v10 = *(a1 + 68) | 0x20;
          *(a1 + 68) = v10;
          if (v48 < v13 && *v48 == 58)
          {
            *(this + 1) = v48 + 1;
            goto LABEL_89;
          }
        }
      }
    }

    if (v8 == 5 && v9 == 5)
    {
      goto LABEL_77;
    }

LABEL_31:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100106A6C(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v5 + 24);
  if (!v11)
  {
    v11 = *(qword_1009F9C68 + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_19:
  v12 = *(v5 + 32);
  if (!v12)
  {
    v12 = *(qword_1009F9C68 + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_22:
  v13 = *(v5 + 40);
  if (!v13)
  {
    v13 = *(qword_1009F9C68 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 52), a2, a4);
    if ((*(v5 + 68) & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 48), a3);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_7:
  if ((v6 & 0x40) != 0)
  {
LABEL_8:
    v7 = *(v5 + 56);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_9:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100106BBC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 17);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v7;
    v4 = (a2 + 9);
    v6 = *(this + 17);
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

  v8 = *(this + 3);
  if (!v8)
  {
    v8 = *(qword_1009F9C68 + 24);
  }

  *v4 = 18;
  v9 = v8[20];
  if (v9 > 0x7F)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v9;
    v10 = (v4 + 2);
  }

  v4 = sub_1001049E0(v8, v10, a3, a4);
  v6 = *(this + 17);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_16:
  v11 = *(this + 4);
  if (!v11)
  {
    v11 = *(qword_1009F9C68 + 32);
  }

  *v4 = 26;
  v12 = v11[13];
  if (v12 > 0x7F)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v12;
    v13 = (v4 + 2);
  }

  v4 = sub_100102D7C(v11, v13, a3);
  v6 = *(this + 17);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_22:
  v14 = *(this + 5);
  if (!v14)
  {
    v14 = *(qword_1009F9C68 + 40);
  }

  *v4 = 34;
  v15 = v14[13];
  if (v15 > 0x7F)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v16 = (v4 + 2);
  }

  v4 = sub_100102D7C(v14, v16, a3);
  v6 = *(this + 17);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_29:
    v18 = *(this + 52);
    *v4 = 48;
    *(v4 + 1) = v18;
    v4 = (v4 + 2);
    if ((*(this + 17) & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

LABEL_28:
  v17 = *(this + 12);
  *v4 = 45;
  *(v4 + 1) = v17;
  v4 = (v4 + 5);
  v6 = *(this + 17);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_42;
  }

LABEL_30:
  v19 = *(this + 7);
  *v4 = 58;
  v20 = *(v19 + 23);
  if ((v20 & 0x8000000000000000) != 0)
  {
    v20 = *(v19 + 8);
  }

  if (v20 > 0x7F)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v20;
    v21 = v4 + 2;
  }

  v22 = *(v19 + 23);
  if (v22 >= 0)
  {
    v23 = v19;
  }

  else
  {
    v23 = *v19;
  }

  if (v22 >= 0)
  {
    v24 = *(v19 + 23);
  }

  else
  {
    v24 = *(v19 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v23, v24, v21, a4);
LABEL_42:
  v27 = *(this + 1);
  v26 = (this + 8);
  v25 = v27;
  if (!v27 || *v25 == v25[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v26, v4, a3);
}

uint64_t sub_100106E3C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 68);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_37;
  }

  v4 = ((v3 << 31) >> 31) & 9;
  if ((v3 & 2) == 0)
  {
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v10 = *(a1 + 32);
    if (!v10)
    {
      v10 = *(qword_1009F9C68 + 32);
    }

    v11 = sub_100102F9C(v10, a2);
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
    v3 = *(a1 + 68);
    if ((v3 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    v6 = *(qword_1009F9C68 + 24);
  }

  v7 = sub_100104CF8(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  }

  else
  {
    v9 = 1;
  }

  v4 += v8 + v9 + 1;
  v3 = *(a1 + 68);
  if ((v3 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v3 & 8) != 0)
  {
LABEL_19:
    v14 = *(a1 + 40);
    if (!v14)
    {
      v14 = *(qword_1009F9C68 + 40);
    }

    v15 = sub_100102F9C(v14, a2);
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
    v3 = *(a1 + 68);
  }

LABEL_25:
  v18 = v4 + 5;
  if ((v3 & 0x10) == 0)
  {
    v18 = v4;
  }

  v5 = v18 + ((v3 >> 4) & 2);
  if ((v3 & 0x40) != 0)
  {
    v19 = *(a1 + 56);
    v20 = *(v19 + 23);
    v21 = v20;
    v22 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = v22;
    }

    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2);
      v20 = *(v19 + 23);
      v22 = *(v19 + 8);
      v21 = *(v19 + 23);
    }

    else
    {
      v24 = 1;
    }

    if (v21 < 0)
    {
      v20 = v22;
    }

    v5 = (v5 + v24 + v20 + 1);
  }

LABEL_37:
  v25 = *(a1 + 8);
  if (v25 && *v25 != v25[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 64) = v5;
  return v5;
}

uint64_t sub_100106FFC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100100E74(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1001070D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001070E8(uint64_t result, uint64_t a2)
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

uint64_t sub_10010717C()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDCC8;
}

void sub_100107210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100107224(uint64_t a1)
{
  *a1 = off_100992C50;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_100107288(void *a1)
{
  *a1 = off_100992C50;
  if (qword_1009F9C70 != a1)
  {
    v2 = a1[5];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100107320(void *a1)
{
  sub_100107288(a1);

  operator delete();
}

uint64_t sub_1001073C4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 1)
          {
            goto LABEL_24;
          }

          v30 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v30) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 16) = v30;
          *(a1 + 52) |= 1u;
          v13 = *(this + 1);
          v10 = *(this + 2);
          if (v13 < v10 && *v13 == 16)
          {
            v11 = v13 + 1;
            *(this + 1) = v11;
LABEL_20:
            if (v11 >= v10 || (v14 = *v11, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v15 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 24) = v14;
              v15 = v11 + 1;
              *(this + 1) = v15;
            }

            *(a1 + 52) |= 2u;
            if (v15 < v10 && *v15 == 24)
            {
              v16 = v15 + 1;
              *(this + 1) = v16;
              goto LABEL_33;
            }
          }
        }

        else
        {
          if (v8 == 2 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_20;
          }

LABEL_24:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v8 != 3)
      {
        if (v8 == 4 && v9 == 2)
        {
          v12 = *(a1 + 52);
          goto LABEL_41;
        }

        goto LABEL_24;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_24;
      }

      v16 = *(this + 1);
      v10 = *(this + 2);
LABEL_33:
      if (v16 >= v10 || (v18 = *v16, v18 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v19 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v18;
        v19 = v16 + 1;
        *(this + 1) = v19;
      }

      v12 = *(a1 + 52) | 4;
      *(a1 + 52) = v12;
    }

    while (v19 >= v10 || *v19 != 34);
    *(this + 1) = v19 + 1;
LABEL_41:
    *(a1 + 52) = v12 | 8;
    v20 = *(a1 + 40);
    if (!v20)
    {
      operator new();
    }

    v31 = 0;
    v21 = *(this + 1);
    if (v21 >= *(this + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
      {
        return 0;
      }
    }

    else
    {
      v31 = *v21;
      *(this + 1) = v21 + 1;
    }

    v22 = *(this + 14);
    v23 = *(this + 15);
    *(this + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
    if (!sub_100104318(v20, this, v25, v26) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
    v27 = *(this + 14);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v29 < 0 == v28)
    {
      *(this + 14) = v29;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_1001076DC(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 52) & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = *(v5 + 40);
  if (!v7)
  {
    v7 = *(qword_1009F9C70 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v7, a2, a4);
LABEL_12:
  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001077B8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 13);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 = (a2 + 9);
    v5 = *(this + 13);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = *(this + 4);
      *a2 = 24;
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v8, a2 + 1, a3);
      if ((*(this + 13) & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 3);
  *a2 = 16;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v7, a2 + 1, a3);
  v5 = *(this + 13);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v9 = *(this + 5);
  if (!v9)
  {
    v9 = *(qword_1009F9C70 + 40);
  }

  *a2 = 34;
  v10 = v9[20];
  if (v10 > 0x7F)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, a2 + 1, a3);
  }

  else
  {
    *(a2 + 1) = v10;
    v11 = (a2 + 2);
  }

  a2 = sub_1001049E0(v9, v11, a3, a4);
LABEL_15:
  v14 = *(this + 1);
  v13 = (this + 8);
  v12 = v14;
  if (!v14 || *v12 == v12[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, a2, a3);
}

uint64_t sub_100107904(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 52);
  if (!*(a1 + 52))
  {
    v4 = 0;
    goto LABEL_15;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) == 0)
  {
    if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    if ((*(a1 + 52) & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  v3 = *(a1 + 52);
  if ((v3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v5 = *(a1 + 40);
  if (!v5)
  {
    v5 = *(qword_1009F9C70 + 40);
  }

  v6 = sub_100104CF8(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v4 + v7 + v8 + 1);
LABEL_15:
  v9 = *(a1 + 8);
  if (v9 && *v9 != v9[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_1001079F0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100101554(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100107AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100107ADC(uint64_t result, uint64_t a2)
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

uint64_t sub_100107B70()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDCD8;
}

void sub_100107C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100107C18(uint64_t a1)
{
  *a1 = off_100992D00;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return a1;
}

void sub_100107C80(void *a1)
{
  *a1 = off_100992D00;
  if (qword_1009F9C78 != a1)
  {
    v2 = a1[5];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100107D18(void *a1)
{
  sub_100107C80(a1);

  operator delete();
}

uint64_t sub_100107DBC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v6 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v8 = TagFallback >> 3;
        v9 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_28;
        }

        if (v9 != 1)
        {
          goto LABEL_21;
        }

        *v35 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v35;
        *(a1 + 56) |= 1u;
        v16 = *(this + 1);
        v12 = *(this + 2);
        if (v16 < v12 && *v16 == 16)
        {
          v13 = v16 + 1;
          *(this + 1) = v13;
LABEL_28:
          if (v13 >= v12 || (v17 = *v13, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v12 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v17;
            v18 = v13 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 56) |= 2u;
          if (v18 < v12 && *v18 == 24)
          {
            v14 = v18 + 1;
            *(this + 1) = v14;
LABEL_36:
            if (v14 >= v12 || (v20 = *v14, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v21 = *(this + 1);
              v12 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v20;
              v21 = v14 + 1;
              *(this + 1) = v21;
            }

            v15 = *(a1 + 56) | 4;
            *(a1 + 56) = v15;
            if (v21 < v12 && *v21 == 34)
            {
              *(this + 1) = v21 + 1;
              goto LABEL_44;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v14 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_36;
      }

      if (v8 == 4)
      {
        break;
      }

      if (v8 == 5 && (TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_58;
      }

LABEL_21:
      if (v9 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (v9 != 2)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 56);
LABEL_44:
    *(a1 + 56) = v15 | 8;
    v22 = *(a1 + 40);
    if (!v22)
    {
      operator new();
    }

    v35[0] = 0;
    v23 = *(this + 1);
    if (v23 >= *(this + 2) || *v23 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35))
      {
        return 0;
      }
    }

    else
    {
      v35[0] = *v23;
      *(this + 1) = v23 + 1;
    }

    v24 = *(this + 14);
    v25 = *(this + 15);
    *(this + 14) = v24 + 1;
    if (v24 >= v25)
    {
      return 0;
    }

    v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35[0]);
    if (!sub_100104318(v22, this, v27, v28) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
    v29 = *(this + 14);
    v30 = __OFSUB__(v29, 1);
    v31 = v29 - 1;
    if (v31 < 0 == v30)
    {
      *(this + 14) = v31;
    }

    v32 = *(this + 1);
    v10 = *(this + 2);
    if (v32 < v10 && *v32 == 40)
    {
      v11 = v32 + 1;
      *(this + 1) = v11;
LABEL_58:
      v35[0] = 0;
      if (v11 >= v10 || (v33 = *v11, (v33 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35);
        if (!result)
        {
          return result;
        }

        v33 = v35[0];
        v34 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        v34 = v11 + 1;
        *(this + 1) = v34;
      }

      *(a1 + 48) = v33 != 0;
      *(a1 + 56) |= 0x10u;
      if (v34 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t sub_100108154(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 56);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v10 = *(v5 + 40);
    if (!v10)
    {
      v10 = *(qword_1009F9C78 + 40);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v10, a2, a4);
    if ((*(v5 + 56) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 48), a2, a4);
  }

LABEL_7:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10010824C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 14);
  if (v5)
  {
    v11 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v11;
    a2 = (a2 + 9);
    v5 = *(this + 14);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v12 = *(this + 3);
  *a2 = 16;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v12, a2 + 1, a3);
  v5 = *(this + 14);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v14 = *(this + 5);
    if (!v14)
    {
      v14 = *(qword_1009F9C78 + 40);
    }

    *a2 = 34;
    v15 = v14[20];
    if (v15 > 0x7F)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v15;
      v16 = (a2 + 2);
    }

    a2 = sub_1001049E0(v14, v16, a3, a4);
    if ((*(this + 14) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

LABEL_15:
  v13 = *(this + 4);
  *a2 = 24;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, a2 + 1, a3);
  v5 = *(this + 14);
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v5 & 0x10) != 0)
  {
LABEL_6:
    v6 = *(this + 48);
    *a2 = 40;
    *(a2 + 1) = v6;
    a2 = (a2 + 2);
  }

LABEL_7:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_1001083B8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
      v3 = *(a1 + 56);
      if ((v3 & 4) == 0)
      {
LABEL_4:
        if ((v3 & 8) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_9;
      }
    }

    else if ((v3 & 4) == 0)
    {
      goto LABEL_4;
    }

    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    v3 = *(a1 + 56);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      v5 = ((v3 >> 3) & 2) + v4;
      goto LABEL_16;
    }

LABEL_9:
    v6 = *(a1 + 40);
    if (!v6)
    {
      v6 = *(qword_1009F9C78 + 40);
    }

    v7 = sub_100104CF8(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
    }

    else
    {
      v9 = 1;
    }

    v4 += v8 + v9 + 1;
    v3 = *(a1 + 56);
    goto LABEL_15;
  }

  v5 = 0;
LABEL_16:
  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 52) = v5;
  return v5;
}

uint64_t sub_1001084B8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100101808(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10010858C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001085A4(uint64_t result, uint64_t a2)
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

uint64_t sub_100108638()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDCE8;
}

void sub_1001086CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001086E0()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDD08;
}

void sub_10010876C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100108780(uint64_t a1)
{
  *a1 = off_100992DB0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 40) = 0;
  return a1;
}

void sub_1001087EC(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_100992DB0;
  v2 = (a1 + 8);
  sub_1000880E8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100108850(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1001087EC(a1);

  operator delete();
}

uint64_t sub_1001088F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_20;
          }

LABEL_31:
          *(a1 + 40) |= 4u;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v16 = *(a1 + 24);
          if ((*(v16 + 23) & 0x8000000000000000) != 0)
          {
            v17 = *v16;
            v18 = *(*(a1 + 24) + 8);
          }

          wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        if (v8 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_16:
        v20 = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v20);
          if (!result)
          {
            return result;
          }

          v13 = v20;
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v13 > 2)
        {
          wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v13);
        }

        else
        {
          *(a1 + 40) |= 2u;
          *(a1 + 32) = v13;
        }

        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 26)
        {
          *(this + 1) = v15 + 1;
          goto LABEL_31;
        }
      }

      if (v8 != 1 || v9 != 1)
      {
        break;
      }

      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v19) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v19;
      *(a1 + 40) |= 1u;
      v11 = *(this + 1);
      v10 = *(this + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(this + 1) = v12;
        goto LABEL_16;
      }
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100108B34(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 32), a2, a4);
    if ((*(v5 + 40) & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(v5 + 24);
  if ((*(v7 + 23) & 0x8000000000000000) != 0)
  {
    v8 = *v7;
    v9 = *(*(v5 + 24) + 8);
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v10 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
LABEL_10:
  v13 = *(v5 + 8);
  v12 = (v5 + 8);
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v12, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100108BFC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 10);
  if (v5)
  {
    v6 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v6;
    v3 = (a2 + 9);
    v5 = *(this + 10);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 8);
    *v3 = 16;
    v8 = v3 + 1;
    if ((v7 & 0x80000000) != 0)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v7, v8, a3);
    }

    else
    {
      if (v7 <= 0x7F)
      {
        *(v3 + 1) = v7;
        v3 = (v3 + 2);
        goto LABEL_10;
      }

      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v8, a3);
    }

    v3 = v9;
  }

LABEL_10:
  if ((*(this + 40) & 4) != 0)
  {
    v10 = *(this + 3);
    if ((*(v10 + 23) & 0x8000000000000000) != 0)
    {
      v11 = *v10;
      v12 = *(*(this + 3) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v15 = *(this + 3);
    *v3 = 26;
    v16 = *(v15 + 23);
    if ((v16 & 0x8000000000000000) != 0)
    {
      v16 = *(v15 + 8);
    }

    if (v16 > 0x7F)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, v13);
    }

    else
    {
      *(v3 + 1) = v16;
      v17 = v3 + 2;
    }

    v18 = *(v15 + 23);
    if (v18 >= 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = *v15;
    }

    if (v18 >= 0)
    {
      v20 = *(v15 + 23);
    }

    else
    {
      v20 = *(v15 + 8);
    }

    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v19, v20, v17, v14);
  }

  v23 = *(this + 1);
  v22 = (this + 8);
  v21 = v23;
  if (!v23 || *v21 == v21[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v22, v3, a3);
}

uint64_t sub_100108D78(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 32);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = *(a1 + 40);
      }

      else
      {
        v6 = 2;
      }

      v4 = (v6 + v4);
    }

    if ((v3 & 4) != 0)
    {
      v7 = *(a1 + 24);
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

      v4 = (v4 + v12 + v8 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 36) = v4;
  return v4;
}

uint64_t sub_100108E6C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1001016CC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100108F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100108F58(uint64_t result, uint64_t a2)
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

uint64_t sub_100108FEC()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDCF8;
}

void sub_100109080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100109094(uint64_t a1)
{
  *a1 = off_100992E60;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

uint64_t sub_100109104(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 72);
  if (v4)
  {
    sub_1000778F4((a1 + 64), *(a1 + 72) + v4);
    memcpy((*(a1 + 64) + 8 * *(a1 + 72)), *(a2 + 64), 8 * *(a2 + 72));
    *(a1 + 72) += *(a2 + 72);
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    sub_1000778F4((a1 + 80), *(a1 + 88) + v5);
    memcpy((*(a1 + 80) + 8 * *(a1 + 88)), *(a2 + 80), 8 * *(a2 + 88));
    *(a1 + 88) += *(a2 + 88);
  }

  v6 = *(a2 + 104);
  if (v6)
  {
    sub_1000778F4((a1 + 96), *(a1 + 104) + v6);
    memcpy((*(a1 + 96) + 8 * *(a1 + 104)), *(a2 + 96), 8 * *(a2 + 104));
    *(a1 + 104) += *(a2 + 104);
  }

  v7 = *(a2 + 120);
  if (v7)
  {
    sub_1000778F4((a1 + 112), *(a1 + 120) + v7);
    memcpy((*(a1 + 112) + 8 * *(a1 + 120)), *(a2 + 112), 8 * *(a2 + 120));
    *(a1 + 120) += *(a2 + 120);
  }

  LOBYTE(v8) = *(a2 + 132);
  if (!v8)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 132))
  {
    v11 = *(a2 + 16);
    *(a1 + 132) |= 1u;
    *(a1 + 16) = v11;
    v8 = *(a2 + 132);
    if ((v8 & 2) == 0)
    {
LABEL_14:
      if ((v8 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

  else if ((*(a2 + 132) & 2) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(a2 + 24);
  *(a1 + 132) |= 2u;
  *(a1 + 24) = v12;
  v8 = *(a2 + 132);
  if ((v8 & 4) == 0)
  {
LABEL_15:
    if ((v8 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = *(a2 + 32);
  *(a1 + 132) |= 4u;
  *(a1 + 32) = v13;
  v8 = *(a2 + 132);
  if ((v8 & 8) == 0)
  {
LABEL_16:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    v15 = *(a2 + 48);
    *(a1 + 132) |= 0x10u;
    *(a1 + 48) = v15;
    if ((*(a2 + 132) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_18;
  }

LABEL_23:
  v14 = *(a2 + 40);
  *(a1 + 132) |= 8u;
  *(a1 + 40) = v14;
  v8 = *(a2 + 132);
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if ((v8 & 0x20) != 0)
  {
LABEL_18:
    v9 = *(a2 + 56);
    *(a1 + 132) |= 0x20u;
    *(a1 + 56) = v9;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100109354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10010936C(void *a1)
{
  *a1 = off_100992E60;
  if (a1[14])
  {
    operator delete[]();
  }

  if (a1[12])
  {
    operator delete[]();
  }

  if (a1[10])
  {
    operator delete[]();
  }

  if (a1[8])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100109418(void *a1)
{
  sub_10010936C(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1001094BC(uint64_t a1)
{
  if (*(a1 + 132))
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 28) = 0;
  *(result + 31) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1001094F4(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v8 == 6)
            {
              if (v9 == 1)
              {
                goto LABEL_60;
              }
            }

            else if (v8 == 7)
            {
              if (v9 == 1)
              {
                goto LABEL_72;
              }

              if (v9 == 2)
              {
                result = sub_100063F88(this, a1 + 64);
                if (!result)
                {
                  return result;
                }

                goto LABEL_88;
              }
            }

            goto LABEL_66;
          }

          if (v8 == 8)
          {
            if (v9 == 1)
            {
              goto LABEL_92;
            }

            if (v9 == 2)
            {
              result = sub_100063F88(this, a1 + 80);
              if (!result)
              {
                return result;
              }

              goto LABEL_108;
            }

            goto LABEL_66;
          }

          if (v8 == 9)
          {
            if (v9 == 1)
            {
              goto LABEL_112;
            }

            if (v9 == 2)
            {
              result = sub_100063F88(this, a1 + 96);
              if (!result)
              {
                return result;
              }

              goto LABEL_128;
            }

            goto LABEL_66;
          }

          if (v8 != 10)
          {
            goto LABEL_66;
          }

          if (v9 != 1)
          {
            if (v9 == 2)
            {
              result = sub_100063F88(this, a1 + 112);
              if (!result)
              {
                return result;
              }

              goto LABEL_148;
            }

            goto LABEL_66;
          }

          while (2)
          {
            v61[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v61) & 1) == 0)
            {
              return 0;
            }

            v50 = v61[0];
            v51 = *(a1 + 120);
            if (v51 == *(a1 + 124))
            {
              sub_1000778F4((a1 + 112), v51 + 1);
              v51 = *(a1 + 120);
            }

            v52 = *(a1 + 112);
            v53 = v51 + 1;
            *(a1 + 120) = v51 + 1;
            *(v52 + 8 * v51) = v50;
            v54 = *(this + 1);
            v55 = *(this + 4) - v54;
            if (v55 >= 1)
            {
              v56 = v55 / 9u;
              v57 = v56 >= *(a1 + 124) - v53 ? *(a1 + 124) - v53 : v56;
              if (v57 >= 1)
              {
                v58 = 0;
                while (*v54 == 81)
                {
                  v59 = *(v54 + 1);
                  if (v53 >= *(a1 + 124))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
                    v53 = *(a1 + 120);
                    v52 = *(a1 + 112);
                  }

                  *(a1 + 120) = v53 + 1;
                  *(v52 + 8 * v53) = v59;
                  ++v58;
                  v54 += 9;
                  ++v53;
                  if (v57 == v58)
                  {
                    v58 = v57;
                    goto LABEL_147;
                  }
                }

                if (!v58)
                {
                  goto LABEL_148;
                }

LABEL_147:
                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v58);
              }
            }

LABEL_148:
            v16 = *(this + 1);
            v60 = *(this + 2);
            if (v16 < v60 && *v16 == 81)
            {
LABEL_131:
              *(this + 1) = v16 + 1;
              continue;
            }

            break;
          }

          if (v16 == v60 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 1)
          {
            goto LABEL_66;
          }

          goto LABEL_36;
        }

        if (v9 != 1)
        {
          goto LABEL_66;
        }

        v61[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v61) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v61[0];
        *(a1 + 132) |= 1u;
        v11 = *(this + 1);
        if (v11 < *(this + 2) && *v11 == 17)
        {
          *(this + 1) = v11 + 1;
LABEL_36:
          v61[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v61) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v61[0];
          *(a1 + 132) |= 2u;
          v12 = *(this + 1);
          if (v12 < *(this + 2) && *v12 == 25)
          {
            *(this + 1) = v12 + 1;
LABEL_43:
            v61[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v61) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = v61[0];
            *(a1 + 132) |= 4u;
            v13 = *(this + 1);
            if (v13 < *(this + 2) && *v13 == 33)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_52;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if (v9 != 1)
        {
          goto LABEL_66;
        }

        goto LABEL_43;
      }

      if (v8 != 4)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_66;
      }

LABEL_52:
      v61[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v61) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 40) = v61[0];
      *(a1 + 132) |= 8u;
      v14 = *(this + 1);
      if (v14 < *(this + 2) && *v14 == 41)
      {
        *(this + 1) = v14 + 1;
LABEL_56:
        v61[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v61) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = v61[0];
        *(a1 + 132) |= 0x10u;
        v15 = *(this + 1);
        if (v15 < *(this + 2) && *v15 == 49)
        {
          *(this + 1) = v15 + 1;
LABEL_60:
          v61[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v61) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 56) = v61[0];
          *(a1 + 132) |= 0x20u;
          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 57)
          {
            while (1)
            {
              *(this + 1) = v16 + 1;
LABEL_72:
              v61[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v61) & 1) == 0)
              {
                return 0;
              }

              v17 = v61[0];
              v18 = *(a1 + 72);
              if (v18 == *(a1 + 76))
              {
                sub_1000778F4((a1 + 64), v18 + 1);
                v18 = *(a1 + 72);
              }

              v19 = *(a1 + 64);
              v20 = v18 + 1;
              *(a1 + 72) = v18 + 1;
              *(v19 + 8 * v18) = v17;
              v21 = *(this + 1);
              v22 = *(this + 4) - v21;
              if (v22 >= 1)
              {
                v23 = v22 / 9u;
                v24 = v23 >= *(a1 + 76) - v20 ? *(a1 + 76) - v20 : v23;
                if (v24 >= 1)
                {
                  v25 = 0;
                  while (*v21 == 57)
                  {
                    v26 = *(v21 + 1);
                    if (v20 >= *(a1 + 76))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
                      v20 = *(a1 + 72);
                      v19 = *(a1 + 64);
                    }

                    *(a1 + 72) = v20 + 1;
                    *(v19 + 8 * v20) = v26;
                    ++v25;
                    v21 += 9;
                    ++v20;
                    if (v24 == v25)
                    {
                      v25 = v24;
                      goto LABEL_87;
                    }
                  }

                  if (!v25)
                  {
                    goto LABEL_88;
                  }

LABEL_87:
                  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v25);
                }
              }

LABEL_88:
              v16 = *(this + 1);
              if (v16 >= *(this + 2))
              {
                break;
              }

              v27 = *v16;
              if (v27 != 57)
              {
                if (v27 == 65)
                {
                  while (1)
                  {
                    *(this + 1) = v16 + 1;
LABEL_92:
                    v61[0] = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v61) & 1) == 0)
                    {
                      return 0;
                    }

                    v28 = v61[0];
                    v29 = *(a1 + 88);
                    if (v29 == *(a1 + 92))
                    {
                      sub_1000778F4((a1 + 80), v29 + 1);
                      v29 = *(a1 + 88);
                    }

                    v30 = *(a1 + 80);
                    v31 = v29 + 1;
                    *(a1 + 88) = v29 + 1;
                    *(v30 + 8 * v29) = v28;
                    v32 = *(this + 1);
                    v33 = *(this + 4) - v32;
                    if (v33 >= 1)
                    {
                      v34 = v33 / 9u;
                      v35 = v34 >= *(a1 + 92) - v31 ? *(a1 + 92) - v31 : v34;
                      if (v35 >= 1)
                      {
                        v36 = 0;
                        while (*v32 == 65)
                        {
                          v37 = *(v32 + 1);
                          if (v31 >= *(a1 + 92))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
                            v31 = *(a1 + 88);
                            v30 = *(a1 + 80);
                          }

                          *(a1 + 88) = v31 + 1;
                          *(v30 + 8 * v31) = v37;
                          ++v36;
                          v32 += 9;
                          ++v31;
                          if (v35 == v36)
                          {
                            v36 = v35;
                            goto LABEL_107;
                          }
                        }

                        if (!v36)
                        {
                          goto LABEL_108;
                        }

LABEL_107:
                        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v36);
                      }
                    }

LABEL_108:
                    v16 = *(this + 1);
                    if (v16 >= *(this + 2))
                    {
                      break;
                    }

                    v38 = *v16;
                    if (v38 != 65)
                    {
                      if (v38 == 73)
                      {
                        while (1)
                        {
                          *(this + 1) = v16 + 1;
LABEL_112:
                          v61[0] = 0;
                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v61) & 1) == 0)
                          {
                            return 0;
                          }

                          v39 = v61[0];
                          v40 = *(a1 + 104);
                          if (v40 == *(a1 + 108))
                          {
                            sub_1000778F4((a1 + 96), v40 + 1);
                            v40 = *(a1 + 104);
                          }

                          v41 = *(a1 + 96);
                          v42 = v40 + 1;
                          *(a1 + 104) = v40 + 1;
                          *(v41 + 8 * v40) = v39;
                          v43 = *(this + 1);
                          v44 = *(this + 4) - v43;
                          if (v44 >= 1)
                          {
                            v45 = v44 / 9u;
                            v46 = v45 >= *(a1 + 108) - v42 ? *(a1 + 108) - v42 : v45;
                            if (v46 >= 1)
                            {
                              v47 = 0;
                              while (*v43 == 73)
                              {
                                v48 = *(v43 + 1);
                                if (v42 >= *(a1 + 108))
                                {
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
                                  v42 = *(a1 + 104);
                                  v41 = *(a1 + 96);
                                }

                                *(a1 + 104) = v42 + 1;
                                *(v41 + 8 * v42) = v48;
                                ++v47;
                                v43 += 9;
                                ++v42;
                                if (v46 == v47)
                                {
                                  v47 = v46;
                                  goto LABEL_127;
                                }
                              }

                              if (!v47)
                              {
                                goto LABEL_128;
                              }

LABEL_127:
                              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v47);
                            }
                          }

LABEL_128:
                          v16 = *(this + 1);
                          if (v16 >= *(this + 2))
                          {
                            break;
                          }

                          v49 = *v16;
                          if (v49 != 73)
                          {
                            if (v49 == 81)
                            {
                              goto LABEL_131;
                            }

                            goto LABEL_1;
                          }
                        }
                      }

                      goto LABEL_1;
                    }
                  }
                }

                goto LABEL_1;
              }
            }
          }
        }
      }
    }

    if (v8 == 5 && v9 == 1)
    {
      goto LABEL_56;
    }

LABEL_66:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_100109DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100109DDC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 132);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v5 = *(v4 + 132);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v5 = *(v4 + 132);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 32), a3);
  v5 = *(v4 + 132);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  v5 = *(v4 + 132);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  if ((*(v4 + 132) & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v4 + 56), a3);
  }

LABEL_8:
  if (*(v4 + 72) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(*(v4 + 64) + 8 * v6++), a3);
    }

    while (v6 < *(v4 + 72));
  }

  if (*(v4 + 88) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(*(v4 + 80) + 8 * v7++), a3);
    }

    while (v7 < *(v4 + 88));
  }

  if (*(v4 + 104) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(*(v4 + 96) + 8 * v8++), a3);
    }

    while (v8 < *(v4 + 104));
  }

  if (*(v4 + 120) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(*(v4 + 112) + 8 * v9++), a3);
    }

    while (v9 < *(v4 + 120));
  }

  v12 = *(v4 + 8);
  v11 = (v4 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

uint64_t sub_100109FBC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 132);
  if (v3)
  {
    v17 = *(a1 + 16);
    *a2 = 9;
    *(a2 + 1) = v17;
    a2 += 9;
    v3 = *(a1 + 132);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v18 = *(a1 + 24);
  *a2 = 17;
  *(a2 + 1) = v18;
  a2 += 9;
  v3 = *(a1 + 132);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  v19 = *(a1 + 32);
  *a2 = 25;
  *(a2 + 1) = v19;
  a2 += 9;
  v3 = *(a1 + 132);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v20 = *(a1 + 40);
  *a2 = 33;
  *(a2 + 1) = v20;
  a2 += 9;
  v3 = *(a1 + 132);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_28:
  v21 = *(a1 + 48);
  *a2 = 41;
  *(a2 + 1) = v21;
  a2 += 9;
  if ((*(a1 + 132) & 0x20) != 0)
  {
LABEL_7:
    v4 = *(a1 + 56);
    *a2 = 49;
    *(a2 + 1) = v4;
    a2 += 9;
  }

LABEL_8:
  if (*(a1 + 72) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 64) + 8 * v5);
      *a2 = 57;
      *(a2 + 1) = v6;
      a2 += 9;
      ++v5;
    }

    while (v5 < *(a1 + 72));
  }

  if (*(a1 + 88) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 80) + 8 * v7);
      *a2 = 65;
      *(a2 + 1) = v8;
      a2 += 9;
      ++v7;
    }

    while (v7 < *(a1 + 88));
  }

  if (*(a1 + 104) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 96) + 8 * v9);
      *a2 = 73;
      *(a2 + 1) = v10;
      a2 += 9;
      ++v9;
    }

    while (v9 < *(a1 + 104));
  }

  if (*(a1 + 120) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(a1 + 112) + 8 * v11);
      *a2 = 81;
      *(a2 + 1) = v12;
      a2 += 9;
      ++v11;
    }

    while (v11 < *(a1 + 120));
  }

  v15 = *(a1 + 8);
  v13 = (a1 + 8);
  v14 = v15;
  if (!v15 || *v14 == v14[1])
  {
    return a2;
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v13, a2, a3);
  }
}

uint64_t sub_10010A3AC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 132);
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
    v4 += 9;
  }

  if (!*(a1 + 132))
  {
    v4 = 0;
  }

  v7 = *(a1 + 8);
  v5 = (a1 + 8);
  v6 = v7;
  v8 = (9 * (*(v5 + 20) + *(v5 + 16) + *(v5 + 24) + *(v5 + 28)) + v4);
  if (v7 && *v6 != v6[1])
  {
    v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v8;
  }

  *(a1 + 128) = v8;
  return v8;
}

uint64_t sub_10010A468(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100109104(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10010A53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010A554(uint64_t result, uint64_t a2)
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

uint64_t sub_10010A5E8()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDD10;
}

void sub_10010A67C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010A690(uint64_t a1)
{
  *a1 = off_100992F10;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

void sub_10010A6FC(void *a1)
{
  *a1 = off_100992F10;
  sub_10010A774(a1);
  if (a1[4])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10010A774(void *result)
{
  if (qword_1009F9C90 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[3];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10010A818(void *a1)
{
  sub_10010A6FC(a1);

  operator delete();
}

uint64_t sub_10010A8BC(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v8 != 6)
            {
              if (v8 != 7 || v9 != 1)
              {
                goto LABEL_39;
              }

              goto LABEL_100;
            }

            if (v9 != 1)
            {
              goto LABEL_39;
            }

LABEL_96:
            *v58 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v58;
            *(a1 + 96) |= 0x10u;
            v51 = *(this + 1);
            if (v51 < *(this + 2) && *v51 == 57)
            {
              *(this + 1) = v51 + 1;
LABEL_100:
              *v58 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = *v58;
              *(a1 + 96) |= 0x20u;
              v52 = *(this + 1);
              if (v52 < *(this + 2) && *v52 == 65)
              {
                *(this + 1) = v52 + 1;
LABEL_104:
                *v58 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 64) = *v58;
                *(a1 + 96) |= 0x40u;
                v53 = *(this + 1);
                v10 = *(this + 2);
                if (v53 < v10 && *v53 == 72)
                {
                  v18 = v53 + 1;
                  *(this + 1) = v18;
                  goto LABEL_108;
                }
              }
            }
          }

          else
          {
            if (v8 == 8)
            {
              if (v9 != 1)
              {
                goto LABEL_39;
              }

              goto LABEL_104;
            }

            if (v8 == 9)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_39;
              }

              v18 = *(this + 1);
              v10 = *(this + 2);
LABEL_108:
              if (v18 >= v10 || (v54 = *v18, v54 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 72));
                if (!result)
                {
                  return result;
                }

                v55 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                *(a1 + 72) = v54;
                v55 = v18 + 1;
                *(this + 1) = v55;
              }

              *(a1 + 96) |= 0x80u;
              if (v55 < v10 && *v55 == 80)
              {
                v11 = v55 + 1;
                *(this + 1) = v11;
LABEL_116:
                if (v11 >= v10 || (v56 = *v11, v56 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 80));
                  if (!result)
                  {
                    return result;
                  }

                  v57 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  *(a1 + 80) = v56;
                  v57 = v11 + 1;
                  *(this + 1) = v57;
                }

                *(a1 + 96) |= 0x100u;
                if (v57 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
                {
                  *(this + 8) = 0;
                  result = 1;
                  *(this + 36) = 1;
                  return result;
                }
              }
            }

            else
            {
              if (v8 == 10 && (TagFallback & 7) == 0)
              {
                v11 = *(this + 1);
                v10 = *(this + 2);
                goto LABEL_116;
              }

LABEL_39:
              if (v9 == 4)
              {
                return 1;
              }

              if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
              {
                return 0;
              }
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_39;
          }

          v12 = *(a1 + 96);
          goto LABEL_48;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_39;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 >= v14 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 88));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v14 = *(this + 2);
        }

        else
        {
          *(a1 + 88) = v16;
          v17 = v15 + 1;
          *(this + 1) = v17;
        }

        v12 = *(a1 + 96) | 1;
        *(a1 + 96) = v12;
        if (v17 < v14 && *v17 == 18)
        {
          *(this + 1) = v17 + 1;
LABEL_48:
          *(a1 + 96) = v12 | 2;
          v19 = *(a1 + 16);
          if (!v19)
          {
            operator new();
          }

          v58[0] = 0;
          v20 = *(this + 1);
          if (v20 >= *(this + 2) || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v58))
            {
              return 0;
            }
          }

          else
          {
            v58[0] = *v20;
            *(this + 1) = v20 + 1;
          }

          v21 = *(this + 14);
          v22 = *(this + 15);
          *(this + 14) = v21 + 1;
          if (v21 >= v22)
          {
            return 0;
          }

          v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v58[0]);
          if (!sub_1001094F4(v19, this, v24, v25) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
          v26 = *(this + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(this + 14) = v28;
          }

          v29 = *(this + 1);
          if (v29 < *(this + 2) && *v29 == 26)
          {
            *(this + 1) = v29 + 1;
            goto LABEL_62;
          }
        }
      }

      if (v8 == 3)
      {
        break;
      }

      if (v8 != 4)
      {
        goto LABEL_39;
      }

      if (v9 == 1)
      {
        goto LABEL_76;
      }

      if (v9 != 2)
      {
        goto LABEL_39;
      }

      result = sub_100063F88(this, a1 + 32);
      if (!result)
      {
        return result;
      }

LABEL_92:
      v39 = *(this + 1);
      if (v39 < *(this + 2))
      {
        v50 = *v39;
        if (v50 == 33)
        {
          goto LABEL_75;
        }

        if (v50 == 49)
        {
          *(this + 1) = v39 + 1;
          goto LABEL_96;
        }
      }
    }

    if (v9 != 2)
    {
      goto LABEL_39;
    }

LABEL_62:
    *(a1 + 96) |= 4u;
    v30 = *(a1 + 24);
    if (!v30)
    {
      operator new();
    }

    v58[0] = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || *v31 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v58))
      {
        return 0;
      }
    }

    else
    {
      v58[0] = *v31;
      *(this + 1) = v31 + 1;
    }

    v32 = *(this + 14);
    v33 = *(this + 15);
    *(this + 14) = v32 + 1;
    if (v32 >= v33)
    {
      return 0;
    }

    v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v58[0]);
    if (!sub_1001094F4(v30, this, v35, v36) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v34);
    v37 = *(this + 14);
    v27 = __OFSUB__(v37, 1);
    v38 = v37 - 1;
    if (v38 < 0 == v27)
    {
      *(this + 14) = v38;
    }

    v39 = *(this + 1);
    if (v39 < *(this + 2) && *v39 == 33)
    {
LABEL_75:
      *(this + 1) = v39 + 1;
LABEL_76:
      *v58 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58) & 1) == 0)
      {
        return 0;
      }

      v40 = *v58;
      v41 = *(a1 + 40);
      if (v41 == *(a1 + 44))
      {
        sub_1000778F4((a1 + 32), v41 + 1);
        v41 = *(a1 + 40);
      }

      v42 = *(a1 + 32);
      v43 = v41 + 1;
      *(a1 + 40) = v41 + 1;
      *(v42 + 8 * v41) = v40;
      v44 = *(this + 1);
      v45 = *(this + 4) - v44;
      if (v45 >= 1)
      {
        v46 = v45 / 9u;
        v47 = v46 >= *(a1 + 44) - v43 ? *(a1 + 44) - v43 : v46;
        if (v47 >= 1)
        {
          v48 = 0;
          while (*v44 == 33)
          {
            v49 = *(v44 + 1);
            if (v43 >= *(a1 + 44))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v58);
              v43 = *(a1 + 40);
              v42 = *(a1 + 32);
            }

            *(a1 + 40) = v43 + 1;
            *(v42 + 8 * v43) = v49;
            ++v48;
            v44 += 9;
            ++v43;
            if (v47 == v48)
            {
              v48 = v47;
              goto LABEL_91;
            }
          }

          if (!v48)
          {
            goto LABEL_92;
          }

LABEL_91:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v48);
        }
      }

      goto LABEL_92;
    }
  }
}

uint64_t sub_10010AFA8(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 88), a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_1009F9C90 + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v7, a2, a4);
  if ((*(v5 + 96) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_1009F9C90 + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v8, a2, a4);
  }

LABEL_12:
  if (*(v5 + 40) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(*(v5 + 32) + 8 * v9++), a3);
    }

    while (v9 < *(v5 + 40));
  }

  v10 = *(v5 + 96);
  if ((v10 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
    v10 = *(v5 + 96);
    if ((v10 & 0x20) == 0)
    {
LABEL_17:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  else if ((v10 & 0x20) == 0)
  {
    goto LABEL_17;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v10 = *(v5 + 96);
  if ((v10 & 0x40) == 0)
  {
LABEL_18:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_19;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 72), a2, a4);
    if ((*(v5 + 96) & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v10 = *(v5 + 96);
  if ((v10 & 0x80) != 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  if ((v10 & 0x100) != 0)
  {
LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, *(v5 + 80), a2, a4);
  }

LABEL_21:
  v13 = *(v5 + 8);
  v12 = (v5 + 8);
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v12, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10010B144(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 96))
  {
    v5 = *(this + 22);
    *a2 = 8;
    v6 = a2 + 1;
    if (v5 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v6, a3);
    }

    else
    {
      *(v3 + 1) = v5;
      v3 = (v3 + 2);
    }
  }

  v7 = *(this + 24);
  if ((v7 & 2) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(qword_1009F9C90 + 16);
    }

    *v3 = 18;
    v9 = *(v8 + 128);
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v9;
      v10 = v3 + 2;
    }

    v3 = sub_100109FBC(v8, v10, a3);
    v7 = *(this + 24);
  }

  if ((v7 & 4) != 0)
  {
    v11 = *(this + 3);
    if (!v11)
    {
      v11 = *(qword_1009F9C90 + 24);
    }

    *v3 = 26;
    v12 = *(v11 + 128);
    if (v12 > 0x7F)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v12;
      v13 = v3 + 2;
    }

    v3 = sub_100109FBC(v11, v13, a3);
  }

  if (*(this + 10) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(this + 4) + 8 * v14);
      *v3 = 33;
      *(v3 + 1) = v15;
      v3 = (v3 + 9);
      ++v14;
    }

    while (v14 < *(this + 10));
  }

  v16 = *(this + 24);
  if ((v16 & 0x10) != 0)
  {
    v22 = *(this + 6);
    *v3 = 49;
    *(v3 + 1) = v22;
    v3 = (v3 + 9);
    v16 = *(this + 24);
    if ((v16 & 0x20) == 0)
    {
LABEL_24:
      if ((v16 & 0x40) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_36;
    }
  }

  else if ((v16 & 0x20) == 0)
  {
    goto LABEL_24;
  }

  v23 = *(this + 7);
  *v3 = 57;
  *(v3 + 1) = v23;
  v3 = (v3 + 9);
  v16 = *(this + 24);
  if ((v16 & 0x40) == 0)
  {
LABEL_25:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_26;
    }

LABEL_37:
    v25 = *(this + 9);
    *v3 = 72;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v25, v3 + 1, a3);
    if ((*(this + 24) & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_36:
  v24 = *(this + 8);
  *v3 = 65;
  *(v3 + 1) = v24;
  v3 = (v3 + 9);
  v16 = *(this + 24);
  if ((v16 & 0x80) != 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  if ((v16 & 0x100) != 0)
  {
LABEL_27:
    v17 = *(this + 10);
    *v3 = 80;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v17, v3 + 1, a3);
  }

LABEL_28:
  v20 = *(this + 1);
  v19 = (this + 8);
  v18 = v20;
  if (!v20 || *v18 == v18[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, v3, a3);
}

uint64_t sub_10010B440(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_32;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9C90 + 16);
    }

    v8 = sub_10010A3AC(v7, a2);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
    }

    else
    {
      v10 = 1;
    }

    v4 += v9 + v10 + 1;
    v3 = *(a1 + 96);
    goto LABEL_16;
  }

  v6 = *(a1 + 88);
  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = *(a1 + 96);
  if ((v3 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 24);
    if (!v11)
    {
      v11 = *(qword_1009F9C90 + 24);
    }

    v12 = sub_10010A3AC(v11, a2);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    }

    else
    {
      v14 = 1;
    }

    v4 += v13 + v14 + 1;
    v3 = *(a1 + 96);
  }

  v15 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v15 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = v15 + 9;
  }

  else
  {
    v5 = v15;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 72), a2) + 1;
    v3 = *(a1 + 96);
  }

LABEL_32:
  if ((v3 & 0x100) != 0)
  {
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 80), a2) + 1;
  }

  v16 = *(a1 + 8);
  v17 = (9 * *(a1 + 40) + v5);
  if (v16 && *v16 != v16[1])
  {
    v17 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v17;
  }

  *(a1 + 92) = v17;
  return v17;
}

uint64_t sub_10010B5C4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_100101AB4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10010B698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010B6B0(uint64_t result, uint64_t a2)
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

uint64_t sub_10010B744()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDD20;
}

void sub_10010B7D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010B7EC(uint64_t a1)
{
  *a1 = off_100992FC0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  return a1;
}

void sub_10010B858(void *a1)
{
  *a1 = off_100992FC0;
  if (a1[3])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10010B8D0(void *a1)
{
  sub_10010B858(a1);

  operator delete();
}

uint64_t sub_10010B974(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if ((TagFallback & 7) == 0)
        {
          v14 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_27;
        }

LABEL_17:
        if (v9 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v8 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_17;
        }

        v29[0] = 0;
        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v29);
          if (!result)
          {
            return result;
          }

          v12 = v29[0];
          v13 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        *(a1 + 16) = v12 != 0;
        *(a1 + 44) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v14 = v13 + 1;
          *(this + 1) = v14;
LABEL_27:
          if (v14 >= v10 || (v16 = *v14, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
            if (!result)
            {
              return result;
            }

            v17 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 20) = v16;
            v17 = v14 + 1;
            *(this + 1) = v17;
          }

          *(a1 + 44) |= 2u;
          if (v17 < v10 && *v17 == 25)
          {
            goto LABEL_53;
          }
        }
      }
    }

    if (v9 == 1)
    {
      goto LABEL_35;
    }

    if (v9 != 2)
    {
      goto LABEL_17;
    }

    result = sub_100063F88(this, a1 + 24);
    if (!result)
    {
      return result;
    }

LABEL_51:
    v17 = *(this + 1);
    v28 = *(this + 2);
    if (v17 < v28 && *v17 == 25)
    {
      break;
    }

    if (v17 == v28 && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }

LABEL_53:
  *(this + 1) = v17 + 1;
LABEL_35:
  *v29 = 0;
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v29))
  {
    v18 = *v29;
    v19 = *(a1 + 32);
    if (v19 == *(a1 + 36))
    {
      sub_1000778F4((a1 + 24), v19 + 1);
      v19 = *(a1 + 32);
    }

    v20 = *(a1 + 24);
    v21 = v19 + 1;
    *(a1 + 32) = v19 + 1;
    *(v20 + 8 * v19) = v18;
    v22 = *(this + 1);
    v23 = *(this + 4) - v22;
    if (v23 >= 1)
    {
      v24 = v23 / 9u;
      v25 = v24 >= *(a1 + 36) - v21 ? *(a1 + 36) - v21 : v24;
      if (v25 >= 1)
      {
        v26 = 0;
        while (*v22 == 25)
        {
          v27 = *(v22 + 1);
          if (v21 >= *(a1 + 36))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
            v21 = *(a1 + 32);
            v20 = *(a1 + 24);
          }

          *(a1 + 32) = v21 + 1;
          *(v20 + 8 * v21) = v27;
          ++v26;
          v22 += 9;
          ++v21;
          if (v25 == v26)
          {
            v26 = v25;
            goto LABEL_50;
          }
        }

        if (!v26)
        {
          goto LABEL_51;
        }

LABEL_50:
        wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, 9 * v26);
      }
    }

    goto LABEL_51;
  }

  return 0;
}

void sub_10010BCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010BCD8(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 16), a2, a4);
    v6 = *(v5 + 44);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(*(v5 + 24) + 8 * v7++), a3);
    }

    while (v7 < *(v5 + 32));
  }

  v10 = *(v5 + 8);
  v9 = (v5 + 8);
  v8 = v10;
  if (v10 && *v8 != v8[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v9, a2, a3);
  }

  return this;
}

_BYTE *sub_10010BDA4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  v4 = *(this + 11);
  if (v4)
  {
    v5 = *(this + 16);
    *a2 = 8;
    a2[1] = v5;
    a2 += 2;
    v4 = *(this + 11);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(this + 5);
    *a2 = 16;
    if (v6 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  if (*(this + 8) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(this + 3) + 8 * v7);
      *a2 = 25;
      *(a2 + 1) = v8;
      a2 += 9;
      ++v7;
    }

    while (v7 < *(this + 8));
  }

  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
}

uint64_t sub_10010BEC0(unsigned int *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[11];
  if (v3)
  {
    v4 = 2 * (v3 & 1);
    if ((v3 & 2) != 0)
    {
      v5 = a1[5];
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *(a1 + 1);
  v8 = 9 * a1[8] + v4;
  if (v7 && *v7 != v7[1])
  {
    v8 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 2), a2) + v8;
  }

  a1[10] = v8;
  return v8;
}

uint64_t sub_10010BF50(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = **lpsrc;
  if (v5)
  {
    return sub_1001019A0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10010C024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010C03C(uint64_t result, uint64_t a2)
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

uint64_t sub_10010C0D0()
{
  v0 = qword_1009EE278;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1000F6148;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009EDD30;
}

void sub_10010C164(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010C178(uint64_t a1)
{
  *a1 = off_100993070;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 60) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return a1;
}

void sub_10010C1E0(void *a1)
{
  *a1 = off_100993070;
  v2 = (a1 + 1);
  sub_10010C240(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10010C240(void *result)
{
  if (qword_1009F9CA0 != result)
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[6];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[7];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_10010C310(void *a1)
{
  sub_10010C1E0(a1);

  operator delete();
}

uint64_t sub_10010C3B4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v6 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v8 = TagFallback >> 3;
          v9 = TagFallback & 7;
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 1)
            {
              goto LABEL_31;
            }

            *v53 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v53) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = *v53;
            *(a1 + 72) |= 1u;
            v13 = *(this + 1);
            v11 = *(this + 2);
            if (v13 < v11 && *v13 == 16)
            {
              v14 = v13 + 1;
              *(this + 1) = v14;
LABEL_35:
              if (v14 >= v11 || (v16 = *v14, v16 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
                if (!result)
                {
                  return result;
                }

                v17 = *(this + 1);
                v11 = *(this + 2);
              }

              else
              {
                *(a1 + 24) = v16;
                v17 = v14 + 1;
                *(this + 1) = v17;
              }

              *(a1 + 72) |= 2u;
              if (v17 < v11 && *v17 == 24)
              {
                v12 = v17 + 1;
                *(this + 1) = v12;
                goto LABEL_43;
              }
            }
          }

          else
          {
            if (v8 == 2)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_31;
              }

              v14 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_35;
            }

            if (v8 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_31;
            }

            v12 = *(this + 1);
            v11 = *(this + 2);
LABEL_43:
            if (v12 >= v11 || (v19 = *v12, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v20 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v19;
              v20 = v12 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 72) |= 4u;
            if (v20 < v11 && *v20 == 32)
            {
              v15 = v20 + 1;
              *(this + 1) = v15;
              goto LABEL_51;
            }
          }
        }

        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_31;
          }

          v15 = *(this + 1);
          v11 = *(this + 2);
LABEL_51:
          if (v15 >= v11 || (v21 = *v15, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 64) = v21;
            v22 = v15 + 1;
            *(this + 1) = v22;
          }

          v10 = *(a1 + 72) | 8;
          *(a1 + 72) = v10;
          if (v22 < v11 && *v22 == 42)
          {
            *(this + 1) = v22 + 1;
            goto LABEL_59;
          }
        }

        else
        {
          if (v8 != 5 || v9 != 2)
          {
            goto LABEL_31;
          }

          v10 = *(a1 + 72);
LABEL_59:
          *(a1 + 72) = v10 | 0x10;
          v23 = *(a1 + 40);
          if (!v23)
          {
            operator new();
          }

          v53[0] = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53))
            {
              return 0;
            }
          }

          else
          {
            v53[0] = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v53[0]);
          if (!sub_1000AC4D4(v23, this, v28, v29) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
          v30 = *(this + 14);
          v31 = __OFSUB__(v30, 1);
          v32 = v30 - 1;
          if (v32 < 0 == v31)
          {
            *(this + 14) = v32;
          }

          v33 = *(this + 1);
          if (v33 < *(this + 2) && *v33 == 50)
          {
            *(this + 1) = v33 + 1;
LABEL_73:
            *(a1 + 72) |= 0x20u;
            v34 = *(a1 + 48);
            if (!v34)
            {
              operator new();
            }

            v53[0] = 0;
            v35 = *(this + 1);
            if (v35 >= *(this + 2) || *v35 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53))
              {
                return 0;
              }
            }

            else
            {
              v53[0] = *v35;
              *(this + 1) = v35 + 1;
            }

            v36 = *(this + 14);
            v37 = *(this + 15);
            *(this + 14) = v36 + 1;
            if (v36 >= v37)
            {
              return 0;
            }

            v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v53[0]);
            if (!sub_1000BC4C8(v34, this, v39, v40) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
            v41 = *(this + 14);
            v31 = __OFSUB__(v41, 1);
            v42 = v41 - 1;
            if (v42 < 0 == v31)
            {
              *(this + 14) = v42;
            }

            v43 = *(this + 1);
            if (v43 < *(this + 2) && *v43 == 58)
            {
              *(this + 1) = v43 + 1;
              goto LABEL_87;
            }
          }
        }
      }

      if (v8 == 6)
      {
        break;
      }

      if (v8 != 7 || v9 != 2)
      {
        goto LABEL_31;
      }

LABEL_87:
      *(a1 + 72) |= 0x40u;
      v44 = *(a1 + 56);
      if (!v44)
      {
        operator new();
      }

      v53[0] = 0;
      v45 = *(this + 1);
      if (v45 >= *(this + 2) || *v45 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v53))
        {
          return 0;
        }
      }

      else
      {
        v53[0] = *v45;
        *(this + 1) = v45 + 1;
      }

      v46 = *(this + 14);
      v47 = *(this + 15);
      *(this + 14) = v46 + 1;
      if (v46 >= v47)
      {
        return 0;
      }

      v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v53[0]);
      if (!sub_1000E2E68(v44, this, v49, v50) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
      v51 = *(this + 14);
      v31 = __OFSUB__(v51, 1);
      v52 = v51 - 1;
      if (v52 < 0 == v31)
      {
        *(this + 14) = v52;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (v9 == 2)
    {
      goto LABEL_73;
    }

LABEL_31:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10010C974(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 16), a3);
    v6 = *(v5 + 72);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_13:
  v7 = *(v5 + 40);
  if (!v7)
  {
    v7 = *(qword_1009F9CA0 + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v7, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v8 = *(v5 + 48);
  if (!v8)
  {
    v8 = *(qword_1009F9CA0 + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v8, a2, a4);
  if ((*(v5 + 72) & 0x40) != 0)
  {
LABEL_19:
    v9 = *(v5 + 56);
    if (!v9)
    {
      v9 = *(qword_1009F9CA0 + 56);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v9, a2, a4);
  }

LABEL_22:
  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}