uint64_t sub_10005CC9C(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 16), a2, a4);
    v6 = *(v5 + 72);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
  if ((*(v5 + 72) & 0x800) == 0)
  {
LABEL_13:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_27:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10005CE50(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 18);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_19:
    v11 = *(this + 6);
    *v3 = 16;
    if (v11 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
      if ((*(this + 72) & 4) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v3 + 1) = v11;
      v3 = (v3 + 2);
      if ((*(this + 72) & 4) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_4:
    if ((*(this + 72) & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_27:
    v13 = *(this + 8);
    *v3 = 32;
    if (v13 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
      if ((*(this + 72) & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *(v3 + 1) = v13;
      v3 = (v3 + 2);
      if ((*(this + 72) & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_6:
    if ((*(this + 72) & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_35:
    v15 = *(this + 10);
    *v3 = 48;
    if (v15 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
      if ((*(this + 72) & 0x40) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *(v3 + 1) = v15;
      v3 = (v3 + 2);
      if ((*(this + 72) & 0x40) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_8:
    if ((*(this + 72) & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_43:
    v17 = *(this + 12);
    *v3 = 64;
    if (v17 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
      if (*(this + 73))
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
      if (*(this + 73))
      {
        goto LABEL_47;
      }
    }

LABEL_10:
    if ((*(this + 73) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_51:
    v19 = *(this + 14);
    *v3 = 80;
    if (v19 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v3 + 1, a3);
      if ((*(this + 73) & 4) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *(v3 + 1) = v19;
      v3 = (v3 + 2);
      if ((*(this + 73) & 4) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_12:
    if ((*(this + 73) & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_59:
    v21 = *(this + 16);
    *v3 = 96;
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
      v23 = *(this + 1);
      v7 = (this + 8);
      v6 = v23;
      if (!v23)
      {
        return v3;
      }
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
      v22 = *(this + 1);
      v7 = (this + 8);
      v6 = v22;
      if (!v22)
      {
        return v3;
      }
    }

    goto LABEL_14;
  }

  v10 = *(this + 2);
  *a2 = 8;
  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, a2 + 1, a3);
  if ((*(this + 18) & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((*(this + 72) & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_23:
  v12 = *(this + 7);
  *v3 = 24;
  if (v12 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    if ((*(this + 72) & 8) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *(v3 + 1) = v12;
    v3 = (v3 + 2);
    if ((*(this + 72) & 8) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_5:
  if ((*(this + 72) & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_31:
  v14 = *(this + 9);
  *v3 = 40;
  if (v14 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
    if ((*(this + 72) & 0x20) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *(v3 + 1) = v14;
    v3 = (v3 + 2);
    if ((*(this + 72) & 0x20) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_7:
  if ((*(this + 72) & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_39:
  v16 = *(this + 11);
  *v3 = 56;
  if (v16 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    if ((*(this + 72) & 0x80) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *(v3 + 1) = v16;
    v3 = (v3 + 2);
    if ((*(this + 72) & 0x80) != 0)
    {
      goto LABEL_43;
    }
  }

LABEL_9:
  if ((*(this + 73) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_47:
  v18 = *(this + 13);
  *v3 = 72;
  if (v18 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v3 + 1, a3);
    if ((*(this + 73) & 2) != 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *(v3 + 1) = v18;
    v3 = (v3 + 2);
    if ((*(this + 73) & 2) != 0)
    {
      goto LABEL_51;
    }
  }

LABEL_11:
  if ((*(this + 73) & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_55:
  v20 = *(this + 15);
  *v3 = 88;
  if (v20 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
    if ((*(this + 73) & 8) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *(v3 + 1) = v20;
    v3 = (v3 + 2);
    if ((*(this + 73) & 8) != 0)
    {
      goto LABEL_59;
    }
  }

LABEL_13:
  v8 = *(this + 1);
  v7 = (this + 8);
  v6 = v8;
  if (!v8)
  {
    return v3;
  }

LABEL_14:
  if (*v6 == v6[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, v3, a3);
}

uint64_t sub_10005D1C0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 72);
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(a1 + 24);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_12:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 28);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      v3 = *(a1 + 72);
      v4 = (v8 + 1 + v4);
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_14:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    v11 = *(a1 + 36);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      v3 = *(a1 + 72);
      v4 = (v12 + 1 + v4);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_16:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_36:
    v15 = *(a1 + 44);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      v3 = *(a1 + 72);
      v4 = (v16 + 1 + v4);
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_18:
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_48;
    }

LABEL_44:
    if ((v3 & 0x100) == 0)
    {
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_46;
      }

LABEL_54:
      v24 = *(a1 + 56);
      if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
        v3 = *(a1 + 72);
        v4 = (v25 + 1 + v4);
        if ((v3 & 0x400) != 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v4 = (v4 + 2);
        if ((v3 & 0x400) != 0)
        {
          goto LABEL_58;
        }
      }

LABEL_47:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_62;
    }

    v22 = *(a1 + 52);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
      v3 = *(a1 + 72);
      v4 = (v23 + 1 + v4);
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_54;
      }
    }

LABEL_46:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_47;
    }

LABEL_58:
    v26 = *(a1 + 60);
    if (v26 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1 + v4;
      if ((*(a1 + 72) & 0x800) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_62:
    v27 = *(a1 + 64);
    if (v27 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1 + v4;
      v19 = (a1 + 8);
      v20 = *(a1 + 8);
      if (!v20)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v4 = (v4 + 2);
      v19 = (a1 + 8);
      v20 = *(a1 + 8);
      if (!v20)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_66;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_24:
  v9 = *(a1 + 32);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v3 = *(a1 + 72);
    v4 = (v10 + 1 + v4);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_15:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_32:
  v13 = *(a1 + 40);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    v3 = *(a1 + 72);
    v4 = (v14 + 1 + v4);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_17:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_40:
  v17 = *(a1 + 48);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
    v3 = *(a1 + 72);
    v4 = (v18 + 1 + v4);
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  v4 = (v4 + 2);
  if ((v3 & 0xFF00) != 0)
  {
    goto LABEL_44;
  }

LABEL_48:
  v19 = (a1 + 8);
  v20 = *(a1 + 8);
  if (!v20)
  {
LABEL_49:
    *(a1 + 68) = v4;
    return v4;
  }

LABEL_66:
  if (*v20 == v20[1])
  {
    goto LABEL_49;
  }

  v28 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v19, a2) + v4;
  *(a1 + 68) = v28;
  return v28;
}

uint64_t sub_10005D4A8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10005C1AC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10005D588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005D59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005D5B0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10005D644()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C718;
}

void sub_10005D6D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005D6E8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
    a2 = v3;
    a1 = v2;
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 72) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 72) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 28);
  *(a1 + 72) |= 4u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 32);
  *(a1 + 72) |= 8u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v13 = *(a2 + 40);
    *(a1 + 72) |= 0x20u;
    *(a1 + 40) = v13;
    v4 = *(a2 + 72);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_24:
  v12 = *(a2 + 36);
  *(a1 + 72) |= 0x10u;
  *(a1 + 36) = v12;
  v4 = *(a2 + 72);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v14 = *(a2 + 44);
  *(a1 + 72) |= 0x40u;
  *(a1 + 44) = v14;
  v4 = *(a2 + 72);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 48);
    *(a1 + 72) |= 0x80u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 72);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 52);
    *(a1 + 72) |= 0x100u;
    *(a1 + 52) = v15;
    v4 = *(a2 + 72);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

LABEL_30:
      v17 = *(a2 + 60);
      *(a1 + 72) |= 0x400u;
      *(a1 + 60) = v17;
      if ((*(a2 + 72) & 0x800) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 56);
  *(a1 + 72) |= 0x200u;
  *(a1 + 56) = v16;
  v4 = *(a2 + 72);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v4 & 0x800) != 0)
  {
LABEL_18:
    v6 = *(a2 + 64);
    *(a1 + 72) |= 0x800u;
    *(a1 + 64) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10005D8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005D910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005D924(uint64_t a1)
{
  *a1 = off_100435058;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10005D978(uint64_t a1)
{
  *a1 = off_100435058;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10005DA7C(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 60) = 0;
    *(a1 + 52) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 16) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10005DAB8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 > 6)
      {
        break;
      }

      if (TagFallback >> 3 > 3)
      {
        if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_52;
          }

          v18 = *(this + 1);
          v9 = *(this + 2);
          if (v18 >= v9)
          {
            goto LABEL_77;
          }

LABEL_74:
          v28 = *v18;
          if (v28 < 0)
          {
            goto LABEL_77;
          }

          *(a1 + 32) = v28;
          v29 = v18 + 1;
          *(this + 1) = v29;
          *(a1 + 72) |= 8u;
          if (v29 < v9)
          {
LABEL_79:
            if (*v29 == 40)
            {
              v22 = v29 + 1;
              *(this + 1) = v22;
              if (v22 < v9)
              {
                goto LABEL_81;
              }

LABEL_84:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
              if (!result)
              {
                return result;
              }

              v31 = *(this + 1);
              v9 = *(this + 2);
              *(a1 + 72) |= 0x10u;
              if (v31 < v9)
              {
                goto LABEL_86;
              }
            }
          }
        }

        else if (v8 == 5)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_52;
          }

          v22 = *(this + 1);
          v9 = *(this + 2);
          if (v22 >= v9)
          {
            goto LABEL_84;
          }

LABEL_81:
          v30 = *v22;
          if (v30 < 0)
          {
            goto LABEL_84;
          }

          *(a1 + 36) = v30;
          v31 = v22 + 1;
          *(this + 1) = v31;
          *(a1 + 72) |= 0x10u;
          if (v31 < v9)
          {
LABEL_86:
            if (*v31 == 48)
            {
              v12 = v31 + 1;
              *(this + 1) = v12;
              if (v12 < v9)
              {
                goto LABEL_88;
              }

LABEL_91:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
              if (!result)
              {
                return result;
              }

              v33 = *(this + 1);
              v9 = *(this + 2);
              *(a1 + 72) |= 0x20u;
              if (v33 < v9)
              {
                goto LABEL_93;
              }
            }
          }
        }

        else
        {
          if (v8 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_52;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
          if (v12 >= v9)
          {
            goto LABEL_91;
          }

LABEL_88:
          v32 = *v12;
          if (v32 < 0)
          {
            goto LABEL_91;
          }

          *(a1 + 40) = v32;
          v33 = v12 + 1;
          *(this + 1) = v33;
          *(a1 + 72) |= 0x20u;
          if (v33 < v9)
          {
LABEL_93:
            if (*v33 == 56)
            {
              v17 = v33 + 1;
              *(this + 1) = v17;
LABEL_95:
              if (v17 >= v9 || (v34 = *v17, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
                if (!result)
                {
                  return result;
                }

                v35 = *(this + 1);
                v9 = *(this + 2);
                *(a1 + 72) |= 0x40u;
                if (v35 < v9)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                *(a1 + 44) = v34;
                v35 = v17 + 1;
                *(this + 1) = v35;
                *(a1 + 72) |= 0x40u;
                if (v35 < v9)
                {
LABEL_101:
                  if (*v35 == 64)
                  {
                    v21 = v35 + 1;
                    *(this + 1) = v21;
LABEL_103:
                    if (v21 >= v9 || (v36 = *v21, v36 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
                      if (!result)
                      {
                        return result;
                      }

                      v37 = *(this + 1);
                      v9 = *(this + 2);
                      *(a1 + 72) |= 0x80u;
                      if (v37 < v9)
                      {
                        goto LABEL_109;
                      }
                    }

                    else
                    {
                      *(a1 + 48) = v36;
                      v37 = v21 + 1;
                      *(this + 1) = v37;
                      *(a1 + 72) |= 0x80u;
                      if (v37 < v9)
                      {
LABEL_109:
                        if (*v37 == 72)
                        {
                          v11 = v37 + 1;
                          *(this + 1) = v11;
LABEL_111:
                          if (v11 >= v9 || (v38 = *v11, v38 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                            if (!result)
                            {
                              return result;
                            }

                            v39 = *(this + 1);
                            v9 = *(this + 2);
                            *(a1 + 72) |= 0x100u;
                            if (v39 < v9)
                            {
                              goto LABEL_117;
                            }
                          }

                          else
                          {
                            *(a1 + 52) = v38;
                            v39 = v11 + 1;
                            *(this + 1) = v39;
                            *(a1 + 72) |= 0x100u;
                            if (v39 < v9)
                            {
LABEL_117:
                              if (*v39 == 80)
                              {
                                v19 = v39 + 1;
                                *(this + 1) = v19;
LABEL_119:
                                if (v19 >= v9 || (v40 = *v19, v40 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v41 = *(this + 1);
                                  v9 = *(this + 2);
                                  *(a1 + 72) |= 0x200u;
                                  if (v41 < v9)
                                  {
                                    goto LABEL_125;
                                  }
                                }

                                else
                                {
                                  *(a1 + 56) = v40;
                                  v41 = v19 + 1;
                                  *(this + 1) = v41;
                                  *(a1 + 72) |= 0x200u;
                                  if (v41 < v9)
                                  {
LABEL_125:
                                    if (*v41 == 88)
                                    {
                                      v23 = v41 + 1;
                                      *(this + 1) = v23;
LABEL_127:
                                      if (v23 >= v9 || (v42 = *v23, v42 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v43 = *(this + 1);
                                        v9 = *(this + 2);
                                        *(a1 + 72) |= 0x400u;
                                        if (v43 < v9)
                                        {
                                          goto LABEL_133;
                                        }
                                      }

                                      else
                                      {
                                        *(a1 + 60) = v42;
                                        v43 = v23 + 1;
                                        *(this + 1) = v43;
                                        *(a1 + 72) |= 0x400u;
                                        if (v43 < v9)
                                        {
LABEL_133:
                                          if (*v43 == 96)
                                          {
                                            v13 = v43 + 1;
                                            *(this + 1) = v13;
LABEL_135:
                                            if (v13 >= v9 || (v44 = *v13, v44 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 64));
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v47 = *(this + 1);
                                              v46 = *(this + 2);
                                              *(a1 + 72) |= 0x800u;
                                              if (v47 == v46)
                                              {
                                                goto LABEL_141;
                                              }
                                            }

                                            else
                                            {
                                              *(a1 + 64) = v44;
                                              v45 = v13 + 1;
                                              *(this + 1) = v45;
                                              *(a1 + 72) |= 0x800u;
                                              if (v45 == v9)
                                              {
LABEL_141:
                                                if (*(this + 11) || *(this + 6) == *(this + 10))
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
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else if (v8 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v14 = *(this + 1);
        v9 = *(this + 2);
        if (v14 >= v9 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v16 = *(this + 1);
          v9 = *(this + 2);
          *(a1 + 72) |= 1u;
          if (v16 < v9)
          {
            goto LABEL_58;
          }
        }

        else
        {
          *(a1 + 16) = v15;
          v16 = v14 + 1;
          *(this + 1) = v16;
          *(a1 + 72) |= 1u;
          if (v16 < v9)
          {
LABEL_58:
            if (*v16 == 16)
            {
              v20 = v16 + 1;
              *(this + 1) = v20;
              if (v20 < v9)
              {
                goto LABEL_60;
              }

LABEL_63:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v25 = *(this + 1);
              v9 = *(this + 2);
              *(a1 + 72) |= 2u;
              if (v25 < v9)
              {
                goto LABEL_65;
              }
            }
          }
        }
      }

      else if (v8 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v20 = *(this + 1);
        v9 = *(this + 2);
        if (v20 >= v9)
        {
          goto LABEL_63;
        }

LABEL_60:
        v24 = *v20;
        if (v24 < 0)
        {
          goto LABEL_63;
        }

        *(a1 + 24) = v24;
        v25 = v20 + 1;
        *(this + 1) = v25;
        *(a1 + 72) |= 2u;
        if (v25 < v9)
        {
LABEL_65:
          if (*v25 == 24)
          {
            v10 = v25 + 1;
            *(this + 1) = v10;
            if (v10 < v9)
            {
              goto LABEL_67;
            }

LABEL_70:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
            if (!result)
            {
              return result;
            }

            v27 = *(this + 1);
            v9 = *(this + 2);
            *(a1 + 72) |= 4u;
            if (v27 < v9)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if (v8 != 3 || (TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9)
        {
          goto LABEL_70;
        }

LABEL_67:
        v26 = *v10;
        if (v26 < 0)
        {
          goto LABEL_70;
        }

        *(a1 + 28) = v26;
        v27 = v10 + 1;
        *(this + 1) = v27;
        *(a1 + 72) |= 4u;
        if (v27 < v9)
        {
LABEL_72:
          if (*v27 == 32)
          {
            v18 = v27 + 1;
            *(this + 1) = v18;
            if (v18 < v9)
            {
              goto LABEL_74;
            }

LABEL_77:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
            if (!result)
            {
              return result;
            }

            v29 = *(this + 1);
            v9 = *(this + 2);
            *(a1 + 72) |= 8u;
            if (v29 < v9)
            {
              goto LABEL_79;
            }
          }
        }
      }
    }

    if (TagFallback >> 3 > 9)
    {
      if (v8 == 10)
      {
        if ((TagFallback & 7) == 0)
        {
          v19 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_119;
        }
      }

      else if (v8 == 11)
      {
        if ((TagFallback & 7) == 0)
        {
          v23 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_127;
        }
      }

      else if (v8 == 12 && (TagFallback & 7) == 0)
      {
        v13 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_135;
      }
    }

    else if (v8 == 7)
    {
      if ((TagFallback & 7) == 0)
      {
        v17 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_95;
      }
    }

    else if (v8 == 8)
    {
      if ((TagFallback & 7) == 0)
      {
        v21 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_103;
      }
    }

    else if (v8 == 9 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_111;
    }

LABEL_52:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10005E1D8(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 72);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 16), a2, a4);
    v6 = *(v5 + 72);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 72);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
  if ((*(v5 + 72) & 0x800) == 0)
  {
LABEL_13:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_27:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10005E38C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 18);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_19:
    v11 = *(this + 6);
    *v3 = 16;
    if (v11 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
      if ((*(this + 72) & 4) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v3 + 1) = v11;
      v3 = (v3 + 2);
      if ((*(this + 72) & 4) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_4:
    if ((*(this + 72) & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_27:
    v13 = *(this + 8);
    *v3 = 32;
    if (v13 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v3 + 1, a3);
      if ((*(this + 72) & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *(v3 + 1) = v13;
      v3 = (v3 + 2);
      if ((*(this + 72) & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_6:
    if ((*(this + 72) & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_35:
    v15 = *(this + 10);
    *v3 = 48;
    if (v15 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3 + 1, a3);
      if ((*(this + 72) & 0x40) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *(v3 + 1) = v15;
      v3 = (v3 + 2);
      if ((*(this + 72) & 0x40) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_8:
    if ((*(this + 72) & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_43:
    v17 = *(this + 12);
    *v3 = 64;
    if (v17 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
      if (*(this + 73))
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
      if (*(this + 73))
      {
        goto LABEL_47;
      }
    }

LABEL_10:
    if ((*(this + 73) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_51:
    v19 = *(this + 14);
    *v3 = 80;
    if (v19 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v3 + 1, a3);
      if ((*(this + 73) & 4) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *(v3 + 1) = v19;
      v3 = (v3 + 2);
      if ((*(this + 73) & 4) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_12:
    if ((*(this + 73) & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_59:
    v21 = *(this + 16);
    *v3 = 96;
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
      v23 = *(this + 1);
      v7 = (this + 8);
      v6 = v23;
      if (!v23)
      {
        return v3;
      }
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
      v22 = *(this + 1);
      v7 = (this + 8);
      v6 = v22;
      if (!v22)
      {
        return v3;
      }
    }

    goto LABEL_14;
  }

  v10 = *(this + 2);
  *a2 = 8;
  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, a2 + 1, a3);
  if ((*(this + 18) & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((*(this + 72) & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_23:
  v12 = *(this + 7);
  *v3 = 24;
  if (v12 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    if ((*(this + 72) & 8) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *(v3 + 1) = v12;
    v3 = (v3 + 2);
    if ((*(this + 72) & 8) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_5:
  if ((*(this + 72) & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_31:
  v14 = *(this + 9);
  *v3 = 40;
  if (v14 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
    if ((*(this + 72) & 0x20) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *(v3 + 1) = v14;
    v3 = (v3 + 2);
    if ((*(this + 72) & 0x20) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_7:
  if ((*(this + 72) & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_39:
  v16 = *(this + 11);
  *v3 = 56;
  if (v16 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    if ((*(this + 72) & 0x80) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *(v3 + 1) = v16;
    v3 = (v3 + 2);
    if ((*(this + 72) & 0x80) != 0)
    {
      goto LABEL_43;
    }
  }

LABEL_9:
  if ((*(this + 73) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_47:
  v18 = *(this + 13);
  *v3 = 72;
  if (v18 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v3 + 1, a3);
    if ((*(this + 73) & 2) != 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *(v3 + 1) = v18;
    v3 = (v3 + 2);
    if ((*(this + 73) & 2) != 0)
    {
      goto LABEL_51;
    }
  }

LABEL_11:
  if ((*(this + 73) & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_55:
  v20 = *(this + 15);
  *v3 = 88;
  if (v20 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
    if ((*(this + 73) & 8) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *(v3 + 1) = v20;
    v3 = (v3 + 2);
    if ((*(this + 73) & 8) != 0)
    {
      goto LABEL_59;
    }
  }

LABEL_13:
  v8 = *(this + 1);
  v7 = (this + 8);
  v6 = v8;
  if (!v8)
  {
    return v3;
  }

LABEL_14:
  if (*v6 == v6[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, v3, a3);
}

uint64_t sub_10005E6FC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 72);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 72);
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(a1 + 24);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
    v3 = *(a1 + 72);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_12:
  if ((v3 & 4) != 0)
  {
    v7 = *(a1 + 28);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      v3 = *(a1 + 72);
      v4 = (v8 + 1 + v4);
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_14:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    v11 = *(a1 + 36);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      v3 = *(a1 + 72);
      v4 = (v12 + 1 + v4);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_16:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_36:
    v15 = *(a1 + 44);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      v3 = *(a1 + 72);
      v4 = (v16 + 1 + v4);
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_18:
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_48;
    }

LABEL_44:
    if ((v3 & 0x100) == 0)
    {
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_46;
      }

LABEL_54:
      v24 = *(a1 + 56);
      if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
        v3 = *(a1 + 72);
        v4 = (v25 + 1 + v4);
        if ((v3 & 0x400) != 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v4 = (v4 + 2);
        if ((v3 & 0x400) != 0)
        {
          goto LABEL_58;
        }
      }

LABEL_47:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_62;
    }

    v22 = *(a1 + 52);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
      v3 = *(a1 + 72);
      v4 = (v23 + 1 + v4);
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_54;
      }
    }

LABEL_46:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_47;
    }

LABEL_58:
    v26 = *(a1 + 60);
    if (v26 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1 + v4;
      if ((*(a1 + 72) & 0x800) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_62:
    v27 = *(a1 + 64);
    if (v27 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1 + v4;
      v19 = (a1 + 8);
      v20 = *(a1 + 8);
      if (!v20)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v4 = (v4 + 2);
      v19 = (a1 + 8);
      v20 = *(a1 + 8);
      if (!v20)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_66;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_24:
  v9 = *(a1 + 32);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v3 = *(a1 + 72);
    v4 = (v10 + 1 + v4);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_15:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_32:
  v13 = *(a1 + 40);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    v3 = *(a1 + 72);
    v4 = (v14 + 1 + v4);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_17:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_40:
  v17 = *(a1 + 48);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
    v3 = *(a1 + 72);
    v4 = (v18 + 1 + v4);
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  v4 = (v4 + 2);
  if ((v3 & 0xFF00) != 0)
  {
    goto LABEL_44;
  }

LABEL_48:
  v19 = (a1 + 8);
  v20 = *(a1 + 8);
  if (!v20)
  {
LABEL_49:
    *(a1 + 68) = v4;
    return v4;
  }

LABEL_66:
  if (*v20 == v20[1])
  {
    goto LABEL_49;
  }

  v28 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v19, a2) + v4;
  *(a1 + 68) = v28;
  return v28;
}

uint64_t sub_10005E9E4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10005D6E8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10005EAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005EAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005EAEC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_10005EB80()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C728;
}

void sub_10005EC10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005EC24(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
    v4 = *(a2 + 96);
    if (!v4)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v4 = *(a2 + 96);
    if (!v4)
    {
      goto LABEL_40;
    }
  }

  if (v4)
  {
    v5 = *(a2 + 88);
    *(a1 + 96) |= 1u;
    *(a1 + 88) = v5;
    v4 = *(a2 + 96);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 96) |= 2u;
    v6 = *(a1 + 16);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 16);
    if (!v7)
    {
      v7 = *(qword_10045DB70 + 16);
    }

    sub_1000582D0(v6, v7);
    v4 = *(a2 + 96);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 96) |= 4u;
    v8 = *(a1 + 24);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 24);
    if (!v9)
    {
      v9 = *(qword_10045DB70 + 24);
    }

    sub_1000582D0(v8, v9);
    v4 = *(a2 + 96);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 96) |= 8u;
    v10 = *(a1 + 32);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 32);
    if (!v11)
    {
      v11 = *(qword_10045DB70 + 32);
    }

    sub_10005C1AC(v10, v11);
    v4 = *(a2 + 96);
  }

  if ((v4 & 0x10) != 0)
  {
    v12 = *(a2 + 40);
    *(a1 + 96) |= 0x10u;
    v13 = *(a1 + 40);
    if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v13, v12);
    v4 = *(a2 + 96);
  }

  if ((v4 & 0x20) != 0)
  {
    *(a1 + 96) |= 0x20u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 48);
    if (!v15)
    {
      v15 = *(qword_10045DB70 + 48);
    }

    sub_10005D6E8(v14, v15);
    v4 = *(a2 + 96);
  }

  if ((v4 & 0x40) != 0)
  {
    v16 = *(a2 + 56);
    *(a1 + 96) |= 0x40u;
    v17 = *(a1 + 56);
    if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v17, v16);
    v4 = *(a2 + 96);
  }

  if ((v4 & 0x80) != 0)
  {
    *(a1 + 96) |= 0x80u;
    v18 = *(a1 + 64);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 64);
    if (!v19)
    {
      v19 = *(qword_10045DB70 + 64);
    }

    sub_10005A130(v18, v19);
    v4 = *(a2 + 96);
  }

LABEL_40:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 96) |= 0x100u;
      v20 = *(a1 + 72);
      if (!v20)
      {
        operator new();
      }

      v21 = *(a2 + 72);
      if (!v21)
      {
        v21 = *(qword_10045DB70 + 72);
      }

      sub_10005A130(v20, v21);
      v4 = *(a2 + 96);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 96) |= 0x200u;
      v22 = *(a1 + 80);
      if (!v22)
      {
        operator new();
      }

      v23 = *(a2 + 80);
      if (!v23)
      {
        v23 = *(qword_10045DB70 + 80);
      }

      sub_10005B9C0(v22, v23);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10005F1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10005F1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005F210(uint64_t a1, uint64_t a2)
{
  *a1 = off_100435108;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 88) = 0xFFFFFFFFLL;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 48) = 0;
  *(a1 + 56) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  sub_10005EC24(a1, a2);
  return a1;
}

void sub_10005F29C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void *sub_10005F2CC(void *result)
{
  v1 = result;
  v2 = result[5];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v4 = result[7];
  if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  if (qword_10045DB70 != result)
  {
    v6 = result[2];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[3];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[4];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[6];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[8];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[9];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    result = v1[10];
    if (result)
    {
      v12 = *(*result + 8);

      return v12();
    }
  }

  return result;
}

void sub_10005F4E8(void *a1)
{
  *a1 = off_100435108;
  v2 = (a1 + 1);
  sub_10005F2CC(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10005F548(void *a1)
{
  *a1 = off_100435108;
  v2 = (a1 + 1);
  sub_10005F2CC(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10005F5C4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045DB70;
  if (!qword_10045DB70)
  {
    sub_100056A38(0, a2, a3, a4);
    return qword_10045DB70;
  }

  return result;
}

uint64_t sub_10005F6AC(uint64_t this)
{
  v1 = this;
  v2 = *(this + 96);
  if (!v2)
  {
    goto LABEL_47;
  }

  *(this + 88) = -1;
  if ((v2 & 2) != 0)
  {
    this = *(this + 16);
    if (this)
    {
      if (*(this + 44))
      {
        *(this + 16) = 0;
        *(this + 24) = 0;
        *(this + 32) = 0;
      }

      v3 = *(this + 8);
      this += 8;
      *(this + 36) = 0;
      if (v3)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if ((*(v1 + 96) & 4) != 0)
  {
    this = *(v1 + 24);
    if (this)
    {
      if (*(this + 44))
      {
        *(this + 16) = 0;
        *(this + 24) = 0;
        *(this + 32) = 0;
      }

      v4 = *(this + 8);
      this += 8;
      *(this + 36) = 0;
      if (v4)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if ((*(v1 + 96) & 8) != 0)
  {
    this = *(v1 + 32);
    if (this)
    {
      v5 = *(this + 72);
      if (v5)
      {
        *(this + 48) = 0;
        *(this + 16) = 0u;
        *(this + 32) = 0u;
      }

      if ((v5 & 0xFF00) != 0)
      {
        *(this + 60) = 0;
        *(this + 52) = 0;
      }

      v6 = *(this + 8);
      this += 8;
      *(this + 64) = 0;
      if (v6)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if ((*(v1 + 96) & 0x10) == 0 || (v7 = *(v1 + 40), v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_26:
    if ((*(v1 + 96) & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    goto LABEL_26;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((*(v1 + 96) & 0x20) == 0)
  {
    goto LABEL_35;
  }

LABEL_27:
  this = *(v1 + 48);
  if (this)
  {
    v8 = *(this + 72);
    if (v8)
    {
      *(this + 48) = 0;
      *(this + 16) = 0u;
      *(this + 32) = 0u;
    }

    if ((v8 & 0xFF00) != 0)
    {
      *(this + 60) = 0;
      *(this + 52) = 0;
    }

    v9 = *(this + 8);
    this += 8;
    *(this + 64) = 0;
    if (v9)
    {
      this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
    }
  }

LABEL_35:
  if ((*(v1 + 96) & 0x40) != 0)
  {
    v10 = *(v1 + 56);
    if (v10 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((*(v1 + 96) & 0x80) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_40;
      }

      *v10 = 0;
      *(v10 + 23) = 0;
    }
  }

  if ((*(v1 + 96) & 0x80) == 0)
  {
    goto LABEL_47;
  }

LABEL_40:
  v11 = *(v1 + 64);
  if (v11)
  {
    if (*(v11 + 24) >= 1)
    {
      v12 = 0;
      do
      {
        v13 = *(*(v11 + 16) + 8 * v12);
        this = (*(*v13 + 32))(v13);
        ++v12;
      }

      while (v12 < *(v11 + 24));
    }

    v15 = *(v11 + 8);
    v14 = (v11 + 8);
    *(v14 + 4) = 0;
    *(v14 + 9) = 0;
    if (v15)
    {
      this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v14);
    }
  }

LABEL_47:
  v16 = *(v1 + 96);
  if ((v16 & 0xFF00) != 0)
  {
    if ((v16 & 0x100) != 0)
    {
      v17 = *(v1 + 72);
      if (v17)
      {
        if (*(v17 + 24) >= 1)
        {
          v18 = 0;
          do
          {
            v19 = *(*(v17 + 16) + 8 * v18);
            this = (*(*v19 + 32))(v19);
            ++v18;
          }

          while (v18 < *(v17 + 24));
        }

        v21 = *(v17 + 8);
        v20 = (v17 + 8);
        *(v20 + 4) = 0;
        *(v20 + 9) = 0;
        if (v21)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v20);
        }
      }
    }

    if ((*(v1 + 97) & 2) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        if (*(this + 36))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
        }

        v22 = *(this + 8);
        this += 8;
        *(this + 28) = 0;
        if (v22)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v24 = *(v1 + 8);
  v23 = (v1 + 8);
  *(v23 + 22) = 0;
  if (v24)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v23);
  }

  return this;
}

uint64_t sub_10005F9A4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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
            if (TagFallback >> 3 > 5)
            {
              break;
            }

            if (TagFallback >> 3 <= 2)
            {
              if (v8 == 1)
              {
                if ((TagFallback & 7) != 0)
                {
                  goto LABEL_62;
                }

                v86 = 0;
                v15 = *(this + 1);
                if (v15 >= *(this + 2) || (v16 = *v15, v16 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86);
                  if (!result)
                  {
                    return result;
                  }

                  v16 = v86;
                  if (v86 + 1 <= 5)
                  {
                    goto LABEL_39;
                  }

LABEL_159:
                  wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v16);
                  v17 = *(this + 1);
                  if (v17 < *(this + 2))
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  *(this + 1) = v15 + 1;
                  if ((v16 + 1) > 5)
                  {
                    goto LABEL_159;
                  }

LABEL_39:
                  *(a1 + 96) |= 1u;
                  *(a1 + 88) = v16;
                  v17 = *(this + 1);
                  if (v17 < *(this + 2))
                  {
LABEL_40:
                    if (*v17 == 18)
                    {
                      *(this + 1) = v17 + 1;
                      *(a1 + 96) |= 2u;
                      v13 = *(a1 + 16);
                      if (!v13)
                      {
LABEL_42:
                        operator new();
                      }

                      goto LABEL_27;
                    }
                  }
                }
              }

              else
              {
                if (v8 != 2 || v9 != 2)
                {
                  goto LABEL_62;
                }

                *(a1 + 96) |= 2u;
                v13 = *(a1 + 16);
                if (!v13)
                {
                  goto LABEL_42;
                }

LABEL_27:
                v86 = 0;
                v14 = *(this + 1);
                if (v14 >= *(this + 2) || *v14 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
                  {
                    return 0;
                  }
                }

                else
                {
                  v86 = *v14;
                  *(this + 1) = v14 + 1;
                }

                v26 = *(this + 14);
                v27 = *(this + 15);
                *(this + 14) = v26 + 1;
                if (v26 >= v27)
                {
                  return 0;
                }

                v28 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
                if (!sub_100058554(v13, this, v29, v30) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v28);
                v31 = *(this + 14);
                v32 = __OFSUB__(v31, 1);
                v33 = v31 - 1;
                if (v33 < 0 == v32)
                {
                  *(this + 14) = v33;
                }

                v34 = *(this + 1);
                if (v34 < *(this + 2) && *v34 == 26)
                {
                  *(this + 1) = v34 + 1;
                  *(a1 + 96) |= 4u;
                  v20 = *(a1 + 24);
                  if (!v20)
                  {
LABEL_74:
                    operator new();
                  }

LABEL_51:
                  v86 = 0;
                  v21 = *(this + 1);
                  if (v21 >= *(this + 2) || *v21 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v86 = *v21;
                    *(this + 1) = v21 + 1;
                  }

                  v35 = *(this + 14);
                  v36 = *(this + 15);
                  *(this + 14) = v35 + 1;
                  if (v35 >= v36)
                  {
                    return 0;
                  }

                  v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
                  if (!sub_100058554(v20, this, v38, v39) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
                  v40 = *(this + 14);
                  v32 = __OFSUB__(v40, 1);
                  v41 = v40 - 1;
                  if (v41 < 0 == v32)
                  {
                    *(this + 14) = v41;
                  }

                  v42 = *(this + 1);
                  if (v42 < *(this + 2) && *v42 == 34)
                  {
                    *(this + 1) = v42 + 1;
                    *(a1 + 96) |= 8u;
                    v24 = *(a1 + 32);
                    if (!v24)
                    {
LABEL_86:
                      operator new();
                    }

                    goto LABEL_59;
                  }
                }
              }
            }

            else
            {
              if (v8 == 3)
              {
                if (v9 != 2)
                {
                  goto LABEL_62;
                }

                *(a1 + 96) |= 4u;
                v20 = *(a1 + 24);
                if (!v20)
                {
                  goto LABEL_74;
                }

                goto LABEL_51;
              }

              if (v8 == 4)
              {
                if (v9 != 2)
                {
                  goto LABEL_62;
                }

                *(a1 + 96) |= 8u;
                v24 = *(a1 + 32);
                if (!v24)
                {
                  goto LABEL_86;
                }

LABEL_59:
                v86 = 0;
                v25 = *(this + 1);
                if (v25 >= *(this + 2) || *v25 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
                  {
                    return 0;
                  }
                }

                else
                {
                  v86 = *v25;
                  *(this + 1) = v25 + 1;
                }

                v43 = *(this + 14);
                v44 = *(this + 15);
                *(this + 14) = v43 + 1;
                if (v43 >= v44)
                {
                  return 0;
                }

                v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
                if (!sub_10005C57C(v24, this, v46, v47) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
                v48 = *(this + 14);
                v32 = __OFSUB__(v48, 1);
                v49 = v48 - 1;
                if (v49 < 0 == v32)
                {
                  *(this + 14) = v49;
                }

                v50 = *(this + 1);
                if (v50 < *(this + 2) && *v50 == 42)
                {
                  *(this + 1) = v50 + 1;
                  *(a1 + 96) |= 0x10u;
                  if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                  {
LABEL_98:
                    operator new();
                  }

                  goto LABEL_13;
                }
              }

              else
              {
                if (v8 != 5 || v9 != 2)
                {
                  goto LABEL_62;
                }

                *(a1 + 96) |= 0x10u;
                if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
                  goto LABEL_98;
                }

LABEL_13:
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                if (!result)
                {
                  return result;
                }

                v51 = *(this + 1);
                if (v51 < *(this + 2) && *v51 == 50)
                {
                  *(this + 1) = v51 + 1;
                  *(a1 + 96) |= 0x20u;
                  v18 = *(a1 + 48);
                  if (!v18)
                  {
LABEL_102:
                    operator new();
                  }

                  goto LABEL_47;
                }
              }
            }
          }

          if (TagFallback >> 3 > 7)
          {
            break;
          }

          if (v8 == 6)
          {
            if (v9 != 2)
            {
              goto LABEL_62;
            }

            *(a1 + 96) |= 0x20u;
            v18 = *(a1 + 48);
            if (!v18)
            {
              goto LABEL_102;
            }

LABEL_47:
            v86 = 0;
            v19 = *(this + 1);
            if (v19 >= *(this + 2) || *v19 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
              {
                return 0;
              }
            }

            else
            {
              v86 = *v19;
              *(this + 1) = v19 + 1;
            }

            v52 = *(this + 14);
            v53 = *(this + 15);
            *(this + 14) = v52 + 1;
            if (v52 >= v53)
            {
              return 0;
            }

            v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
            if (!sub_10005DAB8(v18, this, v55, v56) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
            v57 = *(this + 14);
            v32 = __OFSUB__(v57, 1);
            v58 = v57 - 1;
            if (v58 < 0 == v32)
            {
              *(this + 14) = v58;
            }

            v59 = *(this + 1);
            if (v59 < *(this + 2) && *v59 == 58)
            {
              *(this + 1) = v59 + 1;
              *(a1 + 96) |= 0x40u;
              if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
              {
LABEL_114:
                operator new();
              }

              goto LABEL_33;
            }
          }

          else
          {
            if (v8 != 7 || v9 != 2)
            {
              goto LABEL_62;
            }

            *(a1 + 96) |= 0x40u;
            if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              goto LABEL_114;
            }

LABEL_33:
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v60 = *(this + 1);
            if (v60 < *(this + 2) && *v60 == 66)
            {
              *(this + 1) = v60 + 1;
              *(a1 + 96) |= 0x80u;
              v22 = *(a1 + 64);
              if (!v22)
              {
LABEL_118:
                operator new();
              }

              goto LABEL_55;
            }
          }
        }

        if (v8 != 8)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_62;
        }

        *(a1 + 96) |= 0x80u;
        v22 = *(a1 + 64);
        if (!v22)
        {
          goto LABEL_118;
        }

LABEL_55:
        v86 = 0;
        v23 = *(this + 1);
        if (v23 >= *(this + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
          {
            return 0;
          }
        }

        else
        {
          v86 = *v23;
          *(this + 1) = v23 + 1;
        }

        v61 = *(this + 14);
        v62 = *(this + 15);
        *(this + 14) = v61 + 1;
        if (v61 >= v62)
        {
          return 0;
        }

        v63 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
        if (!sub_10005A5EC(v22, this, v64, v65) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v63);
        v66 = *(this + 14);
        v32 = __OFSUB__(v66, 1);
        v67 = v66 - 1;
        if (v67 < 0 == v32)
        {
          *(this + 14) = v67;
        }

        v68 = *(this + 1);
        if (v68 < *(this + 2) && *v68 == 74)
        {
          *(this + 1) = v68 + 1;
          goto LABEL_130;
        }
      }

      if (v8 == 9)
      {
        break;
      }

      if (v8 == 10 && v9 == 2)
      {
        *(a1 + 96) |= 0x200u;
        v11 = *(a1 + 80);
        if (!v11)
        {
          goto LABEL_144;
        }

        goto LABEL_21;
      }

LABEL_62:
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
      goto LABEL_62;
    }

LABEL_130:
    *(a1 + 96) |= 0x100u;
    v69 = *(a1 + 72);
    if (!v69)
    {
      operator new();
    }

    v86 = 0;
    v70 = *(this + 1);
    if (v70 >= *(this + 2) || *v70 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
      {
        return 0;
      }
    }

    else
    {
      v86 = *v70;
      *(this + 1) = v70 + 1;
    }

    v71 = *(this + 14);
    v72 = *(this + 15);
    *(this + 14) = v71 + 1;
    if (v71 >= v72)
    {
      return 0;
    }

    v73 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
    if (!sub_10005A5EC(v69, this, v74, v75) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v73);
    v76 = *(this + 14);
    v32 = __OFSUB__(v76, 1);
    v77 = v76 - 1;
    if (v77 < 0 == v32)
    {
      *(this + 14) = v77;
    }

    v78 = *(this + 1);
    if (v78 < *(this + 2) && *v78 == 82)
    {
      *(this + 1) = v78 + 1;
      *(a1 + 96) |= 0x200u;
      v11 = *(a1 + 80);
      if (!v11)
      {
LABEL_144:
        operator new();
      }

LABEL_21:
      v86 = 0;
      v12 = *(this + 1);
      if (v12 >= *(this + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v86))
        {
          return 0;
        }
      }

      else
      {
        v86 = *v12;
        *(this + 1) = v12 + 1;
      }

      v79 = *(this + 14);
      v80 = *(this + 15);
      *(this + 14) = v79 + 1;
      if (v79 >= v80)
      {
        return 0;
      }

      v81 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v86);
      if (!sub_10005BC18(v11, this, v82, v83) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v81);
      v84 = *(this + 14);
      v32 = __OFSUB__(v84, 1);
      v85 = v84 - 1;
      if (v85 < 0 == v32)
      {
        *(this + 14) = v85;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        break;
      }
    }
  }

  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_1000605DC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 96);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v10 = *(v5 + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v10, a2, a4);
      v6 = *(v5 + 96);
      if ((v6 & 4) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DB70 + 16), a2, a4);
      v6 = *(v5 + 96);
      if ((v6 & 4) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_22:
    v12 = *(v5 + 32);
    if (v12)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v12, a2, a4);
      v6 = *(v5 + 96);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045DB70 + 32), a2, a4);
      v6 = *(v5 + 96);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v14 = *(v5 + 48);
    if (v14)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v14, a2, a4);
      v6 = *(v5 + 96);
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(qword_10045DB70 + 48), a2, a4);
      v6 = *(v5 + 96);
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 88), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  v11 = *(v5 + 24);
  if (v11)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v11, a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 8) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DB70 + 24), a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 8) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_26:
  v13 = *(v5 + 40);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 96);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_31:
  v15 = *(v5 + 56);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_36:
    v17 = *(v5 + 72);
    if (v17)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v17, a2, a4);
      if ((*(v5 + 96) & 0x200) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, *(qword_10045DB70 + 72), a2, a4);
      if ((*(v5 + 96) & 0x200) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_11:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_44;
  }

LABEL_32:
  v16 = *(v5 + 64);
  if (v16)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v16, a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(qword_10045DB70 + 64), a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_11;
  }

LABEL_40:
  v18 = *(v5 + 80);
  if (v18)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v18, a2, a4);
    v19 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v19;
    if (!v19)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, *(qword_10045DB70 + 80), a2, a4);
    v20 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v20;
    if (!v20)
    {
      return result;
    }
  }

LABEL_44:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100060870(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((*(this + 96) & 1) == 0)
  {
    result = a2;
    v6 = *(this + 24);
    if ((v6 & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v10 = *(this + 2);
    if (v10)
    {
      *result = 18;
      v11 = result + 1;
      v12 = *(v10 + 40);
      if (v12 <= 0x7F)
      {
LABEL_13:
        *(result + 1) = v12;
        v13 = result + 2;
LABEL_16:
        result = sub_1000587E0(v10, v13, a3);
        v6 = *(this + 24);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = *(qword_10045DB70 + 16);
      *result = 18;
      v11 = result + 1;
      v12 = *(v10 + 40);
      if (v12 <= 0x7F)
      {
        goto LABEL_13;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
    goto LABEL_16;
  }

  v7 = *(this + 22);
  *a2 = 8;
  v9 = a2 + 1;
  if ((v7 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v7, v9, a3);
    v6 = *(this + 24);
    if ((v6 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v9, a3);
      v6 = *(this + 24);
      if ((v6 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    *(a2 + 1) = v7;
    result = (a2 + 2);
    v6 = *(this + 24);
    if ((v6 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_17:
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_19;
    }

LABEL_32:
    v19 = *(this + 4);
    if (v19)
    {
      *result = 34;
      v20 = result + 1;
      v21 = v19[17];
      if (v21 <= 0x7F)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = *(qword_10045DB70 + 32);
      *result = 34;
      v20 = result + 1;
      v21 = v19[17];
      if (v21 <= 0x7F)
      {
LABEL_34:
        *(result + 1) = v21;
        result = sub_10005CE50(v19, (result + 2), a3);
        v6 = *(this + 24);
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_38;
        }

LABEL_20:
        if ((v6 & 0x20) == 0)
        {
          goto LABEL_21;
        }

LABEL_50:
        v30 = *(this + 6);
        if (v30)
        {
          *result = 50;
          v31 = result + 1;
          v32 = v30[17];
          if (v32 <= 0x7F)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v30 = *(qword_10045DB70 + 48);
          *result = 50;
          v31 = result + 1;
          v32 = v30[17];
          if (v32 <= 0x7F)
          {
LABEL_52:
            *(result + 1) = v32;
            result = sub_10005E38C(v30, (result + 2), a3);
            v6 = *(this + 24);
            if ((v6 & 0x40) != 0)
            {
              goto LABEL_56;
            }

LABEL_22:
            if ((v6 & 0x80) == 0)
            {
              goto LABEL_23;
            }

LABEL_68:
            v41 = *(this + 8);
            if (v41)
            {
              *result = 66;
              v42 = result + 1;
              v43 = v41[10];
              if (v43 <= 0x7F)
              {
                goto LABEL_70;
              }
            }

            else
            {
              v41 = *(qword_10045DB70 + 64);
              *result = 66;
              v42 = result + 1;
              v43 = v41[10];
              if (v43 <= 0x7F)
              {
LABEL_70:
                *(result + 1) = v43;
                result = sub_10005A904(v41, (result + 2), a3);
                v6 = *(this + 24);
                if ((v6 & 0x100) != 0)
                {
                  goto LABEL_74;
                }

LABEL_24:
                if ((v6 & 0x200) == 0)
                {
                  goto LABEL_93;
                }

                goto LABEL_80;
              }
            }

            v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v43, v42, a3);
            result = sub_10005A904(v41, v44, v45);
            v6 = *(this + 24);
            if ((v6 & 0x100) != 0)
            {
              goto LABEL_74;
            }

            goto LABEL_24;
          }
        }

        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v31, a3);
        result = sub_10005E38C(v30, v33, v34);
        v6 = *(this + 24);
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_56;
        }

        goto LABEL_22;
      }
    }

    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v20, a3);
    result = sub_10005CE50(v19, v22, v23);
    v6 = *(this + 24);
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_20;
  }

  v14 = *(this + 3);
  if (v14)
  {
    *result = 26;
    v15 = result + 1;
    v16 = *(v14 + 40);
    if (v16 <= 0x7F)
    {
      goto LABEL_28;
    }

LABEL_31:
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v15, a3);
    result = sub_1000587E0(v14, v17, v18);
    v6 = *(this + 24);
    if ((v6 & 8) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  v14 = *(qword_10045DB70 + 24);
  *result = 26;
  v15 = result + 1;
  v16 = *(v14 + 40);
  if (v16 > 0x7F)
  {
    goto LABEL_31;
  }

LABEL_28:
  *(result + 1) = v16;
  result = sub_1000587E0(v14, result + 2, a3);
  v6 = *(this + 24);
  if ((v6 & 8) != 0)
  {
    goto LABEL_32;
  }

LABEL_19:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_38:
  v24 = *(this + 5);
  *result = 42;
  v25 = *(v24 + 23);
  if ((v25 & 0x8000000000000000) != 0)
  {
    v25 = *(v24 + 8);
    if (v25 <= 0x7F)
    {
      goto LABEL_40;
    }
  }

  else if (v25 <= 0x7F)
  {
LABEL_40:
    *(result + 1) = v25;
    v26 = result + 2;
    goto LABEL_43;
  }

  v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v25, result + 1, a3);
LABEL_43:
  v27 = *(v24 + 23);
  if (v27 >= 0)
  {
    v28 = v24;
  }

  else
  {
    v28 = *v24;
  }

  if (v27 >= 0)
  {
    v29 = *(v24 + 23);
  }

  else
  {
    v29 = *(v24 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v28, v29, v26, a4);
  v6 = *(this + 24);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_50;
  }

LABEL_21:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_56:
  v35 = *(this + 7);
  *result = 58;
  v36 = *(v35 + 23);
  if ((v36 & 0x8000000000000000) != 0)
  {
    v36 = *(v35 + 8);
    if (v36 <= 0x7F)
    {
      goto LABEL_58;
    }
  }

  else if (v36 <= 0x7F)
  {
LABEL_58:
    *(result + 1) = v36;
    v37 = result + 2;
    goto LABEL_61;
  }

  v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, result + 1, a3);
LABEL_61:
  v38 = *(v35 + 23);
  if (v38 >= 0)
  {
    v39 = v35;
  }

  else
  {
    v39 = *v35;
  }

  if (v38 >= 0)
  {
    v40 = *(v35 + 23);
  }

  else
  {
    v40 = *(v35 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v39, v40, v37, a4);
  v6 = *(this + 24);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_68;
  }

LABEL_23:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_24;
  }

LABEL_74:
  v46 = *(this + 9);
  if (v46)
  {
    *result = 74;
    v47 = result + 1;
    v48 = v46[10];
    if (v48 <= 0x7F)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v46 = *(qword_10045DB70 + 72);
    *result = 74;
    v47 = result + 1;
    v48 = v46[10];
    if (v48 <= 0x7F)
    {
LABEL_76:
      *(result + 1) = v48;
      result = sub_10005A904(v46, (result + 2), a3);
      if ((*(this + 24) & 0x200) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_80;
    }
  }

  v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v48, v47, a3);
  result = sub_10005A904(v46, v49, v50);
  if ((*(this + 24) & 0x200) == 0)
  {
    goto LABEL_93;
  }

LABEL_80:
  v51 = *(this + 10);
  if (v51)
  {
    *result = 82;
    v52 = result + 1;
    v53 = *(v51 + 32);
    if (v53 <= 0x7F)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v51 = *(qword_10045DB70 + 80);
    *result = 82;
    v52 = result + 1;
    v53 = *(v51 + 32);
    if (v53 <= 0x7F)
    {
LABEL_82:
      *(result + 1) = v53;
      result = (result + 2);
      v54 = *(v51 + 36);
      if ((v54 & 1) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v53, v52, a3);
  v54 = *(v51 + 36);
  if (v54)
  {
LABEL_86:
    v55 = *(v51 + 16);
    *result = 9;
    *(result + 1) = v55;
    result = (result + 9);
    v54 = *(v51 + 36);
  }

LABEL_87:
  if ((v54 & 2) != 0)
  {
    v59 = *(v51 + 24);
    *result = 17;
    *(result + 1) = v59;
    result = (result + 9);
    v60 = *(v51 + 8);
    v57 = (v51 + 8);
    v56 = v60;
    if (!v60)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v58 = *(v51 + 8);
    v57 = (v51 + 8);
    v56 = v58;
    if (!v58)
    {
      goto LABEL_93;
    }
  }

  if (*v56 != v56[1])
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v57, result, a3);
  }

LABEL_93:
  v63 = *(this + 1);
  v62 = (this + 8);
  v61 = v63;
  if (v63 && *v61 != v61[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v62, result, a3);
  }

  return result;
}

uint64_t sub_100060E38(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_105;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_31;
    }

LABEL_14:
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = *(v6 + 44);
      if (*(v6 + 44))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = *(qword_10045DB70 + 16);
      v7 = *(v6 + 44);
      if (*(v6 + 44))
      {
LABEL_16:
        v8 = (v7 << 31 >> 31) & 9;
        if ((v7 & 2) != 0)
        {
          v8 += 9;
        }

        if ((v7 & 4) != 0)
        {
          LODWORD(v9) = v8 + 9;
        }

        else
        {
          LODWORD(v9) = v8;
        }

        v10 = (v6 + 8);
        v11 = *(v6 + 8);
        if (!v11)
        {
          goto LABEL_28;
        }

LABEL_25:
        if (*v11 != v11[1])
        {
          v9 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v10, a2) + v9);
          *(v6 + 40) = v9;
          if (v9 >= 0x80)
          {
            v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
          }

          else
          {
            v12 = 1;
          }

          goto LABEL_30;
        }

LABEL_28:
        *(v6 + 40) = v9;
        v12 = 1;
LABEL_30:
        v4 = (v4 + v9 + v12 + 1);
        v3 = *(a1 + 96);
        goto LABEL_31;
      }
    }

    LODWORD(v9) = 0;
    v10 = (v6 + 8);
    v11 = *(v6 + 8);
    if (!v11)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v5 = *(a1 + 88);
  if ((v5 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 96);
      if ((v3 & 2) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_14;
    }

    v4 = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_31:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_33;
    }

LABEL_57:
    v20 = *(a1 + 32);
    if (v20)
    {
      v21 = sub_10005D1C0(v20, a2);
      if (v21 < 0x80)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v21 = sub_10005D1C0(*(qword_10045DB70 + 32), a2);
      if (v21 < 0x80)
      {
LABEL_59:
        v4 = (v4 + v21 + 2);
        v3 = *(a1 + 96);
        if ((v3 & 0x10) != 0)
        {
          goto LABEL_63;
        }

LABEL_34:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_35;
        }

LABEL_72:
        v28 = *(a1 + 48);
        if (v28)
        {
          v29 = sub_10005E6FC(v28, a2);
          if (v29 < 0x80)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v29 = sub_10005E6FC(*(qword_10045DB70 + 48), a2);
          if (v29 < 0x80)
          {
LABEL_74:
            v4 = (v4 + v29 + 2);
            v3 = *(a1 + 96);
            if ((v3 & 0x40) != 0)
            {
              goto LABEL_78;
            }

LABEL_36:
            if ((v3 & 0x80) == 0)
            {
              goto LABEL_37;
            }

            goto LABEL_87;
          }
        }

        v4 = v4 + v29 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 1;
        v3 = *(a1 + 96);
        if ((v3 & 0x40) != 0)
        {
          goto LABEL_78;
        }

        goto LABEL_36;
      }
    }

    v4 = v4 + v21 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
    v3 = *(a1 + 96);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_34;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = *(v13 + 44);
    if (*(v13 + 44))
    {
      goto LABEL_41;
    }
  }

  else
  {
    v13 = *(qword_10045DB70 + 24);
    v14 = *(v13 + 44);
    if (*(v13 + 44))
    {
LABEL_41:
      v15 = (v14 << 31 >> 31) & 9;
      if ((v14 & 2) != 0)
      {
        v15 += 9;
      }

      if ((v14 & 4) != 0)
      {
        v16 = v15 + 9;
      }

      else
      {
        v16 = v15;
      }

      v17 = (v13 + 8);
      v18 = *(v13 + 8);
      if (!v18)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }
  }

  v16 = 0;
  v17 = (v13 + 8);
  v18 = *(v13 + 8);
  if (!v18)
  {
    goto LABEL_54;
  }

LABEL_50:
  if (*v18 != v18[1])
  {
    v19 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v17, a2) + v16);
    *(v13 + 40) = v19;
    if (v19 >= 0x80)
    {
      v4 = v4 + v19 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
      v3 = *(a1 + 96);
      if ((v3 & 8) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v4 = (v4 + v19 + 2);
      v3 = *(a1 + 96);
      if ((v3 & 8) != 0)
      {
        goto LABEL_57;
      }
    }

    goto LABEL_33;
  }

LABEL_54:
  *(v13 + 40) = v16;
  v4 = (v4 + v16 + 2);
  v3 = *(a1 + 96);
  if ((v3 & 8) != 0)
  {
    goto LABEL_57;
  }

LABEL_33:
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_34;
  }

LABEL_63:
  v22 = *(a1 + 40);
  v23 = *(v22 + 23);
  v24 = v23;
  v25 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v26 = *(v22 + 23);
  }

  else
  {
    v26 = v25;
  }

  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
    v23 = *(v22 + 23);
    v25 = *(v22 + 8);
    v3 = *(a1 + 96);
    v24 = *(v22 + 23);
  }

  else
  {
    v27 = 1;
  }

  if (v24 < 0)
  {
    v23 = v25;
  }

  v4 = (v4 + v27 + v23 + 1);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_72;
  }

LABEL_35:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_36;
  }

LABEL_78:
  v30 = *(a1 + 56);
  v31 = *(v30 + 23);
  v32 = v31;
  v33 = *(v30 + 8);
  if ((v31 & 0x80u) == 0)
  {
    v34 = *(v30 + 23);
  }

  else
  {
    v34 = v33;
  }

  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
    v31 = *(v30 + 23);
    v33 = *(v30 + 8);
    v3 = *(a1 + 96);
    v32 = *(v30 + 23);
  }

  else
  {
    v35 = 1;
  }

  if (v32 < 0)
  {
    v31 = v33;
  }

  v4 = (v4 + v35 + v31 + 1);
  if ((v3 & 0x80) == 0)
  {
LABEL_37:
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_105;
  }

LABEL_87:
  v36 = *(a1 + 64);
  if (!v36)
  {
    v36 = *(qword_10045DB70 + 64);
  }

  v37 = *(v36 + 24);
  if (v37 >= 1)
  {
    v38 = 0;
    do
    {
      v40 = *(*(v36 + 16) + 8 * v38);
      v41 = (5 * v40[6]);
      v42 = *(v40 + 1);
      if (v42 && *v42 != v42[1])
      {
        v41 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v40 + 2), a2) + v41;
      }

      v40[8] = v41;
      if (v41 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2);
      }

      else
      {
        v39 = 1;
      }

      v37 = (v41 + v37 + v39);
      ++v38;
    }

    while (v38 < *(v36 + 24));
  }

  v43 = *(v36 + 8);
  if (v43 && *v43 != v43[1])
  {
    v37 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v36 + 8), a2) + v37;
  }

  *(v36 + 40) = v37;
  if (v37 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2);
  }

  else
  {
    v44 = 1;
  }

  v4 = (v4 + v37 + v44 + 1);
  v3 = *(a1 + 96);
  if ((v3 & 0xFF00) != 0)
  {
LABEL_105:
    if ((v3 & 0x100) != 0)
    {
      v45 = *(a1 + 72);
      if (!v45)
      {
        v45 = *(qword_10045DB70 + 72);
      }

      v46 = *(v45 + 24);
      if (v46 >= 1)
      {
        v47 = 0;
        do
        {
          v49 = *(*(v45 + 16) + 8 * v47);
          v50 = (5 * v49[6]);
          v51 = *(v49 + 1);
          if (v51 && *v51 != v51[1])
          {
            v50 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v49 + 2), a2) + v50;
          }

          v49[8] = v50;
          if (v50 >= 0x80)
          {
            v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
          }

          else
          {
            v48 = 1;
          }

          v46 = (v50 + v46 + v48);
          ++v47;
        }

        while (v47 < *(v45 + 24));
      }

      v52 = *(v45 + 8);
      if (v52 && *v52 != v52[1])
      {
        v46 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v45 + 8), a2) + v46;
      }

      *(v45 + 40) = v46;
      if (v46 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
      }

      else
      {
        v53 = 1;
      }

      v4 = (v4 + v46 + v53 + 1);
      v3 = *(a1 + 96);
    }

    if ((v3 & 0x200) != 0)
    {
      v54 = *(a1 + 80);
      if (!v54)
      {
        v54 = *(qword_10045DB70 + 80);
      }

      v55 = *(v54 + 36);
      v56 = (v55 << 31 >> 31) & 9;
      if ((v55 & 2) != 0)
      {
        v56 += 9;
      }

      if (*(v54 + 36))
      {
        LODWORD(v57) = v56;
      }

      else
      {
        LODWORD(v57) = 0;
      }

      v58 = *(v54 + 8);
      if (!v58 || *v58 == v58[1])
      {
        *(v54 + 32) = v57;
        v59 = 1;
      }

      else
      {
        v57 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v54 + 8), a2) + v57);
        *(v54 + 32) = v57;
        if (v57 >= 0x80)
        {
          v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57, a2);
        }

        else
        {
          v59 = 1;
        }
      }

      v4 = (v4 + v57 + v59 + 1);
    }
  }

LABEL_139:
  v60 = *(a1 + 8);
  if (v60 && *v60 != v60[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 92) = v4;
  return v4;
}

uint64_t sub_100061488(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10005EC24(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100061568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006157C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100061590(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100061624()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C738;
}

void sub_1000616B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000616C8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 16);
      *(a1 + 36) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 36);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 24);
      *(a1 + 36) |= 2u;
      *(a1 + 24) = v6;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100061788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000617B0(uint64_t a1)
{
  *a1 = off_1004351B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100061804(uint64_t a1)
{
  *a1 = off_1004351B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100061900(uint64_t a1)
{
  if (*(a1 + 36))
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100061920(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v11;
        *(a1 + 36) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 1)
      {
        break;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v11) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 16) = v11;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_100061A98(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 16), a3);
    if ((*(v4 + 36) & 2) == 0)
    {
LABEL_3:
      v8 = *(v4 + 8);
      v7 = (v4 + 8);
      v6 = v8;
      if (!v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 24), a3);
  v9 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v9;
  if (!v9)
  {
    return result;
  }

LABEL_7:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

uint64_t sub_100061B34(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 36);
  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
    v9 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v9;
    if (!v9)
    {
      return a2;
    }

    goto LABEL_7;
  }

  v7 = *(a1 + 16);
  *a2 = 9;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((*(a1 + 36) & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_7:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100061C0C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 36);
  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v4 += 9;
  }

  if (*(a1 + 36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v8 && *v7 != v7[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  }

  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_100061C74(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000616C8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100061D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100061D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100061D7C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100061E10()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C748;
}

void sub_100061EA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100061EB4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 44);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 44);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 44) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DB80 + 16);
    }

    sub_1000616C8(v5, v6);
    v4 = *(a2 + 44);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 44) |= 2u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 44);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 44) |= 4u;
    v8 = *(a1 + 32);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 32);
    if (!v9)
    {
      v9 = *(qword_10045DB80 + 32);
    }

    sub_1000582D0(v8, v9);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000620A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000620B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000620CC(void *a1)
{
  *a1 = off_100435268;
  if (qword_10045DB80 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10006218C(void *a1)
{
  *a1 = off_100435268;
  if (qword_10045DB80 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000622F4(uint64_t a1)
{
  if (*(a1 + 44))
  {
    if (*(a1 + 44))
    {
      v1 = *(a1 + 16);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        v3 = *(v1 + 8);
        v2 = (v1 + 8);
        *(v2 + 7) = 0;
        if (v3)
        {
          v4 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v2);
          a1 = v4;
        }
      }
    }

    *(a1 + 24) = 0;
    if ((*(a1 + 44) & 4) != 0)
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        if (*(v5 + 44))
        {
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = 0;
        }

        v7 = *(v5 + 8);
        v6 = (v5 + 8);
        *(v6 + 9) = 0;
        if (v7)
        {
          v8 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
          a1 = v8;
        }
      }
    }
  }

  v10 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000623B4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v9 != 1)
        {
          goto LABEL_19;
        }

        *v33 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
        {
          return 0;
        }

LABEL_33:
        *(a1 + 24) = *v33;
        v22 = *(a1 + 44) | 2;
        *(a1 + 44) = v22;
        v23 = *(this + 1);
        if (v23 < *(this + 2) && *v23 == 26)
        {
          *(this + 1) = v23 + 1;
          *(a1 + 44) = v22 | 4;
          v12 = *(a1 + 32);
          if (!v12)
          {
LABEL_36:
            operator new();
          }

LABEL_37:
          v33[0] = 0;
          v24 = *(this + 1);
          if (v24 >= *(this + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v33))
            {
              return 0;
            }
          }

          else
          {
            v33[0] = *v24;
            *(this + 1) = v24 + 1;
          }

          v25 = *(this + 14);
          v26 = *(this + 15);
          *(this + 14) = v25 + 1;
          if (v25 >= v26)
          {
            return 0;
          }

          v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v33[0]);
          if (!sub_100058554(v12, this, v28, v29) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
          v30 = *(this + 14);
          v19 = __OFSUB__(v30, 1);
          v31 = v30 - 1;
          if (v31 < 0 == v19)
          {
            *(this + 14) = v31;
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

      else
      {
        if (v8 != 1 || v9 != 2)
        {
          goto LABEL_19;
        }

        *(a1 + 44) |= 1u;
        v10 = *(a1 + 16);
        if (!v10)
        {
          operator new();
        }

        v33[0] = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v33))
          {
            return 0;
          }
        }

        else
        {
          v33[0] = *v11;
          *(this + 1) = v11 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v33[0]);
        if (!sub_100061920(v10, this, v16, v17) || *(this + 36) != 1)
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

        v21 = *(this + 1);
        if (v21 < *(this + 2) && *v21 == 17)
        {
          *(this + 1) = v21 + 1;
          *v33 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v33) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_33;
        }
      }
    }

    if (v9 == 2)
    {
      *(a1 + 44) |= 4u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

LABEL_19:
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

uint64_t sub_10006279C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 44);
      if ((v6 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DB80 + 16), a2, a4);
      v6 = *(v5 + 44);
      if ((v6 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_10:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  if ((*(v5 + 44) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_11:
  v11 = *(v5 + 32);
  if (v11)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v11, a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DB80 + 32), a2, a4);
    v13 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v13;
    if (!v13)
    {
      return result;
    }
  }

LABEL_15:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

_BYTE *sub_1000628A4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = *(this + 2);
  if (v4)
  {
    *a2 = 10;
    v5 = a2 + 1;
    v6 = *(v4 + 32);
    if (v6 <= 0x7F)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *(qword_10045DB80 + 16);
    *a2 = 10;
    v5 = a2 + 1;
    v6 = *(v4 + 32);
    if (v6 <= 0x7F)
    {
LABEL_4:
      a2[1] = v6;
      a2 += 2;
      v7 = *(v4 + 36);
      if ((v7 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v5, a3);
  v7 = *(v4 + 36);
  if (v7)
  {
LABEL_8:
    v8 = *(v4 + 16);
    *a2 = 9;
    *(a2 + 1) = v8;
    a2 += 9;
    v7 = *(v4 + 36);
  }

LABEL_9:
  if ((v7 & 2) != 0)
  {
    v12 = *(v4 + 24);
    *a2 = 17;
    *(a2 + 1) = v12;
    a2 += 9;
    v13 = *(v4 + 8);
    v10 = (v4 + 8);
    v9 = v13;
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = *(v4 + 8);
    v10 = (v4 + 8);
    v9 = v11;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  if (*v9 != v9[1])
  {
    a2 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
  }

LABEL_15:
  v14 = *(this + 11);
  if ((v14 & 2) != 0)
  {
    v18 = *(this + 3);
    *a2 = 17;
    *(a2 + 1) = v18;
    a2 += 9;
    if ((*(this + 11) & 4) == 0)
    {
LABEL_17:
      v17 = *(this + 1);
      v16 = (this + 8);
      v15 = v17;
      if (!v17)
      {
        return a2;
      }

      goto LABEL_26;
    }
  }

  else if ((v14 & 4) == 0)
  {
    goto LABEL_17;
  }

  v19 = *(this + 4);
  if (v19)
  {
    *a2 = 26;
    v20 = a2 + 1;
    v21 = *(v19 + 40);
    if (v21 <= 0x7F)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v19 = *(qword_10045DB80 + 32);
    *a2 = 26;
    v20 = a2 + 1;
    v21 = *(v19 + 40);
    if (v21 <= 0x7F)
    {
LABEL_22:
      a2[1] = v21;
      a2 = sub_1000587E0(v19, (a2 + 2), a3);
      v22 = *(this + 1);
      v16 = (this + 8);
      v15 = v22;
      if (!v22)
      {
        return a2;
      }

      goto LABEL_26;
    }
  }

  v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v20, a3);
  a2 = sub_1000587E0(v19, v23, v24);
  v25 = *(this + 1);
  v16 = (this + 8);
  v15 = v25;
  if (!v25)
  {
    return a2;
  }

LABEL_26:
  if (*v15 == v15[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, a2, a3);
}

uint64_t sub_100062B24(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 44))
  {
    if ((*(a1 + 44) & 1) == 0)
    {
      if ((*(a1 + 44) & 2) != 0)
      {
        v3 = 9;
      }

      else
      {
        v3 = 0;
      }

      if ((*(a1 + 44) & 4) == 0)
      {
        goto LABEL_44;
      }

LABEL_27:
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 44);
        if (*(v11 + 44))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v11 = *(qword_10045DB80 + 32);
        v12 = *(v11 + 44);
        if (*(v11 + 44))
        {
LABEL_29:
          v13 = (v12 << 31 >> 31) & 9;
          if ((v12 & 2) != 0)
          {
            v13 += 9;
          }

          if ((v12 & 4) != 0)
          {
            LODWORD(v14) = v13 + 9;
          }

          else
          {
            LODWORD(v14) = v13;
          }

          v15 = (v11 + 8);
          v16 = *(v11 + 8);
          if (!v16)
          {
            goto LABEL_41;
          }

LABEL_38:
          if (*v16 != v16[1])
          {
            v14 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v15, a2) + v14);
            *(v11 + 40) = v14;
            if (v14 >= 0x80)
            {
              v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
            }

            else
            {
              v17 = 1;
            }

            goto LABEL_43;
          }

LABEL_41:
          *(v11 + 40) = v14;
          v17 = 1;
LABEL_43:
          v3 = (v3 + v14 + v17 + 1);
          goto LABEL_44;
        }
      }

      LODWORD(v14) = 0;
      v15 = (v11 + 8);
      v16 = *(v11 + 8);
      if (!v16)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(v4 + 36);
      if (*(v4 + 36))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = *(qword_10045DB80 + 16);
      v5 = *(v4 + 36);
      if (*(v4 + 36))
      {
LABEL_11:
        if ((v5 & 2) != 0)
        {
          LODWORD(v6) = ((v5 << 31 >> 31) & 9) + 9;
        }

        else
        {
          LODWORD(v6) = (v5 << 31 >> 31) & 9;
        }

        v7 = (v4 + 8);
        v8 = *(v4 + 8);
        if (!v8)
        {
          goto LABEL_21;
        }

LABEL_18:
        if (*v8 != v8[1])
        {
          v6 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v7, a2) + v6);
          *(v4 + 32) = v6;
          if (v6 >= 0x80)
          {
            v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
          }

          else
          {
            v9 = 1;
          }

          goto LABEL_23;
        }

LABEL_21:
        *(v4 + 32) = v6;
        v9 = 1;
LABEL_23:
        v10 = *(a1 + 44);
        if ((v10 & 2) != 0)
        {
          v3 = (v6 + v9 + 10);
        }

        else
        {
          v3 = (v6 + v9 + 1);
        }

        if ((v10 & 4) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_27;
      }
    }

    LODWORD(v6) = 0;
    v7 = (v4 + 8);
    v8 = *(v4 + 8);
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v3 = 0;
LABEL_44:
  v18 = *(a1 + 8);
  if (v18 && *v18 != v18[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 40) = v3;
  return v3;
}

uint64_t sub_100062D04(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100061EB4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100062DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100062DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100062E0C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100062EA0()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C758;
}

void sub_100062F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100062F44(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
    LOBYTE(v4) = *(a2 + 80);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 80);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 80) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_10045DB88 + 16);
    }

    sub_1000582D0(v5, v6);
    v4 = *(a2 + 80);
  }

  if ((v4 & 2) != 0)
  {
    *(a1 + 80) |= 2u;
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 24);
    if (!v8)
    {
      v8 = *(qword_10045DB88 + 24);
    }

    sub_10005AD68(v7, v8);
    v4 = *(a2 + 80);
  }

  if ((v4 & 4) != 0)
  {
    *(a1 + 80) |= 4u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 32);
    if (!v10)
    {
      v10 = *(qword_10045DB88 + 32);
    }

    sub_10005AD68(v9, v10);
    v4 = *(a2 + 80);
  }

  if ((v4 & 8) != 0)
  {
    *(a1 + 80) |= 8u;
    v11 = *(a1 + 40);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 40);
    if (!v12)
    {
      v12 = *(qword_10045DB88 + 40);
    }

    sub_100059648(v11, v12);
    v4 = *(a2 + 80);
  }

  if ((v4 & 0x10) != 0)
  {
    v13 = *(a2 + 48);
    *(a1 + 80) |= 0x10u;
    *(a1 + 48) = v13;
    v4 = *(a2 + 80);
    if ((v4 & 0x20) == 0)
    {
LABEL_27:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_28;
      }

LABEL_32:
      *(a1 + 80) |= 0x40u;
      v15 = *(a1 + 56);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 56);
      if (v16)
      {
        sub_100061EB4(v15, v16);
        if ((*(a2 + 80) & 0x80) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }
      }

      else
      {
        sub_100061EB4(v15, *(qword_10045DB88 + 56));
        if ((*(a2 + 80) & 0x80) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_27;
  }

  v14 = *(a2 + 72);
  *(a1 + 80) |= 0x20u;
  *(a1 + 72) = v14;
  v4 = *(a2 + 80);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  if ((v4 & 0x80) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_42:
  *(a1 + 80) |= 0x80u;
  v17 = *(a1 + 64);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 64);
  if (!v18)
  {
    v18 = *(qword_10045DB88 + 64);
  }

  sub_1000651D4(v17, v18);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1000633D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000633E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1000633F8(void *result)
{
  if (qword_10045DB88 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[7];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[8];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_100063548(void *a1)
{
  *a1 = off_100435318;
  v2 = (a1 + 1);
  sub_1000633F8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000635A8(void *a1)
{
  *a1 = off_100435318;
  v2 = (a1 + 1);
  sub_1000633F8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000636C4(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 80))
  {
    if (*(this + 80))
    {
      this = *(this + 2);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 2) = 0;
          *(this + 3) = 0;
          *(this + 4) = 0;
        }

        v2 = *(this + 1);
        this = (this + 8);
        *(this + 9) = 0;
        if (v2)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 80) & 2) != 0)
    {
      v3 = *(v1 + 3);
      if (v3)
      {
        if (*(v3 + 24) >= 1)
        {
          v4 = 0;
          do
          {
            v5 = *(*(v3 + 16) + 8 * v4);
            this = (*(*v5 + 32))(v5);
            ++v4;
          }

          while (v4 < *(v3 + 24));
        }

        v7 = *(v3 + 8);
        v6 = (v3 + 8);
        *(v6 + 4) = 0;
        *(v6 + 9) = 0;
        if (v7)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
        }
      }
    }

    if ((*(v1 + 80) & 4) != 0)
    {
      v8 = *(v1 + 4);
      if (v8)
      {
        if (*(v8 + 24) >= 1)
        {
          v9 = 0;
          do
          {
            v10 = *(*(v8 + 16) + 8 * v9);
            this = (*(*v10 + 32))(v10);
            ++v9;
          }

          while (v9 < *(v8 + 24));
        }

        v12 = *(v8 + 8);
        v11 = (v8 + 8);
        *(v11 + 4) = 0;
        *(v11 + 9) = 0;
        if (v12)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v11);
        }
      }
    }

    if ((*(v1 + 80) & 8) != 0)
    {
      this = *(v1 + 5);
      if (this)
      {
        v13 = *(this + 1);
        this = (this + 8);
        *(this + 4) = 0;
        *(this + 7) = 0;
        if (v13)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 6) = 0;
    *(v1 + 18) = -1;
    v14 = *(v1 + 20);
    if ((v14 & 0x40) != 0)
    {
      this = *(v1 + 7);
      if (this)
      {
        this = sub_1000622F4(this);
        v14 = *(v1 + 20);
      }
    }

    if ((v14 & 0x80) != 0)
    {
      v15 = *(v1 + 8);
      if (v15)
      {
        if (*(v15 + 28))
        {
          v16 = *(v15 + 16);
          if (v16)
          {
            if (*(v16 + 52))
            {
              *(v16 + 16) = 0;
            }

            if (*(v16 + 32) >= 1)
            {
              v17 = 0;
              do
              {
                v18 = *(*(v16 + 24) + 8 * v17);
                this = (*(*v18 + 32))(v18);
                ++v17;
              }

              while (v17 < *(v16 + 32));
            }

            v20 = *(v16 + 8);
            v19 = (v16 + 8);
            *(v19 + 6) = 0;
            *(v19 + 11) = 0;
            if (v20)
            {
              this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v19);
            }
          }
        }

        v22 = *(v15 + 8);
        v21 = (v15 + 8);
        *(v21 + 5) = 0;
        if (v22)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v21);
        }
      }
    }
  }

  v24 = *(v1 + 1);
  v23 = (v1 + 8);
  *(v23 + 18) = 0;
  if (v24)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v23);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100063920(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      v2 = a1;
      if (*(v1 + 52))
      {
        *(v1 + 16) = 0;
      }

      if (*(v1 + 32) >= 1)
      {
        v3 = 0;
        do
        {
          v4 = *(*(v1 + 24) + 8 * v3);
          (*(*v4 + 32))(v4);
          ++v3;
        }

        while (v3 < *(v1 + 32));
      }

      v6 = *(v1 + 8);
      v5 = (v1 + 8);
      *(v5 + 6) = 0;
      *(v5 + 11) = 0;
      a1 = v2;
      if (v6)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v5);
        a1 = v2;
      }
    }
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 5) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000639FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v8 == 3)
            {
              if (v9 != 2)
              {
                goto LABEL_46;
              }

              *(a1 + 80) |= 4u;
              v20 = *(a1 + 32);
              if (!v20)
              {
                goto LABEL_70;
              }

LABEL_43:
              v77[0] = 0;
              v21 = *(this + 1);
              if (v21 >= *(this + 2) || *v21 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77))
                {
                  return 0;
                }
              }

              else
              {
                v77[0] = *v21;
                *(this + 1) = v21 + 1;
              }

              v39 = *(this + 14);
              v40 = *(this + 15);
              *(this + 14) = v39 + 1;
              if (v39 >= v40)
              {
                return 0;
              }

              v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v77[0]);
              if (!sub_10005B224(v20, this, v42, v43) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
              v44 = *(this + 14);
              v28 = __OFSUB__(v44, 1);
              v45 = v44 - 1;
              if (v45 < 0 == v28)
              {
                *(this + 14) = v45;
              }

              v46 = *(this + 1);
              if (v46 < *(this + 2) && *v46 == 34)
              {
                *(this + 1) = v46 + 1;
                *(a1 + 80) |= 8u;
                v14 = *(a1 + 40);
                if (!v14)
                {
LABEL_82:
                  operator new();
                }

                goto LABEL_24;
              }
            }

            else
            {
              if (v8 != 4 || v9 != 2)
              {
                goto LABEL_46;
              }

              *(a1 + 80) |= 8u;
              v14 = *(a1 + 40);
              if (!v14)
              {
                goto LABEL_82;
              }

LABEL_24:
              v77[0] = 0;
              v15 = *(this + 1);
              if (v15 >= *(this + 2) || *v15 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77))
                {
                  return 0;
                }
              }

              else
              {
                v77[0] = *v15;
                *(this + 1) = v15 + 1;
              }

              v47 = *(this + 14);
              v48 = *(this + 15);
              *(this + 14) = v47 + 1;
              if (v47 >= v48)
              {
                return 0;
              }

              v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v77[0]);
              if (!sub_100059988(v14, this, v50, v51) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v49);
              v52 = *(this + 14);
              v28 = __OFSUB__(v52, 1);
              v53 = v52 - 1;
              if (v53 < 0 == v28)
              {
                *(this + 14) = v53;
              }

              v54 = *(this + 1);
              if (v54 < *(this + 2) && *v54 == 41)
              {
                *(this + 1) = v54 + 1;
                *v77 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v77) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_94;
              }
            }
          }

          else if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_46;
            }

            *(a1 + 80) |= 1u;
            v18 = *(a1 + 16);
            if (!v18)
            {
              operator new();
            }

            v77[0] = 0;
            v19 = *(this + 1);
            if (v19 >= *(this + 2) || *v19 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77))
              {
                return 0;
              }
            }

            else
            {
              v77[0] = *v19;
              *(this + 1) = v19 + 1;
            }

            v22 = *(this + 14);
            v23 = *(this + 15);
            *(this + 14) = v22 + 1;
            if (v22 >= v23)
            {
              return 0;
            }

            v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v77[0]);
            if (!sub_100058554(v18, this, v25, v26) || *(this + 36) != 1)
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

            v30 = *(this + 1);
            if (v30 < *(this + 2) && *v30 == 18)
            {
              *(this + 1) = v30 + 1;
              *(a1 + 80) |= 2u;
              v10 = *(a1 + 24);
              if (!v10)
              {
LABEL_58:
                operator new();
              }

              goto LABEL_12;
            }
          }

          else
          {
            if (v8 != 2 || v9 != 2)
            {
              goto LABEL_46;
            }

            *(a1 + 80) |= 2u;
            v10 = *(a1 + 24);
            if (!v10)
            {
              goto LABEL_58;
            }

LABEL_12:
            v77[0] = 0;
            v11 = *(this + 1);
            if (v11 >= *(this + 2) || *v11 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77))
              {
                return 0;
              }
            }

            else
            {
              v77[0] = *v11;
              *(this + 1) = v11 + 1;
            }

            v31 = *(this + 14);
            v32 = *(this + 15);
            *(this + 14) = v31 + 1;
            if (v31 >= v32)
            {
              return 0;
            }

            v33 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v77[0]);
            if (!sub_10005B224(v10, this, v34, v35) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v33);
            v36 = *(this + 14);
            v28 = __OFSUB__(v36, 1);
            v37 = v36 - 1;
            if (v37 < 0 == v28)
            {
              *(this + 14) = v37;
            }

            v38 = *(this + 1);
            if (v38 < *(this + 2) && *v38 == 26)
            {
              *(this + 1) = v38 + 1;
              *(a1 + 80) |= 4u;
              v20 = *(a1 + 32);
              if (!v20)
              {
LABEL_70:
                operator new();
              }

              goto LABEL_43;
            }
          }
        }

        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v8 != 7)
        {
          if (v8 == 8 && v9 == 2)
          {
            *(a1 + 80) |= 0x80u;
            v16 = *(a1 + 64);
            if (!v16)
            {
              goto LABEL_120;
            }

            goto LABEL_30;
          }

          goto LABEL_46;
        }

        if (v9 != 2)
        {
          goto LABEL_46;
        }

