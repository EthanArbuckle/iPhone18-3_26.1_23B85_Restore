uint64_t sub_100301628(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, a2, a4);
}

uint64_t sub_1003016B4(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
      if ((*(v5 + 16) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 16);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_10030175C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 116);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 8), a3);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
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
    v8 = *(qword_102637C50 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
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
    v9 = *(qword_102637C50 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
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
    v10 = *(qword_102637C50 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
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
    v11 = *(qword_102637C50 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 48), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 52), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 56), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 64), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xC, a2, *(v5 + 68), a3);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 72), a3);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 116) & 0x4000) != 0)
  {
LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  }

LABEL_17:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 88) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 96));
  }

  return result;
}

uint64_t sub_1003019A0(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 24);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 12), a3);
    if ((*(v4 + 24) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(result + 8), a3);
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v6, a3);
}

uint64_t sub_100301A2C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637C38 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return result;
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
    v8 = *(qword_102637C38 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v9, a3);
  }

  return result;
}

uint64_t sub_100301AD8(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_100301B44(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
    if ((*(v5 + 20) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
  v6 = *(v5 + 20);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 12);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t sub_100301C08(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
      if ((*(v5 + 16) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 16);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_100301CB0(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 11), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 12), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 13), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 14), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 16), a2, a4);
    if ((*(v5 + 24) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 15), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_21:
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xA, v7, a2, a4);
}

uint64_t sub_100301E00(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(qword_102637C98 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_100301E7C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

uint64_t sub_100301F08(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 24), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t sub_100301FCC(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v7, a3);
}

uint64_t sub_100302074(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637D08 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
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
    v8 = *(qword_102637D08 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
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
    v9 = *(qword_102637D08 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102637D08 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_19:
    v11 = *(v5 + 40);
    if (!v11)
    {
      v11 = *(qword_102637D08 + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  }

  return result;
}

uint64_t sub_100302188(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 24), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        return result;
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
    v7 = *(qword_102637CD0 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(qword_102637CD0 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

  return result;
}

uint64_t sub_100302234(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637CC0 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_1003022D0(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v4, v7, a3);
}

uint64_t sub_100302378(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_10:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637CE0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  if ((*(v5 + 40) & 0x10) != 0)
  {
LABEL_13:
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(qword_102637CE0 + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  }

  return result;
}

uint64_t sub_10030245C(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, v7, a3);
  }

  return result;
}

uint64_t sub_1003024C8(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 48), a2, a4);
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
    v7 = *(qword_102637CF0 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
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
    v8 = *(qword_102637CF0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
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
    v9 = *(qword_102637CF0 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102637CF0 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  if ((*(v5 + 56) & 0x20) != 0)
  {
LABEL_21:
    v11 = *(v5 + 40);
    if (!v11)
    {
      v11 = *(qword_102637CF0 + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  }

  return result;
}

uint64_t sub_1003025F8(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, v4, v7, a3);
}

uint64_t sub_100302684(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 32), a2, a4);
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
    v7 = *(qword_102637CF8 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102637CF8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 24);
    if (!v9)
    {
      v9 = *(qword_102637CF8 + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return result;
}

uint64_t sub_10030275C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637D00 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_1003027D8(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, *(v5 + 16), a3);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, v4, *(v5 + 20), a3);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, v4, *(v5 + 24), a3);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, v4, *(v5 + 28), a3);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, v4, *(v5 + 32), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, v4, *(v5 + 40), a3);
    if ((*(v5 + 52) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, v4, *(v5 + 36), a3);
  v6 = *(v5 + 52);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return result;
  }

LABEL_19:
  v7 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, v4, v7, a3);
}

uint64_t *sub_10030290C(uint64_t *result)
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

uint64_t sub_1003029A0(uint64_t a1)
{
  if (*a1 <= 0.0)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 12);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 28);
  v4 = v3 <= 0;
  v5 = v3 > 0;
  v6 = 1;
  if (!v4)
  {
    v6 = 2;
  }

  if (*(a1 + 32) > 0)
  {
    v5 = v6;
  }

  if (*(a1 + 36) > 0)
  {
    ++v5;
  }

  if (*(a1 + 40) > 0)
  {
    ++v5;
  }

  if (v5 >= 3 && (v2 / v1 * 100.0 >= 50.0 ? (v7 = *(a1 + 20) / v2 * 100.0 < 40.0) : (v7 = 1), !v7 || *(a1 + 24) > 3))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_100302A54(uint64_t *a1, uint64_t a2)
{
  *a1 = *(a2 + 4);
  a1[2] = *(a2 + 28);
  a1[3] = *(a2 + 44);
  a1[4] = *(a2 + 60);
  a1[5] = *(a2 + 20);
  a1[6] = *(a2 + 36);
  a1[8] = *(a2 + 52);
  a1[7] = *(a2 + 68);
  a1[9] = *(a2 + 184);
  a1[10] = *(a2 + 504);
  *(a1 + 22) = *(a2 + 132);
  if (qword_1025D45E0 != -1)
  {
    sub_1003102DC();
  }

  v4 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 96);
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4];
    v11 = a1[5];
    v13 = a1[8];
    v12 = a1[9];
    v14 = a1[6];
    v15 = a1[7];
    v16 = a1[10];
    v17 = *(a1 + 22);
    *buf = 134352129;
    v20 = v12;
    v21 = 1026;
    v22 = v5;
    v23 = 2053;
    v24 = v6;
    v25 = 2053;
    v26 = v7;
    v27 = 2050;
    v28 = v8;
    v29 = 2050;
    v30 = v9;
    v31 = 2050;
    v32 = v10;
    v33 = 2050;
    v34 = v11;
    v35 = 2050;
    v36 = v14;
    v37 = 2050;
    v38 = v13;
    v39 = 2050;
    v40 = v15;
    v41 = 2050;
    v42 = v16;
    v43 = 1026;
    v44 = v17;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,DeviceLocationData,type,%{public}d,ll,%{sensitive}.7lf,%{sensitive}.7lf,alt,%{public}.2lf,speed,%{public}.2lf,course,%{public}.2lf,hUnc,%{public}.2lf,vUnc,%{public}.2lf,speedUnc,%{public}.2lf,courseUnc,%{public}.2lf,mct,%{public}.1lf,refFrame,%{public}d", buf, 0x7Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 != -1)
    {
      sub_101B12B9C();
    }

    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void DeviceLocationData::fillData(const CLLocationProvider_Type::NotificationData &)", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }
}

_OWORD *sub_100302D58(void *a1, char *__src, _OWORD *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 5) + 1;
    if (v15 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    v16 = __src - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v14) >> 5);
    v18 = 2 * v17;
    if (2 * v17 <= v15)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 5) + 1;
    }

    if (v17 >= 0x155555555555555)
    {
      v19 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    v42 = a1;
    if (v19)
    {
      sub_1010819E4(a1, v19);
    }

    v39 = 0;
    v40 = 32 * (v16 >> 5);
    v41 = v40;
    sub_101081890(&v39, a3);
    v24 = v40;
    memcpy(v41, v4, a1[1] - v4);
    v25 = *a1;
    v26 = v40;
    *&v41 = v41 + a1[1] - v4;
    a1[1] = v4;
    v27 = v4 - v25;
    v28 = (v26 - (v4 - v25));
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    v30 = a1[2];
    *(a1 + 1) = v41;
    *&v41 = v29;
    *(&v41 + 1) = v30;
    v39 = v29;
    v40 = v29;
    if (v29)
    {
      operator delete(v29);
    }

    return v24;
  }

  else if (__src == v6)
  {
    v20 = a3[1];
    *v6 = *a3;
    *(v6 + 1) = v20;
    v21 = a3[2];
    v22 = a3[3];
    v23 = a3[5];
    *(v6 + 4) = a3[4];
    *(v6 + 5) = v23;
    *(v6 + 2) = v21;
    *(v6 + 3) = v22;
    a1[1] = v6 + 96;
  }

  else
  {
    v8 = __src + 96;
    if (v6 < 0x60)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 96;
      v10 = *(v6 - 5);
      *v6 = *(v6 - 6);
      *(v6 + 1) = v10;
      v11 = *(v6 - 4);
      v12 = *(v6 - 3);
      v13 = *(v6 - 1);
      *(v6 + 4) = *(v6 - 2);
      *(v6 + 5) = v13;
      *(v6 + 2) = v11;
      *(v6 + 3) = v12;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(v8, __src, v6 - v8 - 4);
      v9 = a1[1];
    }

    v31 = v9 <= a3 || v4 > a3;
    v32 = 6;
    if (v31)
    {
      v32 = 0;
    }

    v33 = &a3[v32];
    v34 = v33[1];
    *v4 = *v33;
    v4[1] = v34;
    v35 = v33[2];
    v36 = v33[3];
    v37 = v33[4];
    *(v4 + 76) = *(v33 + 76);
    v4[3] = v36;
    v4[4] = v37;
    v4[2] = v35;
  }

  return v4;
}

void sub_100302F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100302FAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = (a1 + 96);
  if ((*(a1 + 96) & 0xFFFFFFF7) != 1)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1019EC040();
    }

    v11 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      v12 = *v3;
      *buf = 67109120;
      *v32 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Location type %d is not a GNSS type.", buf, 8u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019EC054(v3);
      return 0;
    }

    return result;
  }

  v6 = (a1 + 20);
  v7 = *(a1 + 20);
  if (v7 > *(sub_100303574() + 3))
  {
    if (qword_1025D4640 != -1)
    {
      sub_1019EC040();
    }

    v8 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      v9 = *v6;
      *buf = 134283521;
      *v32 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Location uncertainty %{private}.2f above threshold, no reason to inflate uncertainty", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019EC28C(v6);
      return 0;
    }

    return result;
  }

  v13 = *(a2 + 520);
  if (v13)
  {
    v14 = *v13;
    v15 = v13[1];
    if ((*sub_100303574() & 1) != 0 || v14 != v15)
    {
      if (v14 != v15)
      {
        v16 = *(a2 + 520);
        v17 = *v16;
        v18 = v16[1];
        if (*v16 != v18)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          do
          {
            v22 = *(v17 + 24);
            if (v22 == 1)
            {
              v23 = *(v17 + 16);
              if (*(sub_100303574() + 2) < v23)
              {
                ++v21;
              }
            }

            v20 += v22;
            v17 += 28;
            ++v19;
          }

          while (v17 != v18);
LABEL_28:
          if (v20 <= *(sub_100303574() + 1) || v21 <= *(sub_100303574() + 2))
          {
            v27 = *v6;
            *a3 = *(sub_100303574() + 3);
            if (qword_1025D4640 != -1)
            {
              sub_1019EC040();
            }

            v28 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
            {
              v29 = *a3;
              *buf = 134284545;
              *v32 = v27;
              *&v32[8] = 2049;
              v33 = v29;
              v34 = 1025;
              v35 = v19;
              v36 = 1025;
              v37 = v20;
              v38 = 1025;
              v39 = v21;
              _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "Inflating GNSS uncertainty for bad signal condition %{private}.2f -> %{private}.2f: %{private}d total signals (%{private}d tracked, %{private}d strong)", buf, 0x28u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_1019EC264();
              }

              v30 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::inflateGpsUncertaintyForSignalStrength(const CLDaemonLocation &, const CLDaemonLocationPrivate &, double &)", "%s\n", v30);
              if (v30 != buf)
              {
                free(v30);
              }
            }

            return 1;
          }

          else
          {
            if (qword_1025D4640 != -1)
            {
              sub_1019EC040();
            }

            v24 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67175169;
              *v32 = v19;
              *&v32[4] = 1025;
              *&v32[6] = v20;
              LOWORD(v33) = 1025;
              *(&v33 + 2) = v21;
              _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "GNSS uncertainty unchanged based on signal strength: %{private}d total signals (%{private}d tracked, %{private}d strong)", buf, 0x14u);
            }

            result = sub_10000A100(121, 2);
            if (result)
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_1019EC264();
              }

              v25 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::inflateGpsUncertaintyForSignalStrength(const CLDaemonLocation &, const CLDaemonLocationPrivate &, double &)", "%s\n", v25);
              if (v25 != buf)
              {
                free(v25);
              }

              return 0;
            }
          }

          return result;
        }
      }

LABEL_27:
      v21 = 0;
      v20 = 0;
      v19 = 0;
      goto LABEL_28;
    }
  }

  else if (*sub_100303574())
  {
    goto LABEL_27;
  }

  if (qword_1025D4640 != -1)
  {
    sub_1019EC040();
  }

  v26 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "Unable to inflate GNSS uncertainty, signal strength not available.", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019EC158();
    return 0;
  }

  return result;
}

const void **sub_100303580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = @"kCLTelephonyServiceResetNotification";
  v7[1] = @"kCLTelephonyServiceConnectedNotification";
  v7[2] = @"kCLTelephonyServiceDisconnectedNotification";
  v7[3] = @"kCallStatusChangeNotification";
  v7[4] = @"kAtLeastOneVoiceCallInProgress";
  v7[5] = @"kNoVoiceCallInProgress";
  if (![[NSArray arrayWithObjects:6 count:?], "containsObject:", a2])
  {
    sub_1018C9774();
  }

  if (a3)
  {
    sub_1018C97A0();
  }

  return sub_10006D908(a1, a2, 0);
}

