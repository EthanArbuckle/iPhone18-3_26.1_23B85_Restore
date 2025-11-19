void sub_10041175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_100411774(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 92);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(a1 + 92) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636BC8 + 8);
    }

    result = sub_1004086D8(v6, v7);
    v5 = *(a2 + 92);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 16);
  *(a1 + 92) |= 2u;
  *(a1 + 16) = result;
  v5 = *(a2 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 24);
  *(a1 + 92) |= 4u;
  *(a1 + 24) = result;
  v5 = *(a2 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 32);
  *(a1 + 92) |= 8u;
  *(a1 + 32) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = *(a2 + 48);
    *(a1 + 92) |= 0x20u;
    *(a1 + 48) = result;
    v5 = *(a2 + 92);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 40);
  *(a1 + 92) |= 0x10u;
  *(a1 + 40) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = *(a2 + 56);
  *(a1 + 92) |= 0x40u;
  *(a1 + 56) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 64);
    *(a1 + 92) |= 0x80u;
    *(a1 + 64) = result;
    v5 = *(a2 + 92);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 72);
      *(a1 + 92) |= 0x100u;
      *(a1 + 72) = result;
      v5 = *(a2 + 92);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 80);
      *(a1 + 92) |= 0x200u;
      *(a1 + 80) = result;
    }
  }

  return result;
}

void sub_10041198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_1004119A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 132);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(a1 + 132) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636BD0 + 8);
    }

    result = sub_1004086D8(v6, v7);
    v5 = *(a2 + 132);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 16);
  *(a1 + 132) |= 2u;
  *(a1 + 16) = result;
  v5 = *(a2 + 132);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = *(a2 + 24);
  *(a1 + 132) |= 4u;
  *(a1 + 24) = result;
  v5 = *(a2 + 132);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = *(a2 + 32);
  *(a1 + 132) |= 8u;
  *(a1 + 32) = result;
  v5 = *(a2 + 132);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    result = *(a2 + 48);
    *(a1 + 132) |= 0x20u;
    *(a1 + 48) = result;
    v5 = *(a2 + 132);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = *(a2 + 40);
  *(a1 + 132) |= 0x10u;
  *(a1 + 40) = result;
  v5 = *(a2 + 132);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_33:
  result = *(a2 + 56);
  *(a1 + 132) |= 0x40u;
  *(a1 + 56) = result;
  v5 = *(a2 + 132);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 64);
    *(a1 + 132) |= 0x80u;
    *(a1 + 64) = result;
    v5 = *(a2 + 132);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 72);
    *(a1 + 132) |= 0x100u;
    *(a1 + 72) = result;
    v5 = *(a2 + 132);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 80);
  *(a1 + 132) |= 0x200u;
  *(a1 + 80) = result;
  v5 = *(a2 + 132);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 88);
  *(a1 + 132) |= 0x400u;
  *(a1 + 88) = result;
  v5 = *(a2 + 132);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = *(a2 + 96);
  *(a1 + 132) |= 0x800u;
  *(a1 + 96) = result;
  v5 = *(a2 + 132);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 104);
  *(a1 + 132) |= 0x1000u;
  *(a1 + 104) = result;
  v5 = *(a2 + 132);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_40:
  result = *(a2 + 112);
  *(a1 + 132) |= 0x2000u;
  *(a1 + 112) = result;
  if ((*(a2 + 132) & 0x4000) == 0)
  {
    return result;
  }

LABEL_21:
  result = *(a2 + 120);
  *(a1 + 132) |= 0x4000u;
  *(a1 + 120) = result;
  return result;
}

void sub_100411C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_100411C7C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 92);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(a1 + 92) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636BD8 + 8);
    }

    result = sub_1004086D8(v6, v7);
    v5 = *(a2 + 92);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 16);
  *(a1 + 92) |= 2u;
  *(a1 + 16) = result;
  v5 = *(a2 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 24);
  *(a1 + 92) |= 4u;
  *(a1 + 24) = result;
  v5 = *(a2 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 32);
  *(a1 + 92) |= 8u;
  *(a1 + 32) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = *(a2 + 48);
    *(a1 + 92) |= 0x20u;
    *(a1 + 48) = result;
    v5 = *(a2 + 92);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 40);
  *(a1 + 92) |= 0x10u;
  *(a1 + 40) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = *(a2 + 56);
  *(a1 + 92) |= 0x40u;
  *(a1 + 56) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 64);
    *(a1 + 92) |= 0x80u;
    *(a1 + 64) = result;
    v5 = *(a2 + 92);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 72);
      *(a1 + 92) |= 0x100u;
      *(a1 + 72) = result;
      v5 = *(a2 + 92);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 80);
      *(a1 + 92) |= 0x200u;
      *(a1 + 80) = result;
    }
  }

  return result;
}

void sub_100411E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_100411EAC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 92);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(a1 + 92) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636BE0 + 8);
    }

    result = sub_1004086D8(v6, v7);
    v5 = *(a2 + 92);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 16);
  *(a1 + 92) |= 2u;
  *(a1 + 16) = result;
  v5 = *(a2 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 24);
  *(a1 + 92) |= 4u;
  *(a1 + 24) = result;
  v5 = *(a2 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 32);
  *(a1 + 92) |= 8u;
  *(a1 + 32) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = *(a2 + 48);
    *(a1 + 92) |= 0x20u;
    *(a1 + 48) = result;
    v5 = *(a2 + 92);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 40);
  *(a1 + 92) |= 0x10u;
  *(a1 + 40) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = *(a2 + 56);
  *(a1 + 92) |= 0x40u;
  *(a1 + 56) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 64);
    *(a1 + 92) |= 0x80u;
    *(a1 + 64) = result;
    v5 = *(a2 + 92);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 72);
      *(a1 + 92) |= 0x100u;
      *(a1 + 72) = result;
      v5 = *(a2 + 92);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 80);
      *(a1 + 92) |= 0x200u;
      *(a1 + 80) = result;
    }
  }

  return result;
}

void sub_1004120C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_1004120DC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 92);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(a1 + 92) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636BE8 + 8);
    }

    result = sub_1004086D8(v6, v7);
    v5 = *(a2 + 92);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 16);
  *(a1 + 92) |= 2u;
  *(a1 + 16) = result;
  v5 = *(a2 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = *(a2 + 24);
  *(a1 + 92) |= 4u;
  *(a1 + 24) = result;
  v5 = *(a2 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = *(a2 + 32);
  *(a1 + 92) |= 8u;
  *(a1 + 32) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    result = *(a2 + 48);
    *(a1 + 92) |= 0x20u;
    *(a1 + 48) = result;
    v5 = *(a2 + 92);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = *(a2 + 40);
  *(a1 + 92) |= 0x10u;
  *(a1 + 40) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_29:
  result = *(a2 + 56);
  *(a1 + 92) |= 0x40u;
  *(a1 + 56) = result;
  v5 = *(a2 + 92);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 64);
    *(a1 + 92) |= 0x80u;
    *(a1 + 64) = result;
    v5 = *(a2 + 92);
  }

LABEL_13:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      result = *(a2 + 72);
      *(a1 + 92) |= 0x100u;
      *(a1 + 72) = result;
      v5 = *(a2 + 92);
    }

    if ((v5 & 0x200) != 0)
    {
      result = *(a2 + 80);
      *(a1 + 92) |= 0x200u;
      *(a1 + 80) = result;
    }
  }

  return result;
}

void sub_1004122F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_10041230C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      *(a1 + 60) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_102636BF0 + 8);
      }

      result = sub_1004086D8(v6, v7);
      v5 = *(a2 + 60);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 16);
    *(a1 + 60) |= 2u;
    *(a1 + 16) = result;
    v5 = *(a2 + 60);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_18:
    result = *(a2 + 24);
    *(a1 + 60) |= 4u;
    *(a1 + 24) = result;
    v5 = *(a2 + 60);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_19:
    result = *(a2 + 32);
    *(a1 + 60) |= 8u;
    *(a1 + 32) = result;
    v5 = *(a2 + 60);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_20:
    result = *(a2 + 40);
    *(a1 + 60) |= 0x10u;
    *(a1 + 40) = result;
    if ((*(a2 + 60) & 0x20) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 48);
    *(a1 + 60) |= 0x20u;
    *(a1 + 48) = result;
  }

  return result;
}