LABEL_106:
        *(a1 + 80) |= 0x40u;
        v60 = *(a1 + 56);
        if (!v60)
        {
          operator new();
        }

        v77[0] = 0;
        v61 = *(this + 1);
        if (v61 >= *(this + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77))
          {
            return 0;
          }
        }

        else
        {
          v77[0] = *v61;
          *(this + 1) = v61 + 1;
        }

        v62 = *(this + 14);
        v63 = *(this + 15);
        *(this + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v77[0]);
        if (!sub_1000623B4(v60, this, v65, v66) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v64);
        v67 = *(this + 14);
        v28 = __OFSUB__(v67, 1);
        v68 = v67 - 1;
        if (v68 < 0 == v28)
        {
          *(this + 14) = v68;
        }

        v69 = *(this + 1);
        if (v69 < *(this + 2) && *v69 == 66)
        {
          *(this + 1) = v69 + 1;
          *(a1 + 80) |= 0x80u;
          v16 = *(a1 + 64);
          if (!v16)
          {
LABEL_120:
            operator new();
          }

LABEL_30:
          v77[0] = 0;
          v17 = *(this + 1);
          if (v17 >= *(this + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77))
            {
              return 0;
            }
          }

          else
          {
            v77[0] = *v17;
            *(this + 1) = v17 + 1;
          }

          v70 = *(this + 14);
          v71 = *(this + 15);
          *(this + 14) = v70 + 1;
          if (v70 >= v71)
          {
            return 0;
          }

          v72 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v77[0]);
          if (!sub_100066424(v16, this, v73, v74) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v72);
          v75 = *(this + 14);
          v28 = __OFSUB__(v75, 1);
          v76 = v75 - 1;
          if (v76 < 0 == v28)
          {
            *(this + 14) = v76;
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

      if (v8 != 5)
      {
        break;
      }

      if (v9 != 1)
      {
        goto LABEL_46;
      }

      *v77 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v77) & 1) == 0)
      {
        return 0;
      }