void sub_100303768(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100EB5E4C(a1);
    *(a1 + 134) = 1;
    if (*(a1 + 132) == 1)
    {
      *(a1 + 132) = 0;
      *(a1 + 92) = *(a1 + 112);
      *(a1 + 108) = *(a1 + 128);
      sub_100EB52FC(a1);
    }

    v4 = sub_100EB5F80([a2 status]);
    v5 = [a2 originatingUIType];
    v6 = sub_100EB6084([a2 isSOS], v5);
    *(a1 + 240) = v6;
    *(a1 + 244) = v6;
    *buf = 82;
    *v29 = sub_100EB640C(v6);
    LODWORD(v35) = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    sub_1007B6614(&v25, buf, &v36, 1uLL);
    sub_10008F96C(v29);
    v7 = *(a1 + 712);
    memset(v24, 0, sizeof(v24));
    sub_1007B68E0(v24, v25, v26, 0xCCCCCCCCCCCCCCCDLL * ((v26 - v25) >> 3));
    [v7 setMeasurements:sub_1007B2EC4(v24)];
    *buf = v24;
    sub_1007B6858(buf);
    if (qword_1025D4660 != -1)
    {
      sub_101AB5F70();
    }

    v8 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a2 isConnected];
      v10 = [a2 isSOS];
      v11 = v22;
      sub_100EB5F6C(v4, v22);
      if (v23 < 0)
      {
        v11 = v22[0];
      }

      sub_100EB6070(*(a1 + 244), __p);
      v12 = v21;
      v13 = __p[0];
      v14 = [a2 isEndpointOnCurrentDevice];
      *buf = 68290562;
      v15 = __p;
      if (v12 < 0)
      {
        v15 = v13;
      }

      *&buf[4] = 0;
      *v29 = 2082;
      *&v29[2] = "";
      v30 = 1026;
      v31 = v9;
      v32 = 1026;
      v33 = v10;
      v34 = 2082;
      v35 = v11;
      v36 = 1026;
      v37 = v5;
      v38 = 2082;
      v39 = v15;
      v40 = 1026;
      v41 = v14;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#EmergCon,onEmergencyCallStatusChanged, call connected:%{public}hhd, isSOS:%{public}hhd, call status:%{public, location:escape_only}s, TU trigger:%{public}d, trigger:%{public, location:escape_only}s, endpointOnCurrentDevice:%{public}hhd}", buf, 0x3Eu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    sub_100303CC0(*(a1 + 688), [a2 callUUID], *(a1 + 244), v4, objc_msgSend(a2, "isEndpointOnCurrentDevice"));
    v16 = a1 + 584;
    if (!*(a1 + 584))
    {
      operator new();
    }

    if (*(a1 + 68) != [a2 isConnected])
    {
      v17 = [a2 isConnected];
      *(a1 + 68) = v17;
      if (v17)
      {
        sub_100EB504C(a1, *(a1 + 64));
        sub_100EB52FC(a1);
        if (*v16)
        {
          *(*v16 + 33) = 1;
          *(*v16 + 552) = sub_1000081AC();
        }
      }
    }

    *buf = &v25;
    sub_1007B6858(buf);
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101AB5E80();
    }

    v18 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#EmergCon,onEmergencyCallStatusChanged,no emergency call active", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AB6434();
    }

    *(a1 + 68) = 0;
    sub_100303CC0(*(a1 + 688), 0, 0, 0, 0);
    if (sub_10030434C(a1 + 72))
    {
      sub_100EB8F94(a1);
    }

    *(a1 + 134) = 0;
    v19 = *(a1 + 584);
    if (v19 && (*(v19 + 697) & 1) == 0)
    {
      *(v19 + 697) = 1;
      sub_100EB9864(v19);
    }

    if (*(a1 + 240) && objc_opt_class() && [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")])
    {
      v42 = @"callTriggerType";
      v43 = [NSNumber numberWithInt:*(a1 + 240)];
      [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      AnalyticsSendEvent();
    }

    *(a1 + 256) = 0;
    *(a1 + 240) = 0;
  }
}

void sub_100303CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1 + 1832;
  v11 = 1;
  v12 = "AML";
  do
  {
    v13 = v11;
    v14 = *(v10 + 8 * v9);
    if (v14)
    {
      (*(*v14 + 40))(v14, a2, a3, a4, a5);
    }

    else
    {
      if (qword_1025D4660 != -1)
      {
        sub_101B924F8();
      }

      v15 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_ERROR))
      {
        sub_10000EC00(__p, v12);
        v16 = __p;
        if (v24 < 0)
        {
          v16 = __p[0];
        }

        *buf = 136446210;
        *&buf[4] = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#Actor,handleEmergencyCallStatusChange,pointer was null for %{public}s", buf, 0xCu);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 0))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1025D4660 != -1)
        {
          sub_101B924F8();
        }

        sub_10000EC00(buf, v12);
        v17 = buf;
        if (v20 < 0)
        {
          v17 = *buf;
        }

        v21 = 136446210;
        v22 = v17;
        v18 = _os_log_send_and_compose_impl();
        if (v20 < 0)
        {
          operator delete(*buf);
        }

        sub_100152C7C("Generic", 1, 0, 0, "void CLEmergencyActor::handleEmergencyCallStatusChange(NSString *, CLEmergencyController::EmergencyTriggerType, CLEmergencyController::CallStatus, BOOL)", "%s\n", v18);
        if (v18 != __p)
        {
          free(v18);
        }
      }
    }

    v11 = 0;
    v12 = "EED2";
    v9 = 1;
  }

  while ((v13 & 1) != 0);
}

void sub_100303F4C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 1448);
  if (v4 != a4)
  {
    sub_1012923CC(a1, v4, a4);
    *(a1 + 1448) = a4;
  }
}

id sub_100303F8C(uint64_t a1, void *a2, int a3, int a4, unsigned int a5)
{
  result = a2;
  *(a1 + 1904) = result;
  if (a2)
  {
    result = [a2 length];
    if (result)
    {

      result = a2;
      *(a1 + 2024) = result;
    }
  }

  v11 = *(a1 + 1796);
  v12 = *(a1 + 1448);
  if (v11 != a3 || v12 != a4)
  {
    sub_1012923CC(a1, v12, a4);
    if (qword_1025D4660 != -1)
    {
      sub_1019ABD38();
    }

    v14 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      sub_100EB6070(*(a1 + 1796), v32);
      if (v33 >= 0)
      {
        v15 = v32;
      }

      else
      {
        v15 = v32[0];
      }

      sub_100EB6070(a3, v30);
      if (v31 >= 0)
      {
        v16 = v30;
      }

      else
      {
        v16 = v30[0];
      }

      v25 = v16;
      sub_100EB5F6C(*(a1 + 1448), v28);
      v24 = a5;
      if (v29 >= 0)
      {
        v17 = v28;
      }

      else
      {
        v17 = v28[0];
      }

      sub_100EB5F6C(a4, __p);
      v18 = v27;
      v19 = __p[0];
      v20 = [a2 UTF8String];
      *buf = 68290562;
      v21 = __p;
      if (v18 < 0)
      {
        v21 = v19;
      }

      *v35 = 0;
      *&v35[4] = 2082;
      *&v35[6] = "";
      *&v35[14] = 2082;
      *&v35[16] = v15;
      v36 = 2082;
      v37 = v25;
      v38 = 2082;
      v39 = v17;
      v40 = 2082;
      v41 = v21;
      v42 = 1026;
      a5 = v24;
      v43 = v24;
      v44 = 2082;
      v45 = v20;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#EED2 emergency call status change, old trigger:%{public, location:escape_only}s, new trigger:%{public, location:escape_only}s, old call status:%{public, location:escape_only}s, new call status:%{public, location:escape_only}s, endpointOnCurrentDevice:%{public}hhd, callUUID:%{public, location:escape_only}s}", buf, 0x4Au);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if (v33 < 0)
      {
        operator delete(v32[0]);
      }
    }

    *(a1 + 1796) = a3;
    *(a1 + 1448) = a4;
    result = sub_100A03D04(a1 + 1544, 5);
    if (*(a1 + 1896) != a5)
    {
      if (qword_1025D4660 != -1)
      {
        sub_1019ABCCC();
      }

      v22 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 1896);
        *buf = 134349312;
        *v35 = v23;
        *&v35[8] = 2050;
        *&v35[10] = a5;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#EED2 callEndpointOnCurrentDevice changed from %{public}ld to %{public}ld", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019B8020((a1 + 1896));
      }

      *(a1 + 1896) = a5;
      result = sub_100A03D04(a1 + 1544, 20);
    }

    if (v11 != a3 && (*(a1 + 1448) - 2) <= 3 && *(a1 + 1461) == 1)
    {
      return sub_100A03D04(a1 + 1544, 9);
    }
  }

  return result;
}

void sub_1003042E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030435C(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (qword_1025D42C0 != -1)
  {
    sub_1019E0028();
  }

  v4 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Saving daemon cache for MotionGyroDaily AWD metrics", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019E03DC();
  }

  v12 = 0;
  v5 = sub_1000206B4();
  v6 = sub_1003045C8(v5, @"MotionGyroDaily", &v12);
  if (v6)
  {
    sub_100304634(v6, a2);
    v7 = sub_1000206B4();
    sub_1003046B4(v7);
    if (qword_1025D42C0 != -1)
    {
      sub_1019DFE48();
    }

    v8 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a2 + 44);
      v10 = *(a2 + 48);
      *buf = 67109376;
      v14 = v9;
      v15 = 1024;
      v16 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "magnitude,%d,activeMins,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019E0594(a2);
    }
  }

  else
  {
    if (qword_1025D42C0 != -1)
    {
      sub_1019DFE48();
    }

    v11 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning daemon cache does not exist!", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019E04B8();
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100304570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3 = a2;
  BYTE8(v3) = a3;
  *(a1 + 116) = *(&a3 + 1);
  *(a1 + 120) = llroundf((*(&v3 + 1) * 0.000001) / 60.0);
  sub_10030435C(a1, a1 + 72);
}

uint64_t sub_1003045C8(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  *a3 = 0;
  v4 = (*(*a1 + 904))(a1);
  if (v4 && *a3)
  {
    CFAutorelease(*a3);
  }

  return v4;
}

id sub_100304634(uint64_t a1, uint64_t a2)
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *(a2 + 44)), @"GyroMagnitude"}];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *(a2 + 48)), @"ActiveMins"}];
  return v3;
}

void sub_1003046F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = _os_activity_create(dword_100000000, "CL: kCLConnectionMessageFusionInfoEnabled", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v3 + 72);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2050;
    v18 = v3;
    v19 = 1026;
    v20 = 1;
    v21 = 1026;
    v22 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageFusionInfoEnabled, event:%{public, location:escape_only}s, this:%{public}p, registrationRequired:%{public}hhd, registrationReceived:%{public}hhd}", buf, 0x32u);
  }

  if (*(v3 + 72) != 1)
  {
    os_activity_scope_leave(&state);
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

  v9[0] = v5;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100304ACC(v3, v9);
  if (v4)
  {
    sub_100008080(v4);
    os_activity_scope_leave(&state);
LABEL_11:
    sub_100008080(v4);
    return;
  }

  os_activity_scope_leave(&state);
}

void sub_1003048F0(uint64_t a1)
{
  sub_100305114(a1);

  operator delete();
}

void sub_100304928(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = a1 + 80;
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1018CD8DC();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D04A4();
      }
    }
  }
}

void sub_100304ACC(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  sub_10000EC00(buf, "com.apple.locationd.private_info");
  v5 = (*(*a1 + 40))(a1, buf);
  v6 = v5;
  if (SBYTE3(v14) < 0)
  {
    operator delete(*buf);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v5)
  {
LABEL_3:
    v7 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageEnabledKey"];
    if (!v7 || (sub_1000700DC(v7, (a1 + 279)) & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019EED30();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "kCLConnectionMessageEnabledKey";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019EEDB0(buf);
        v9 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLDaemonClient::handleMessageFusionInfoEnabled(std::shared_ptr<CLConnectionMessage>)", "%s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }

    goto LABEL_17;
  }

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v10 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = 2114;
    v14 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Client does not have appropriate entitlement to enable fusion info, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

LABEL_17:
}

void sub_100304DBC(void *a1)
{
  sub_10000EC00(buf, "kCLConnectionMessageLocation");
  if ((*(*a1 + 48))(a1, buf))
  {
    v2 = 1;
  }

  else
  {
    sub_10000EC00(__p, "kCLConnectionMessageSignificantLocationChange");
    v2 = (*(*a1 + 48))(a1, __p);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SBYTE3(v13) < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }

LABEL_9:
    if (qword_1025D47A0 != -1)
    {
      sub_1019EED30();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v4 = a1[6];
      *buf = 68289282;
      *&buf[4] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Sending denied error message, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v7 = @"kCLConnectionMessageErrorKey";
    v8 = &off_10254F6E0;
    *buf = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    sub_100304FC8();
  }

  if (v2)
  {
    goto LABEL_9;
  }
}

void sub_100304F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100305048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030506C(uint64_t a1)
{
  sub_1003050A4(a1);

  operator delete();
}

uint64_t sub_1003050A4(uint64_t a1)
{
  *a1 = &off_102456910;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_100305114(uint64_t a1)
{
  *a1 = off_102460F80;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_100305184(_BYTE *a1, void *a2)
{
  v9 = a2;
  if ((a1[108] & 1) == 0)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 80);
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1018900F8();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = a1 + 8;
        if (a1[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101890848(a1, a2);
      }
    }
  }
}

void sub_100305394(uint64_t a1, unsigned int a2, unsigned int a3, char **a4)
{
  std::mutex::lock((a1 + 8));
  if ((*(a1 + 96) & 1) == 0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10195E980();
    }

    v8 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v9 = -858993459 * ((a4[1] - *a4) >> 3);
      *buf = 67240704;
      *&buf[4] = v9;
      *&buf[8] = 1026;
      *&buf[10] = a2;
      *&buf[14] = 1026;
      LODWORD(v46) = a3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLMM,RouteHints,updateMapRouteHint,%{public}d,routingType,%{public}d,stepType,%{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195E93C(buf);
      v23 = -858993459 * ((a4[1] - *a4) >> 3);
      LODWORD(v40) = 67240704;
      HIDWORD(v40) = v23;
      LOWORD(v41) = 1026;
      *(&v41 + 2) = a2;
      HIWORD(v41) = 1026;
      LODWORD(v42) = a3;
      v24 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMapRouteHintController::updateMapRouteHint(CLClientLocationRouteHintType, CLClientLocationRouteHintType, std::vector<CLMapsRouteHint> &)", "%s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    v41 = 0;
    v42 = 0;
    v43 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v44 = _Q0;
    v40 = __PAIR64__(a3, a2);
    *&v44 = CFAbsoluteTimeGetCurrent();
    *(&v44 + 1) = sub_1000081AC();
    if (&v41 != a4)
    {
      sub_100306558(&v41, *a4, a4[1], 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3));
    }

    v15 = *(a1 + 72);
    for (i = *(a1 + 80); v15 != i; v15 += 4)
    {
      if (*(v15 + 23) < 0)
      {
        sub_100007244(buf, *v15, *(v15 + 1));
      }

      else
      {
        v17 = *v15;
        v46 = *(v15 + 2);
        *buf = v17;
      }

      v47 = *(v15 + 3);
      sub_1001C7078(v48, (v15 + 2));
      v18 = v47;
      if (v47)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1003082E0;
        block[3] = &unk_102477FA8;
        if (SHIBYTE(v46) < 0)
        {
          sub_100007244(&v26, *buf, *&buf[8]);
        }

        else
        {
          v26 = *buf;
          v27 = v46;
        }

        v28 = v47;
        sub_1001C7078(v29, v48);
        v29[4] = v40;
        v31 = 0;
        v32 = 0;
        __p = 0;
        sub_10030596C(&__p, v41, v42, 0xCCCCCCCCCCCCCCCDLL * ((v42 - v41) >> 3));
        v33 = v44;
        dispatch_async(v18, block);
        if (__p)
        {
          v31 = __p;
          operator delete(__p);
        }

        sub_1001C9C60(v29);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }
      }

      else
      {
        if (qword_1025D46B0 != -1)
        {
          sub_10195E914();
        }

        v19 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_FAULT))
        {
          v20 = v46 >= 0 ? buf : *buf;
          *v34 = 68289282;
          v35 = 0;
          v36 = 2082;
          v37 = "";
          v38 = 2082;
          v39 = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLMM,RouteHints,updateMapRouteHint,unexpectedly encountered a nil queue in an observer, moving on, ob:%{public, location:escape_only}s}", v34, 0x1Cu);
          if (qword_1025D46B0 != -1)
          {
            sub_10195E914();
          }
        }

        v21 = qword_1025D46B8;
        if (os_signpost_enabled(qword_1025D46B8))
        {
          if (v46 >= 0)
          {
            v22 = buf;
          }

          else
          {
            v22 = *buf;
          }

          *v34 = 68289282;
          v35 = 0;
          v36 = 2082;
          v37 = "";
          v38 = 2082;
          v39 = v22;
          _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLMM,RouteHints,updateMapRouteHint,unexpectedly encountered a nil queue in an observer, moving on", "{msg%{public}.0s:CLMM,RouteHints,updateMapRouteHint,unexpectedly encountered a nil queue in an observer, moving on, ob:%{public, location:escape_only}s}", v34, 0x1Cu);
        }
      }

      sub_1001C9C60(v48);
      if (SHIBYTE(v46) < 0)
      {
        operator delete(*buf);
      }
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }
  }

  std::mutex::unlock((a1 + 8));
}

uint64_t sub_100305948(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246A268;
  a2[1] = v2;
  return result;
}