void sub_1004124A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1004124D0(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024514B8;
  if (qword_102636BB0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100412560(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1004124D0(a1);

  operator delete();
}

uint64_t sub_1004125FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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

        if (TagFallback >> 3 <= 7)
        {
          if (v7 == 6)
          {
            if (v8 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v7 == 7 && v8 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v7 == 8)
        {
          if (v8 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v7 == 9)
        {
          if (v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 72) = *v28;
          *(a1 + 92) |= 0x100u;
          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 81)
          {
            *(this + 1) = v26 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v7 != 10 || v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 80) = *v28;
          *(a1 + 92) |= 0x200u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v7 == 4)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v28;
        *(a1 + 92) |= 8u;
        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 41)
        {
          *(this + 1) = v21 + 1;
LABEL_66:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v28;
          *(a1 + 92) |= 0x10u;
          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 49)
          {
            *(this + 1) = v22 + 1;
LABEL_70:
            *v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v28;
            *(a1 + 92) |= 0x20u;
            v23 = *(this + 1);
            if (v23 < *(this + 2) && *v23 == 57)
            {
              *(this + 1) = v23 + 1;
LABEL_74:
              *v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = *v28;
              *(a1 + 92) |= 0x40u;
              v24 = *(this + 1);
              if (v24 < *(this + 2) && *v24 == 65)
              {
                *(this + 1) = v24 + 1;
LABEL_78:
                *v28 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 64) = *v28;
                *(a1 + 92) |= 0x80u;
                v25 = *(this + 1);
                if (v25 < *(this + 2) && *v25 == 73)
                {
                  *(this + 1) = v25 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 5 && v8 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v8 != 2)
    {
      goto LABEL_42;
    }

    *(a1 + 92) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v28[0] = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28[0]);
    if (!sub_100408BF0(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 17)
    {
      *(this + 1) = v18 + 1;
LABEL_54:
      *v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v28;
      *(a1 + 92) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 25)
      {
        *(this + 1) = v19 + 1;
LABEL_58:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v28;
        *(a1 + 92) |= 4u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 33)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

uint64_t sub_100412B2C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BB0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t sub_100412C8C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 92);
  if (v3)
  {
    if (v3)
    {
      v5 = *(a1 + 8);
      if (!v5)
      {
        v5 = *(qword_102636BB0 + 8);
      }

      v6 = sub_10040925C(v5, a2);
      v8 = v6;
      if (v6 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 92);
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

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 9;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = v4 + 9;
  if ((v3 & 0x100) == 0)
  {
    v10 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
    v10 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    result = v10;
  }

  else
  {
    result = v4;
  }

  *(a1 + 88) = result;
  return result;
}

double sub_100412D84(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10041103C(a1, lpsrc);
}

void sub_100412E24(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451530;
  if (qword_102636BB8 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100412EB4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100412E24(a1);

  operator delete();
}

uint64_t sub_100412F58(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(this + 1) = v5 + 1;
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
          goto LABEL_40;
        }

        *(a1 + 132) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v32[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32))
          {
            return 0;
          }
        }

        else
        {
          v32[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v10 = *(this + 14);
        v11 = *(this + 15);
        *(this + 14) = v10 + 1;
        if (v10 >= v11)
        {
          return 0;
        }

        v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32[0]);
        if (!sub_100408BF0(v8, this, v13) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
        v14 = *(this + 14);
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v16 < 0 == v15)
        {
          *(this + 14) = v16;
        }

        v17 = *(this + 1);
        if (v17 >= *(this + 2) || *v17 != 17)
        {
          continue;
        }

        *(this + 1) = v17 + 1;
        goto LABEL_52;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

LABEL_52:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v32;
        *(a1 + 132) |= 2u;
        v18 = *(this + 1);
        if (v18 >= *(this + 2) || *v18 != 25)
        {
          continue;
        }

        *(this + 1) = v18 + 1;
LABEL_56:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v32;
        *(a1 + 132) |= 4u;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 != 33)
        {
          continue;
        }

        *(this + 1) = v19 + 1;
LABEL_60:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v32;
        *(a1 + 132) |= 8u;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 != 41)
        {
          continue;
        }

        *(this + 1) = v20 + 1;
LABEL_64:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v32;
        *(a1 + 132) |= 0x10u;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 != 49)
        {
          continue;
        }

        *(this + 1) = v21 + 1;
LABEL_68:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v32;
        *(a1 + 132) |= 0x20u;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 != 57)
        {
          continue;
        }

        *(this + 1) = v22 + 1;
LABEL_72:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v32;
        *(a1 + 132) |= 0x40u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 != 65)
        {
          continue;
        }

        *(this + 1) = v23 + 1;
LABEL_76:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v32;
        *(a1 + 132) |= 0x80u;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 != 73)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_80:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v32;
        *(a1 + 132) |= 0x100u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 81)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_84:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v32;
        *(a1 + 132) |= 0x200u;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 89)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_88:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v32;
        *(a1 + 132) |= 0x400u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 97)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_92:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v32;
        *(a1 + 132) |= 0x800u;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 105)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_96:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v32;
        *(a1 + 132) |= 0x1000u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 113)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_100:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 112) = *v32;
        *(a1 + 132) |= 0x2000u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 121)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_104:
        *v32 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32))
        {
          *(a1 + 120) = *v32;
          *(a1 + 132) |= 0x4000u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_56;
        }

        goto LABEL_40;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_40;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_64;
        }

        goto LABEL_40;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_40;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_72;
        }

        goto LABEL_40;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_76;
        }

        goto LABEL_40;
      case 9u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_80;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_84;
        }

        goto LABEL_40;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_88;
        }

        goto LABEL_40;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_92;
        }

        goto LABEL_40;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_96;
        }

        goto LABEL_40;
      case 0xEu:
        if (v7 == 1)
        {
          goto LABEL_100;
        }

        goto LABEL_40;
      case 0xFu:
        if (v7 == 1)
        {
          goto LABEL_104;
        }

        goto LABEL_40;
      default:
LABEL_40:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_1004135F0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 132);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BB8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 132);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 132);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 132);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 96), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 112), a3);
    if ((*(v5 + 132) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 104), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return result;
  }

LABEL_33:
  v8 = *(v5 + 120);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v8, a3);
}

uint64_t sub_1004137DC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 132);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636BB8 + 8);
      }

      v7 = sub_10040925C(v6, a2);
      v9 = v7;
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
      }

      else
      {
        v10 = 1;
      }

      v4 = v9 + v10 + 1;
      v3 = *(a1 + 132);
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

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
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

  if ((v3 & 0xFF00) != 0)
  {
    v11 = result + 9;
    if ((v3 & 0x100) == 0)
    {
      v11 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x4000) != 0)
    {
      result = v11 + 9;
    }

    else
    {
      result = v11;
    }
  }

  *(a1 + 128) = result;
  return result;
}

double sub_100413910(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10041126C(a1, lpsrc);
}

void sub_1004139B0(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024515A8;
  if (qword_102636BC0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100413A40(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1004139B0(a1);

  operator delete();
}

uint64_t sub_100413ADC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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

        if (TagFallback >> 3 <= 7)
        {
          if (v7 == 6)
          {
            if (v8 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v7 == 7 && v8 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v7 == 8)
        {
          if (v8 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v7 == 9)
        {
          if (v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 72) = *v28;
          *(a1 + 92) |= 0x100u;
          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 81)
          {
            *(this + 1) = v26 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v7 != 10 || v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 80) = *v28;
          *(a1 + 92) |= 0x200u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v7 == 4)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v28;
        *(a1 + 92) |= 8u;
        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 41)
        {
          *(this + 1) = v21 + 1;
LABEL_66:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v28;
          *(a1 + 92) |= 0x10u;
          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 49)
          {
            *(this + 1) = v22 + 1;
LABEL_70:
            *v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v28;
            *(a1 + 92) |= 0x20u;
            v23 = *(this + 1);
            if (v23 < *(this + 2) && *v23 == 57)
            {
              *(this + 1) = v23 + 1;
LABEL_74:
              *v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = *v28;
              *(a1 + 92) |= 0x40u;
              v24 = *(this + 1);
              if (v24 < *(this + 2) && *v24 == 65)
              {
                *(this + 1) = v24 + 1;
LABEL_78:
                *v28 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 64) = *v28;
                *(a1 + 92) |= 0x80u;
                v25 = *(this + 1);
                if (v25 < *(this + 2) && *v25 == 73)
                {
                  *(this + 1) = v25 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 5 && v8 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v8 != 2)
    {
      goto LABEL_42;
    }

    *(a1 + 92) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v28[0] = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28[0]);
    if (!sub_100408BF0(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 17)
    {
      *(this + 1) = v18 + 1;
LABEL_54:
      *v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v28;
      *(a1 + 92) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 25)
      {
        *(this + 1) = v19 + 1;
LABEL_58:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v28;
        *(a1 + 92) |= 4u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 33)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

uint64_t sub_10041400C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BC0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t sub_10041416C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 92);
  if (v3)
  {
    if (v3)
    {
      v5 = *(a1 + 8);
      if (!v5)
      {
        v5 = *(qword_102636BC0 + 8);
      }

      v6 = sub_10040925C(v5, a2);
      v8 = v6;
      if (v6 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 92);
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

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 9;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = v4 + 9;
  if ((v3 & 0x100) == 0)
  {
    v10 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
    v10 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    result = v10;
  }

  else
  {
    result = v4;
  }

  *(a1 + 88) = result;
  return result;
}

double sub_100414264(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100411544(a1, lpsrc);
}

void sub_100414304(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451620;
  if (qword_102636BC8 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100414394(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100414304(a1);

  operator delete();
}

uint64_t sub_100414430(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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

        if (TagFallback >> 3 <= 7)
        {
          if (v7 == 6)
          {
            if (v8 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v7 == 7 && v8 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v7 == 8)
        {
          if (v8 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v7 == 9)
        {
          if (v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 72) = *v28;
          *(a1 + 92) |= 0x100u;
          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 81)
          {
            *(this + 1) = v26 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v7 != 10 || v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 80) = *v28;
          *(a1 + 92) |= 0x200u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v7 == 4)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v28;
        *(a1 + 92) |= 8u;
        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 41)
        {
          *(this + 1) = v21 + 1;
LABEL_66:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v28;
          *(a1 + 92) |= 0x10u;
          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 49)
          {
            *(this + 1) = v22 + 1;
LABEL_70:
            *v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v28;
            *(a1 + 92) |= 0x20u;
            v23 = *(this + 1);
            if (v23 < *(this + 2) && *v23 == 57)
            {
              *(this + 1) = v23 + 1;
LABEL_74:
              *v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = *v28;
              *(a1 + 92) |= 0x40u;
              v24 = *(this + 1);
              if (v24 < *(this + 2) && *v24 == 65)
              {
                *(this + 1) = v24 + 1;
LABEL_78:
                *v28 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 64) = *v28;
                *(a1 + 92) |= 0x80u;
                v25 = *(this + 1);
                if (v25 < *(this + 2) && *v25 == 73)
                {
                  *(this + 1) = v25 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 5 && v8 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v8 != 2)
    {
      goto LABEL_42;
    }

    *(a1 + 92) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v28[0] = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28[0]);
    if (!sub_100408BF0(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 17)
    {
      *(this + 1) = v18 + 1;
LABEL_54:
      *v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v28;
      *(a1 + 92) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 25)
      {
        *(this + 1) = v19 + 1;
LABEL_58:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v28;
        *(a1 + 92) |= 4u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 33)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

uint64_t sub_100414960(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BC8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t sub_100414AC0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 92);
  if (v3)
  {
    if (v3)
    {
      v5 = *(a1 + 8);
      if (!v5)
      {
        v5 = *(qword_102636BC8 + 8);
      }

      v6 = sub_10040925C(v5, a2);
      v8 = v6;
      if (v6 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 92);
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

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 9;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = v4 + 9;
  if ((v3 & 0x100) == 0)
  {
    v10 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
    v10 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    result = v10;
  }

  else
  {
    result = v4;
  }

  *(a1 + 88) = result;
  return result;
}

double sub_100414BB8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100411774(a1, lpsrc);
}

void sub_100414C58(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451698;
  if (qword_102636BD0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100414CE8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100414C58(a1);

  operator delete();
}

uint64_t sub_100414D8C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
      *(this + 1) = v5 + 1;
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
          goto LABEL_40;
        }

        *(a1 + 132) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v32[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v32))
          {
            return 0;
          }
        }

        else
        {
          v32[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v10 = *(this + 14);
        v11 = *(this + 15);
        *(this + 14) = v10 + 1;
        if (v10 >= v11)
        {
          return 0;
        }

        v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32[0]);
        if (!sub_100408BF0(v8, this, v13) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
        v14 = *(this + 14);
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v16 < 0 == v15)
        {
          *(this + 14) = v16;
        }

        v17 = *(this + 1);
        if (v17 >= *(this + 2) || *v17 != 17)
        {
          continue;
        }

        *(this + 1) = v17 + 1;
        goto LABEL_52;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

LABEL_52:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v32;
        *(a1 + 132) |= 2u;
        v18 = *(this + 1);
        if (v18 >= *(this + 2) || *v18 != 25)
        {
          continue;
        }

        *(this + 1) = v18 + 1;
LABEL_56:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v32;
        *(a1 + 132) |= 4u;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 != 33)
        {
          continue;
        }

        *(this + 1) = v19 + 1;
LABEL_60:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v32;
        *(a1 + 132) |= 8u;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 != 41)
        {
          continue;
        }

        *(this + 1) = v20 + 1;
LABEL_64:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v32;
        *(a1 + 132) |= 0x10u;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 != 49)
        {
          continue;
        }

        *(this + 1) = v21 + 1;
LABEL_68:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v32;
        *(a1 + 132) |= 0x20u;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 != 57)
        {
          continue;
        }

        *(this + 1) = v22 + 1;
LABEL_72:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v32;
        *(a1 + 132) |= 0x40u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 != 65)
        {
          continue;
        }

        *(this + 1) = v23 + 1;
LABEL_76:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v32;
        *(a1 + 132) |= 0x80u;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 != 73)
        {
          continue;
        }

        *(this + 1) = v24 + 1;
LABEL_80:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v32;
        *(a1 + 132) |= 0x100u;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 != 81)
        {
          continue;
        }

        *(this + 1) = v25 + 1;
LABEL_84:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v32;
        *(a1 + 132) |= 0x200u;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 != 89)
        {
          continue;
        }

        *(this + 1) = v26 + 1;
LABEL_88:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v32;
        *(a1 + 132) |= 0x400u;
        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 97)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
LABEL_92:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v32;
        *(a1 + 132) |= 0x800u;
        v28 = *(this + 1);
        if (v28 >= *(this + 2) || *v28 != 105)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_96:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v32;
        *(a1 + 132) |= 0x1000u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 113)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_100:
        *v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 112) = *v32;
        *(a1 + 132) |= 0x2000u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 121)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_104:
        *v32 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v32))
        {
          *(a1 + 120) = *v32;
          *(a1 + 132) |= 0x4000u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_56;
        }

        goto LABEL_40;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_40;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_64;
        }

        goto LABEL_40;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_40;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_72;
        }

        goto LABEL_40;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_76;
        }

        goto LABEL_40;
      case 9u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_80;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_84;
        }

        goto LABEL_40;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_88;
        }

        goto LABEL_40;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_92;
        }

        goto LABEL_40;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_96;
        }

        goto LABEL_40;
      case 0xEu:
        if (v7 == 1)
        {
          goto LABEL_100;
        }

        goto LABEL_40;
      case 0xFu:
        if (v7 == 1)
        {
          goto LABEL_104;
        }

        goto LABEL_40;
      default:
LABEL_40:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_100415424(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 132);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BD0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 132);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 132);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 132);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 96), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 112), a3);
    if ((*(v5 + 132) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 104), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return result;
  }

LABEL_33:
  v8 = *(v5 + 120);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v8, a3);
}

uint64_t sub_100415610(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 132);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636BD0 + 8);
      }

      v7 = sub_10040925C(v6, a2);
      v9 = v7;
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
      }

      else
      {
        v10 = 1;
      }

      v4 = v9 + v10 + 1;
      v3 = *(a1 + 132);
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

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
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

  if ((v3 & 0xFF00) != 0)
  {
    v11 = result + 9;
    if ((v3 & 0x100) == 0)
    {
      v11 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x4000) != 0)
    {
      result = v11 + 9;
    }

    else
    {
      result = v11;
    }
  }

  *(a1 + 128) = result;
  return result;
}

double sub_100415744(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1004119A4(a1, lpsrc);
}

void sub_1004157E4(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451710;
  if (qword_102636BD8 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100415874(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1004157E4(a1);

  operator delete();
}

uint64_t sub_100415910(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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

        if (TagFallback >> 3 <= 7)
        {
          if (v7 == 6)
          {
            if (v8 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v7 == 7 && v8 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v7 == 8)
        {
          if (v8 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v7 == 9)
        {
          if (v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 72) = *v28;
          *(a1 + 92) |= 0x100u;
          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 81)
          {
            *(this + 1) = v26 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v7 != 10 || v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 80) = *v28;
          *(a1 + 92) |= 0x200u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v7 == 4)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v28;
        *(a1 + 92) |= 8u;
        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 41)
        {
          *(this + 1) = v21 + 1;
LABEL_66:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v28;
          *(a1 + 92) |= 0x10u;
          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 49)
          {
            *(this + 1) = v22 + 1;
LABEL_70:
            *v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v28;
            *(a1 + 92) |= 0x20u;
            v23 = *(this + 1);
            if (v23 < *(this + 2) && *v23 == 57)
            {
              *(this + 1) = v23 + 1;
LABEL_74:
              *v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = *v28;
              *(a1 + 92) |= 0x40u;
              v24 = *(this + 1);
              if (v24 < *(this + 2) && *v24 == 65)
              {
                *(this + 1) = v24 + 1;
LABEL_78:
                *v28 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 64) = *v28;
                *(a1 + 92) |= 0x80u;
                v25 = *(this + 1);
                if (v25 < *(this + 2) && *v25 == 73)
                {
                  *(this + 1) = v25 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 5 && v8 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v8 != 2)
    {
      goto LABEL_42;
    }

    *(a1 + 92) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v28[0] = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28[0]);
    if (!sub_100408BF0(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 17)
    {
      *(this + 1) = v18 + 1;
LABEL_54:
      *v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v28;
      *(a1 + 92) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 25)
      {
        *(this + 1) = v19 + 1;
LABEL_58:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v28;
        *(a1 + 92) |= 4u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 33)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

uint64_t sub_100415E40(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BD8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t sub_100415FA0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 92);
  if (v3)
  {
    if (v3)
    {
      v5 = *(a1 + 8);
      if (!v5)
      {
        v5 = *(qword_102636BD8 + 8);
      }

      v6 = sub_10040925C(v5, a2);
      v8 = v6;
      if (v6 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 92);
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

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 9;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = v4 + 9;
  if ((v3 & 0x100) == 0)
  {
    v10 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
    v10 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    result = v10;
  }

  else
  {
    result = v4;
  }

  *(a1 + 88) = result;
  return result;
}

double sub_100416098(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100411C7C(a1, lpsrc);
}

void sub_100416138(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451788;
  if (qword_102636BE0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1004161C8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100416138(a1);

  operator delete();
}

uint64_t sub_100416264(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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

        if (TagFallback >> 3 <= 7)
        {
          if (v7 == 6)
          {
            if (v8 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v7 == 7 && v8 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v7 == 8)
        {
          if (v8 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v7 == 9)
        {
          if (v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 72) = *v28;
          *(a1 + 92) |= 0x100u;
          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 81)
          {
            *(this + 1) = v26 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v7 != 10 || v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 80) = *v28;
          *(a1 + 92) |= 0x200u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v7 == 4)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v28;
        *(a1 + 92) |= 8u;
        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 41)
        {
          *(this + 1) = v21 + 1;
LABEL_66:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v28;
          *(a1 + 92) |= 0x10u;
          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 49)
          {
            *(this + 1) = v22 + 1;
LABEL_70:
            *v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v28;
            *(a1 + 92) |= 0x20u;
            v23 = *(this + 1);
            if (v23 < *(this + 2) && *v23 == 57)
            {
              *(this + 1) = v23 + 1;
LABEL_74:
              *v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = *v28;
              *(a1 + 92) |= 0x40u;
              v24 = *(this + 1);
              if (v24 < *(this + 2) && *v24 == 65)
              {
                *(this + 1) = v24 + 1;
LABEL_78:
                *v28 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 64) = *v28;
                *(a1 + 92) |= 0x80u;
                v25 = *(this + 1);
                if (v25 < *(this + 2) && *v25 == 73)
                {
                  *(this + 1) = v25 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 5 && v8 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v8 != 2)
    {
      goto LABEL_42;
    }

    *(a1 + 92) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v28[0] = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28[0]);
    if (!sub_100408BF0(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 17)
    {
      *(this + 1) = v18 + 1;
LABEL_54:
      *v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v28;
      *(a1 + 92) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 25)
      {
        *(this + 1) = v19 + 1;
LABEL_58:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v28;
        *(a1 + 92) |= 4u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 33)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

uint64_t sub_100416794(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BE0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t sub_1004168F4(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 92);
  if (v3)
  {
    if (v3)
    {
      v5 = *(a1 + 8);
      if (!v5)
      {
        v5 = *(qword_102636BE0 + 8);
      }

      v6 = sub_10040925C(v5, a2);
      v8 = v6;
      if (v6 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 92);
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

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 9;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = v4 + 9;
  if ((v3 & 0x100) == 0)
  {
    v10 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
    v10 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    result = v10;
  }

  else
  {
    result = v4;
  }

  *(a1 + 88) = result;
  return result;
}

double sub_1004169EC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100411EAC(a1, lpsrc);
}

void sub_100416A8C(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451800;
  if (qword_102636BE8 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100416B1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100416A8C(a1);

  operator delete();
}

uint64_t sub_100416BB8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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

        if (TagFallback >> 3 <= 7)
        {
          if (v7 == 6)
          {
            if (v8 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v7 == 7 && v8 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v7 == 8)
        {
          if (v8 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v7 == 9)
        {
          if (v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 72) = *v28;
          *(a1 + 92) |= 0x100u;
          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 81)
          {
            *(this + 1) = v26 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v7 != 10 || v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 80) = *v28;
          *(a1 + 92) |= 0x200u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v7 == 4)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v28;
        *(a1 + 92) |= 8u;
        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 41)
        {
          *(this + 1) = v21 + 1;
LABEL_66:
          *v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v28;
          *(a1 + 92) |= 0x10u;
          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 49)
          {
            *(this + 1) = v22 + 1;
LABEL_70:
            *v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 48) = *v28;
            *(a1 + 92) |= 0x20u;
            v23 = *(this + 1);
            if (v23 < *(this + 2) && *v23 == 57)
            {
              *(this + 1) = v23 + 1;
LABEL_74:
              *v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 56) = *v28;
              *(a1 + 92) |= 0x40u;
              v24 = *(this + 1);
              if (v24 < *(this + 2) && *v24 == 65)
              {
                *(this + 1) = v24 + 1;
LABEL_78:
                *v28 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 64) = *v28;
                *(a1 + 92) |= 0x80u;
                v25 = *(this + 1);
                if (v25 < *(this + 2) && *v25 == 73)
                {
                  *(this + 1) = v25 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 5 && v8 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v8 != 2)
    {
      goto LABEL_42;
    }

    *(a1 + 92) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v28[0] = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v28))
      {
        return 0;
      }
    }

    else
    {
      v28[0] = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28[0]);
    if (!sub_100408BF0(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 17)
    {
      *(this + 1) = v18 + 1;
LABEL_54:
      *v28 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = *v28;
      *(a1 + 92) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 25)
      {
        *(this + 1) = v19 + 1;
LABEL_58:
        *v28 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v28) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v28;
        *(a1 + 92) |= 4u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 33)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

uint64_t sub_1004170E8(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BE8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t sub_100417248(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 92);
  if (v3)
  {
    if (v3)
    {
      v5 = *(a1 + 8);
      if (!v5)
      {
        v5 = *(qword_102636BE8 + 8);
      }

      v6 = sub_10040925C(v5, a2);
      v8 = v6;
      if (v6 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 92);
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

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 9;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = v4 + 9;
  if ((v3 & 0x100) == 0)
  {
    v10 = v4;
  }

  if ((v3 & 0x200) != 0)
  {
    v10 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    result = v10;
  }

  else
  {
    result = v4;
  }

  *(a1 + 88) = result;
  return result;
}

double sub_100417340(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1004120DC(a1, lpsrc);
}

void sub_1004173E0(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451878;
  if (qword_102636BF0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100417470(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1004173E0(a1);

  operator delete();
}

uint64_t sub_100417504(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v7 == 7)
        {
          if (v8 == 1)
          {
            goto LABEL_48;
          }

          goto LABEL_28;
        }

        if (v7 == 8)
        {
          if (v8 != 1)
          {
            goto LABEL_28;
          }

LABEL_52:
          *v24 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v24) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v24;
          *(a1 + 60) |= 0x10u;
          v22 = *(this + 1);
          if (v22 < *(this + 2) && *v22 == 73)
          {
            *(this + 1) = v22 + 1;
            goto LABEL_56;
          }
        }

        else
        {
          if (v7 != 9 || v8 != 1)
          {
            goto LABEL_28;
          }

LABEL_56:
          *v24 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v24) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = *v24;
          *(a1 + 60) |= 0x20u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 1)
        {
          goto LABEL_28;
        }

LABEL_40:
        *v24 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v24) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v24;
        *(a1 + 60) |= 2u;
        v19 = *(this + 1);
        if (v19 < *(this + 2) && *v19 == 49)
        {
          *(this + 1) = v19 + 1;
LABEL_44:
          *v24 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v24) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v24;
          *(a1 + 60) |= 4u;
          v20 = *(this + 1);
          if (v20 < *(this + 2) && *v20 == 57)
          {
            *(this + 1) = v20 + 1;
LABEL_48:
            *v24 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v24) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 32) = *v24;
            *(a1 + 60) |= 8u;
            v21 = *(this + 1);
            if (v21 < *(this + 2) && *v21 == 65)
            {
              *(this + 1) = v21 + 1;
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        if (v7 == 6 && v8 == 1)
        {
          goto LABEL_44;
        }

LABEL_28:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    *(a1 + 60) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v24[0] = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v24))
      {
        return 0;
      }
    }

    else
    {
      v24[0] = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24[0]);
    if (!sub_100408BF0(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 17)
    {
      *(this + 1) = v18 + 1;
      goto LABEL_40;
    }
  }
}

uint64_t sub_1004178B4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BF0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 60);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 60);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 40), a3);
    if ((*(v5 + 60) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 32), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return result;
  }

LABEL_15:
  v8 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, v8, a3);
}

uint64_t sub_1004179A4(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 60);
  if (v3)
  {
    if (*(a1 + 60))
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636BF0 + 8);
      }

      v7 = sub_10040925C(v6, a2);
      v9 = v7;
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
      }

      else
      {
        v10 = 1;
      }

      v4 = v9 + v10 + 1;
      v3 = *(a1 + 60);
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
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
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

  *(a1 + 56) = result;
  return result;
}