LABEL_94:
      *(a1 + 48) = *v77;
      *(a1 + 80) |= 0x10u;
      v56 = *(this + 1);
      v55 = *(this + 2);
      if (v56 < v55 && *v56 == 48)
      {
        v13 = v56 + 1;
        *(this + 1) = v13;
        v77[0] = 0;
        if (v13 >= v55)
        {
          goto LABEL_100;
        }

LABEL_97:
        v57 = *v13;
        if ((v57 & 0x80000000) == 0)
        {
          *(this + 1) = v13 + 1;
          if ((v57 + 1) <= 3)
          {
            goto LABEL_99;
          }

          goto LABEL_102;
        }

LABEL_100:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v77);
        if (!result)
        {
          return result;
        }

        v57 = v77[0];
        if (v77[0] + 1 <= 3)
        {
LABEL_99:
          *(a1 + 80) |= 0x20u;
          *(a1 + 72) = v57;
          goto LABEL_103;
        }

LABEL_102:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 6, v57);
LABEL_103:
        v59 = *(this + 1);
        if (v59 < *(this + 2) && *v59 == 58)
        {
          *(this + 1) = v59 + 1;
          goto LABEL_106;
        }
      }
    }

    if (v8 == 6 && (TagFallback & 7) == 0)
    {
      v13 = *(this + 1);
      v12 = *(this + 2);
      v77[0] = 0;
      if (v13 >= v12)
      {
        goto LABEL_100;
      }

      goto LABEL_97;
    }