uint64_t sub_10030596C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100857670(result, a4);
  }

  return result;
}

void sub_1003059CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1003059E8(__n128 *a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    sub_100007244(&a1[2], *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    a1[3].n128_u64[0] = *(a2 + 48);
    a1[2] = v4;
  }

  a1[3].n128_u64[1] = *(a2 + 56);
  sub_1001C7078(&a1[4], a2 + 64);
  v5 = *(a2 + 96);
  a1[6].n128_u64[1] = 0;
  a1[6].n128_u64[0] = v5;
  a1[7].n128_u64[0] = 0;
  a1[7].n128_u64[1] = 0;
  sub_10030596C(&a1[6].n128_i64[1], *(a2 + 104), *(a2 + 112), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  result = *(a2 + 128);
  a1[8] = result;
  return result;
}

uint64_t sub_100305AB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467BA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100305AD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102484C70;
  a2[1] = v2;
  return result;
}

uint64_t sub_100305B00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024CC270;
  a2[1] = v2;
  return result;
}

void sub_100305B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_100305B34(void *result, uint64_t *a2, double a3, double a4)
{
  v6 = result;
  v7 = result[6];
  v8 = result[3];
  v9 = result[4];
  v10 = (v8 + 8 * (v7 / 0x55));
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*v10 + 48 * (v7 % 0x55));
  }

  v12 = a4 + 1.0e-13;
  while (1)
  {
    if (v9 == v8)
    {
      v14 = 0;
    }

    else
    {
      v13 = v6[7] + v6[6];
      v14 = *(v8 + 8 * (v13 / 0x55)) + 48 * (v13 % 0x55);
    }

    if (v11 == v14)
    {
      break;
    }

    if (*v11 <= v12 && *v11 + 1.0e-13 > a3)
    {
      result = sub_100305E08(a2, v11);
    }

    v11 += 3;
    if ((v11 - *v10) == 4080)
    {
      v16 = v10[1];
      ++v10;
      v11 = v16;
    }

    v8 = v6[3];
    v9 = v6[4];
  }

  return result;
}

uint64_t sub_100305C4C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_10028C64C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100305DB0(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 48 * v2;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  sub_10028E850(48 * v2 + 24, *(a2 + 3), *(a2 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 4) - *(a2 + 3)) >> 2));
  *&v17 = v17 + 48;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_10030B774(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_10030B73C(&v15);
  return v14;
}

void sub_100305D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10030B73C(va);
  _Unwind_Resume(a1);
}

void sub_100305DB0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100305E08(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100305C4C(a1, a2);
  }

  else
  {
    sub_100F32BA0(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100305E48(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100F32C18(a1);
  }

  return a1;
}

void sub_100305E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 48;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 48;
    }
  }
}

uint64_t sub_100305EE0(uint64_t a1, uint64_t *a2, int a3, double *a4)
{
  if (*a2 < 0x2E)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        result = 0;
        v10 = &unk_101D7DD60;
        goto LABEL_19;
      }
    }

    else
    {
      switch(a3)
      {
        case 3:
          result = 0;
          v10 = &unk_101D7E040;
          goto LABEL_19;
        case 4:
          result = 0;
          v10 = &unk_101D7E1B0;
          goto LABEL_19;
        case 6:
          result = 0;
          v10 = &unk_101D7E320;
LABEL_19:
          v8 = v10[*a2];
          goto LABEL_20;
      }
    }

    result = 0;
    v10 = &unk_101D7DED0;
    goto LABEL_19;
  }

  if (qword_1025D4760 != -1)
  {
    sub_101BAFA70();
  }

  v6 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
  {
    v7 = *a2;
    v11 = 134217984;
    v12 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,lookupCn0ProbabilityGivenOutdoor(),index out of bound,%lu", &v11, 0xCu);
  }

  v8 = -1.0;
  if (sub_10000A100(121, 0))
  {
    sub_101BAFA84();
  }

  result = 0xFFFFFFFFLL;
LABEL_20:
  *a4 = v8;
  return result;
}

uint64_t sub_100306064(uint64_t a1, uint64_t *a2, double *a3)
{
  if (*a2 < 0x2E)
  {
    result = 0;
    v7 = dbl_101D7E490[*a2];
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BAFA70();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      v6 = *a2;
      v9 = 134217984;
      v10 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,lookupCn0ProbabilityGivenIndoor(),index out of bound,%lu", &v9, 0xCu);
    }

    v7 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101BAFB68();
    }

    result = 0xFFFFFFFFLL;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10030617C(uint64_t a1, uint64_t *a2, int a3, double *a4)
{
  if (*a2 < 0x47)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        result = 0;
        v10 = &unk_101D7E600;
        goto LABEL_19;
      }
    }

    else
    {
      switch(a3)
      {
        case 3:
          result = 0;
          v10 = &unk_101D7EA70;
          goto LABEL_19;
        case 4:
          result = 0;
          v10 = &unk_101D7ECA8;
          goto LABEL_19;
        case 6:
          result = 0;
          v10 = &unk_101D7EEE0;
LABEL_19:
          v8 = v10[*a2];
          goto LABEL_20;
      }
    }

    result = 0;
    v10 = &unk_101D7E838;
    goto LABEL_19;
  }

  if (qword_1025D4760 != -1)
  {
    sub_101BAFA70();
  }

  v6 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
  {
    v7 = *a2;
    v11 = 134217984;
    v12 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,lookupNumSatsProbabilityGivenOutdoor(),index out of bound,%lu", &v11, 0xCu);
  }

  v8 = -1.0;
  if (sub_10000A100(121, 0))
  {
    sub_101BAFC4C();
  }

  result = 0xFFFFFFFFLL;
LABEL_20:
  *a4 = v8;
  return result;
}

uint64_t sub_100306300(uint64_t a1, uint64_t *a2, double *a3)
{
  if (*a2 < 0x47)
  {
    result = 0;
    v7 = dbl_101D7F118[*a2];
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BAFA70();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      v6 = *a2;
      v9 = 134217984;
      v10 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,lookupNumSatsProbabilityGivenIndoor(),index out of bound,%lu", &v9, 0xCu);
    }

    v7 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101BAFD30();
    }

    result = 0xFFFFFFFFLL;
  }

  *a3 = v7;
  return result;
}

void sub_100306418(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10030646C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10030646C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void *sub_100306558(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      sub_100857670(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_1003066B4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 8392);
  if (v2)
  {
    sub_100C1C0D0(v2, a2);
  }
}

void sub_1003066C8(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  sub_1001C9C60(a1 + 64);
  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void sub_100306728(uint64_t a1, int *a2)
{
  sub_1003067D4(a1 + 2664, *a2);
  if (!sub_100192868(a1 + 6344, "com.apple.Maps"))
  {
    v4 = 0xE00000000000000;
    *__p = *"com.apple.Maps";
    v5 = sub_1000081AC();
    sub_100288728(a1 + 6344, __p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1003067B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003067F4(uint64_t a1, double *a2, uint64_t a3)
{
  if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
  {
    sub_100272FF0(a1);
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v6 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = sub_1011A6148(a3);
    v9 = sub_10020C6E4(a3, *a2, 6.0);
    v10 = *a3;
    v11 = *a3 == 0;
    v12 = *a3 == 3;
    *buf = 134350336;
    *&buf[4] = v7;
    v39 = 1026;
    v40 = v8;
    v41 = 1026;
    v42 = v9;
    v43 = 1026;
    v44 = v11;
    v45 = 1026;
    v46 = v12;
    v47 = 1026;
    v48 = v10 == 1;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#fusion,received MapsRouteHintData,mct,%{public}.3f,goodConnectivity,%{public}d,timedout,%{public}d,isPedestrian,%{public}d,isBicycle,%{public}d,isVehicular,%{public}d", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v19 = *a2;
    v20 = sub_1011A6148(a3);
    v21 = sub_10020C6E4(a3, *a2, 6.0);
    v22 = *a3;
    v23 = *a3 == 0;
    v24 = *a3 == 3;
    v26 = 134350336;
    v27 = v19;
    v28 = 1026;
    v29 = v20;
    v30 = 1026;
    v31 = v21;
    v32 = 1026;
    v33 = v23;
    v34 = 1026;
    v35 = v24;
    v36 = 1026;
    v37 = v22 == 1;
    v25 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::routeHintUpdate(const CFTimeInterval &, const CLMapsRouteHintData &)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  *(a1 + 2632) = *a3;
  if (a1 + 2632 != a3)
  {
    sub_100306558((a1 + 2640), *(a3 + 8), *(a3 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 16) - *(a3 + 8)) >> 3));
  }

  *(a1 + 2664) = *(a3 + 32);
  if (!sub_10020C6E4(a3, *a2, 6.0))
  {
    v13 = *a3;
    if (*a3 == 3)
    {
      if (*(a1 + 2448) != 6)
      {
        *(a1 + 2448) = 6;
        v15 = *a2;
        v26 = 6;
        *buf = &v26;
        v16 = sub_1000AE2AC(a1 + 2424, &v26);
        goto LABEL_22;
      }
    }

    else if (v13 == 1)
    {
      v17 = *(a1 + 2448);
      if ((v17 - 1) < 5 || v17 == 10)
      {
        *(a1 + 2448) = 7;
        v15 = *a2;
        v26 = 7;
        *buf = &v26;
        v16 = sub_1000AE2AC(a1 + 2424, &v26);
        goto LABEL_22;
      }
    }

    else if (!v13)
    {
      v14 = *(a1 + 2448);
      if (v14 <= 0xA && ((1 << v14) & 0x7C7) != 0)
      {
        *(a1 + 2448) = 3;
        v15 = *a2;
        v26 = 3;
        *buf = &v26;
        v16 = sub_1000AE2AC(a1 + 2424, &v26);
LABEL_22:
        *(v16 + 5) = v15;
      }
    }
  }

  return sub_1000D0BB8(a1, a2);
}

void sub_100306BDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100306BE8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v5 = v4[30];
  if (v5)
  {
    (*(*v5 + 80))(v5, a2);
  }

  v6 = *(a1 + 592);
  if (v6)
  {
    sub_100306D64(v6, a2);
  }

  v7 = *(a1 + 616);
  if (v7)
  {
    sub_100306D64(v7, a2);
  }

  sub_10030AC50(a1 + 416, a2);
  if (*(a1 + 264) == 1)
  {
    sub_100306E1C(a2);
  }

  return (*(*v4 + 24))(v4);
}

void sub_100306CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_100306D04(__n128 *a1, uint64_t a2)
{
  a1[3].n128_u64[0] = *a2;
  if (&a1[3] != a2)
  {
    sub_100306558(&a1[3].n128_u64[1], *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  result = *(a2 + 32);
  a1[5] = result;
  return result;
}

double *sub_100306D64(uint64_t a1, uint64_t a2)
{
  *(a1 + 1832) = *a2;
  if (a1 + 1832 != a2)
  {
    sub_100306558((a1 + 1840), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  *(a1 + 1864) = *(a2 + 32);
  v4 = *(a1 + 1872);

  return sub_100306DE0((a1 + 1952), v4);
}

double *sub_100306DE0(double *result, double a2)
{
  if (*result >= 0.0)
  {
    v2 = result + 1;
    if (vabdd_f64(result[1], a2) > 6.0)
    {
      *result = a2;
    }
  }

  else
  {
    *result++ = a2;
    v2 = result;
  }

  *v2 = a2;
  return result;
}

uint64_t sub_100306E1C(uint64_t a1)
{
  sub_10003848C(v26);
  v2 = v27;
  *(&v27 + *(v27 - 24) + 8) |= 4u;
  *(&v29.__locale_ + *(v2 - 24)) = 3;
  sub_100038730(&v27, "time,", 5);
  v3 = std::ostream::operator<<();
  *(v3 + *(*v3 - 24) + 16) = 0;
  sub_100038730(v3, ",type,", 6);
  v4 = std::ostream::operator<<();
  *(v4 + *(*v4 - 24) + 16) = 0;
  sub_100038730(v4, ",stepType,", 10);
  v5 = std::ostream::operator<<();
  *(v5 + *(*v5 - 24) + 16) = 0;
  sub_100038730(v5, ",count,", 7);
  std::ostream::operator<<();
  v6 = *(a1 + 8);
  for (i = *(a1 + 16); v6 != i; v6 += 40)
  {
    *(&v29.__locale_ + *(v27 - 24)) = 0;
    sub_100038730(&v27, ",id,", 4);
    v8 = std::ostream::operator<<();
    *(v8 + *(*v8 - 24) + 16) = 7;
    sub_100038730(v8, ",startLL,", 9);
    v9 = std::ostream::operator<<();
    sub_100038730(v9, ",", 1);
    v10 = std::ostream::operator<<();
    *(v10 + *(*v10 - 24) + 16) = 7;
    sub_100038730(v10, ",endLL,", 7);
    v11 = std::ostream::operator<<();
    sub_100038730(v11, ",", 1);
    std::ostream::operator<<();
  }

  v12 = sub_1002B88C4();
  if ((v37 & 0x10) != 0)
  {
    v14 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v14 = v33;
    }

    v15 = __src;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v13 = 0;
      v43 = 0;
      goto LABEL_16;
    }

    v15 = v30;
    v14 = v31;
  }

  v13 = v14 - v15;
  if (v14 - v15 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  v43 = v14 - v15;
  if (v13)
  {
    memmove(&__dst, v15, v13);
  }

LABEL_16:
  *(&__dst + v13) = 0;
  p_dst = &__dst;
  if (v43 < 0)
  {
    p_dst = __dst;
  }

  *buf = p_dst;
  sub_10030AF3C(v12, "CLMM,RouteHints,%{private}s", buf);
  if (v43 < 0)
  {
    operator delete(__dst);
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101B58B34();
  }

  v17 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    if ((v37 & 0x10) != 0)
    {
      v19 = v36;
      if (v36 < v33)
      {
        v36 = v33;
        v19 = v33;
      }

      v20 = __src;
    }

    else
    {
      if ((v37 & 8) == 0)
      {
        v18 = 0;
        v43 = 0;
LABEL_36:
        *(&__dst + v18) = 0;
        v21 = &__dst;
        if (v43 < 0)
        {
          v21 = __dst;
        }

        *buf = 136380675;
        *&buf[4] = v21;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CLMM,RouteHints,%{private}s", buf, 0xCu);
        if (v43 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_40;
      }

      v20 = v30;
      v19 = v31;
    }

    v18 = v19 - v20;
    if (v19 - v20 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v43 = v19 - v20;
    if (v18)
    {
      memmove(&__dst, v20, v18);
    }

    goto LABEL_36;
  }

LABEL_40:
  if (sub_10000A100(121, 2))
  {
    sub_101B58B5C(&__dst);
    sub_10003DD04(&v28, buf);
    if (v39 >= 0)
    {
      v24 = buf;
    }

    else
    {
      v24 = *buf;
    }

    v40 = 136380675;
    v41 = v24;
    v25 = _os_log_send_and_compose_impl();
    if (v39 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLMapsRouteHintData::debugOutput() const", "%s\n", v25);
    if (v25 != &__dst)
    {
      free(v25);
    }
  }

  v27 = v22;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100307524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100307580(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    (*(a1 + 40))(*(a1 + 48), *(a1 + 64), *(a1 + 56));
  }

  result = *(a1 + 48);
  if (result)
  {

    operator delete[]();
  }

  return result;
}

void sub_100307610(double *a1, unsigned int a2, uint64_t *a3)
{
  CLProfilingIdentify();
  if (a3)
  {
    v6 = a3[1];
    if (v6)
    {
      v7 = *a3;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v6);
      if (v8 && v7)
      {
        [objc_msgSend(*(v7 + 16) "silo")];
        if (qword_1025D47F0 != -1)
        {
          sub_101A215FC();
        }

        if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
        {
          v15 = 1;
          v9 = _os_activity_create(dword_100000000, "CL: CLRavenController::HandleBarometerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v9, &state);

          if (qword_1025D47F0 != -1)
          {
            sub_101A21610();
          }

          v10 = qword_1025D47F8;
          if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289538;
            v17 = 0;
            v18 = 2082;
            v19 = "";
            v20 = 2082;
            v21 = "activity";
            v22 = 2050;
            v23 = v7;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRavenController::HandleBarometerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
          }
        }

        else
        {
          v15 = 0;
        }

        sub_1003079CC(v7, a1, a2);
        if (v15 == 1)
        {
          os_activity_scope_leave(&state);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v8 = 0;
    }

    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v12 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called after controller deletion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      LOWORD(state.opaque[0]) = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLRavenController::HandleBarometerNotification_bounce(const CLPressure::Sample *, unsigned int, void *)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    if (!v8)
    {
      if (!v6)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_31:
    sub_100008080(v8);
    if (!v6)
    {
      return;
    }

LABEL_26:
    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v11 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called with null ctxExpr", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A2171C();
  }
}

void sub_10030797C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state, char a12)
{
  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003079CC(uint64_t a1, double *a2, unsigned int a3)
{
  if (a2 && a3)
  {
    if (a3 < 6)
    {
      if ((*(a1 + 4784) & 1) != 0 || *(a1 + 4800))
      {
        if (sub_1002932F8(a1 + 4600, a2))
        {
          sub_10000AED0(buf);
          sub_10000B230(v11);
          sub_1002A56DC(v8, v11, a2, a3, buf);
          sub_100294A04(a1, buf, 0);
          sub_10000CE1C(buf);
        }

        else
        {
          if (qword_1025D4680 != -1)
          {
            sub_101A2038C();
          }

          v9 = qword_1025D4688;
          if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *a2;
            *buf = 134349056;
            v13 = v10;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,baro sample is before sleep,%{public}.3f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A23C90();
          }
        }
      }
    }

    else
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A2038C();
      }

      v4 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v13) = a3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning Raven: encountered unexpected barometer batch size of %u", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A23D84();
      }
    }
  }

  else
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v5 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Raven: encountered empty barometer notification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A23E74();
    }
  }
}

void sub_100307C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100307C3C(uint64_t result)
{
  *(result + 40) = 0;
  *result = off_102451FF0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_100307CCC(void *result)
{
  *result = &off_102451F78;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_100307CF0(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      v3 = *(qword_102636C28 + 8);
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
    v2 = v4 + 2;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 24);
  v7 = (v6 + v2);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = sub_100307DCC(*(*(a1 + 16) + 8 * v8));
      v11 = v9;
      if (v9 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
      }

      else
      {
        v12 = 1;
      }

      v7 = (v11 + v7 + v12);
      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  *(a1 + 40) = v7;
  return v7;
}

uint64_t sub_100307DCC(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (*(a1 + 28))
  {
    if (v1)
    {
      v1 = *(a1 + 8);
      if (!v1)
      {
        v1 = *(qword_102636C20 + 8);
      }

      v3 = *(v1 + 36);
      if (*(v1 + 36))
      {
        v4 = (v3 << 31 >> 31) & 9;
        if ((v3 & 2) != 0)
        {
          v4 += 9;
        }

        if ((v3 & 4) != 0)
        {
          v3 = v4 + 9;
        }

        else
        {
          v3 = v4;
        }
      }

      *(v1 + 32) = v3;
      v2 = v3 + 2;
      LODWORD(v1) = *(a1 + 28);
    }

    else
    {
      v2 = 0;
    }

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

  *(a1 + 24) = v1;
  return v1;
}

uint64_t sub_100307E50(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 44))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102636C28 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return result;
}

void sub_100307ED8(uint64_t *a1)
{
  sub_100307F10(a1);

  operator delete();
}

void sub_100307F10(uint64_t *a1)
{
  *a1 = off_102451FF0;
  if (qword_102636C28 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100307FA8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100307FE0(a1);

  operator delete();
}

void sub_100307FE0(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451F78;
  if (qword_102636C20 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *sub_10030806C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_1003081F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100308240(void *result)
{
  if (qword_102636D58 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

uint64_t sub_1003082E0(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_100308330(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 1)
  {
    v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v5 = *(a1 + 144);

    sub_10030837C(v5, v4.__d_.__rep_);
  }
}

void sub_10030837C(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 24) + 64))(*(a1 + 24));
  if (([*(a1 + 8) isInVehicleNavigation] & 1) == 0)
  {
    [*(a1 + 8) setIsInVehicleNavigation:1];

    sub_100297500(a1, a2, 1);
  }
}

void sub_100308410(uint64_t a1, float32x2_t *a2, unsigned int a3)
{
  if (a2 && a3)
  {
    if (a3 < 0xB)
    {
      if ((*(a1 + 4784) & 1) != 0 || *(a1 + 4800))
      {
        sub_10000B230(v10);
        if (sub_1002932F8(a1 + 4600, a2))
        {
          sub_10000AED0(buf);
          sub_10028EF0C(a1, v10, a2, a3, buf);
          sub_100294A04(a1, buf, 0);
          sub_10000CE1C(buf);
        }

        else
        {
          if (qword_1025D4680 != -1)
          {
            sub_101A20320();
          }

          v8 = qword_1025D4688;
          if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *a2;
            *buf = 134349056;
            v12 = v9;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,gyro sample is before sleep,%{public}.3f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A25570();
          }
        }
      }
    }

    else
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A2038C();
      }

      v4 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12.i32[0] = a3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning Raven: encountered unexpected rate gyro batch size of %u", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A25664();
      }
    }
  }

  else
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v5 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Raven: encountered empty rate gyro notification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A25754();
    }
  }
}