double sub_100417A60(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10041230C(a1, lpsrc);
}

void sub_100417B10(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1003C7948(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v6 + 1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      sub_100409474(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

void sub_100417D9C(uint64_t a1, void *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101881844();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 16);
    *buf = 68289794;
    *&buf[4] = 0;
    v39[0] = 2082;
    *&v39[1] = "";
    v40 = 2114;
    v41 = v5;
    v42 = 1026;
    *v43 = [a2 count];
    *&v43[4] = 2050;
    *&v43[6] = a1;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcLive processPlaceInferences, ClientKeyPath:%{public, location:escape_only}@, mapItems:%{public}d, this:%{public}p}", buf, 0x2Cu);
  }

  if ([a2 count])
  {
    v6 = [NSMutableArray arrayWithArray:a2];
  }

  else
  {
    v6 = 0;
  }

  [(NSMutableArray *)v6 sortUsingComparator:&stru_102451B70];
  v37 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v7)
  {
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        if ([objc_msgSend(v10 "mapItem")])
        {
          if ([v10 placeType] == 3)
          {
            [v10 confidence];
            if (v11 >= 0.85)
            {
              if (v10)
              {
                goto LABEL_31;
              }

              goto LABEL_20;
            }
          }
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v7);
  }

LABEL_20:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v30 objects:v46 count:16];
  v13 = 0.0;
  if (!v12)
  {
    goto LABEL_29;
  }

  v14 = *v31;
  while (1)
  {
    for (j = 0; j != v12; j = j + 1)
    {
      if (*v31 != v14)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v30 + 1) + 8 * j);
      if ([objc_msgSend(v10 "mapItem")])
      {
        [v10 confidence];
        if (v16 >= 0.6)
        {
          if (v10)
          {
LABEL_31:
            v17 = [+[NSKeyedUnarchiver unarchivedObjectOfClass:fromData:error:](NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:objc_msgSend(objc_msgSend(v10 error:{"mapItem"), "geoMapItemIdentifier"), 0), "mapsIdentifierString"}];
            v12 = [objc_msgSend(v10 "mapItem")];
            v18 = [objc_msgSend(v10 "mapItem")];
            v19 = [objc_msgSend(objc_msgSend(objc_msgSend(v10 "mapItem")];
            [objc_msgSend(v10 "referenceLocation")];
            v13 = v20;
            [objc_msgSend(v10 "referenceLocation")];
            v22 = v21;
            [v10 confidence];
            v24 = (v23 < 0.85) << 14;
          }

          else
          {
            v12 = 0;
LABEL_33:
            v18 = 0;
            v19 = 0;
            v24 = 0;
            v17 = 0;
            v22 = 0.0;
          }

          v29 = +[NSMutableDictionary dictionary];
          [v29 setObject:v17 forKeyedSubscript:@"kCLConnectionMessageMapItemIdKey"];
          [v29 setObject:+[NSDate now](NSDate forKeyedSubscript:{"now"), @"kCLConnectionMessageLiveVisitDateKey"}];
          [v29 setObject:v12 forKeyedSubscript:@"kCLConnectionMessageMapItemHandleKey"];
          [v29 setObject:v18 forKeyedSubscript:@"kCLConnectionMessageMapItemWellKnownNameKey"];
          [v29 setObject:v19 forKeyedSubscript:@"kCLConnectionMessageMapItemAddressKey"];
          [v29 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v13), @"kCLConnectionMessageLatitudeKey"}];
          [v29 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v22), @"kCLConnectionMessageLongitudeKey"}];
          [v29 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", v24), @"kCLConnectionMessageDiagnosticsKey"}];
          if (qword_1025D47A0 != -1)
          {
            sub_101881858();
          }

          v25 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 16);
            v27 = [objc_msgSend(v10 "description")];
            v28 = [v17 UTF8String];
            *buf = 68290051;
            *&buf[4] = 0;
            v39[0] = 2082;
            *&v39[1] = "";
            v40 = 2114;
            v41 = v26;
            v42 = 2050;
            *v43 = a1;
            *&v43[8] = 2085;
            *&v43[10] = v27;
            v44 = 2085;
            v45 = v28;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcLive sending , ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, place:%{sensitive, location:escape_only}s, geoMapItemId:%{sensitive, location:escape_only}s}", buf, 0x3Au);
          }

          sub_100419138();
        }
      }
    }

    v12 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v30 objects:v46 count:16];
    if (!v12)
    {
LABEL_29:
      v10 = 0;
      goto LABEL_33;
    }
  }
}

void sub_100418344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  if (a32)
  {
    sub_100008080(a32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004185D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(*a2 + 24))(a2) != 8)
  {
    return 0;
  }

  result = [*(v3 + 16) isEqual:sub_100008880(a2)];
  if (result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101881844();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (*(*a2 + 24))(a2);
      v7 = *(v3 + 16);
      v8[0] = 68289794;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 1026;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2050;
      v16 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcLive consumeMatchingButterfly, dicType:%{public}d, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", v8, 0x2Cu);
    }

    return 1;
  }

  return result;
}