LABEL_46:
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

uint64_t sub_100064408(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 80);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    v11 = *(v5 + 24);
    if (v11)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, v11, a2, a4);
      v6 = *(v5 + 80);
      if ((v6 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(qword_10045DB88 + 24), a2, a4);
      v6 = *(v5 + 80);
      if ((v6 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_23:
    v13 = *(v5 + 40);
    if (v13)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
      v6 = *(v5 + 80);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045DB88 + 40), a2, a4);
      v6 = *(v5 + 80);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

  v10 = *(result + 16);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_10045DB88 + 16), a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  v12 = *(v5 + 32);
  if (v12)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DB88 + 32), a2, a4);
    v6 = *(v5 + 80);
    if ((v6 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 48), a3);
  v6 = *(v5 + 80);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_29:
    v14 = *(v5 + 56);
    if (v14)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v14, a2, a4);
      if ((*(v5 + 80) & 0x80) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, *(qword_10045DB88 + 56), a2, a4);
      if ((*(v5 + 80) & 0x80) != 0)
      {
        goto LABEL_33;
      }
    }

LABEL_9:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_37;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 72), a2, a4);
  v6 = *(v5 + 80);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_33:
  v15 = *(v5 + 64);
  if (v15)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, v15, a2, a4);
    v16 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v16;
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(qword_10045DB88 + 64), a2, a4);
    v17 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v17;
    if (!v17)
    {
      return result;
    }
  }