void sub_100308664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100308680(uint64_t result)
{
  *(result + 40) = 0;
  *result = off_102451F00;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1003086AC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_10249E120;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

id sub_1003086EC(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_101B1AC14();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Schedule route hint timer", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B1D074();
  }

  return [objc_msgSend(*(a1 + 152) "routeHintWatchdogTimer")];
}

void sub_10030879C(float32x2_t *a1, unsigned int a2, uint64_t *a3)
{
  CLProfilingIdentify();
  if (a3)
  {
    v6 = a3[1];
    if (v6)
    {
      v7 = *a3;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v6);
      if (v8 && v7)
      {
        [objc_msgSend(*(v7 + 16) "silo")];
        if (qword_1025D47F0 != -1)
        {
          sub_101A215FC();
        }

        if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
        {
          v15 = 1;
          v9 = _os_activity_create(dword_100000000, "CL: CLRavenController::HandleRateGyroNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v9, &state);

          if (qword_1025D47F0 != -1)
          {
            sub_101A21610();
          }

          v10 = qword_1025D47F8;
          if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289538;
            v17 = 0;
            v18 = 2082;
            v19 = "";
            v20 = 2082;
            v21 = "activity";
            v22 = 2050;
            v23 = v7;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRavenController::HandleRateGyroNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
          }
        }

        else
        {
          v15 = 0;
        }

        sub_100308410(v7, a1, a2);
        if (v15 == 1)
        {
          os_activity_scope_leave(&state);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v8 = 0;
    }

    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v12 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called after controller deletion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      LOWORD(state.opaque[0]) = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLRavenController::HandleRateGyroNotification_bounce(const CLGyro::Sample *, unsigned int, void *)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    if (!v8)
    {
      if (!v6)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_31:
    sub_100008080(v8);
    if (!v6)
    {
      return;
    }

LABEL_26:
    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v11 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called with null ctxExpr", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A221CC();
  }
}

void sub_100308B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state, char a12)
{
  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100308BBC(float32x2_t *a1, float32x2_t *a2, uint64_t *a3)
{
  if (a2)
  {
    a2[4].i32[0] |= 1u;
    v5 = a2[1];
    if (!v5)
    {
      operator new();
    }

    sub_10027E930(a3, v5);
    v6 = a2[4].i32[0];
    a2[2] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(a1[1]), vdupq_n_s64(0x3F91DF46A2529D39uLL)));
    v7 = a1[2].f32[0] * 0.0174532925;
    a2[4].i32[0] = v6 | 0xE;
    a2[3].f32[0] = v7;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v8 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "pSample,Invalid pointer", v9, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B866EC();
    }
  }
}

uint64_t sub_100308D24(uint64_t result)
{
  *result = &off_102451E88;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_100308D4C(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      v3 = *(qword_102636C18 + 8);
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
    v2 = v4 + 2;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 24);
  v7 = (v6 + v2);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = sub_100308E28(*(*(a1 + 16) + 8 * v8));
      v11 = v9;
      if (v9 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
      }

      else
      {
        v12 = 1;
      }

      v7 = (v11 + v7 + v12);
      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  *(a1 + 40) = v7;
  return v7;
}

uint64_t sub_100308E28(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 32))
  {
    if (v1)
    {
      v1 = *(a1 + 8);
      if (!v1)
      {
        v1 = *(qword_102636C10 + 8);
      }

      v3 = *(v1 + 36);
      if (*(v1 + 36))
      {
        v4 = (v3 << 31 >> 31) & 9;
        if ((v3 & 2) != 0)
        {
          v4 += 9;
        }

        if ((v3 & 4) != 0)
        {
          v3 = v4 + 9;
        }

        else
        {
          v3 = v4;
        }
      }

      *(v1 + 32) = v3;
      v2 = v3 + 2;
      LODWORD(v1) = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }

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
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 28) = v1;
  return v1;
}

uint64_t sub_100308EB8(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 44))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102636C18 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return result;
}

uint64_t sub_100308F40(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636C10 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

void sub_100308FF8(uint64_t *a1)
{
  sub_100309030(a1);

  operator delete();
}

void sub_100309030(uint64_t *a1)
{
  *a1 = off_102451F00;
  if (qword_102636C18 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1003090C8(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451E88;
  if (qword_102636C10 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100309154(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1003090C8(a1);

  operator delete();
}

uint64_t sub_10030918C(uint64_t a1, int *a2)
{
  v4 = sub_10000B1F8();
  sub_10000B230(v7);
  sub_10000B324(v4, v7[0].i8);
  v8 = 26;
  v7[0].i32[0] = 26;
  v7[0].i32[1] = sub_10000AD98(&v8);
  v5 = sub_10000AE98();
  sub_100309244(v5, v7, (a1 + 5220), a2);
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 96))(result, a2);
  }

  return result;
}

void sub_100309244(uint64_t a1, int32x4_t *a2, int *a3, int *a4)
{
  if (*(a1 + 16))
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a2))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a2->i32[0])
        {
          v7 = a2->i32[1] == 0;
        }

        else
        {
          v7 = 1;
        }

        v8 = !v7;
        if (*a3)
        {
          v9 = a3[1] == 0;
        }

        else
        {
          v9 = 1;
        }

        v10 = !v9;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v8;
        v70 = 1024;
        LODWORD(v71) = v10;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,MapRouteHintNotification,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a2->i32[0])
        {
          v11 = a2->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a3)
        {
          v13 = a3[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        v64[0] = 67109376;
        v64[1] = v12;
        v65 = 1024;
        v66 = v14;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CLMapsRouteHintData &)", "%s\n", v15);
        if (v15 != &buf)
        {
          free(v15);
        }
      }
    }

    else
    {
      sub_10000AED0(v64);
      v18 = sub_10000B1F8();
      sub_10000AED4(v18, v52);
      v51 = 4;
      sub_10000AFE4(v64, &v51, a2->i32, a3, v52);
      v68 |= 2u;
      v19 = v67;
      if (!v67)
      {
        operator new();
      }

      *(v67 + 492) |= 0x800u;
      v20 = *(v19 + 352);
      if (!v20)
      {
        operator new();
      }

      *(v20 + 200) |= 0x200000u;
      v21 = *(v20 + 168);
      if (!v21)
      {
        operator new();
      }

      *(v21 + 28) |= 1u;
      *(v21 + 8) = -1;
      if (!sub_100437D64(1u))
      {
        __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13778, "::CLP::LogEntry::PrivateData::MapRouteHintNotification_NotificationType_IsValid(value)");
      }

      v22 = *(v21 + 28);
      *(v21 + 12) = 1;
      *(v21 + 28) = v22 | 6;
      v23 = *(v21 + 16);
      if (!v23)
      {
        operator new();
      }

      *(v23 + 20) |= 1u;
      v24 = *(v23 + 8);
      if (!v24)
      {
        operator new();
      }

      v25 = sub_10000B1F8();
      LODWORD(v53) = 0;
      buf = sub_10001A6B0(v25, &v53);
      v26 = sub_10000B1F8();
      LODWORD(v49[0]) = 1;
      v53 = COERCE_VOID_(sub_10001A6B0(v26, v49));
      sub_100309AC8(a4, v24, &buf, &v53);
      v27 = sub_10000BFC0(a1);
      if (*(a1 + 8) == 1)
      {
        v28 = v27;
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        v29 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          sub_101322EE0(&v51, &v53);
          if (SBYTE3(v57) >= 0)
          {
            v30 = &v53;
          }

          else
          {
            v30 = v53;
          }

          LODWORD(v44[0]) = a2->i32[0];
          sub_1013230DC(v44, v49);
          if (v50 >= 0)
          {
            v31 = v49;
          }

          else
          {
            v31 = v49[0];
          }

          v46 = *a3;
          v32 = __p;
          sub_1013230DC(&v46, __p);
          if (v48 < 0)
          {
            v32 = __p[0];
          }

          v33 = *a4;
          v34 = sub_10000B1F8();
          v35 = sub_100125220(v34);
          LODWORD(buf) = 67110402;
          HIDWORD(buf) = v28;
          v70 = 2080;
          v71 = v30;
          v72 = 2080;
          v73 = v31;
          v74 = 2080;
          v75 = v32;
          v76 = 1024;
          v77 = v33;
          v78 = 2050;
          v79 = v35;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,MapRouteHintNotification,success,%d,message_type,%s,from,%s,to,%s,routeType,%d,propagation_us,%{public}.3f", &buf, 0x36u);
          if (v48 < 0)
          {
            operator delete(__p[0]);
          }

          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          if (SBYTE3(v57) < 0)
          {
            operator delete(v53);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D8D04(&buf);
          v36 = v49;
          sub_101322EE0(&v51, v49);
          if (v50 < 0)
          {
            v36 = v49[0];
          }

          v46 = a2->i32[0];
          v37 = __p;
          sub_1013230DC(&v46, __p);
          if (v48 < 0)
          {
            v37 = __p[0];
          }

          v43 = *a3;
          sub_1013230DC(&v43, v44);
          if (v45 >= 0)
          {
            v38 = v44;
          }

          else
          {
            v38 = v44[0];
          }

          v39 = *a4;
          v40 = sub_10000B1F8();
          v41 = sub_100125220(v40);
          LODWORD(v53) = 67110402;
          HIDWORD(v53) = v28;
          v54 = 2080;
          v55 = v36;
          v56 = 2080;
          v57 = v37;
          v58 = 2080;
          v59 = v38;
          v60 = 1024;
          v61 = v39;
          v62 = 2050;
          v63 = v41;
          v42 = _os_log_send_and_compose_impl();
          if (v45 < 0)
          {
            operator delete(v44[0]);
          }

          if (v48 < 0)
          {
            operator delete(__p[0]);
          }

          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CLMapsRouteHintData &)", "%s\n", v42);
          if (v42 != &buf)
          {
            free(v42);
          }
        }
      }

      sub_10000CE1C(v64);
    }
  }
}