void sub_100418758(uint64_t a1)
{
  sub_10041908C((a1 + 208), 0);
  if (sub_10102DEF4(a1))
  {
    sub_10102E054(a1);
  }

  sub_10102E4D0(a1);
  if (qword_1025D47A0 != -1)
  {
    sub_101881844();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16);
    v11 = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2114;
    v16 = v3;
    v17 = 2050;
    v18 = a1;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcLive stopping PeriodicPlaceInferenceUpdates, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", &v11, 0x26u);
  }

  [*(a1 + 200) stopPeriodicPlaceInferenceForClient:*(a1 + 192)];
  if ([*(a1 + 40) isAuthorizedForServiceTypeMask:528400])
  {
    if ([*(a1 + 40) inUseLevelIsAtLeast:5])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018818A8();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 16);
        v11 = 68289538;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2114;
        v16 = v5;
        v17 = 2050;
        v18 = a1;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcLive starting HighPower PeriodicPlaceInferenceUpdates, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", &v11, 0x26u);
      }

      [*(a1 + 200) startHighPowerPeriodicPlaceInferenceForClient:*(a1 + 192)];
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018818A8();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        v11 = 68289538;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        v15 = 2114;
        v16 = v8;
        v17 = 2050;
        v18 = a1;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcLive starting LowPower PeriodicPlaceInferenceUpdates, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", &v11, 0x26u);
      }

      [*(a1 + 200) startLowPowerPeriodicPlaceInferenceForClient:*(a1 + 192)];
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 184) = v6;
  v9 = *(a1 + 24);
  v10 = sub_100008880(a1);
  sub_100049444(v9, v10, 0);
  sub_10102E798(a1);
}

void sub_1004189F8(uint64_t a1)
{
  *a1 = off_102451AB8;
  sub_10102BA5C(a1);
  [*(a1 + 200) stopPeriodicPlaceInferenceForClient:*(a1 + 192)];

  *(a1 + 200) = 0;
  [*(a1 + 192) invalidate];

  *(a1 + 192) = 0;
  sub_10041908C((a1 + 208), 0);

  sub_10102B660(a1);
}

void sub_100418AC0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = CLConnectionMessage::name(*a2);
  if (*(v4 + 23) < 0 && *(v4 + 8) == 44 && !memcmp(*v4, "kCLConnectionMessageDestroyUponDisconnection", 0x2CuLL))
  {
    *(a1 + 48) = 1;
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018818D0();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 16);
      v7 = CLConnectionMessage::name(*a2);
      v8 = *(v7 + 23) >= 0 ? v7 : *v7;
      v13 = 68289794;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v6;
      v19 = 2050;
      v20 = a1;
      v21 = 2082;
      v22 = v8;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #pcLive received unhandled message, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, message:%{public, location:escape_only}s}", &v13, 0x30u);
      if (qword_1025D4790 != -1)
      {
        sub_101881880();
      }
    }

    v9 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      v10 = *(a1 + 16);
      v11 = CLConnectionMessage::name(*a2);
      if (*(v11 + 23) >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = *v11;
      }

      v13 = 68289794;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v10;
      v19 = 2050;
      v20 = a1;
      v21 = 2082;
      v22 = v12;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning #pcLive received unhandled message", "{msg%{public}.0s:#Warning #pcLive received unhandled message, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, message:%{public, location:escape_only}s}", &v13, 0x30u);
    }
  }
}

void sub_100418CDC(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101881844();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16);
    [*(a1 + 40) registrationResult];
    v4 = [*(a1 + 40) registrationResult];
    v5 = [*(a1 + 40) inUseLevel];
    v6[0] = 68290050;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = v3;
    v11 = 2050;
    v12 = a1;
    v13 = 2050;
    v14 = v4;
    v15 = 1026;
    v16 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcLive updateAuthContext change, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p, RegistrationResult:%{public, location:CLClientRegistrationResult}lld, InUseLevel:%{public}d}", v6, 0x36u);
  }

  sub_100418758(a1);
}

NSDictionary *sub_100418E0C(uint64_t a1)
{
  v2 = @"SDKAtLeast2024";
  v3 = [NSNumber numberWithBool:*(a1 + 80)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

uint64_t sub_100418EA0(uint64_t a1)
{
  if (*(a1 + 184))
  {
    return 0;
  }

  v3 = [*(a1 + 40) diagnosticMask];
  if (sub_10102E960(a1))
  {
    v1 = v3 & 3 | 0x10;
  }

  else
  {
    v1 = v3 & 3;
  }

  v4 = v1 | 0x1000;
  if ([*(a1 + 40) isAuthorizedForServiceTypeMask:16])
  {
    v1 |= 0x1000uLL;
  }

  if (([*(a1 + 40) isAuthorizedForServiceTypeMask:0x100000] & 1) == 0 && objc_msgSend(*(a1 + 40), "transientAwareRegistrationResult") == 4)
  {
    v1 = v4;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101881844();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = v1;
    v12 = 2050;
    v13 = a1;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcLive NonFunctional diagnosticMask, DiagnosticMask:%{public}d, this:%{public}p}", v7, 0x22u);
  }

  return v1;
}

int64x2_t sub_100419000@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a2 + 8) = result;
  *(a2 + 24) = 0;
  *(a2 + 27) = 0;
  *a2 = *(a1 + 184);
  return result;
}

int64_t sub_100419020(id a1, RTPlaceInference *a2, RTPlaceInference *a3)
{
  [(RTPlaceInference *)a2 confidence];
  v6 = v5;
  [(RTPlaceInference *)a3 confidence];
  if (v6 > v7)
  {
    return 1;
  }

  [(RTPlaceInference *)a2 confidence];
  v10 = v9;
  [(RTPlaceInference *)a3 confidence];
  if (v10 == v11)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

id *sub_10041908C(id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10041937C(result);

    operator delete();
  }

  return result;
}

void *sub_1004191AC(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_10041927C((a1 + 3), a2);
  return a1;
}