LABEL_37:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10006463C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 20);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    v11 = *(this + 3);
    if (v11)
    {
      *v3 = 18;
      v12 = v3 + 1;
      v13 = v11[10];
      if (v13 <= 0x7F)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = *(qword_10045DB88 + 24);
      *v3 = 18;
      v12 = v3 + 1;
      v13 = v11[10];
      if (v13 <= 0x7F)
      {
LABEL_14:
        *(v3 + 1) = v13;
        v3 = sub_10005B53C(v11, (v3 + 2), a3);
        v5 = *(this + 20);
        if ((v5 & 4) != 0)
        {
          goto LABEL_18;
        }

LABEL_4:
        if ((v5 & 8) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
    v3 = sub_10005B53C(v11, v14, v15);
    v5 = *(this + 20);
    if ((v5 & 4) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_4;
  }

  v6 = *(this + 2);
  if (v6)
  {
    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 40);
    if (v8 <= 0x7F)
    {
      goto LABEL_8;
    }

LABEL_11:
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    v3 = sub_1000587E0(v6, v9, v10);
    v5 = *(this + 20);
    if ((v5 & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  v6 = *(qword_10045DB88 + 16);
  *a2 = 10;
  v7 = a2 + 1;
  v8 = *(v6 + 40);
  if (v8 > 0x7F)
  {
    goto LABEL_11;
  }

LABEL_8:
  *(v3 + 1) = v8;
  v3 = sub_1000587E0(v6, v3 + 2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  v16 = *(this + 4);
  if (v16)
  {
    *v3 = 26;
    v17 = v3 + 1;
    v18 = v16[10];
    if (v18 <= 0x7F)
    {
      goto LABEL_20;
    }

LABEL_23:
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v17, a3);
    v3 = sub_10005B53C(v16, v19, v20);
    if ((*(this + 20) & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v16 = *(qword_10045DB88 + 32);
  *v3 = 26;
  v17 = v3 + 1;
  v18 = v16[10];
  if (v18 > 0x7F)
  {
    goto LABEL_23;
  }

LABEL_20:
  *(v3 + 1) = v18;
  v3 = sub_10005B53C(v16, (v3 + 2), a3);
  if ((*(this + 20) & 8) == 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  v21 = *(this + 5);
  if (v21)
  {
    *v3 = 34;
    v22 = v3 + 1;
    v23 = *(v21 + 32);
    if (v23 <= 0x7F)
    {
      goto LABEL_26;
    }

LABEL_29:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v22, a3);
    if (*(v21 + 24) < 1)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v21 = *(qword_10045DB88 + 40);
  *v3 = 34;
  v22 = v3 + 1;
  v23 = *(v21 + 32);
  if (v23 > 0x7F)
  {
    goto LABEL_29;
  }

LABEL_26:
  *(v3 + 1) = v23;
  v3 = (v3 + 2);
  if (*(v21 + 24) < 1)
  {
    goto LABEL_32;
  }

LABEL_30:
  v24 = 0;
  do
  {
    v25 = *(*(v21 + 16) + 8 * v24);
    *v3 = 9;
    *(v3 + 1) = v25;
    v3 = (v3 + 9);
    ++v24;
  }

  while (v24 < *(v21 + 24));
LABEL_32:
  v28 = *(v21 + 8);
  v27 = (v21 + 8);
  v26 = v28;
  if (v28 && *v26 != v26[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v27, v3, a3);
  }

LABEL_35:
  v29 = *(this + 20);
  if ((v29 & 0x10) == 0)
  {
    if ((v29 & 0x20) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    v32 = *(this + 18);
    *v3 = 48;
    v33 = v3 + 1;
    if ((v32 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v32, v33, a3);
      v30 = *(this + 20);
      if ((v30 & 0x40) != 0)
      {
        goto LABEL_48;
      }
    }

    else if (v32 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v33, a3);
      v30 = *(this + 20);
      if ((v30 & 0x40) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(v3 + 1) = v32;
      v3 = (v3 + 2);
      v30 = *(this + 20);
      if ((v30 & 0x40) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_38:
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_54;
  }

  v31 = *(this + 6);
  *v3 = 41;
  *(v3 + 1) = v31;
  v3 = (v3 + 9);
  if ((*(this + 20) & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_37:
  v30 = *(this + 20);
  if ((v30 & 0x40) == 0)
  {
    goto LABEL_38;
  }

LABEL_48:
  v34 = *(this + 7);
  if (v34)
  {
    *v3 = 58;
    v35 = v3 + 1;
    v36 = v34[10];
    if (v36 <= 0x7F)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v34 = *(qword_10045DB88 + 56);
    *v3 = 58;
    v35 = v3 + 1;
    v36 = v34[10];
    if (v36 <= 0x7F)
    {
LABEL_50:
      *(v3 + 1) = v36;
      v3 = sub_1000628A4(v34, v3 + 2, a3);
      if ((*(this + 20) & 0x80) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_54;
    }
  }

  v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v35, a3);
  v3 = sub_1000628A4(v34, v37, v38);
  if ((*(this + 20) & 0x80) == 0)
  {
    goto LABEL_69;
  }

LABEL_54:
  v39 = *(this + 8);
  if (v39)
  {
    *v3 = 66;
    v40 = v3 + 1;
    v41 = *(v39 + 24);
    if (v41 <= 0x7F)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v39 = *(qword_10045DB88 + 64);
    *v3 = 66;
    v40 = v3 + 1;
    v41 = *(v39 + 24);
    if (v41 <= 0x7F)
    {
LABEL_56:
      *(v3 + 1) = v41;
      v3 = (v3 + 2);
      if ((*(v39 + 28) & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_60:
      v42 = *(v39 + 16);
      if (v42)
      {
        *v3 = 10;
        v43 = v3 + 1;
        v44 = v42[12];
        if (v44 <= 0x7F)
        {
LABEL_62:
          *(v3 + 1) = v44;
          v45 = (v3 + 2);
LABEL_65:
          v3 = sub_100065D10(v42, v45, a3);
          goto LABEL_66;
        }
      }

      else
      {
        v42 = *(qword_10045DB98 + 16);
        *v3 = 10;
        v43 = v3 + 1;
        v44 = v42[12];
        if (v44 <= 0x7F)
        {
          goto LABEL_62;
        }
      }

      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, v43, a3);
      goto LABEL_65;
    }
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v40, a3);
  if (*(v39 + 28))
  {
    goto LABEL_60;
  }

LABEL_66:
  v48 = *(v39 + 8);
  v47 = (v39 + 8);
  v46 = v48;
  if (v48 && *v46 != v46[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v47, v3, a3);
  }

LABEL_69:
  v51 = *(this + 1);
  v50 = (this + 8);
  v49 = v51;
  if (!v51 || *v49 == v49[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v50, v3, a3);
}

uint64_t sub_100064B6C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 80);
  if (!v3)
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  if (*(a1 + 80))
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = *(v8 + 44);
      if (*(v8 + 44))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *(qword_10045DB88 + 16);
      v9 = *(v8 + 44);
      if (*(v8 + 44))
      {
LABEL_9:
        v10 = (v9 << 31 >> 31) & 9;
        if ((v9 & 2) != 0)
        {
          v10 += 9;
        }

        if ((v9 & 4) != 0)
        {
          v11 = v10 + 9;
        }

        else
        {
          v11 = v10;
        }

        v12 = (v8 + 8);
        v13 = *(v8 + 8);
        if (!v13)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
    v12 = (v8 + 8);
    v13 = *(v8 + 8);
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (*v13 != v13[1])
    {
      v14 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v12, a2) + v11);
      *(v8 + 40) = v14;
      if (v14 >= 0x80)
      {
        v4 = v14 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
        v3 = *(a1 + 80);
        if ((v3 & 2) == 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v4 = v14 + 2;
        v3 = *(a1 + 80);
        if ((v3 & 2) == 0)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_25;
    }

LABEL_22:
    *(v8 + 40) = v11;
    v4 = v11 + 2;
    v3 = *(a1 + 80);
    if ((v3 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_25;
  }

  v4 = 0;
  if ((*(a1 + 80) & 2) == 0)
  {
    goto LABEL_43;
  }

LABEL_25:
  v15 = *(a1 + 24);
  if (!v15)
  {
    v15 = *(qword_10045DB88 + 24);
  }

  v16 = *(v15 + 24);
  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      v19 = *(*(v15 + 16) + 8 * v17);
      v20 = (9 * v19[6]);
      v21 = *(v19 + 1);
      if (v21 && *v21 != v21[1])
      {
        v20 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v19 + 2), a2) + v20;
      }

      v19[8] = v20;
      if (v20 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      }

      else
      {
        v18 = 1;
      }

      v16 = (v20 + v16 + v18);
      ++v17;
    }

    while (v17 < *(v15 + 24));
  }

  v22 = *(v15 + 8);
  if (v22 && *v22 != v22[1])
  {
    v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v15 + 8), a2) + v16;
  }

  *(v15 + 40) = v16;
  if (v16 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
  }

  else
  {
    v23 = 1;
  }

  v4 += v16 + v23 + 1;
  v3 = *(a1 + 80);
LABEL_43:
  if ((v3 & 4) != 0)
  {
    v24 = *(a1 + 32);
    if (!v24)
    {
      v24 = *(qword_10045DB88 + 32);
    }

    v25 = *(v24 + 24);
    if (v25 >= 1)
    {
      v26 = 0;
      do
      {
        v28 = *(*(v24 + 16) + 8 * v26);
        v29 = (9 * v28[6]);
        v30 = *(v28 + 1);
        if (v30 && *v30 != v30[1])
        {
          v29 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v28 + 2), a2) + v29;
        }

        v28[8] = v29;
        if (v29 >= 0x80)
        {
          v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2);
        }

        else
        {
          v27 = 1;
        }

        v25 = (v29 + v25 + v27);
        ++v26;
      }

      while (v26 < *(v24 + 24));
    }

    v31 = *(v24 + 8);
    if (v31 && *v31 != v31[1])
    {
      v25 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v24 + 8), a2) + v25;
    }

    *(v24 + 40) = v25;
    if (v25 >= 0x80)
    {
      v4 += v25 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
      v3 = *(a1 + 80);
      if ((v3 & 8) != 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v4 += v25 + 2;
      v3 = *(a1 + 80);
      if ((v3 & 8) != 0)
      {
        goto LABEL_71;
      }
    }

LABEL_45:
    if ((v3 & 0x10) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_83;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_45;
  }

LABEL_71:
  v32 = *(a1 + 40);
  if (!v32)
  {
    v32 = *(qword_10045DB88 + 40);
  }

  v33 = *(v32 + 1);
  v34 = (9 * v32[6]);
  if (v33 && *v33 != v33[1])
  {
    v34 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v32 + 2), a2) + v34;
  }

  v32[8] = v34;
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
  }

  else
  {
    v35 = 1;
  }

  v36 = v4 + v34 + v35 + 1;
  v3 = *(a1 + 80);
  if ((v3 & 0x10) != 0)
  {
    v5 = v36 + 9;
  }

  else
  {
    v5 = v36;
  }

  if ((v3 & 0x20) == 0)
  {
LABEL_49:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_50;
    }

LABEL_90:
    v39 = *(a1 + 56);
    if (v39)
    {
      v40 = sub_100062B24(v39, a2);
      if (v40 < 0x80)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v40 = sub_100062B24(*(qword_10045DB88 + 56), a2);
      if (v40 < 0x80)
      {
LABEL_92:
        v5 = (v5 + v40 + 2);
        if ((*(a1 + 80) & 0x80) != 0)
        {
          goto LABEL_96;
        }

LABEL_51:
        v6 = (a1 + 8);
        v7 = *(a1 + 8);
        if (!v7)
        {
          goto LABEL_115;
        }

        goto LABEL_113;
      }
    }

    v5 = v5 + v40 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2) + 1;
    if ((*(a1 + 80) & 0x80) != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_51;
  }

LABEL_83:
  v37 = *(a1 + 72);
  if ((v37 & 0x80000000) != 0)
  {
    v5 = (v5 + 11);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_90;
    }
  }

  else if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2);
    v3 = *(a1 + 80);
    v5 = (v38 + 1 + v5);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v5 = (v5 + 2);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_90;
    }
  }