void *sub_100309A80(void *result)
{
  *result = &off_1024B4BA0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_100309AA4(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &off_1024B4B28;
  return result;
}

void sub_100309AC8(uint64_t a1, uint64_t a2, uint64_t *a3, double *a4)
{
  if (a2)
  {
    if (sub_10020C6E4(a1, *a4, 6.0))
    {
      if (qword_1025D4730 != -1)
      {
        sub_101B83560();
      }

      v7 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
      {
        v8 = *a3;
        v9 = *(a1 + 32);
        v24 = 134218240;
        v25 = v8;
        v26 = 2048;
        v27 = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "%.2lf,RouteHintsInPositionProto,Received stale data,routeHintTime,%.2lf", &v24, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B86C4C(a3);
      }
    }

    else
    {
      *(a2 + 60) |= 1u;
      v11 = *(a2 + 8);
      if (!v11)
      {
        operator new();
      }

      if ((sub_1000D3C88((a1 + 32), v11, 0) & 1) == 0)
      {
        if (qword_1025D4730 != -1)
        {
          sub_101B83560();
        }

        v12 = qword_1025D4738;
        if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Error: Failed to convert Map matching route hint event receipt CF time to protobuf", &v24, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B86A84();
        }

        (*(*v11 + 32))(v11);
      }

      *(a2 + 60) |= 2u;
      v13 = *(a2 + 16);
      if (!v13)
      {
        operator new();
      }

      if ((sub_100020B18((a1 + 40), v13, 0) & 1) == 0)
      {
        if (qword_1025D4730 != -1)
        {
          sub_101B83ACC();
        }

        v14 = qword_1025D4738;
        if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "Error: Failed to convert Map matching route hint applicable mach continuous time to protobuf", &v24, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B86B68();
        }

        (*(*v13 + 32))(v13);
      }

      v15 = sub_10030A024(a1);
      if (!sub_1001744A4(v15))
      {
        sub_1018829F8();
      }

      *(a2 + 60) |= 4u;
      *(a2 + 24) = v15;
      v16 = sub_10030A024((a1 + 4));
      if (!sub_1001744A4(v16))
      {
        sub_101882A24();
      }

      *(a2 + 60) |= 8u;
      *(a2 + 28) = v16;
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
      while (v18 != v17)
      {
        v19 = *(a2 + 44);
        v20 = *(a2 + 40);
        if (v20 >= v19)
        {
          if (v19 == *(a2 + 48))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 32), v19 + 1);
            v19 = *(a2 + 44);
          }

          *(a2 + 44) = v19 + 1;
          sub_101270588();
        }

        v21 = *(a2 + 32);
        *(a2 + 40) = v20 + 1;
        v22 = *(v21 + 8 * v20);
        v23 = *(v22 + 52);
        *(v22 + 8) = *v18;
        *(v22 + 16) = *(v18 + 8);
        *(v22 + 52) = v23 | 0x1F;
        *(v22 + 32) = *(v18 + 24);
        v18 += 40;
      }
    }
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v10 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "RouteHintsInPositionProto,pRouteHintMsg,Invalid pointer", &v24, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B86D70();
    }
  }
}

uint64_t sub_100309F2C(uint64_t a1, uint64_t *a2, double *a3)
{
  v9 = 0.0;
  if (sub_1002634B0(a1, &v9))
  {
    *a3 = *a2 + v9;

    return sub_100131DE8(a1, a2);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TCONV,Failed in getting the offset between CF time and mach time", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D29B0();
    }

    return 0;
  }
}

uint64_t sub_10030A024(int *a1)
{
  v1 = *a1;
  if (v1 < 7)
  {
    return dword_101D7A5B8[v1];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v7[0] = 67240192;
    v7[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Received unhandled maps route type,%{public}d", v7, 8u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_101B87204(a1);
    return 0;
  }

  return result;
}

uint64_t sub_10030A124(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
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
      v3 = *(a1 + 28);
      if ((v3 & 2) == 0)
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
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637F08 + 16);
    }

    v9 = sub_10030A220(v8, a2);
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

LABEL_26:
  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_10030A220(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_102637F10 + 8);
    }

    v5 = sub_10030A290(v4, a2);
    v7 = v5;
    if (v5 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, v6);
    }

    else
    {
      v8 = 1;
    }

    result = (v7 + v8 + 1);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10030A290(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_39;
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102636D58 + 8);
  }

  v6 = *(v5 + 36);
  if (*(v5 + 36))
  {
    v7 = (v6 << 31 >> 31) & 9;
    if ((v6 & 2) != 0)
    {
      v7 += 9;
    }

    if ((v6 & 4) != 0)
    {
      v6 = v7 + 9;
    }

    else
    {
      v6 = v7;
    }
  }

  *(v5 + 32) = v6;
  v4 = v6 + 2;
  v3 = *(a1 + 60);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102636D58 + 16);
    }

    v9 = *(v8 + 36);
    if (*(v8 + 36))
    {
      v10 = (v9 << 31 >> 31) & 9;
      if ((v9 & 2) != 0)
      {
        v10 += 9;
      }

      if ((v9 & 4) != 0)
      {
        v9 = v10 + 9;
      }

      else
      {
        v9 = v10;
      }
    }

    *(v8 + 32) = v9;
    v4 += v9 + 2;
    v3 = *(a1 + 60);
  }

LABEL_24:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v11 = *(a1 + 24);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 60);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 8) != 0)
  {
LABEL_33:
    v13 = *(a1 + 28);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

LABEL_39:
  v15 = *(a1 + 40);
  v16 = (v15 + v4);
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = sub_100437330(*(*(a1 + 32) + 8 * v17), a2);
      v19 = v18;
      if (v18 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
      }

      else
      {
        v20 = 1;
      }

      v16 = (v19 + v16 + v20);
      ++v17;
    }

    while (v17 < *(a1 + 40));
  }

  *(a1 + 56) = v16;
  return v16;
}

uint64_t sub_10030A440(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637F08 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_10030A4DC(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(qword_102637F10 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2, a4);
  }

  return result;
}

uint64_t sub_10030A508(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    v8 = *(result + 8);
    if (!v8)
    {
      v8 = *(qword_102636D58 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v8, a2, a4);
    v6 = *(v5 + 60);
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

  v9 = *(v5 + 16);
  if (!v9)
  {
    v9 = *(qword_102636D58 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  if ((*(v5 + 60) & 8) != 0)
  {
LABEL_5:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  }

LABEL_6:
  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  return result;
}

void sub_10030A5F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        sub_10030A7AC(v6, a2);
LABEL_12:
        sub_100008080(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v7 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Raven: RouteHints CB called after controller deletion", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A20348(buf);
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "auto CLRavenController::RegisterForMapRouteHintNotifications()::(anonymous class)::operator()(const CLMapsRouteHintData &) const", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  if (v5)
  {
    goto LABEL_12;
  }
}

void sub_10030A788(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030A7AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  if ((*(result + 4784) & 1) != 0 || *(result + 4800))
  {
    sub_10000AED0(v6);
    sub_10000B230(v5);
    sub_10030A83C(v4, v5, a2, v6);
    sub_100294A04(v3, v6, 0);
    return sub_10000CE1C(v6);
  }

  return result;
}

void sub_10030A824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void sub_10030A83C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 52) |= 2u;
  v6 = *(a4 + 40);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 488) |= 0x1000000u;
  v7 = *(v6 + 200);
  if (!v7)
  {
    operator new();
  }

  sub_100294964(a2, a4);
  *(v7 + 60) |= 1u;
  v8 = *(v7 + 8);
  if (!v8)
  {
    operator new();
  }

  if ((sub_10027E930(a2, v8) & 1) == 0)
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v9 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Error: Failed to convert MapMatchingRouteHint notification receipt time to protobuf", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A24F0C();
    }
  }

  *buf = CFAbsoluteTimeGetCurrent();
  v10 = sub_1000081AC();
  sub_100309AC8(a3, v7, buf, &v10);
}

void sub_10030AA18(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10030AD88(a1);

  operator delete();
}

void sub_10030AA50(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10030AE4C(a1);

  operator delete();
}