void sub_100419228(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102451BF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10041927C(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v8 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  CLConnectionMessage::CLConnectionMessage();
  if (v8 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_100419360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100419528@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v12);
  v2 = v13;
  *(&v15[0].__locale_ + *(v13 - 24)) = 8;
  *(&v13 + *(v2 - 24) + 8) = *(&v13 + *(v2 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v3 = sub_100038730(&v13, ", ", 2);
  v4 = *v3;
  *(v3 + *(*v3 - 24) + 16) = 8;
  *(v3 + *(v4 - 24) + 8) = *(v3 + *(v4 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v5 = sub_100038730(&v13, ", hacc, ", 8);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 16) = 1;
  *(v5 + *(v6 - 24) + 8) = *(v5 + *(v6 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  if ((v20 & 0x10) != 0)
  {
    v8 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v8 = v16;
    }

    locale = v15[4].__locale_;
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v7 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v15[1].__locale_;
    v8 = v15[3].__locale_;
  }

  v7 = v8 - locale;
  if ((v8 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a1[23] = v7;
  if (v7)
  {
    memmove(a1, locale, v7);
  }

LABEL_14:
  a1[v7] = 0;
  v13 = v10;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1004198C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100419914(_OWORD *a1, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 76) <= 0.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018818E4();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "location timestamp is not set!", v11, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101881D1C();
      }
    }

    else if (*(a2 + 20) <= 30.0)
    {
      v2 = *(a2 + 16);
      a1[22] = *a2;
      a1[23] = v2;
      v3 = *(a2 + 32);
      v4 = *(a2 + 48);
      v5 = *(a2 + 80);
      a1[26] = *(a2 + 64);
      a1[27] = v5;
      a1[24] = v3;
      a1[25] = v4;
      v6 = *(a2 + 96);
      v7 = *(a2 + 112);
      v8 = *(a2 + 128);
      *(a1 + 492) = *(a2 + 140);
      a1[29] = v7;
      a1[30] = v8;
      a1[28] = v6;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018818E4();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "location type is not GPS!", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101881C48();
    }
  }
}

void sub_100419A78(uint64_t a1)
{
  sub_1001097CC(a1, a1 + 352, a1 + 196);
  v3 = v2;
  if (v2 >= *(sub_100100690() + 12))
  {
    sub_1001097CC(a1, a1 + 352, a1 + 40);
    v5 = v4;
    if (qword_1025D4620 != -1)
    {
      sub_1018818E4();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      v7 = v26;
      sub_100419528(v26);
      if (v29 < 0)
      {
        v7 = *v26;
      }

      sub_100419528(v24);
      v8 = v25;
      v9 = v24[0];
      sub_100419528(__p);
      if (v8 >= 0)
      {
        v10 = v24;
      }

      else
      {
        v10 = v9;
      }

      v11 = __p[0];
      if (v23 >= 0)
      {
        v11 = __p;
      }

      v12 = (a1 + 512);
      if (*(a1 + 535) < 0)
      {
        v12 = *v12;
      }

      *buf = 136316418;
      v38 = v7;
      v39 = 2080;
      v40 = v10;
      v41 = 2050;
      v42 = v5;
      v43 = 2080;
      v44 = v11;
      v45 = 2050;
      v46 = v3;
      v47 = 2080;
      v48 = v12;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Large error detected! GPS: %s. Wifi1 before use of associated AP: %s, error %{public}.1fm. After: %s, error %{public}.1fm. LOI: %s", buf, 0x3Eu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(*v26);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_101881DF0(buf);
      sub_100419528(v24);
      if (v25 >= 0)
      {
        v13 = v24;
      }

      else
      {
        v13 = v24[0];
      }

      sub_100419528(__p);
      v14 = v23;
      v15 = __p[0];
      sub_100419528(v20);
      if (v14 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = v15;
      }

      v17 = v20[0];
      if (v21 >= 0)
      {
        v17 = v20;
      }

      v18 = (a1 + 512);
      if (*(a1 + 535) < 0)
      {
        v18 = *v18;
      }

      *v26 = 136316418;
      *&v26[4] = v13;
      v27 = 2080;
      v28 = v16;
      v29 = 2050;
      v30 = v5;
      v31 = 2080;
      v32 = v17;
      v33 = 2050;
      v34 = v3;
      v35 = 2080;
      v36 = v18;
      v19 = _os_log_send_and_compose_impl();
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiPositionCalculatorWithAssociatedApAnalytics::logFaultForLargeErrorAfterUseOfAssociatedAp()", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }
}

void sub_100419DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_100419E3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = @"fixType";
  v3 = (v2 + 568);
  if (*(v2 + 591) < 0)
  {
    v3 = *v3;
  }

  v7[0] = [NSString stringWithUTF8String:v3];
  v4 = *(a1 + 40);
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  v6[1] = [NSString stringWithUTF8String:v4];
  v7[1] = [NSNumber numberWithBool:*(v2 + 509)];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
}

NSDictionary *sub_100419F10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = @"fixType";
  v2 = (v1 + 568);
  if (*(v1 + 591) < 0)
  {
    v2 = *v2;
  }

  v4[1] = @"wifiFixYieldIncrease";
  v5[0] = [NSString stringWithUTF8String:v2];
  v5[1] = [NSNumber numberWithBool:*(v1 + 508)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

uint64_t sub_100419FC4(uint64_t a1)
{
  sub_1001097CC(a1, a1 + 352, a1 + 40);
  v3 = v2;
  sub_1001097CC(a1, a1 + 352, a1 + 196);
  v5 = v4;
  v6 = *(a1 + 428);
  v7 = *(a1 + 272);
  if (qword_1025D4620 != -1)
  {
    sub_1018818E4();
  }

  v8 = vabdd_f64(v6, v7);
  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v10 = (a1 + 512);
    if (*(a1 + 535) < 0)
    {
      v10 = *v10;
    }

    *buf = 134350083;
    v15 = v3;
    v16 = 2050;
    v17 = v5;
    v18 = 2050;
    v19 = v3 - v5;
    v20 = 2050;
    v21 = v8;
    v22 = 2081;
    v23 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WifiPositionCalculatorWithAssociatedApAnalytics, wifiFixErrorBeforeUseOfAssociatedAp, %{public}.1fm, wifiFixErrorAfterUseOfAssociatedAp, %{public}.1fm, wifiFixAccuracyGainByUseOfAssociatedAp, %{public}.1fm, deltaTimeFromGps, %{public}.1fs, LOI %{private}s", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018822C4();
    }

    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiPositionCalculatorWithAssociatedApAnalytics::sendCoreAnalyticsEventForWifiFixErrorAndHorizontalErrorRatio()", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if (byte_1026562DF >= 0)
  {
    v11 = &qword_1026562C8;
  }

  else
  {
    v11 = qword_1026562C8;
  }

  [NSString stringWithUTF8String:v11];
  return AnalyticsSendEventLazy();
}

NSDictionary *sub_10041A2C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = @"fixType";
  v3 = (v2 + 568);
  if (*(v2 + 591) < 0)
  {
    v3 = *v3;
  }

  v10[0] = [NSString stringWithUTF8String:v3];
  v9[1] = @"wifiFixErrorBeforeUseOfAssociatedAp";
  LODWORD(v4) = llround(*(a1 + 40));
  v10[1] = [NSNumber numberWithInt:v4];
  v9[2] = @"wifiFixErrorAfterUseOfAssociatedAp";
  LODWORD(v5) = llround(*(a1 + 48));
  v10[2] = [NSNumber numberWithInt:v5];
  v9[3] = @"hErrRatioBeforeUseOfAssociatedAp";
  v10[3] = [NSNumber numberWithDouble:*(a1 + 56)];
  v9[4] = @"hErrRatioAfterUseOfAssociatedAp";
  v10[4] = [NSNumber numberWithDouble:*(a1 + 64)];
  v9[5] = @"wifiFixAccuracyGainByUseOfAssociatedAp";
  LODWORD(v6) = llround(*(a1 + 72));
  v10[5] = [NSNumber numberWithInt:v6];
  v9[6] = @"wifiFixLocationOfInterestTypeString";
  v7 = (v2 + 512);
  if (*(v2 + 535) < 0)
  {
    v7 = *v7;
  }

  v10[6] = [NSString stringWithUTF8String:v7];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:7];
}

NSDictionary *sub_10041A42C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8[0] = @"fixType";
  v2 = (v1 + 568);
  if (*(v1 + 591) < 0)
  {
    v2 = *v2;
  }

  v8[1] = @"wifiFixWithAssociatedApOutcome";
  v9[0] = [NSString stringWithUTF8String:v2];
  sub_1004198FC(*(v1 + 536), __p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v9[1] = [NSString stringWithUTF8String:v3];
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

NSDictionary *sub_10041A538(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = @"fixType";
  v2 = (v1 + 568);
  if (*(v1 + 591) < 0)
  {
    v2 = *v2;
  }

  v5[1] = @"associatedApCentroidFetchOutcome";
  v6[0] = [NSString stringWithUTF8String:v2];
  v3 = (v1 + 544);
  if (*(v1 + 567) < 0)
  {
    v3 = *v3;
  }

  v6[1] = [NSString stringWithUTF8String:v3];
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
}

void sub_10041A624()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

uint64_t sub_10041A6DC()
{
  dword_1026562C0 = *sub_1001A7088();
  sub_10000EC00(&qword_1026562C8, "com.apple.wifiPositionCalculatorWithAssociatedAp.analytics");

  return __cxa_atexit(&std::string::~string, &qword_1026562C8, dword_100000000);
}

uint64_t sub_10041A74C()
{
  if (qword_102636BF8)
  {
    (*(*qword_102636BF8 + 8))(qword_102636BF8);
  }

  if (qword_102636C00)
  {
    (*(*qword_102636C00 + 8))(qword_102636C00);
  }

  if (qword_102636C08)
  {
    (*(*qword_102636C08 + 8))(qword_102636C08);
  }

  if (qword_102636C10)
  {
    (*(*qword_102636C10 + 8))(qword_102636C10);
  }

  if (qword_102636C18)
  {
    (*(*qword_102636C18 + 8))(qword_102636C18);
  }

  if (qword_102636C20)
  {
    (*(*qword_102636C20 + 8))(qword_102636C20);
  }

  if (qword_102636C28)
  {
    (*(*qword_102636C28 + 8))(qword_102636C28);
  }

  if (qword_102636C30)
  {
    (*(*qword_102636C30 + 8))(qword_102636C30);
  }

  if (qword_102636C38)
  {
    (*(*qword_102636C38 + 8))(qword_102636C38);
  }

  if (qword_102636C40)
  {
    (*(*qword_102636C40 + 8))(qword_102636C40);
  }

  if (qword_102636C48)
  {
    (*(*qword_102636C48 + 8))(qword_102636C48);
  }

  if (qword_102636C50)
  {
    (*(*qword_102636C50 + 8))(qword_102636C50);
  }

  if (qword_102636C58)
  {
    (*(*qword_102636C58 + 8))(qword_102636C58);
  }

  if (qword_102636C60)
  {
    (*(*qword_102636C60 + 8))(qword_102636C60);
  }

  if (qword_102636C68)
  {
    (*(*qword_102636C68 + 8))(qword_102636C68);
  }

  if (qword_102636C70)
  {
    (*(*qword_102636C70 + 8))(qword_102636C70);
  }

  if (qword_102636C78)
  {
    (*(*qword_102636C78 + 8))(qword_102636C78);
  }

  if (qword_102636C80)
  {
    (*(*qword_102636C80 + 8))(qword_102636C80);
  }

  if (qword_102636C88)
  {
    (*(*qword_102636C88 + 8))(qword_102636C88);
  }

  if (qword_102636C90)
  {
    (*(*qword_102636C90 + 8))(qword_102636C90);
  }

  if (qword_102636C98)
  {
    (*(*qword_102636C98 + 8))(qword_102636C98);
  }

  if (qword_102636CA0)
  {
    (*(*qword_102636CA0 + 8))(qword_102636CA0);
  }

  if (qword_102636CA8)
  {
    (*(*qword_102636CA8 + 8))(qword_102636CA8);
  }

  if (qword_102636CB0)
  {
    (*(*qword_102636CB0 + 8))(qword_102636CB0);
  }

  if (qword_102636CB8)
  {
    (*(*qword_102636CB8 + 8))(qword_102636CB8);
  }

  if (qword_102636CC0)
  {
    (*(*qword_102636CC0 + 8))(qword_102636CC0);
  }

  if (qword_102636CC8)
  {
    (*(*qword_102636CC8 + 8))(qword_102636CC8);
  }

  if (qword_102636CD0)
  {
    (*(*qword_102636CD0 + 8))(qword_102636CD0);
  }

  if (qword_102636CD8)
  {
    (*(*qword_102636CD8 + 8))(qword_102636CD8);
  }

  if (qword_102636CE0)
  {
    (*(*qword_102636CE0 + 8))(qword_102636CE0);
  }

  if (qword_102636CE8)
  {
    (*(*qword_102636CE8 + 8))(qword_102636CE8);
  }

  if (qword_102636CF0)
  {
    (*(*qword_102636CF0 + 8))(qword_102636CF0);
  }

  if (qword_102636CF8)
  {
    (*(*qword_102636CF8 + 8))(qword_102636CF8);
  }

  if (qword_102636D00)
  {
    (*(*qword_102636D00 + 8))(qword_102636D00);
  }

  if (qword_102636D08)
  {
    (*(*qword_102636D08 + 8))(qword_102636D08);
  }

  if (qword_102636D10)
  {
    (*(*qword_102636D10 + 8))(qword_102636D10);
  }

  if (qword_102636D18)
  {
    (*(*qword_102636D18 + 8))(qword_102636D18);
  }

  if (qword_102636D20)
  {
    (*(*qword_102636D20 + 8))(qword_102636D20);
  }

  if (qword_102636D28)
  {
    (*(*qword_102636D28 + 8))(qword_102636D28);
  }

  if (qword_102636D30)
  {
    (*(*qword_102636D30 + 8))(qword_102636D30);
  }

  if (qword_102636D38)
  {
    (*(*qword_102636D38 + 8))(qword_102636D38);
  }

  if (qword_102636D40)
  {
    (*(*qword_102636D40 + 8))(qword_102636D40);
  }

  if (qword_102636D48)
  {
    (*(*qword_102636D48 + 8))(qword_102636D48);
  }

  if (qword_102636D50)
  {
    (*(*qword_102636D50 + 8))(qword_102636D50);
  }

  if (qword_102636D58)
  {
    (*(*qword_102636D58 + 8))(qword_102636D58);
  }

  if (qword_102636D60)
  {
    (*(*qword_102636D60 + 8))(qword_102636D60);
  }

  if (qword_102636D68)
  {
    (*(*qword_102636D68 + 8))(qword_102636D68);
  }

  if (qword_102636D70)
  {
    (*(*qword_102636D70 + 8))(qword_102636D70);
  }

  if (qword_102636D78)
  {
    (*(*qword_102636D78 + 8))(qword_102636D78);
  }

  if (qword_102636D80)
  {
    (*(*qword_102636D80 + 8))(qword_102636D80);
  }

  if (qword_102636D88)
  {
    (*(*qword_102636D88 + 8))(qword_102636D88);
  }

  if (qword_102636D90)
  {
    (*(*qword_102636D90 + 8))(qword_102636D90);
  }

  if (qword_102636D98)
  {
    (*(*qword_102636D98 + 8))(qword_102636D98);
  }

  if (qword_102636DA0)
  {
    (*(*qword_102636DA0 + 8))(qword_102636DA0);
  }

  if (qword_102636DA8)
  {
    (*(*qword_102636DA8 + 8))(qword_102636DA8);
  }

  if (qword_102636DB0)
  {
    (*(*qword_102636DB0 + 8))(qword_102636DB0);
  }

  if (qword_102636DB8)
  {
    (*(*qword_102636DB8 + 8))(qword_102636DB8);
  }

  if (qword_102636DC0)
  {
    (*(*qword_102636DC0 + 8))(qword_102636DC0);
  }

  if (qword_102636DC8)
  {
    (*(*qword_102636DC8 + 8))(qword_102636DC8);
  }

  if (qword_102636DD0)
  {
    (*(*qword_102636DD0 + 8))(qword_102636DD0);
  }

  if (qword_102636DD8)
  {
    (*(*qword_102636DD8 + 8))(qword_102636DD8);
  }

  if (qword_102636DE0)
  {
    (*(*qword_102636DE0 + 8))(qword_102636DE0);
  }

  if (qword_102636DE8)
  {
    (*(*qword_102636DE8 + 8))(qword_102636DE8);
  }

  if (qword_102636DF0)
  {
    (*(*qword_102636DF0 + 8))(qword_102636DF0);
  }

  if (qword_102636DF8)
  {
    (*(*qword_102636DF8 + 8))(qword_102636DF8);
  }

  if (qword_102636E00)
  {
    (*(*qword_102636E00 + 8))(qword_102636E00);
  }

  if (qword_102636E08)
  {
    (*(*qword_102636E08 + 8))(qword_102636E08);
  }

  if (qword_102636E10)
  {
    (*(*qword_102636E10 + 8))(qword_102636E10);
  }

  if (qword_102636E18)
  {
    (*(*qword_102636E18 + 8))(qword_102636E18);
  }

  if (qword_102636E20)
  {
    (*(*qword_102636E20 + 8))(qword_102636E20);
  }

  if (qword_102636E28)
  {
    (*(*qword_102636E28 + 8))(qword_102636E28);
  }

  if (qword_102636E30)
  {
    (*(*qword_102636E30 + 8))(qword_102636E30);
  }

  if (qword_102636E38)
  {
    (*(*qword_102636E38 + 8))(qword_102636E38);
  }

  if (qword_102636E40)
  {
    (*(*qword_102636E40 + 8))(qword_102636E40);
  }

  if (qword_102636E48)
  {
    (*(*qword_102636E48 + 8))(qword_102636E48);
  }

  if (qword_102636E50)
  {
    (*(*qword_102636E50 + 8))(qword_102636E50);
  }

  if (qword_102636E58)
  {
    (*(*qword_102636E58 + 8))(qword_102636E58);
  }

  if (qword_102636E60)
  {
    (*(*qword_102636E60 + 8))(qword_102636E60);
  }

  if (qword_102636E68)
  {
    (*(*qword_102636E68 + 8))(qword_102636E68);
  }

  if (qword_102636E70)
  {
    (*(*qword_102636E70 + 8))(qword_102636E70);
  }

  if (qword_102636E78)
  {
    (*(*qword_102636E78 + 8))(qword_102636E78);
  }

  if (qword_102636E80)
  {
    (*(*qword_102636E80 + 8))(qword_102636E80);
  }

  if (qword_102636E88)
  {
    (*(*qword_102636E88 + 8))(qword_102636E88);
  }

  if (qword_102636E90)
  {
    (*(*qword_102636E90 + 8))(qword_102636E90);
  }

  if (qword_102636E98)
  {
    (*(*qword_102636E98 + 8))(qword_102636E98);
  }

  if (qword_102636EA0)
  {
    (*(*qword_102636EA0 + 8))(qword_102636EA0);
  }

  if (qword_102636EA8)
  {
    (*(*qword_102636EA8 + 8))(qword_102636EA8);
  }

  if (qword_102636EB0)
  {
    (*(*qword_102636EB0 + 8))(qword_102636EB0);
  }

  if (qword_102636EB8)
  {
    (*(*qword_102636EB8 + 8))(qword_102636EB8);
  }

  if (qword_102636EC0)
  {
    (*(*qword_102636EC0 + 8))(qword_102636EC0);
  }

  if (qword_102636EC8)
  {
    (*(*qword_102636EC8 + 8))(qword_102636EC8);
  }

  if (qword_102636ED0)
  {
    (*(*qword_102636ED0 + 8))(qword_102636ED0);
  }

  result = qword_102636ED8;
  if (qword_102636ED8)
  {
    v1 = *(*qword_102636ED8 + 8);

    return v1();
  }

  return result;
}

void sub_10041B8E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1026562E0 & 1) == 0)
  {
    byte_1026562E0 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/ProtobufDefs/CLPPrivateDataShared.pb.cc", a4);
    operator new();
  }
}

double sub_10041DE74(uint64_t a1)
{
  *a1 = &off_102452608;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_10041DEA0(uint64_t result)
{
  *result = off_1024527E8;
  *(result + 12) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10041DEC8(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_102452860;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_10041DEF0(uint64_t result)
{
  *result = off_102452950;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_10041DF18(uint64_t a1)
{
  *a1 = &off_1024529C8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_10041DF44(uint64_t result)
{
  *result = off_102452A40;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_10041DF6C(uint64_t result)
{
  *result = off_102452AB8;
  *(result + 8) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(result + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

double sub_10041DFA0(uint64_t a1)
{
  *a1 = off_102452B30;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  return result;
}

uint64_t sub_10041DFD0(uint64_t result)
{
  *result = off_102452BA8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_10041DFF8(uint64_t a1)
{
  *a1 = off_102452C98;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_10041E02C(uint64_t result)
{
  *result = off_102452D10;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_10041E054(uint64_t a1)
{
  *a1 = &off_102452E00;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

double sub_10041E084(uint64_t a1)
{
  *a1 = &off_102452E78;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  return result;
}

uint64_t sub_10041E0C0(uint64_t result)
{
  *result = off_102452EF0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_10041E0E8(uint64_t a1)
{
  *a1 = &off_102452F68;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  return result;
}

uint64_t sub_10041E118(uint64_t result)
{
  *result = off_102452FE0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_10041E140(uint64_t a1)
{
  *a1 = &off_102453058;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 69) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t sub_10041E180(uint64_t result)
{
  *result = off_1024530D0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_10041E1A8(uint64_t a1)
{
  *a1 = off_102453148;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

double sub_10041E1D8(uint64_t a1)
{
  *a1 = off_102453238;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 37) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_10041E214(uint64_t result)
{
  *(result + 20) = 0;
  *(result + 24) = 0;
  *result = off_1024532B0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_10041E23C(uint64_t result)
{
  *result = off_102453328;
  *(result + 8) = 0xBFF0000000000000;
  *(result + 16) = 0;
  *(result + 28) = 0;
  *(result + 20) = 0;
  *(result + 18) = 0;
  return result;
}

double sub_10041E270(uint64_t a1)
{
  *a1 = off_1024533A0;
  *(a1 + 56) = 0;
  *(a1 + 52) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 34) = 0u;
  return result;
}

double sub_10041E2A8(uint64_t a1)
{
  *a1 = &off_102453418;
  *(a1 + 8) = 0;
  result = NAN;
  *(a1 + 16) = xmmword_101C771E0;
  *(a1 + 32) = 0;
  return result;
}

double sub_10041E2D8(uint64_t a1)
{
  *a1 = off_102453490;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 8) = xmmword_101C771F0;
  return result;
}

uint64_t sub_10041E304(uint64_t result)
{
  *result = &off_102453508;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_10041E32C(uint64_t result)
{
  *(result + 40) = 0;
  *result = off_102453580;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_10041E358(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &off_1024535F8;
  return result;
}

double sub_10041E37C(uint64_t a1)
{
  *a1 = off_102453670;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void *sub_10041E3A8(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_1024536E8;
  return result;
}

double sub_10041E3CC(uint64_t a1)
{
  *a1 = off_102453760;
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 128) = 0u;
  return result;
}

double sub_10041E424(uint64_t a1)
{
  *a1 = off_1024537D8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_10041E454(uint64_t result)
{
  *result = off_102453850;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_10041E47C(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024538C8;
  *(result + 24) = 0;
  return result;
}

double sub_10041E4A4(uint64_t a1)
{
  *a1 = off_102453940;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_10041E4D4(uint64_t result)
{
  *(result + 36) = 0;
  *(result + 40) = 0;
  *result = off_102453A30;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_10041E500(uint64_t result)
{
  *(result + 40) = 0;
  *result = off_102453AA8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_10041E52C(uint64_t a1)
{
  *a1 = off_102453B20;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = -1;
  *(a1 + 44) = 0;
  *(a1 + 46) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_10041E570(uint64_t result)
{
  *result = off_102453B98;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

double sub_10041E594(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102453C10;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  return result;
}

uint64_t sub_10041E5C8(uint64_t result)
{
  *(result + 40) = 0;
  *result = off_102453C88;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_10041E5F4(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &off_102453D78;
  return result;
}

void *sub_10041E618(void *result)
{
  *result = off_102454048;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_10041E63C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024540C0;
  *(a1 + 24) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_10041E678(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_102454138;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_10041E6A8(uint64_t a1)
{
  *a1 = off_1024541B0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t sub_10041E6DC(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_102454228;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_10041E70C(uint64_t a1)
{
  *a1 = off_1024542A0;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

double sub_10041E744(uint64_t a1)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *a1 = off_102454390;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_10041E77C(uint64_t result)
{
  *result = off_102454318;
  *(result + 12) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10041E7A4(uint64_t result)
{
  *(result + 44) = 0;
  *(result + 40) = 0;
  *result = off_102454408;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_10041E7D4(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_102454480;
  return result;
}

void *sub_10041E7F8(void *result)
{
  result[4] = 0;
  result[1] = 0;
  result[2] = 0;
  *result = &off_1024544F8;
  *(result + 23) = 0;
  return result;
}

double sub_10041E824(uint64_t a1)
{
  *a1 = off_102454570;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double sub_10041E854(void *a1)
{
  *a1 = off_1024545E8;
  result = 0.0;
  a1[1] = 0;
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[4] = 0;
  return result;
}

double sub_10041E88C(uint64_t a1)
{
  *a1 = off_102454660;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

void *sub_10041E8C0(void *result)
{
  result[4] = 0;
  result[1] = 0;
  result[2] = 0;
  *result = off_1024547C8;
  *(result + 22) = 0;
  return result;
}

double sub_10041E8EC(uint64_t a1)
{
  *a1 = &off_102454840;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_10041E918(uint64_t result)
{
  v1 = result;
  v2 = qword_102636C30;
  if (!qword_102636C30)
  {
    result = sub_10041B8E4();
    v2 = qword_102636C30;
  }

  v1[8] = v2;
  v3 = qword_102636C48;
  if (!qword_102636C48)
  {
    result = sub_10041B8E4();
    v2 = qword_102636C30;
    v3 = qword_102636C48;
  }

  v1[11] = v3;
  if (!v2)
  {
    result = sub_10041B8E4();
    v2 = qword_102636C30;
  }

  v1[13] = v2;
  v4 = qword_102636C40;
  if (!qword_102636C40)
  {
    result = sub_10041B8E4();
    v2 = qword_102636C30;
    v4 = qword_102636C40;
  }

  v1[17] = v4;
  if (!v2)
  {
    result = sub_10041B8E4();
    v2 = qword_102636C30;
  }

  v1[26] = v2;
  v5 = qword_102636C60;
  if (!qword_102636C60)
  {
    result = sub_10041B8E4();
    v5 = qword_102636C60;
  }

  v1[39] = v5;
  return result;
}

uint64_t sub_10041E9C8(uint64_t result)
{
  v1 = result;
  v2 = qword_102636BF8;
  if (!qword_102636BF8)
  {
    result = sub_10041B8E4();
    v2 = qword_102636BF8;
  }

  v1[1] = v2;
  v3 = qword_102636C38;
  if (!qword_102636C38)
  {
    result = sub_10041B8E4();
    v3 = qword_102636C38;
  }

  v1[2] = v3;
  v4 = qword_102636C58;
  if (!qword_102636C58)
  {
    result = sub_10041B8E4();
    v4 = qword_102636C58;
  }

  v1[3] = v4;
  v5 = qword_102636C68;
  if (!qword_102636C68)
  {
    result = sub_10041B8E4();
    v5 = qword_102636C68;
  }

  v1[4] = v5;
  v6 = qword_102636C70;
  if (!qword_102636C70)
  {
    result = sub_10041B8E4();
    v6 = qword_102636C70;
  }

  v1[7] = v6;
  v7 = qword_102636C78;
  if (!qword_102636C78)
  {
    result = sub_10041B8E4();
    v7 = qword_102636C78;
  }

  v1[8] = v7;
  v8 = qword_102636C80;
  if (!qword_102636C80)
  {
    result = sub_10041B8E4();
    v8 = qword_102636C80;
  }

  v1[10] = v8;
  v9 = qword_102636C88;
  if (!qword_102636C88)
  {
    result = sub_10041B8E4();
    v9 = qword_102636C88;
  }

  v1[11] = v9;
  return result;
}

uint64_t sub_10041EAA8(uint64_t result)
{
  v1 = result;
  v2 = qword_102636BF8;
  if (qword_102636BF8)
  {
    *(result + 8) = qword_102636BF8;
LABEL_4:
    v1[2] = v2;
    goto LABEL_5;
  }

  result = (sub_10041B8E4)();
  v2 = qword_102636BF8;
  v1[1] = qword_102636BF8;
  if (v2)
  {
    goto LABEL_4;
  }

  result = sub_10041B8E4(result);
  v2 = qword_102636BF8;
  v1[2] = qword_102636BF8;
  if (!v2)
  {
    result = sub_10041B8E4(result);
    v2 = qword_102636BF8;
  }

LABEL_5:
  v1[3] = v2;
  v3 = qword_102636CE0;
  if (!qword_102636CE0)
  {
    result = sub_10041B8E4(result);
    v3 = qword_102636CE0;
  }

  v1[4] = v3;
  return result;
}

uint64_t sub_10041EB28(uint64_t result)
{
  v1 = result;
  v2 = qword_102636BF8;
  if (qword_102636BF8)
  {
    *(result + 8) = qword_102636BF8;
LABEL_4:
    v1[2] = v2;
    goto LABEL_5;
  }

  result = sub_10041B8E4(result);
  v2 = qword_102636BF8;
  v1[1] = qword_102636BF8;
  if (v2)
  {
    goto LABEL_4;
  }

  result = sub_10041B8E4(result);
  v2 = qword_102636BF8;
  v1[2] = qword_102636BF8;
  if (!v2)
  {
    result = sub_10041B8E4(result);
    v2 = qword_102636BF8;
  }

LABEL_5:
  v1[3] = v2;
  v3 = qword_102636DA8;
  if (!qword_102636DA8)
  {
    result = sub_10041B8E4(result);
    v3 = qword_102636DA8;
  }

  v1[13] = v3;
  v4 = qword_102636DB0;
  if (!qword_102636DB0)
  {
    result = sub_10041B8E4(result);
    v4 = qword_102636DB0;
  }

  v1[17] = v4;
  return result;
}

uint64_t sub_10041EBC0(uint64_t result)
{
  v1 = result;
  v2 = qword_102636DD8;
  if (!qword_102636DD8)
  {
    result = sub_10041B8E4(result);
    v2 = qword_102636DD8;
  }

  v1[1] = v2;
  v3 = qword_102636DD0;
  if (qword_102636DD0)
  {
    v1[2] = qword_102636DD0;
LABEL_6:
    v1[3] = v3;
    goto LABEL_7;
  }

  result = sub_10041B8E4(result);
  v3 = qword_102636DD0;
  v1[2] = qword_102636DD0;
  if (v3)
  {
    goto LABEL_6;
  }

  result = sub_10041B8E4(result);
  v3 = qword_102636DD0;
  v1[3] = qword_102636DD0;
  if (!v3)
  {
    result = sub_10041B8E4(result);
    v3 = qword_102636DD0;
  }

LABEL_7:
  v1[4] = v3;
  return result;
}

uint64_t sub_10041EC40(uint64_t result)
{
  v1 = result;
  v2 = qword_102636BF8;
  if (qword_102636BF8)
  {
    *(result + 8) = qword_102636BF8;
LABEL_4:
    v1[2] = v2;
LABEL_5:
    v1[3] = v2;
    goto LABEL_6;
  }

  result = sub_10041B8E4(result);
  v2 = qword_102636BF8;
  v1[1] = qword_102636BF8;
  if (v2)
  {
    goto LABEL_4;
  }

  result = sub_10041B8E4(result);
  v2 = qword_102636BF8;
  v1[2] = qword_102636BF8;
  if (v2)
  {
    goto LABEL_5;
  }

  result = sub_10041B8E4(result);
  v2 = qword_102636BF8;
  v1[3] = qword_102636BF8;
  if (!v2)
  {
    result = sub_10041B8E4(result);
    v2 = qword_102636BF8;
  }

LABEL_6:
  v1[4] = v2;
  v3 = qword_102636EB0;
  if (!qword_102636EB0)
  {
    result = sub_10041B8E4(result);
    v3 = qword_102636EB0;
  }

  v1[5] = v3;
  v4 = qword_102636C30;
  if (!qword_102636C30)
  {
    result = sub_10041B8E4(result);
    v4 = qword_102636C30;
  }

  v1[6] = v4;
  return result;
}

double sub_10041ED1C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
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
      result = *(a2 + 8);
      *(a1 + 36) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 36);
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

    result = *(a2 + 16);
    *(a1 + 36) |= 2u;
    *(a1 + 16) = result;
    if ((*(a2 + 36) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 24);
    *(a1 + 36) |= 4u;
    *(a1 + 24) = result;
  }

  return result;
}

void sub_10041EDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041EE28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636BF8;
  if (!qword_102636BF8)
  {
    sub_10041B8E4(0, a2, a3, a4);
    return qword_102636BF8;
  }

  return result;
}

uint64_t sub_10041EEAC(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_10041EEC4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v12;
        *(a1 + 36) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
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
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v12;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v12;
        *(a1 + 36) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
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

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

double sub_10041F07C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10041ED1C(a1, lpsrc);
}

float sub_10041F11C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (!v5)
  {
    return *&v4;
  }

  if (*(a2 + 32))
  {
    *(a1 + 32) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636C00 + 8);
    }

    v4 = sub_10041ED1C(v6, v7);
    v5 = *(a2 + 32);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      LODWORD(v4) = *(a2 + 20);
      *(a1 + 32) |= 4u;
      *(a1 + 20) = LODWORD(v4);
      if ((*(a2 + 32) & 8) != 0)
      {
        goto LABEL_8;
      }

      return *&v4;
    }
  }

  else if ((*(a2 + 32) & 2) == 0)
  {
    goto LABEL_6;
  }

  LODWORD(v4) = *(a2 + 16);
  *(a1 + 32) |= 2u;
  *(a1 + 16) = LODWORD(v4);
  v5 = *(a2 + 32);
  if ((v5 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v5 & 8) != 0)
  {
LABEL_8:
    LODWORD(v4) = *(a2 + 24);
    *(a1 + 32) |= 8u;
    *(a1 + 24) = LODWORD(v4);
  }

  return *&v4;
}

void sub_10041F26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10041F2D8(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(result + 32))
    {
      v1 = *(result + 8);
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

    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  return result;
}

uint64_t sub_10041F310(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
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
          *(this + 1) = v5 + 1;
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
            goto LABEL_22;
          }

LABEL_38:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v22) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v22;
          *(a1 + 32) |= 4u;
          v20 = *(this + 1);
          if (v20 < *(this + 2) && *v20 == 37)
          {
            *(this + 1) = v20 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v22) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v22;
          *(a1 + 32) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && v8 == 5)
      {
        goto LABEL_34;
      }

LABEL_22:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(a1 + 32) |= 1u;
    v9 = *(a1 + 8);
    if (!v9)
    {
      operator new();
    }

    v22 = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v10;
      *(this + 1) = v10 + 1;
    }

    v11 = *(this + 14);
    v12 = *(this + 15);
    *(this + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v22);
    if (!sub_10041EEC4(v9, this, v14) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
    v15 = *(this + 14);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (v17 < 0 == v16)
    {
      *(this + 14) = v17;
    }

    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 21)
    {
      *(this + 1) = v18 + 1;
LABEL_34:
      v22 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v22) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v22;
      *(a1 + 32) |= 2u;
      v19 = *(this + 1);
      if (v19 < *(this + 2) && *v19 == 29)
      {
        *(this + 1) = v19 + 1;
        goto LABEL_38;
      }
    }
  }
}