LABEL_50:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_51;
  }

LABEL_96:
  v41 = *(a1 + 64);
  if (v41)
  {
    if ((*(v41 + 28) & 1) == 0)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v41 = *(qword_10045DB88 + 64);
    if ((*(v41 + 28) & 1) == 0)
    {
LABEL_98:
      v42 = 0;
      v43 = (v41 + 8);
      v44 = *(v41 + 8);
      if (!v44)
      {
        goto LABEL_109;
      }

      goto LABEL_107;
    }
  }

  v45 = *(v41 + 16);
  if (v45)
  {
    v46 = sub_100065EE4(v45, a2);
    if (v46 < 0x80)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v46 = sub_100065EE4(*(qword_10045DB98 + 16), a2);
    if (v46 < 0x80)
    {
LABEL_103:
      v42 = (v46 + 2);
      v43 = (v41 + 8);
      v44 = *(v41 + 8);
      if (!v44)
      {
        goto LABEL_109;
      }

      goto LABEL_107;
    }
  }

  v42 = v46 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2) + 1;
  v43 = (v41 + 8);
  v44 = *(v41 + 8);
  if (!v44)
  {
    goto LABEL_109;
  }

LABEL_107:
  if (*v44 != v44[1])
  {
    v42 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v43, a2) + v42;
  }