uint64_t sub_10030AA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B1F8();
  LODWORD(v13) = 1;
  v13 = sub_10001A6B0(v4, &v13);
  result = sub_1003067F4(a1 + 456, &v13, a2);
  if (*(a1 + 3912))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101956350();
    }

    v6 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a2;
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3);
      v9 = sub_10000B1F8();
      LODWORD(v13) = 1;
      v10 = sub_10001A6B0(v9, &v13);
      v11 = sub_10000B1F8();
      v12 = sub_100125220(v11);
      LODWORD(v13) = 67240960;
      HIDWORD(v13) = v7;
      v14 = 2050;
      v15 = v8;
      v16 = 2050;
      v17 = v10;
      v18 = 2050;
      v19 = v12;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLMM,RouteHints,CLLocationFilterController,setMapMatchingRouteHint,type,%{public}d,sz,%{public}zu,mct,%{public}.3f,propagation_us,%{public}.3f", &v13, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101956EE4(a2);
    }

    result = sub_100306BE8(*(a1 + 3912), a2);
  }

  *(a1 + 4352) = *a2;
  if (a1 + 4352 != a2)
  {
    result = sub_100306558((a1 + 4360), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  *(a1 + 4384) = *(a2 + 32);
  return result;
}

__n128 sub_10030AC50(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *a2;
  if (a1 + 40 != a2)
  {
    sub_100306558((a1 + 48), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  result = *(a2 + 32);
  *(a1 + 72) = result;
  return result;
}

uint64_t *sub_10030ACB0(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v7 = a1;
  for (i = *(a2 + 8); i; i = *i)
  {
    v5 = *(i + 7);
    if (v5 <= a1)
    {
      if (v5 >= a1)
      {
        v8 = &v7;
        result = sub_1000B91DC(a2, &v7);
        *(result + 8) += v3;
        return result;
      }

      ++i;
    }
  }

  v8 = (a1 | (a3 << 32));
  return sub_101081A3C(a2, &v8);
}

double sub_10030AD54(uint64_t a1)
{
  *a1 = off_1024531C0;
  *(a1 + 56) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  return result;
}

void sub_10030AD88(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B4BA0;
  if (qword_102637F08 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10030AE14(uint64_t *a1)
{
  sub_10030AED8(a1);

  operator delete();
}

void sub_10030AE4C(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B4B28;
  if (qword_102637F10 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10030AED8(uint64_t *a1)
{
  *a1 = off_1024531C0;
  v2 = a1 + 4;
  sub_100308240(a1);
  sub_100027438(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10030AF3C(_BYTE *a1, char *a2, void *a3)
{
  if (*a1 != 1)
  {
    return;
  }

  sub_10000EC00(&v98, a2);
  v96 = a3;
  v97 = a1;
  sub_10000EC00(&v102, "{public}");
  sub_10000EC00(&__p, "");
  size = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v98;
  }

  else
  {
    v6 = v98.__r_.__value_.__r.__words[0];
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v98.__r_.__value_.__l.__size_;
  }

  v7 = v104;
  v8 = v103;
  if ((v104 & 0x80u) == 0)
  {
    v9 = &v102;
  }

  else
  {
    v9 = v102;
  }

  if ((v104 & 0x80u) == 0)
  {
    v10 = v104;
  }

  else
  {
    v10 = v103;
  }

  if (v10)
  {
    if (size >= v10)
    {
      v78 = v6 + size;
      v79 = *v9;
      v80 = v6;
      do
      {
        v81 = size - v10;
        if (v81 == -1)
        {
          break;
        }

        v82 = memchr(v80, v79, v81 + 1);
        if (!v82)
        {
          break;
        }

        v83 = v82;
        if (!memcmp(v82, v9, v10))
        {
          if (v83 != v78)
          {
            v24 = v83 - v6;
            if (v83 - v6 != -1)
            {
              goto LABEL_58;
            }
          }

          break;
        }

        v80 = (v83 + 1);
        size = v78 - (v83 + 1);
      }

      while (size >= v10);
    }
  }

  else
  {
    v24 = 0;
LABEL_58:
    v25 = v101;
    v26 = v100;
    do
    {
      v27 = (v7 & 0x80u) == 0 ? v7 : v8;
      v28 = (v25 & 0x80u) == 0 ? &__p : __p;
      v29 = (v25 & 0x80u) == 0 ? v25 : v26;
      std::string::replace(&v98, v24, v27, v28, v29);
      v25 = v101;
      v26 = v100;
      v30 = (v101 & 0x80u) == 0 ? v101 : v100;
      v24 += v30;
      v31 = (v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v98 : v98.__r_.__value_.__r.__words[0];
      v32 = (v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v98.__r_.__value_.__r.__words[2]) : v98.__r_.__value_.__l.__size_;
      v7 = v104;
      v8 = v103;
      v33 = (v104 & 0x80u) == 0 ? &v102 : v102;
      v34 = (v104 & 0x80u) == 0 ? v104 : v103;
      v35 = v32 - v24;
      if (v32 < v24)
      {
        break;
      }

      if (v34)
      {
        if (v35 >= v34)
        {
          v36 = v31 + v32;
          v37 = v31 + v24;
          v38 = *v33;
          while (1)
          {
            v39 = v35 - v34;
            if (v39 == -1)
            {
              break;
            }

            v40 = memchr(v37, v38, v39 + 1);
            if (!v40)
            {
              break;
            }

            v41 = v40;
            if (!memcmp(v40, v33, v34))
            {
              if (v41 == v36)
              {
                goto LABEL_15;
              }

              v24 = v41 - v31;
              goto LABEL_94;
            }

            v37 = v41 + 1;
            v35 = v36 - (v41 + 1);
            if (v35 < v34)
            {
              goto LABEL_15;
            }
          }
        }

        break;
      }

LABEL_94:
      ;
    }

    while (v24 != -1);
  }

LABEL_15:
  if (v101 < 0)
  {
    operator delete(__p);
    if ((v104 & 0x80) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v102);
LABEL_17:
  sub_10000EC00(&v102, "{private}");
  sub_10000EC00(&__p, "");
  v11 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v98;
  }

  else
  {
    v12 = v98.__r_.__value_.__r.__words[0];
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v98.__r_.__value_.__l.__size_;
  }

  v13 = v104;
  v14 = v103;
  if ((v104 & 0x80u) == 0)
  {
    v15 = &v102;
  }

  else
  {
    v15 = v102;
  }

  if ((v104 & 0x80u) == 0)
  {
    v16 = v104;
  }

  else
  {
    v16 = v103;
  }

  if (v16)
  {
    if (v11 >= v16)
    {
      v84 = v12 + v11;
      v85 = *v15;
      v86 = v12;
      do
      {
        v87 = v11 - v16;
        if (v87 == -1)
        {
          break;
        }

        v88 = memchr(v86, v85, v87 + 1);
        if (!v88)
        {
          break;
        }

        v89 = v88;
        if (!memcmp(v88, v15, v16))
        {
          if (v89 != v84)
          {
            v42 = v89 - v12;
            if (v89 - v12 != -1)
            {
              goto LABEL_99;
            }
          }

          break;
        }

        v86 = (v89 + 1);
        v11 = v84 - (v89 + 1);
      }

      while (v11 >= v16);
    }
  }

  else
  {
    v42 = 0;
LABEL_99:
    v43 = v101;
    v44 = v100;
    do
    {
      v45 = (v13 & 0x80u) == 0 ? v13 : v14;
      v46 = (v43 & 0x80u) == 0 ? &__p : __p;
      v47 = (v43 & 0x80u) == 0 ? v43 : v44;
      std::string::replace(&v98, v42, v45, v46, v47);
      v43 = v101;
      v44 = v100;
      v48 = (v101 & 0x80u) == 0 ? v101 : v100;
      v42 += v48;
      v49 = (v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v98 : v98.__r_.__value_.__r.__words[0];
      v50 = (v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v98.__r_.__value_.__r.__words[2]) : v98.__r_.__value_.__l.__size_;
      v13 = v104;
      v14 = v103;
      v51 = (v104 & 0x80u) == 0 ? &v102 : v102;
      v52 = (v104 & 0x80u) == 0 ? v104 : v103;
      v53 = v50 - v42;
      if (v50 < v42)
      {
        break;
      }

      if (v52)
      {
        if (v53 >= v52)
        {
          v54 = v49 + v50;
          v55 = v49 + v42;
          v56 = *v51;
          while (1)
          {
            v57 = v53 - v52;
            if (v57 == -1)
            {
              break;
            }

            v58 = memchr(v55, v56, v57 + 1);
            if (!v58)
            {
              break;
            }

            v59 = v58;
            if (!memcmp(v58, v51, v52))
            {
              if (v59 == v54)
              {
                goto LABEL_30;
              }

              v42 = v59 - v49;
              goto LABEL_135;
            }

            v55 = v59 + 1;
            v53 = v54 - (v59 + 1);
            if (v53 < v52)
            {
              goto LABEL_30;
            }
          }
        }

        break;
      }

LABEL_135:
      ;
    }

    while (v42 != -1);
  }

LABEL_30:
  if (v101 < 0)
  {
    operator delete(__p);
    if ((v104 & 0x80) == 0)
    {
      goto LABEL_32;
    }

LABEL_138:
    operator delete(v102);
    goto LABEL_32;
  }

  if ((v13 & 0x80) != 0)
  {
    goto LABEL_138;
  }

LABEL_32:
  sub_10000EC00(&v102, "{sensitive}");
  sub_10000EC00(&__p, "");
  v17 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v98;
  }

  else
  {
    v18 = v98.__r_.__value_.__r.__words[0];
  }

  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v98.__r_.__value_.__l.__size_;
  }

  v19 = v104;
  v20 = v103;
  if ((v104 & 0x80u) == 0)
  {
    v21 = &v102;
  }

  else
  {
    v21 = v102;
  }

  if ((v104 & 0x80u) == 0)
  {
    v22 = v104;
  }

  else
  {
    v22 = v103;
  }

  if (v22)
  {
    if (v17 >= v22)
    {
      v90 = v18 + v17;
      v91 = *v21;
      v92 = v18;
      do
      {
        v93 = v17 - v22;
        if (v93 == -1)
        {
          break;
        }

        v94 = memchr(v92, v91, v93 + 1);
        if (!v94)
        {
          break;
        }

        v95 = v94;
        if (!memcmp(v94, v21, v22))
        {
          if (v95 != v90)
          {
            v60 = v95 - v18;
            if (v95 - v18 != -1)
            {
              goto LABEL_140;
            }
          }

          break;
        }

        v92 = (v95 + 1);
        v17 = v90 - (v95 + 1);
      }

      while (v17 >= v22);
    }
  }

  else
  {
    v60 = 0;
LABEL_140:
    v61 = v101;
    v62 = v100;
    do
    {
      v63 = (v19 & 0x80u) == 0 ? v19 : v20;
      v64 = (v61 & 0x80u) == 0 ? &__p : __p;
      v65 = (v61 & 0x80u) == 0 ? v61 : v62;
      std::string::replace(&v98, v60, v63, v64, v65);
      v61 = v101;
      v62 = v100;
      v66 = (v101 & 0x80u) == 0 ? v101 : v100;
      v60 += v66;
      v67 = (v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v98 : v98.__r_.__value_.__r.__words[0];
      v68 = (v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v98.__r_.__value_.__r.__words[2]) : v98.__r_.__value_.__l.__size_;
      v19 = v104;
      v20 = v103;
      v69 = (v104 & 0x80u) == 0 ? &v102 : v102;
      v70 = (v104 & 0x80u) == 0 ? v104 : v103;
      v71 = v68 - v60;
      if (v68 < v60)
      {
        break;
      }

      if (v70)
      {
        if (v71 >= v70)
        {
          v72 = v67 + v68;
          v73 = v67 + v60;
          v74 = *v69;
          while (1)
          {
            v75 = v71 - v70;
            if (v75 == -1)
            {
              break;
            }

            v76 = memchr(v73, v74, v75 + 1);
            if (!v76)
            {
              break;
            }

            v77 = v76;
            if (!memcmp(v76, v69, v70))
            {
              if (v77 == v72)
              {
                goto LABEL_45;
              }

              v60 = v77 - v67;
              goto LABEL_176;
            }

            v73 = v77 + 1;
            v71 = v72 - (v77 + 1);
            if (v71 < v70)
            {
              goto LABEL_45;
            }
          }
        }

        break;
      }

LABEL_176:
      ;
    }

    while (v60 != -1);
  }

LABEL_45:
  if (v101 < 0)
  {
    operator delete(__p);
    LOBYTE(v19) = v104;
  }

  if ((v19 & 0x80) != 0)
  {
    operator delete(v102);
  }

  bzero(v97 + 56, 0x800uLL);
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    snprintf(v97 + 56, 0x800uLL, &v98, *v96);
  }

  else
  {
    snprintf(v97 + 56, 0x800uLL, v98.__r_.__value_.__l.__data_, *v96);
  }

  Current = CFAbsoluteTimeGetCurrent();
  sub_10000EC00(&v102, v97 + 56);
  sub_1002B9CCC(v97, &v102, Current);
  if (v104 < 0)
  {
    operator delete(v102);
  }

  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }
}

uint64_t *sub_10030B63C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10030B73C(uint64_t a1)
{
  sub_100305E80(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10030B774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 24);
      if (v8)
      {
        *(v5 + 32) = v8;
        operator delete(v8);
      }

      v5 += 48;
    }
  }

  return sub_100305E48(v10);
}

void sub_10030B83C(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 256))
  {
    v32 = 0;
    v33 = 0.0;
    v34 = 0;
    v35 = 0.0;
    v36 = 0;
    __src = 0;
    v31 = 0;
    v3 = *(a2 + 24);
    v4 = *(a2 + 32);
    if (v3 != v4)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(v3 + 16);
        if (fabs(v9) >= 2.22044605e-16)
        {
          if (v8 >= v32)
          {
            v10 = __src;
            v11 = v8 - __src;
            v12 = (v8 - __src) >> 3;
            v13 = v12 + 1;
            if ((v12 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v14 = v32 - __src;
            if ((v32 - __src) >> 2 > v13)
            {
              v13 = v14 >> 2;
            }

            if (v14 >= 0x7FFFFFFFFFFFFFF8)
            {
              v15 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v13;
            }

            if (v15)
            {
              sub_1000B9708(&__src, v15);
            }

            v16 = v12;
            v17 = (8 * v12);
            v18 = &v17[-v16];
            *v17 = v9;
            v8 = v17 + 1;
            memcpy(v18, v10, v11);
            v19 = __src;
            __src = v18;
            v31 = v8;
            v32 = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v8++ = v9;
          }

          v31 = v8;
          if (*(v3 + 8) >= 0.5)
          {
            v36 = ++v7;
          }
        }

        v3 += 28;
      }

      while (v3 != v4);
      v20 = __src;
      if (__src != v8)
      {
        sub_1000CF4A8(__src, v8, buf, 126 - 2 * __clz((v8 - __src) >> 3), 1);
        v33 = a3;
        v34 = 3;
        sub_10001A3E8();
        if (sub_10001CF3C())
        {
          v21 = *__src;
        }

        else
        {
          v23 = __src;
          v24 = (v31 - __src) >> 3;
          if (v24 >= 8)
          {
            v24 = 8;
          }

          if (v31 == __src)
          {
            v26 = 0.0;
          }

          else
          {
            if (v24 <= 1)
            {
              v25 = 1;
            }

            else
            {
              v25 = v24;
            }

            v26 = 0.0;
            do
            {
              v27 = *v23++;
              v26 = v26 + v27;
              --v25;
            }

            while (v25);
          }

          v21 = v26 / v24;
        }

        v35 = v21;
        sub_10030BC94(a1, &v33);
        if (qword_1025D4760 != -1)
        {
          sub_101B52FC8();
        }

        v28 = qword_1025D4768;
        if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134284033;
          v44 = v35;
          v45 = 1025;
          v46 = v36;
          v47 = 2048;
          v48 = a3;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController_feedGnssMeasurement,cn0dBHz,%{private}f,numTrackedSatellitesAboveElevationMask,%{private}d,currentTime,%f", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B52FF0(buf);
          v37 = 134284033;
          v38 = v35;
          v39 = 1025;
          v40 = v36;
          v41 = 2048;
          v42 = a3;
          v29 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLOutdoorEstimatorController::feedGnssMeasurement(const CLOutdoorGnssLeechLocation &, const CFAbsoluteTime)", "%s\n", v29);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        v20 = __src;
      }

      if (v20)
      {
        v31 = v20;
        operator delete(v20);
      }
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101B52ED8();
    }

    v22 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController,CLOutdoorEstimatorTurnOffGnssMeasurement", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B52EEC();
    }
  }
}

void sub_10030BC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030BC94(uint64_t a1, double *a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_10030C654();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator,processEvidence(),Process GnssEvidence", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BB185C();
  }

  if (*(a1 + 240))
  {
    v48 = 0x100000002;
    v47 = xmmword_101D7F650;
    v46 = off_1024DFF48;
    v49 = v50;
    *sub_1000AC220(&v46, 0, 0) = sub_1000ADBE8;
    *sub_1000AC220(&v46, 1, 0) = sub_1000ADBE8;
    v43 = 0x100000002;
    v41 = off_1024DFFD0;
    v42 = xmmword_101D7F650;
    v44 = &v45;
    __asm { FMOV            V0.2D, #-1.0 }

    v39 = _Q0;
    v37 = _Q0;
    v40 = *a2;
    v38 = v40;
    v10 = 0.0;
    if (a2[2] >= 0.0)
    {
      v10 = a2[2];
    }

    v35 = -1.0;
    v36 = v10;
    v11 = (a1 + 160);
    if (sub_100305EE0(a1 + 136, &v36, *(a1 + 160), &v35))
    {
      if (qword_1025D4760 != -1)
      {
        sub_101BB14F4();
      }

      v12 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
      {
        v13 = *v11;
        *buf = 67174657;
        LODWORD(v67) = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),GnssEvidence,lookupCn0ProbabilityGivenOutdoor failed for signal environment,%{private}d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BB1A2C();
      }
    }

    else if (v35 < 0.0 || v35 > 1.0 || (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101BB14F4();
      }

      v16 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),GnssEvidence,lookupCn0ProbabilityGivenOutdoor returned invalid probability", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BB1B28();
      }
    }

    else
    {
      *(&v39 + 1) = v35;
      v35 = -1.0;
      if (sub_100306064(a1 + 136, &v36, &v35))
      {
        if (qword_1025D4760 != -1)
        {
          sub_101BB14F4();
        }

        v15 = qword_1025D4768;
        if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,ProcessEvidence(),GnssEvidence,lookupCn0ProbabilityGivenIndoor failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101BB1C0C();
        }
      }

      else if (v35 < 0.0 || v35 > 1.0 || (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        if (qword_1025D4760 != -1)
        {
          sub_101BB14F4();
        }

        v19 = qword_1025D4768;
        if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),GnssEvidence,lookupCn0ProbabilityGivenIndoor returned invalid probability", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101BB1CF0();
        }
      }

      else
      {
        *&v39 = v35;
        *sub_1000AC220(&v41, 0, 0) = &v39;
        v36 = *(a2 + 6);
        v35 = -1.0;
        if (sub_10030617C(a1 + 136, &v36, *v11, &v35))
        {
          if (qword_1025D4760 != -1)
          {
            sub_101BB14F4();
          }

          v17 = qword_1025D4768;
          if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
          {
            v18 = *v11;
            *buf = 67174657;
            LODWORD(v67) = v18;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),GnssEvidence,lookupNumSatsProbabilityGivenOutdoor failed for signal environment,%{private}d", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101BB1DD4();
          }
        }

        else if (v35 < 0.0 || v35 > 1.0 || (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          if (qword_1025D4760 != -1)
          {
            sub_101BB14F4();
          }

          v21 = qword_1025D4768;
          if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),GnssEvidence,lookupNumSatsProbabilityGivenOutdoor returned invalid probability", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101BB1ED0();
          }
        }

        else
        {
          *(&v37 + 1) = v35;
          v35 = -1.0;
          if (sub_100306300(a1 + 136, &v36, &v35))
          {
            if (qword_1025D4760 != -1)
            {
              sub_101BB14F4();
            }

            v20 = qword_1025D4768;
            if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),GnssEvidence,lookupNumSatsProbabilityGivenIndoor failed", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_101BB1FB4();
            }
          }

          else if (v35 < 0.0 || v35 > 1.0 || (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            if (qword_1025D4760 != -1)
            {
              sub_101BB14F4();
            }

            v24 = qword_1025D4768;
            if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),GnssEvidence,lookupNumSatsProbabilityGivenIndoor returned invalid probability", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_101BB2098();
            }
          }

          else
          {
            *&v37 = v35;
            *sub_1000AC220(&v41, 1, 0) = &v37;
            sub_1000ABCB8(a1, buf);
            v22 = sub_1000AD4D8(a1, 2, buf, 2, &v46, &v41);
            if (v22)
            {
              if (qword_1025D4760 != -1)
              {
                sub_101BB14F4();
              }

              v23 = qword_1025D4768;
              if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                LODWORD(v67) = v22;
                _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),GnssEvidence,HMM update failed,%d", buf, 8u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_101BB217C();
              }
            }

            else
            {
              if (qword_1025D4760 != -1)
              {
                sub_101BB14F4();
              }

              v25 = qword_1025D4768;
              if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
              {
                v26 = *a2;
                v27 = *(a2 + 2);
                v28 = *(a2 + 6);
                v29 = *(a1 + 248);
                *buf = 134219777;
                v67 = v26;
                v68 = 2049;
                v69 = v27;
                v70 = 1025;
                v71 = v28;
                v72 = 2048;
                v73 = v29;
                v74 = 2049;
                v75 = *(&v39 + 1);
                v76 = 2049;
                v77 = v39;
                v78 = 2049;
                v79 = *(&v37 + 1);
                v80 = 2049;
                v81 = v37;
                _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_GnssEvidence,evidenceCfatSec,%f,cn0dBHz,%{private}f,numTrackedSatellitesAboveElevationMask,%{private}d,EstimatorTimeCfaSec,%f,cn0likelihoodObservationGivenOutdoor,%{private}f,cn0likelihoodObservationGivenIndoor,%{private}f,numSatlikelihoodObservationGivenOutdoor,%{private}f,numSatlikelihoodObservationGivenIndoor,%{private}f", buf, 0x4Eu);
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4760 != -1)
                {
                  sub_101BB14F4();
                }

                v30 = *a2;
                v31 = *(a2 + 2);
                v32 = *(a2 + 6);
                v33 = *(a1 + 248);
                v50[4] = 134219777;
                v51 = v30;
                v52 = 2049;
                v53 = v31;
                v54 = 1025;
                v55 = v32;
                v56 = 2048;
                v57 = v33;
                v58 = 2049;
                v59 = *(&v39 + 1);
                v60 = 2049;
                v61 = v39;
                v62 = 2049;
                v63 = *(&v37 + 1);
                v64 = 2049;
                v65 = v37;
                v34 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLOutdoorEstimator::processEvidence(const CLOutdoorEstimator_Type::GnssEvidence &)", "%s\n", v34);
                if (v34 != buf)
                {
                  free(v34);
                }
              }

              sub_1000AC4D8(a1);
            }
          }
        }
      }
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v14 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),GnssEvidence,HMM Not initialized", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB1948();
    }
  }
}