LABEL_109:
  *(v41 + 24) = v42;
  if (v42 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
  }

  else
  {
    v47 = 1;
  }

  v5 = (v5 + v42 + v47 + 1);
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (v7)
  {
LABEL_113:
    if (*v7 != v7[1])
    {
      v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
    }
  }

LABEL_115:
  *(a1 + 76) = v5;
  return v5;
}

uint64_t sub_1000650CC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100062F44(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000651AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000651C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000651D4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
    if ((*(a2 + 28) & 1) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else if ((*(a2 + 28) & 1) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  *(a1 + 28) |= 1u;
  v4 = *(a1 + 16);
  if (!v4)
  {
    operator new();
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    v5 = *(qword_10045DB98 + 16);
  }

  sub_100065478(v4, v5);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100065318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10006532C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100065340(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_1000653D4()
{
  v0 = qword_10045C820;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100055F98;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045C768;
}

void sub_100065464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100065478(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), *(a2 + 32) + *(a1 + 32));
  if (*(a2 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v6 = *(*(a2 + 24) + 8 * v4);
      v7 = *(a1 + 36);
      v8 = *(a1 + 32);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v7 + 1);
          v7 = *(a1 + 36);
        }

        *(a1 + 36) = v7 + 1;
        operator new();
      }

      v5 = *(a1 + 24);
      *(a1 + 32) = v8 + 1;
      sub_1000616C8(*(v5 + 8 * v8), v6);
      ++v4;
    }

    while (v4 < *(a2 + 32));
  }

  if (*(a2 + 52))
  {
    v9 = *(a2 + 16);
    *(a1 + 52) |= 1u;
    *(a1 + 16) = v9;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100065624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100065638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100065668(uint64_t a1)
{
  *a1 = off_1004353C8;
  v2 = *(a1 + 36);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 24) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 36);
      }
    }
  }

  if (*(a1 + 24))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100065734(uint64_t a1)
{
  *a1 = off_1004353C8;
  v2 = *(a1 + 36);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 24) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 36);
      }
    }
  }

  if (*(a1 + 24))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1000658B0(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    *(this + 16) = 0;
  }

  if (*(this + 32) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 24) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 32));
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  *(v4 + 6) = 0;
  *(v4 + 11) = 0;
  if (v5)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
  }

  return this;
}