uint64_t sub_10030C668(uint64_t a1, uint64_t a2)
{
  sub_10000AED0(v6);
  sub_10000B230(v5);
  sub_10030C6D4(a1, v5, a2, v6);
  return sub_10000CE1C(v6);
}

void sub_10030C6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void sub_10030C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100294964(a2, a4);
  *(a4 + 52) |= 2u;
  v7 = *(a4 + 40);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 492) |= 4u;
  v8 = *(v7 + 280);
  if (!v8)
  {
    operator new();
  }

  sub_1000C7A24(a3, v8);

  sub_100294A04(a1, a4, 0);
}

NSDictionary *sub_10030C824(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = @"logSequenceID";
  v9[0] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v8[1] = @"gyroBiasEstimationTemperature";
  LODWORD(v3) = *(a1 + 40);
  v9[1] = [NSNumber numberWithFloat:v3];
  v8[2] = @"temperatureDistanceFromFit";
  if (fabsf(*(a1 + 44)) >= 3.4028e38)
  {
    v4 = +[NSNull null];
  }

  else
  {
    v4 = [NSNumber numberWithFloat:?];
  }

  v9[2] = v4;
  v8[3] = @"gyroBiasEstimationMinDatabaseTemperature";
  if (fabsf(*(v2 + 136)) >= 100.0)
  {
    v5 = +[NSNull null];
  }

  else
  {
    v5 = [NSNumber numberWithFloat:?];
  }

  v9[3] = v5;
  v8[4] = @"gyroBiasEstimationMaxDatabaseTemperature";
  if (fabsf(*(v2 + 140)) >= 100.0)
  {
    v6 = +[NSNull null];
  }

  else
  {
    v6 = [NSNumber numberWithFloat:?];
  }

  v9[4] = v6;
  return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
}

double sub_10030C9A8(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_10030CA6C(__src, *(a5 + 8), *a1 + 4032, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_10030CA6C(v13, *(a5 + 8), v13 + 4032, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_10030CA6C(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_10030CA6C@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __dst + 4032) >> 6);
      if ((0xAAAAAAAAAAAAAAABLL * ((a3 - v9) >> 6)) < v11)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v9) >> 6);
      }

      v12 = 3 * v11;
      v13 = 192 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 192 * v11);
      }

      v9 += 64 * v12;
      if (v9 == a3)
      {
        break;
      }

      v14 = *v6++;
      v10 = v14;
      __dst = v14;
    }

    __dst += v13;
    if (*(v6 - 1) + 4032 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

uint64_t sub_10030CB4C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 21 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x15)
  {
    a2 = 1;
  }

  if (v5 < 0x2A)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_10030CBC4(void *a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  if (a2 != a4)
  {
    while (*&a5 - *v8 <= *(a6 + 88))
    {
      v8 += 3;
      if ((v8 - *a1) == 4080)
      {
        v11 = a1[1];
        ++a1;
        v8 = v11;
      }

      if (v8 == a4)
      {
        v8 = a4;
        break;
      }
    }
  }

  if (v8 != a4)
  {
    v13 = v8;
    v14 = a1;
    while (1)
    {
      v13 += 3;
      if ((v13 - *v14) == 4080)
      {
        v15 = v14[1];
        ++v14;
        v13 = v15;
      }

      if (v13 == a4)
      {
        break;
      }

      if (*&a5 - *v13 <= *(a6 + 88))
      {
        v16 = *v13;
        *(v8 + 2) = *(v13 + 2);
        *v8 = v16;
        sub_10007057C(v8 + 24, (v13 + 24));
        v8 += 3;
        if ((v8 - *a1) == 4080)
        {
          v17 = a1[1];
          ++a1;
          v8 = v17;
        }
      }
    }
  }

  return a1;
}

unint64_t sub_10030CCD0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 85 * (a4 - a2) - 0x5555555555555555 * ((a5 - *a4) >> 4) + 0x5555555555555555 * ((a3 - *a2) >> 4);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x55));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 48 * (v7 % 0x55);
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 85 * (a2 - v9) - 0x5555555555555555 * ((a3 - *a2) >> 4) + 0x5555555555555555 * ((v10 - *v9) >> 4);
  }

  v34.n128_u64[0] = v8 + 8 * (v7 / 0x55);
  v34.n128_u64[1] = v10;
  sub_10030CFF4(&v34, v11);
  if (v6 >= 1)
  {
    v12 = v34;
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_10030CFF4(&v34, v6);
      sub_100A3C564(v9, v10, v12.n128_u64[0], v12.n128_i64[1], v34.n128_u64[0], v34.n128_i64[1], &v34);
      v18 = v35;
      while (v10 != v18)
      {
        v19 = *(v10 + 24);
        if (v19)
        {
          *(v10 + 32) = v19;
          operator delete(v19);
        }

        v10 += 48;
        if (v10 - *v9 == 4080)
        {
          v20 = v9[1];
          ++v9;
          v10 = v20;
        }
      }

      v21 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v21;
        ;
      }
    }

    else
    {
      sub_10030CFF4(&v34, v6);
      v13 = v34;
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x55));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[3 * (v14 % 0x55)];
      }

      v34 = v12;
      sub_10030D090(v13.n128_u64[0], v13.n128_u64[1], v16, v17, &v34);
      v22 = v34.n128_u64[1];
      v23 = a1[1];
      if (a1[2] == v23)
      {
        v25 = 0;
      }

      else
      {
        v24 = a1[5] + a1[4];
        v25 = *(v23 + 8 * (v24 / 0x55)) + 48 * (v24 % 0x55);
      }

      if (v25 != v34.n128_u64[1])
      {
        v26 = v34.n128_u64[0];
        do
        {
          v27 = *(v22 + 24);
          if (v27)
          {
            *(v22 + 32) = v27;
            operator delete(v27);
          }

          v22 += 48;
          if (v22 - *v26 == 4080)
          {
            v28 = v26[1];
            ++v26;
            v22 = v28;
          }
        }

        while (v22 != v25);
      }

      a1[5] -= v6;
        ;
      }
    }
  }

  v29 = a1[4];
  v30 = a1[1];
  v31 = (v30 + 8 * (v29 / 0x55));
  if (a1[2] == v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = *v31 + 48 * (v29 % 0x55);
  }

  v34.n128_u64[0] = v31;
  v34.n128_u64[1] = v32;
  sub_10030CFF4(&v34, v11);
  return v34.n128_u64[0];
}

void *sub_10030CFF4(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 4);
    if (v3 < 1)
    {
      v5 = 84 - v3;
      v6 = &v2[-(v5 / 0x55)];
      *result = v6;
      v4 = *v6 + 48 * (85 * (v5 / 0x55) - v5) + 4032;
    }

    else
    {
      *result = &v2[v3 / 0x55];
      v4 = v2[v3 / 0x55] + 48 * (v3 % 0x55);
    }

    result[1] = v4;
  }

  return result;
}

double sub_10030D090(__int128 **a1, __int128 *a2, __int128 **a3, __int128 *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = *(a5 + 8);
    for (i = *a1 + 255; ; i = v12 + 255)
    {
      sub_10030D134(a2, i, v7, v8, &v14);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      *(a5 + 8) = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  sub_10030D134(a2, a4, v7, v8, &v14);
  result = *&v15;
  *a5 = v15;
  return result;
}

void sub_10030D134(__int128 *a1@<X1>, __int128 *a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, __int128 **a5@<X8>)
{
  v6 = a3;
  v7 = a1;
  if (a1 == a2)
  {
    v12 = a1;
    goto LABEL_14;
  }

  v10 = *a3;
  while (1)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a4 + 4080) >> 4);
    if ((0xAAAAAAAAAAAAAAABLL * (a2 - v7)) < v11)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * (a2 - v7);
    }

    if (v11)
    {
      break;
    }

LABEL_10:
    v14 = *(v6 + 1);
    v6 = (v6 + 8);
    v10 = v14;
    a4 = v14;
  }

  v12 = &v7[3 * v11];
  do
  {
    v13 = *v7;
    *(a4 + 16) = *(v7 + 2);
    *a4 = v13;
    sub_10007057C(a4 + 24, (v7 + 24));
    a4 += 48;
    v7 += 3;
  }

  while (v7 != v12);
  if (v12 != a2)
  {
    v7 = v12;
    goto LABEL_10;
  }

  if (a4 == *v6 + 4080)
  {
    v15 = *(v6 + 1);
    v6 = (v6 + 8);
    a4 = v15;
  }

LABEL_14:
  *a5 = v12;
  a5[1] = v6;
  a5[2] = a4;
}

uint64_t sub_10030D228(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 85 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x55)
  {
    a2 = 1;
  }

  if (v5 < 0xAA)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

unsigned __int16 *sub_10030D2A0(uint64_t a1, double *a2, double a3, double a4, double a5, double a6)
{
  if (a4 == 1.79769313e308)
  {
    a4 = a2[27];
  }

  else
  {
    a2[27] = a4;
  }

  v8 = a4;
  if (a3 != 1.79769313e308)
  {
    a2[27] = a3;
    v8 = a3;
  }

  if ((*(a1 + 1880) & 7) == *(a2 + 58))
  {
    a2[26] = a5 - a4;
    v9 = *(a1 + 376) + *(a1 + 378) - 1;
    v10 = *(a1 + 380);
    if (v9 < v10)
    {
      v10 = 0;
    }

    v11 = a1 + 16 * (v9 - v10);
    v12 = *(v11 + 384);
    v14 = __sincos_stret(a5 - a4 + v8);
    sinval = v14.__sinval;
    v15 = v12 + v14.__cosval * a6;
    v16 = *(v11 + 392);
  }

  else
  {
    v17 = *a2 + *(a2 + 1) - 1;
    v18 = *(a2 + 1);
    if (v17 < v18)
    {
      v18 = 0;
    }

    v19 = &a2[2 * (v17 - v18)];
    v20 = *(v19 + 1);
    v21 = __sincos_stret(v8 + a2[26]);
    sinval = v21.__sinval;
    v15 = v20 + v21.__cosval * a6;
    v16 = *(v19 + 2);
  }

  *&v23 = v15;
  *(&v23 + 1) = v16 + sinval * a6;
  return sub_1000A3054(a2, &v23);
}

void sub_10030D40C(void *a1, unint64_t a2, int *a3)
{
  v3 = (a1[1] - *a1) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_1003C8668(a1, a2 - v3, a3);
  }
}

void sub_10030D43C(id a1, RPCompanionLinkDevice *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101B95BB4();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289539;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = [-[RPCompanionLinkDevice effectiveIdentifier](a2 "effectiveIdentifier")];
    v9 = 2081;
    v10 = [-[RPCompanionLinkDevice name](a2 "name")];
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Multiclient CLLocationStreamer spotted a device, effectiveID:%{public, location:escape_only}s, name:%{private, location:escape_only}s}", v4, 0x26u);
  }
}

uint64_t sub_10030D540(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024526F8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

unint64_t sub_10030D574(int *a1, int *a2)
{
  result = sub_10030D934(a1);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      sub_10030E2C0(a1, i, v14);
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v6 + 1);
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        sub_10030D93C();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      sub_1001F34E4(v14, *(v8 + 8 * v7));
      sub_10030D6E4(a1, i, v12);
      v9 = a2[11];
      v10 = a2[10];
      if (v10 >= v9)
      {
        if (v9 == a2[12])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 8), v9 + 1);
          v9 = a2[11];
        }

        a2[11] = v9 + 1;
        sub_10030E448();
      }

      v11 = *(a2 + 4);
      a2[10] = v10 + 1;
      sub_1001F3908(v12, *(v11 + 8 * v10));
      if (v13)
      {
        sub_100008080(v13);
      }

      result = sub_10030D934(a1);
    }
  }

  return result;
}

void sub_10030D6CC(_Unwind_Exception *a1)
{
  if (STACK[0x218])
  {
    sub_100008080(STACK[0x218]);
  }

  _Unwind_Resume(a1);
}

void sub_10030D6E4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10030D9A0(a1, a2);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32) + 560 * a2;

    sub_1001D0B5C(a3, v6);
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AE2FEC();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v8 = 134349056;
      v9 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#batchedlocations,requested location private index %{public}zu but buffer is empty, return default value", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AE3128();
    }

    sub_100021ED8(a3);
  }
}

uint64_t sub_10030D828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_10007057C(a4, v5);
    *(a4 + 24) = *(v5 + 24);
    sub_10007057C(a4 + 32, (v5 + 32));
    v7 = *(v5 + 56);
    *(a4 + 72) = *(v5 + 72);
    *(a4 + 56) = v7;
    a4 += 80;
    v5 += 80;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_10030D8B4(uint64_t a1)
{
  *(a1 + 128) |= 4u;
  if (!*(a1 + 24))
  {
    operator new();
  }

  return *(a1 + 24);
}

int *sub_10030D9A0(int *result, unint64_t a2)
{
  if (*result <= a2)
  {
    v3 = result;
    if (qword_1025D4600 != -1)
    {
      sub_101AE2FEC();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      v5 = *v3;
      *buf = 68290051;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      v15 = a2;
      v16 = 2050;
      v17 = v5;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "index < fNumEntries";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:out of bounds index entry in #batchedlocations, index:%{public}ld, batchedLocationsSize:%{public}ld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1025D4600 != -1)
      {
        sub_101AE3100();
      }
    }

    v6 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      v7 = *v3;
      *buf = 68290051;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      v15 = a2;
      v16 = 2050;
      v17 = v7;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "index < fNumEntries";
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "out of bounds index entry in #batchedlocations", "{msg%{public}.0s:out of bounds index entry in #batchedlocations, index:%{public}ld, batchedLocationsSize:%{public}ld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1025D4600 != -1)
      {
        sub_101AE3100();
      }
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v9 = *v3;
      *buf = 68290051;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      v15 = a2;
      v16 = 2050;
      v17 = v9;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "index < fNumEntries";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:out of bounds index entry in #batchedlocations, index:%{public}ld, batchedLocationsSize:%{public}ld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    abort_report_np();
  }

  return result;
}

void sub_10030DC30(uint64_t *a1)
{
  sub_10030DC68(a1);

  operator delete();
}