uint64_t sub_100065958(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
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

          v8 = TagFallback & 7;
          if (TagFallback >> 3 != 2)
          {
            break;
          }

          if (v8 == 2)
          {
            goto LABEL_21;
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

        if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_14;
        }

        v9 = *(this + 1);
        v10 = *(this + 2);
        if (v9 < v10)
        {
          v11 = *v9;
          if ((v11 & 0x8000000000000000) == 0)
          {
            break;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v14 = *(this + 2);
        *(a1 + 52) |= 1u;
        if (v12 < v14)
        {
          goto LABEL_19;
        }
      }

      *(a1 + 16) = v11;
      v12 = v9 + 1;
      *(this + 1) = v12;
      *(a1 + 52) |= 1u;
    }

    while (v12 >= v10);
LABEL_19:
    if (*v12 == 18)
    {
      do
      {
        *(this + 1) = v12 + 1;
LABEL_21:
        v15 = *(a1 + 36);
        v16 = *(a1 + 32);
        if (v16 >= v15)
        {
          if (v15 == *(a1 + 40))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v15 + 1);
            v15 = *(a1 + 36);
          }

          *(a1 + 36) = v15 + 1;
          operator new();
        }

        v17 = *(a1 + 24);
        *(a1 + 32) = v16 + 1;
        v18 = *(v17 + 8 * v16);
        v29 = 0;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
          {
            return 0;
          }
        }

        else
        {
          v29 = *v19;
          *(this + 1) = v19 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v29);
        if (!sub_100061920(v18, this, v23, v24) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
        v25 = *(this + 14);
        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (v27 < 0 == v26)
        {
          *(this + 14) = v27;
        }

        v12 = *(this + 1);
        v28 = *(this + 2);
      }

      while (v12 < v28 && *v12 == 18);
      if (v12 == v28 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        break;
      }
    }
  }

  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_100065C5C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 52))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 16), a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v5 + 24) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 32));
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100065D10(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 52))
  {
    v5 = *(this + 2);
    *a2 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, a2 + 1, a3);
  }

  if (*(this + 8) >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(*(this + 3) + 8 * v6);
      *v3 = 18;
      v8 = *(v7 + 32);
      if (v8 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
      v9 = *(v7 + 36);
      if (v9)
      {
        goto LABEL_8;
      }

LABEL_9:
      if ((v9 & 2) != 0)
      {
        v14 = *(v7 + 24);
        *v3 = 17;
        *(v3 + 1) = v14;
        v3 = (v3 + 9);
        v15 = *(v7 + 8);
        v12 = (v7 + 8);
        v11 = v15;
        if (v15)
        {
LABEL_15:
          if (*v11 != v11[1])
          {
            v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v12, v3, a3);
          }
        }
      }

      else
      {
        v13 = *(v7 + 8);
        v12 = (v7 + 8);
        v11 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      if (++v6 >= *(this + 8))
      {
        goto LABEL_17;
      }
    }

    *(v3 + 1) = v8;
    v3 = (v3 + 2);
    v9 = *(v7 + 36);
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v10 = *(v7 + 16);
    *v3 = 9;
    *(v3 + 1) = v10;
    v3 = (v3 + 9);
    v9 = *(v7 + 36);
    goto LABEL_9;
  }

LABEL_17:
  v18 = *(this + 1);
  v17 = (this + 8);
  v16 = v18;
  if (!v18 || *v16 == v16[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, v3, a3);
}

uint64_t sub_100065EE4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = v3;
    if (v3 < 1)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2);
  v6 = *(a1 + 32);
  v4 = (v6 + v5 + 1);
  if (v6 >= 1)
  {
LABEL_5:
    for (i = 0; i < *(a1 + 32); ++i)
    {
      while (1)
      {
        v8 = *(*(a1 + 24) + 8 * i);
        v9 = *(v8 + 36);
        v10 = (v9 << 31 >> 31) & 9;
        if ((v9 & 2) != 0)
        {
          v10 += 9;
        }

        LODWORD(v11) = *(v8 + 36) ? v10 : 0;
        v12 = *(v8 + 8);
        if (v12)
        {
          if (*v12 != v12[1])
          {
            break;
          }
        }

        *(v8 + 32) = v11;
LABEL_7:
        v4 = (v11 + v4 + 1);
        if (++i >= *(a1 + 32))
        {
          goto LABEL_17;
        }
      }

      v11 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v8 + 8), a2) + v11);
      *(v8 + 32) = v11;
      if (v11 < 0x80)
      {
        goto LABEL_7;
      }

      v4 = v11 + v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    }
  }

LABEL_17:
  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 48) = v4;
  return v4;
}