void sub_10030DC68(uint64_t *a1)
{
  *a1 = off_1024526F8;
  sub_100027438(a1 + 4);
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10030DCCC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A0A280();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLSubHarvesterAvengerExternal::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A0A294();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSubHarvesterAvengerExternal::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  if (*a2 == 22)
  {
    (*(**(a4 + 56) + 72))(*(a4 + 56), a1, a2, a3);
  }

  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void *sub_10030DED4(void *a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 == 22)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A2900C();
    }

    v6 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_10030D934(*(a4 + 808));
      *v22 = 68289538;
      *&v22[8] = 2082;
      *&v22[10] = "";
      *&v22[18] = 2050;
      *&v22[20] = v7;
      *&v22[28] = 2050;
      *&v22[30] = 11;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:got batched wifi provider location, batchSize:%{public}lu, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v22, 0x26u);
    }

    if (sub_10030D934(*(a4 + 808)))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = sub_100F2FD0C(*(a4 + 808));
        v11 = *(v10 + v8 + 16);
        *v22 = *(v10 + v8);
        *&v22[16] = v11;
        v12 = *(v10 + v8 + 80);
        v14 = *(v10 + v8 + 32);
        v13 = *(v10 + v8 + 48);
        v24 = *(v10 + v8 + 64);
        v25 = v12;
        *&v22[32] = v14;
        v23 = v13;
        v16 = *(v10 + v8 + 112);
        v15 = *(v10 + v8 + 128);
        v17 = *(v10 + v8 + 96);
        *&v28[12] = *(v10 + v8 + 140);
        v27 = v16;
        *v28 = v15;
        v26 = v17;
        sub_1002D2A84(a1, v22, a4 + 160);
        ++v9;
        v8 += 156;
      }

      while (v9 < sub_10030D934(*(a4 + 808)));
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A2900C();
    }

    v19 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
    {
      v20 = *a3;
      *v22 = 67240192;
      *&v22[4] = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "received unhandled notification %{public, location:CLLocationProvider_Type::Notification}d", v22, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A2912C(a3);
    }
  }

  return sub_1002D34C8(a1, 0);
}

void *sub_10030E16C(void *a1, void *a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102467EF8;
  sub_10030D8B0(a1 + 3, *a2, *a3);
  return a1;
}

uint64_t sub_10030E1D0(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + 8 * (v2 / 0x49)) + 56 * (v2 % 0x49);
  v4 = *(v3 + 8);
  if (v4)
  {
    *(v3 + 16) = v4;
    operator delete(v4);
    v2 = a1[4];
  }

  v5 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v5;

  return sub_10030E260(a1, 1);
}

uint64_t sub_10030E260(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x49)
  {
    a2 = 1;
  }

  if (v2 < 0x92)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 73;
  }

  return v4 ^ 1u;
}

__n128 sub_10030E2C0@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10030D9A0(a1, a2);
  if (*(a1 + 8))
  {
    v6 = *(a1 + 24) + 156 * a2;
    v7 = *(v6 + 112);
    *(a3 + 96) = *(v6 + 96);
    *(a3 + 112) = v7;
    *(a3 + 128) = *(v6 + 128);
    *(a3 + 140) = *(v6 + 140);
    v8 = *(v6 + 48);
    *(a3 + 32) = *(v6 + 32);
    *(a3 + 48) = v8;
    v9 = *(v6 + 80);
    *(a3 + 64) = *(v6 + 64);
    *(a3 + 80) = v9;
    result = *v6;
    v11 = *(v6 + 16);
    *a3 = *v6;
    *(a3 + 16) = v11;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AE2FEC();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v17 = 134349056;
      v18 = a2;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#batchedlocations,requested location index %{public}zu but buffer is empty, return default value", &v17, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AE3000();
    }

    *a3 = 0xFFFF;
    *(a3 + 12) = 0;
    *(a3 + 4) = 0;
    *(a3 + 20) = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a3 + 36) = result;
    *(a3 + 52) = result;
    *(a3 + 68) = result;
    *(a3 + 84) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    *(a3 + 88) = 0xBFF0000000000000;
    *(a3 + 112) = 0;
    *(a3 + 116) = 0xBFF0000000000000;
    *(a3 + 124) = 0x7FFFFFFF;
    *(a3 + 136) = 0;
    *(a3 + 144) = 0;
    *(a3 + 128) = 0;
    *(a3 + 152) = 0;
  }

  return result;
}

uint64_t sub_10030E500(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1001F4208(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 += v6 + v7;
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v8 = *(a1 + 40);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_1001F4538(*(*(a1 + 32) + 8 * v10), a2);
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

    while (v10 < *(a1 + 40));
  }

  *(a1 + 56) = v9;
  return v9;
}

uint64_t sub_10030E5D4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 16) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 32) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  return result;
}

void sub_10030E670(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10030E6F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10030E704(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10030E704(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10030E0E8(v2);
    operator delete();
  }

  return a1;
}

void *sub_10030E74C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  else
  {
    v3 = a1[3];
    if (v3)
    {
      free(v3);
    }
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_release(v4);
  }

  else
  {
    v5 = a1[4];
    if (v5)
    {
      free(v5);
    }
  }

  return a1;
}

uint64_t sub_10030E7AC(uint64_t a1, const void *a2, int a3)
{
  *a1 = a3;
  v6 = 156 * a3;
  *(a1 + 8) = v6;
  *(a1 + 16) = 560 * a3;
  *(a1 + 24) = malloc_type_malloc(v6, 0xDC604F64uLL);
  *(a1 + 32) = malloc_type_malloc(*(a1 + 16), 0x5EDFF285uLL);
  *(a1 + 40) = dispatch_data_create(*(a1 + 24), *(a1 + 8), 0, _dispatch_data_destructor_free);
  *(a1 + 48) = dispatch_data_create(*(a1 + 32), *(a1 + 16), 0, _dispatch_data_destructor_free);
  memcpy(*(a1 + 24), a2, *(a1 + 8));
  if (a3)
  {
    v7 = 0;
    v8 = a3;
    do
    {
      memcpy((*(a1 + 32) + v7), &unk_101D12A20, 0x230uLL);
      v7 += 560;
      --v8;
    }

    while (v8);
  }

  return a1;
}

uint64_t sub_10030E89C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_10030E0E8(result);

    operator delete();
  }

  return result;
}

void sub_10030FD24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  if (v16)
  {
    sub_100008080(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10030FDCC(uint64_t a1, void **a2, double *a3, double a4)
{
  if (*(a1 + 1512) >= 0x1FuLL)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1003102DC();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 134349570;
      v39 = Current;
      v40 = 2082;
      v41 = v7;
      v42 = 1026;
      LODWORD(v43) = 30;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,updateNavigationAppStats,%{public}s,more than allowed location apps open,%{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13274(a2);
    }

    return;
  }

  if (fmax(*(a1 + 3032), 0.0) <= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = *(a1 + 3032);
  }

  if (v11 > a4)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1003102DC();
    }

    v12 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      v13 = CFAbsoluteTimeGetCurrent();
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 134349826;
      v39 = v13;
      v40 = 2082;
      v41 = v14;
      v42 = 2050;
      v43 = v11;
      v44 = 2050;
      v45 = a4;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#Warning,CLAccessoryAWD,%{public}.1lf,updateNavigationAppStats,%{public}s,appStartTime,%{public}.1lf, greater than machContTime,%{public}.1lf", buf, 0x2Au);
    }

    if (!sub_10000A100(121, 2))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 != -1)
    {
      sub_101B12B9C();
    }

    v15 = CFAbsoluteTimeGetCurrent();
    v16 = *(a2 + 23) >= 0 ? a2 : *a2;
    v28 = 134349826;
    v29 = v15;
    v30 = 2082;
    v31 = v16;
    v32 = 2050;
    v33 = v11;
    v34 = 2050;
    v35 = a4;
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryAWD::updateNavigationAppStats(const CFTimeInterval, const std::string &, const CFTimeInterval &)", "%s\n", v17);
    if (v17 == buf)
    {
      return;
    }

LABEL_50:
    free(v17);
    return;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100007244(__p, *a2, a2[1]);
  }

  else
  {
    *__p = *a2;
    v27 = a2[2];
  }

  v18 = vabdd_f64(a4, v11);
  sub_1003102F0(__p, a1 + 1496, v18);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_1025D45E0 != -1)
  {
    sub_101B12B9C();
  }

  v19 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v20 = CFAbsoluteTimeGetCurrent();
    if (*(a2 + 23) >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    v22 = *a3;
    *buf = 134350082;
    v39 = v20;
    v40 = 2082;
    v41 = v21;
    v42 = 2050;
    v43 = v22;
    v44 = 2050;
    v45 = v11;
    v46 = 1026;
    v47 = v18;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,updateNavigationAppStats,%{public}s,appLaunchTime,%{public}.1lf,appStartTime,%{public}.1lf,appRunTime,%{public}d", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 != -1)
    {
      sub_101B12B9C();
    }

    v23 = CFAbsoluteTimeGetCurrent();
    v24 = *(a2 + 23) >= 0 ? a2 : *a2;
    v25 = *a3;
    v28 = 134350082;
    v29 = v23;
    v30 = 2082;
    v31 = v24;
    v32 = 2050;
    v33 = v25;
    v34 = 2050;
    v35 = v11;
    v36 = 1026;
    v37 = v18;
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryAWD::updateNavigationAppStats(const CFTimeInterval, const std::string &, const CFTimeInterval &)", "%s\n", v17);
    if (v17 != buf)
    {
      goto LABEL_50;
    }
  }
}

void sub_1003102B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003102F0(void **a1, uint64_t a2, int a3)
{
  if (sub_100192868(a2, a1))
  {
    __p[0] = a1;
    v6 = sub_1002DDE28(a2, a1);
    *(v6 + 56) += a3;
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      sub_100007244(__p, *a1, a1[1]);
    }

    else
    {
      *__p = *a1;
      v8 = a1[2];
    }

    v9 = a3;
    sub_1009A0C8C(a2, __p);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1003103B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1003103F0(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 40) currentLatchedAbsoluteTimestamp];
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#cclp CompensationTimer fired at : %f", &v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019503E0(a1);
  }

  result = [*(a1 + 144) setNextFireDelay:1.79769313e308];
  v5 = qword_1026372D0;
  v6 = qword_1026372D8;
  while (v5 != v6)
  {
    v8 = *v5;
    if (sub_10000608C(a1, &v8, 1))
    {
      result = [*(*(a1 + 128) + 16) register:*(*(a1 + 128) + 8) forNotification:*v5 registrationInfo:0];
      v7 = 1;
    }

    else
    {
      (*(*a1 + 120))(a1, v5);
      result = [*(*(a1 + 128) + 16) unregister:*(*(a1 + 128) + 8) forNotification:*v5];
      v7 = 0;
    }

    *(a1 + 203) = v7;
    ++v5;
  }

  return result;
}

void sub_10031057C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019503A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLCorrectiveCompensatedLocationProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019503B8();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCorrectiveCompensatedLocationProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  sub_100310748(a4, v6, a2);
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100310748(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100048D98(*a3);
    v7[0] = 68289794;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = v6;
    v12 = 1040;
    v13 = LocationLogEncryptionDataSize();
    v14 = 2098;
    v15 = LocationLogEncryptionEncryptData();
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp onLocationNotification, Notification:%{public, location:escape_only}s, location:%{public, location:Encrypted_CLClientLocation}.*P}", v7, 0x2Cu);
  }

  sub_100310884(a1);
}

void sub_100310884(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_1025D47A0 != -1)
  {
    sub_1019500E4();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    v10 = sub_100048D98(*v6);
    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#cclp try performLocationSnapping - Notification: %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019507D4(v6);
  }

  v11 = qword_1026372D0;
  if (qword_1026372D0 != qword_1026372D8)
  {
    while (*v11 != *v6)
    {
      if (++v11 == qword_1026372D8)
      {
        goto LABEL_19;
      }
    }
  }

  if (v11 == qword_1026372D8)
  {
LABEL_19:
    if (qword_1025D47A0 != -1)
    {
      sub_1019500BC();
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v16 = sub_100048D98(*v6);
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "#cclp received location notification for un-supported notification: %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101950CFC(v6);
    }
  }

  else
  {
    [v8[18] nextFireDelay];
    if (v12 == 1.79769313e308)
    {
      [v8[20] nextFireDelay];
      if (v17 == 1.79769313e308)
      {
        if (*v6 == 9)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_1019500BC();
          }

          v27 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "#cclp skip performLocationSnapping location-unavailable", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101950A08();
          }

          LODWORD(buf[0]) = 9;
          (*(*v8 + 19))(v8, buf, v4, 1, 0xFFFFFFFFLL, 0);
        }

        else if (sub_100072814(v4))
        {
          sub_100021AFC(v47);
          LODWORD(buf[0]) = 0;
          v28 = (*(*v8 + 16))(v8, buf, v47);
          if (*(v8 + 200) == 1)
          {
            if (qword_1025D47A0 != -1)
            {
              sub_1019500BC();
            }

            v29 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "#cclp skip performLocationSnapping already in-progres", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019509C4(buf);
              v46 = 0;
              v30 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLCorrectiveCompensatedLocationProvider::performLocationSnapping(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void (^)(BOOL, CLDaemonLocation))", "%s\n", v30);
              if (v30 != buf)
              {
                free(v30);
              }
            }
          }

          else
          {
            v32 = v28;
            v33 = *(v4 + 20);
            if (qword_1025D47A0 != -1)
            {
              sub_1019500BC();
            }

            v34 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "#cclp dispatching call to CitySnapper", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019509C4(buf);
              v46 = 0;
              v42 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLCorrectiveCompensatedLocationProvider::performLocationSnapping(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void (^)(BOOL, CLDaemonLocation))", "%s\n", v42);
              if (v42 != buf)
              {
                free(v42);
              }
            }

            *(v8 + 200) = 1;
            v35 = v8[24];
            v36 = [CLLocation alloc];
            v37 = *(v4 + 112);
            buf[6] = *(v4 + 96);
            buf[7] = v37;
            v49[0] = *(v4 + 128);
            *(v49 + 12) = *(v4 + 140);
            v38 = *(v4 + 48);
            buf[2] = *(v4 + 32);
            buf[3] = v38;
            v39 = *(v4 + 80);
            buf[4] = *(v4 + 64);
            buf[5] = v39;
            v40 = *(v4 + 16);
            buf[0] = *v4;
            buf[1] = v40;
            v41 = [v36 initWithClientLocation:buf];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3321888768;
            v43[2] = sub_10083B3E8;
            v43[3] = &unk_102476148;
            v43[5] = v8;
            sub_100022008(v44, v47);
            v45 = v32;
            v44[195] = v33;
            v43[4] = v2;
            [v35 snapLocation:v41 withReply:v43];
            sub_100311054(v44);
          }

          sub_100311054(v47);
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_1019500BC();
          }

          v31 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#cclp skip snapping #warning invalid location.", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019508D8();
          }
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1019500BC();
        }

        v18 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v19 = sub_100048D98(*v6);
          LODWORD(buf[0]) = 136315138;
          *(buf + 4) = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#cclp skip notification: %s. UpdateLastReceivedLocationTimer scheduled", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101950AF4(v6);
        }

        if (*v6 != 9)
        {
          v20 = *(v4 + 16);
          *(v8 + 15) = *v4;
          *(v8 + 16) = v20;
          v21 = *(v4 + 32);
          v22 = *(v4 + 48);
          v23 = *(v4 + 80);
          *(v8 + 19) = *(v4 + 64);
          *(v8 + 20) = v23;
          *(v8 + 17) = v21;
          *(v8 + 18) = v22;
          v24 = *(v4 + 96);
          v25 = *(v4 + 112);
          v26 = *(v4 + 128);
          *(v8 + 380) = *(v4 + 140);
          *(v8 + 22) = v25;
          *(v8 + 23) = v26;
          *(v8 + 21) = v24;
        }
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1019500BC();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_100048D98(*v6);
        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#cclp skip notification: %s. CompensationTimer scheduled", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101950BF8(v6);
      }
    }
  }
}