uint64_t sub_10009C56C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      *(a1 + 32) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9A30 + 16);
      }

      sub_10009FCB8(v5, v6);
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      if ((sub_100094788(v7) & 1) == 0)
      {
        sub_10049DAB8();
      }

      *(a1 + 32) |= 2u;
      *(a1 + 24) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009C6AC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  sub_1000B666C((a1 + 40), a2 + 40);
  sub_1000B53B8((a1 + 64), a2 + 64);
  LOBYTE(v4) = *(a2 + 96);
  if (v4)
  {
    if (*(a2 + 96))
    {
      *(a1 + 96) |= 1u;
      v5 = *(a1 + 16);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        v6 = *(qword_1009F9A58 + 16);
      }

      sub_10009F2F0(v5, v6);
      v4 = *(a2 + 96);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      if (v7 > 0x1B || ((1 << v7) & 0xDDB54EF) == 0)
      {
        sub_10049DAE4();
      }

      *(a1 + 96) |= 2u;
      *(a1 + 24) = v7;
      v4 = *(a2 + 96);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 28);
      *(a1 + 96) |= 4u;
      *(a1 + 28) = v8;
      v4 = *(a2 + 96);
      if ((v4 & 8) == 0)
      {
LABEL_16:
        if ((v4 & 0x10) == 0)
        {
          return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
        }

LABEL_20:
        v10 = *(a2 + 32);
        *(a1 + 96) |= 0x10u;
        v11 = *(a1 + 32);
        if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v11, v10);
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_16;
    }

    v9 = *(a2 + 88);
    *(a1 + 96) |= 8u;
    *(a1 + 88) = v9;
    if ((*(a2 + 96) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_20;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009C8B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v46);
  }

  v4 = *(a2 + 300);
  if (!v4)
  {
    goto LABEL_21;
  }

  if (v4)
  {
    *(a1 + 300) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9A60 + 16);
    }

    sub_10009F2F0(v5, v6);
    v4 = *(a2 + 300);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    if (v7 > 0x1B || ((1 << v7) & 0xDDB54EF) == 0)
    {
      sub_10049DB10();
    }

    *(a1 + 300) |= 2u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 300);
  }

  if ((v4 & 4) != 0)
  {
    v32 = *(a2 + 28);
    *(a1 + 300) |= 4u;
    *(a1 + 28) = v32;
    v4 = *(a2 + 300);
    if ((v4 & 8) == 0)
    {
LABEL_16:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_81;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_16;
  }

  v33 = *(a2 + 120);
  *(a1 + 300) |= 8u;
  *(a1 + 120) = v33;
  v4 = *(a2 + 300);
  if ((v4 & 0x10) == 0)
  {
LABEL_17:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_84:
    v36 = *(a2 + 40);
    *(a1 + 300) |= 0x20u;
    *(a1 + 40) = v36;
    v4 = *(a2 + 300);
    if ((v4 & 0x40) == 0)
    {
LABEL_19:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_85;
  }

LABEL_81:
  v34 = *(a2 + 32);
  *(a1 + 300) |= 0x10u;
  v35 = *(a1 + 32);
  if (v35 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v35, v34);
  v4 = *(a2 + 300);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_84;
  }

LABEL_18:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_85:
  v37 = *(a2 + 48);
  *(a1 + 300) |= 0x40u;
  *(a1 + 48) = v37;
  v4 = *(a2 + 300);
  if ((v4 & 0x80) != 0)
  {
LABEL_20:
    v8 = *(a2 + 56);
    *(a1 + 300) |= 0x80u;
    *(a1 + 56) = v8;
    v4 = *(a2 + 300);
  }

LABEL_21:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_31;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 64);
    *(a1 + 300) |= 0x100u;
    *(a1 + 64) = v14;
    v4 = *(a2 + 300);
    if ((v4 & 0x200) == 0)
    {
LABEL_24:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_60;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_24;
  }

  v15 = *(a2 + 72);
  *(a1 + 300) |= 0x200u;
  *(a1 + 72) = v15;
  v4 = *(a2 + 300);
  if ((v4 & 0x400) == 0)
  {
LABEL_25:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  v16 = *(a2 + 80);
  *(a1 + 300) |= 0x400u;
  *(a1 + 80) = v16;
  v4 = *(a2 + 300);
  if ((v4 & 0x800) == 0)
  {
LABEL_26:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  v17 = *(a2 + 88);
  *(a1 + 300) |= 0x800u;
  *(a1 + 88) = v17;
  v4 = *(a2 + 300);
  if ((v4 & 0x1000) == 0)
  {
LABEL_27:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  v18 = *(a2 + 96);
  *(a1 + 300) |= 0x1000u;
  *(a1 + 96) = v18;
  v4 = *(a2 + 300);
  if ((v4 & 0x2000) == 0)
  {
LABEL_28:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  v19 = *(a2 + 104);
  *(a1 + 300) |= 0x2000u;
  *(a1 + 104) = v19;
  v4 = *(a2 + 300);
  if ((v4 & 0x4000) == 0)
  {
LABEL_29:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_64:
  v20 = *(a2 + 112);
  *(a1 + 300) |= 0x4000u;
  *(a1 + 112) = v20;
  v4 = *(a2 + 300);
  if ((v4 & 0x8000) != 0)
  {
LABEL_30:
    v9 = *(a2 + 128);
    *(a1 + 300) |= 0x8000u;
    *(a1 + 128) = v9;
    v4 = *(a2 + 300);
  }

LABEL_31:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_41;
  }

  if ((v4 & 0x10000) != 0)
  {
    v21 = *(a2 + 136);
    *(a1 + 300) |= 0x10000u;
    *(a1 + 136) = v21;
    v4 = *(a2 + 300);
    if ((v4 & 0x20000) == 0)
    {
LABEL_34:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_68;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_34;
  }

  v22 = *(a2 + 144);
  *(a1 + 300) |= 0x20000u;
  *(a1 + 144) = v22;
  v4 = *(a2 + 300);
  if ((v4 & 0x40000) == 0)
  {
LABEL_35:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_69;
  }

LABEL_68:
  v23 = *(a2 + 152);
  *(a1 + 300) |= 0x40000u;
  *(a1 + 152) = v23;
  v4 = *(a2 + 300);
  if ((v4 & 0x80000) == 0)
  {
LABEL_36:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_69:
  v24 = *(a2 + 160);
  *(a1 + 300) |= 0x80000u;
  *(a1 + 160) = v24;
  v4 = *(a2 + 300);
  if ((v4 & 0x100000) == 0)
  {
LABEL_37:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_70:
  v25 = *(a2 + 168);
  *(a1 + 300) |= 0x100000u;
  *(a1 + 168) = v25;
  v4 = *(a2 + 300);
  if ((v4 & 0x200000) == 0)
  {
LABEL_38:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_72;
  }

LABEL_71:
  v26 = *(a2 + 176);
  *(a1 + 300) |= 0x200000u;
  *(a1 + 176) = v26;
  v4 = *(a2 + 300);
  if ((v4 & 0x400000) == 0)
  {
LABEL_39:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_72:
  v27 = *(a2 + 184);
  *(a1 + 300) |= 0x400000u;
  *(a1 + 184) = v27;
  v4 = *(a2 + 300);
  if ((v4 & 0x800000) != 0)
  {
LABEL_40:
    v10 = *(a2 + 192);
    *(a1 + 300) |= 0x800000u;
    *(a1 + 192) = v10;
    v4 = *(a2 + 300);
  }

LABEL_41:
  if (!HIBYTE(v4))
  {
    goto LABEL_50;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v38 = *(a2 + 200);
    *(a1 + 300) |= 0x1000000u;
    *(a1 + 200) = v38;
    v4 = *(a2 + 300);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_44:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_89;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_44;
  }

  v39 = *(a2 + 208);
  *(a1 + 300) |= 0x2000000u;
  *(a1 + 208) = v39;
  v4 = *(a2 + 300);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_45:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_90;
  }

LABEL_89:
  v40 = *(a2 + 216);
  *(a1 + 300) |= 0x4000000u;
  *(a1 + 216) = v40;
  v4 = *(a2 + 300);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_46:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_91;
  }

LABEL_90:
  v41 = *(a2 + 124);
  *(a1 + 300) |= 0x8000000u;
  *(a1 + 124) = v41;
  v4 = *(a2 + 300);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_47:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_92;
  }

LABEL_91:
  v42 = *(a2 + 224);
  *(a1 + 300) |= 0x10000000u;
  *(a1 + 224) = v42;
  v4 = *(a2 + 300);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_48:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_93:
    v44 = *(a2 + 240);
    *(a1 + 300) |= 0x40000000u;
    *(a1 + 240) = v44;
    if ((*(a2 + 300) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

LABEL_92:
  v43 = *(a2 + 232);
  *(a1 + 300) |= 0x20000000u;
  *(a1 + 232) = v43;
  v4 = *(a2 + 300);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_93;
  }

LABEL_49:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_94:
  v45 = *(a2 + 248);
  *(a1 + 300) |= 0x80000000;
  *(a1 + 248) = v45;
LABEL_50:
  LOBYTE(v11) = *(a2 + 304);
  if (!v11)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 304))
  {
    v28 = *(a2 + 256);
    *(a1 + 304) |= 1u;
    *(a1 + 256) = v28;
    v11 = *(a2 + 304);
    if ((v11 & 2) == 0)
    {
LABEL_53:
      if ((v11 & 4) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_76;
    }
  }

  else if ((*(a2 + 304) & 2) == 0)
  {
    goto LABEL_53;
  }

  v29 = *(a2 + 264);
  *(a1 + 304) |= 2u;
  *(a1 + 264) = v29;
  v11 = *(a2 + 304);
  if ((v11 & 4) == 0)
  {
LABEL_54:
    if ((v11 & 8) == 0)
    {
      goto LABEL_55;
    }

LABEL_77:
    v31 = *(a2 + 280);
    *(a1 + 304) |= 8u;
    *(a1 + 280) = v31;
    if ((*(a2 + 304) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_56;
  }

LABEL_76:
  v30 = *(a2 + 272);
  *(a1 + 304) |= 4u;
  *(a1 + 272) = v30;
  v11 = *(a2 + 304);
  if ((v11 & 8) != 0)
  {
    goto LABEL_77;
  }

LABEL_55:
  if ((v11 & 0x10) != 0)
  {
LABEL_56:
    v12 = *(a2 + 288);
    *(a1 + 304) |= 0x10u;
    *(a1 + 288) = v12;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009CEC4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  sub_1000B3264((a1 + 48), a2 + 48);
  sub_1000B3264((a1 + 80), a2 + 80);
  sub_1000B3264((a1 + 104), a2 + 104);
  v4 = *(a2 + 132);
  if (v4)
  {
    if (v4)
    {
      v9 = *(a2 + 16);
      *(a1 + 132) |= 1u;
      *(a1 + 16) = v9;
      v4 = *(a2 + 132);
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

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v10 = *(a2 + 24);
    *(a1 + 132) |= 2u;
    *(a1 + 24) = v10;
    v4 = *(a2 + 132);
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
    v11 = *(a2 + 28);
    *(a1 + 132) |= 4u;
    *(a1 + 28) = v11;
    v4 = *(a2 + 132);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_18:
    *(a1 + 132) |= 8u;
    v12 = *(a1 + 32);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 32);
    if (!v13)
    {
      v13 = *(qword_1009F9A68 + 32);
    }

    sub_10009F2F0(v12, v13);
    v4 = *(a2 + 132);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v5 = *(a2 + 72);
    *(a1 + 132) |= 0x10u;
    *(a1 + 72) = v5;
    v4 = *(a2 + 132);
LABEL_10:
    if ((v4 & 0x20) != 0)
    {
      v6 = *(a2 + 40);
      *(a1 + 132) |= 0x20u;
      *(a1 + 40) = v6;
      v4 = *(a2 + 132);
    }
  }

  if ((v4 & 0x200) != 0)
  {
    v7 = *(a2 + 76);
    *(a1 + 132) |= 0x200u;
    *(a1 + 76) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009D0BC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  sub_1000B3264((a1 + 64), a2 + 64);
  v4 = *(a2 + 96);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 16);
    *(a1 + 96) |= 1u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 96);
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

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 96) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 96);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 28);
  *(a1 + 96) |= 4u;
  *(a1 + 28) = v10;
  v4 = *(a2 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_19:
  *(a1 + 96) |= 8u;
  v11 = *(a1 + 32);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 32);
  if (!v12)
  {
    v12 = *(qword_1009F9A70 + 32);
  }

  sub_10009F2F0(v11, v12);
  v4 = *(a2 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v14 = *(a2 + 44);
    *(a1 + 96) |= 0x20u;
    *(a1 + 44) = v14;
    v4 = *(a2 + 96);
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
  v13 = *(a2 + 40);
  *(a1 + 96) |= 0x10u;
  *(a1 + 40) = v13;
  v4 = *(a2 + 96);
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
  v15 = *(a2 + 48);
  *(a1 + 96) |= 0x40u;
  *(a1 + 48) = v15;
  v4 = *(a2 + 96);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 56);
    *(a1 + 96) |= 0x80u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 96);
  }

LABEL_13:
  if ((v4 & 0x200) != 0)
  {
    v6 = *(a2 + 88);
    *(a1 + 96) |= 0x200u;
    *(a1 + 88) = v6;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009D2E0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v52);
  }

  v4 = *(a2 + 232);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v12 = *(a2 + 16);
    *(a1 + 232) |= 1u;
    *(a1 + 16) = v12;
    v4 = *(a2 + 232);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_62;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(a2 + 24);
  *(a1 + 232) |= 2u;
  *(a1 + 24) = v13;
  v4 = *(a2 + 232);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_62:
  v14 = *(a2 + 28);
  if ((sub_100094788(v14) & 1) == 0)
  {
    sub_10049DB3C();
  }

  *(a1 + 232) |= 4u;
  *(a1 + 28) = v14;
  v4 = *(a2 + 232);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  v15 = *(a2 + 40);
  *(a1 + 232) |= 8u;
  *(a1 + 40) = v15;
  v4 = *(a2 + 232);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_66:
    v17 = *(a2 + 48);
    *(a1 + 232) |= 0x20u;
    *(a1 + 48) = v17;
    v4 = *(a2 + 232);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_67;
  }

LABEL_65:
  v16 = *(a2 + 32);
  *(a1 + 232) |= 0x10u;
  *(a1 + 32) = v16;
  v4 = *(a2 + 232);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_66;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_67:
  v18 = *(a2 + 44);
  if (v18 >= 2)
  {
    sub_10049DB68();
  }

  *(a1 + 232) |= 0x40u;
  *(a1 + 44) = v18;
  v4 = *(a2 + 232);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 56);
    *(a1 + 232) |= 0x80u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 232);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v19 = *(a2 + 64);
    *(a1 + 232) |= 0x100u;
    *(a1 + 64) = v19;
    v4 = *(a2 + 232);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_72;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v20 = *(a2 + 68);
  *(a1 + 232) |= 0x200u;
  *(a1 + 68) = v20;
  v4 = *(a2 + 232);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_73;
  }

LABEL_72:
  v21 = *(a2 + 72);
  *(a1 + 232) |= 0x400u;
  *(a1 + 72) = v21;
  v4 = *(a2 + 232);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_74;
  }

LABEL_73:
  v22 = *(a2 + 76);
  *(a1 + 232) |= 0x800u;
  *(a1 + 76) = v22;
  v4 = *(a2 + 232);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_75;
  }

LABEL_74:
  v23 = *(a2 + 88);
  *(a1 + 232) |= 0x1000u;
  *(a1 + 88) = v23;
  v4 = *(a2 + 232);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_76;
  }

LABEL_75:
  v24 = *(a2 + 80);
  *(a1 + 232) |= 0x2000u;
  *(a1 + 80) = v24;
  v4 = *(a2 + 232);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_76:
  v25 = *(a2 + 96);
  *(a1 + 232) |= 0x4000u;
  *(a1 + 96) = v25;
  v4 = *(a2 + 232);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 92);
    *(a1 + 232) |= 0x8000u;
    *(a1 + 92) = v6;
    v4 = *(a2 + 232);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v4 & 0x10000) != 0)
  {
    v26 = *(a2 + 104);
    *(a1 + 232) |= 0x10000u;
    *(a1 + 104) = v26;
    v4 = *(a2 + 232);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_80;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v27 = *(a2 + 108);
  *(a1 + 232) |= 0x20000u;
  *(a1 + 108) = v27;
  v4 = *(a2 + 232);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_81;
  }

LABEL_80:
  v28 = *(a2 + 112);
  *(a1 + 232) |= 0x40000u;
  *(a1 + 112) = v28;
  v4 = *(a2 + 232);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_82;
  }

LABEL_81:
  v29 = *(a2 + 120);
  *(a1 + 232) |= 0x80000u;
  *(a1 + 120) = v29;
  v4 = *(a2 + 232);
  if ((v4 & 0x100000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_83;
  }

LABEL_82:
  v30 = *(a2 + 128);
  *(a1 + 232) |= 0x100000u;
  *(a1 + 128) = v30;
  v4 = *(a2 + 232);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

LABEL_83:
  v31 = *(a2 + 132);
  *(a1 + 232) |= 0x200000u;
  *(a1 + 132) = v31;
  v4 = *(a2 + 232);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_84:
  v32 = *(a2 + 136);
  *(a1 + 232) |= 0x400000u;
  *(a1 + 136) = v32;
  v4 = *(a2 + 232);
  if ((v4 & 0x800000) != 0)
  {
LABEL_32:
    v7 = *(a2 + 140);
    *(a1 + 232) |= 0x800000u;
    *(a1 + 140) = v7;
    v4 = *(a2 + 232);
  }

LABEL_33:
  if (!HIBYTE(v4))
  {
    goto LABEL_42;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v44 = *(a2 + 144);
    *(a1 + 232) |= 0x1000000u;
    *(a1 + 144) = v44;
    v4 = *(a2 + 232);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_36:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_101;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_36;
  }

  v45 = *(a2 + 148);
  *(a1 + 232) |= 0x2000000u;
  *(a1 + 148) = v45;
  v4 = *(a2 + 232);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_102;
  }

LABEL_101:
  v46 = *(a2 + 152);
  *(a1 + 232) |= 0x4000000u;
  *(a1 + 152) = v46;
  v4 = *(a2 + 232);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_103;
  }

LABEL_102:
  v47 = *(a2 + 156);
  *(a1 + 232) |= 0x8000000u;
  *(a1 + 156) = v47;
  v4 = *(a2 + 232);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_104;
  }

LABEL_103:
  v48 = *(a2 + 160);
  *(a1 + 232) |= 0x10000000u;
  *(a1 + 160) = v48;
  v4 = *(a2 + 232);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_105:
    v50 = *(a2 + 168);
    *(a1 + 232) |= 0x40000000u;
    *(a1 + 168) = v50;
    if ((*(a2 + 232) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_106;
  }

LABEL_104:
  v49 = *(a2 + 164);
  *(a1 + 232) |= 0x20000000u;
  *(a1 + 164) = v49;
  v4 = *(a2 + 232);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_105;
  }

LABEL_41:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_106:
  v51 = *(a2 + 172);
  *(a1 + 232) |= 0x80000000;
  *(a1 + 172) = v51;
LABEL_42:
  v8 = *(a2 + 236);
  if (!v8)
  {
    goto LABEL_52;
  }

  if (v8)
  {
    v33 = *(a2 + 176);
    *(a1 + 236) |= 1u;
    *(a1 + 176) = v33;
    v8 = *(a2 + 236);
    if ((v8 & 2) == 0)
    {
LABEL_45:
      if ((v8 & 4) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_88;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_45;
  }

  v34 = *(a2 + 180);
  *(a1 + 236) |= 2u;
  *(a1 + 180) = v34;
  v8 = *(a2 + 236);
  if ((v8 & 4) == 0)
  {
LABEL_46:
    if ((v8 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_89;
  }

LABEL_88:
  v35 = *(a2 + 184);
  *(a1 + 236) |= 4u;
  *(a1 + 184) = v35;
  v8 = *(a2 + 236);
  if ((v8 & 8) == 0)
  {
LABEL_47:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_90;
  }

LABEL_89:
  v36 = *(a2 + 188);
  *(a1 + 236) |= 8u;
  *(a1 + 188) = v36;
  v8 = *(a2 + 236);
  if ((v8 & 0x10) == 0)
  {
LABEL_48:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_91;
  }

LABEL_90:
  v37 = *(a2 + 192);
  *(a1 + 236) |= 0x10u;
  *(a1 + 192) = v37;
  v8 = *(a2 + 236);
  if ((v8 & 0x20) == 0)
  {
LABEL_49:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_92;
  }

LABEL_91:
  v38 = *(a2 + 196);
  *(a1 + 236) |= 0x20u;
  *(a1 + 196) = v38;
  v8 = *(a2 + 236);
  if ((v8 & 0x40) == 0)
  {
LABEL_50:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_92:
  v39 = *(a2 + 200);
  *(a1 + 236) |= 0x40u;
  *(a1 + 200) = v39;
  v8 = *(a2 + 236);
  if ((v8 & 0x80) != 0)
  {
LABEL_51:
    v9 = *(a2 + 204);
    *(a1 + 236) |= 0x80u;
    *(a1 + 204) = v9;
    v8 = *(a2 + 236);
  }

LABEL_52:
  if ((v8 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v8 & 0x100) != 0)
  {
    v40 = *(a2 + 208);
    *(a1 + 236) |= 0x100u;
    *(a1 + 208) = v40;
    v8 = *(a2 + 236);
    if ((v8 & 0x200) == 0)
    {
LABEL_55:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_96;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_55;
  }

  v41 = *(a2 + 212);
  *(a1 + 236) |= 0x200u;
  *(a1 + 212) = v41;
  v8 = *(a2 + 236);
  if ((v8 & 0x400) == 0)
  {
LABEL_56:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_57;
    }

LABEL_97:
    v43 = *(a2 + 220);
    *(a1 + 236) |= 0x800u;
    *(a1 + 220) = v43;
    if ((*(a2 + 236) & 0x1000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_58;
  }

LABEL_96:
  v42 = *(a2 + 216);
  *(a1 + 236) |= 0x400u;
  *(a1 + 216) = v42;
  v8 = *(a2 + 236);
  if ((v8 & 0x800) != 0)
  {
    goto LABEL_97;
  }

LABEL_57:
  if ((v8 & 0x1000) != 0)
  {
LABEL_58:
    v10 = *(a2 + 224);
    *(a1 + 236) |= 0x1000u;
    *(a1 + 224) = v10;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009D950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009D968(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 68);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 68))
  {
    v7 = *(a2 + 16);
    *(a1 + 68) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 68);
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

  else if ((*(a2 + 68) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 68) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_16:
  v9 = *(a2 + 28);
  if ((sub_100094788(v9) & 1) == 0)
  {
    sub_10049DB94();
  }

  *(a1 + 68) |= 4u;
  *(a1 + 28) = v9;
  v4 = *(a2 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 40);
  *(a1 + 68) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = *(a2 + 32);
  *(a1 + 68) |= 0x10u;
  *(a1 + 32) = v11;
  v4 = *(a2 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v13 = *(a2 + 44);
    if (v13 >= 2)
    {
      sub_10049DBC0();
    }

    *(a1 + 68) |= 0x40u;
    *(a1 + 44) = v13;
    if ((*(a2 + 68) & 0x80) != 0)
    {
      goto LABEL_12;
    }

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_20:
  v12 = *(a2 + 48);
  *(a1 + 68) |= 0x20u;
  *(a1 + 48) = v12;
  v4 = *(a2 + 68);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 56);
    *(a1 + 68) |= 0x80u;
    *(a1 + 56) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009DB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009DB24(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 104);
  if (!v4)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    if (v5 >= 2)
    {
      sub_10049DBEC();
    }

    *(a1 + 104) |= 1u;
    *(a1 + 16) = v5;
    v4 = *(a2 + 104);
  }

  if ((v4 & 2) != 0)
  {
    v21 = *(a2 + 20);
    *(a1 + 104) |= 2u;
    *(a1 + 20) = v21;
    v4 = *(a2 + 104);
    if ((v4 & 4) == 0)
    {
LABEL_9:
      if ((v4 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_48;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_9;
  }

  v22 = *(a2 + 24);
  *(a1 + 104) |= 4u;
  *(a1 + 24) = v22;
  v4 = *(a2 + 104);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  v23 = *(a2 + 28);
  *(a1 + 104) |= 8u;
  *(a1 + 28) = v23;
  v4 = *(a2 + 104);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_50:
    v25 = *(a2 + 36);
    *(a1 + 104) |= 0x20u;
    *(a1 + 36) = v25;
    v4 = *(a2 + 104);
    if ((v4 & 0x40) == 0)
    {
LABEL_13:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_49:
  v24 = *(a2 + 32);
  *(a1 + 104) |= 0x10u;
  *(a1 + 32) = v24;
  v4 = *(a2 + 104);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_50;
  }

LABEL_12:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_51:
  v26 = *(a2 + 40);
  *(a1 + 104) |= 0x40u;
  *(a1 + 40) = v26;
  v4 = *(a2 + 104);
  if ((v4 & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 44);
    *(a1 + 104) |= 0x80u;
    *(a1 + 44) = v6;
    v4 = *(a2 + 104);
  }

LABEL_15:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v4 & 0x100) != 0)
  {
    v10 = *(a2 + 48);
    *(a1 + 104) |= 0x100u;
    *(a1 + 48) = v10;
    v4 = *(a2 + 104);
    if ((v4 & 0x200) == 0)
    {
LABEL_18:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(a2 + 52);
  *(a1 + 104) |= 0x200u;
  *(a1 + 52) = v11;
  v4 = *(a2 + 104);
  if ((v4 & 0x400) == 0)
  {
LABEL_19:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v12 = *(a2 + 56);
  *(a1 + 104) |= 0x400u;
  *(a1 + 56) = v12;
  v4 = *(a2 + 104);
  if ((v4 & 0x800) == 0)
  {
LABEL_20:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v13 = *(a2 + 60);
  *(a1 + 104) |= 0x800u;
  *(a1 + 60) = v13;
  v4 = *(a2 + 104);
  if ((v4 & 0x1000) == 0)
  {
LABEL_21:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = *(a2 + 64);
  *(a1 + 104) |= 0x1000u;
  *(a1 + 64) = v14;
  v4 = *(a2 + 104);
  if ((v4 & 0x2000) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_38:
  v15 = *(a2 + 68);
  *(a1 + 104) |= 0x2000u;
  *(a1 + 68) = v15;
  v4 = *(a2 + 104);
  if ((v4 & 0x4000) == 0)
  {
LABEL_23:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_39:
  v16 = *(a2 + 72);
  *(a1 + 104) |= 0x4000u;
  *(a1 + 72) = v16;
  v4 = *(a2 + 104);
  if ((v4 & 0x8000) != 0)
  {
LABEL_24:
    v7 = *(a2 + 76);
    *(a1 + 104) |= 0x8000u;
    *(a1 + 76) = v7;
    v4 = *(a2 + 104);
  }

LABEL_25:
  if ((v4 & 0xFF0000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x10000) != 0)
  {
    v17 = *(a2 + 80);
    *(a1 + 104) |= 0x10000u;
    *(a1 + 80) = v17;
    v4 = *(a2 + 104);
    if ((v4 & 0x20000) == 0)
    {
LABEL_28:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_43;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v18 = *(a2 + 84);
  *(a1 + 104) |= 0x20000u;
  *(a1 + 84) = v18;
  v4 = *(a2 + 104);
  if ((v4 & 0x40000) == 0)
  {
LABEL_29:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

LABEL_44:
    v20 = *(a2 + 92);
    *(a1 + 104) |= 0x80000u;
    *(a1 + 92) = v20;
    if ((*(a2 + 104) & 0x100000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_31;
  }

LABEL_43:
  v19 = *(a2 + 88);
  *(a1 + 104) |= 0x40000u;
  *(a1 + 88) = v19;
  v4 = *(a2 + 104);
  if ((v4 & 0x80000) != 0)
  {
    goto LABEL_44;
  }

LABEL_30:
  if ((v4 & 0x100000) != 0)
  {
LABEL_31:
    v8 = *(a2 + 96);
    *(a1 + 104) |= 0x100000u;
    *(a1 + 96) = v8;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009DE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009DE78(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  sub_1000B3264((a1 + 16), a2 + 16);
  v4 = *(a2 + 88);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 48);
    if ((sub_100094788(v5) & 1) == 0)
    {
      sub_10049DC18();
    }

    *(a1 + 88) |= 1u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 88);
  }

  if ((v4 & 4) != 0)
  {
    v10 = *(a2 + 40);
    *(a1 + 88) |= 4u;
    *(a1 + 40) = v10;
    v4 = *(a2 + 88);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(a2 + 56);
  *(a1 + 88) |= 8u;
  *(a1 + 56) = v11;
  v4 = *(a2 + 88);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    v13 = *(a2 + 64);
    *(a1 + 88) |= 0x20u;
    *(a1 + 64) = v13;
    v4 = *(a2 + 88);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_22:
  v12 = *(a2 + 52);
  *(a1 + 88) |= 0x10u;
  *(a1 + 52) = v12;
  v4 = *(a2 + 88);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_24:
  v14 = *(a2 + 68);
  *(a1 + 88) |= 0x40u;
  *(a1 + 68) = v14;
  v4 = *(a2 + 88);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(a2 + 72);
    *(a1 + 88) |= 0x80u;
    *(a1 + 72) = v6;
    v4 = *(a2 + 88);
  }

LABEL_14:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v7 = *(a2 + 76);
      *(a1 + 88) |= 0x100u;
      *(a1 + 76) = v7;
      v4 = *(a2 + 88);
    }

    if ((v4 & 0x200) != 0)
    {
      v8 = *(a2 + 80);
      *(a1 + 88) |= 0x200u;
      *(a1 + 80) = v8;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009E03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009E054(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 16);
      if ((sub_100094788(v5) & 1) == 0)
      {
        sub_10049DC44();
      }

      *(a1 + 52) |= 1u;
      *(a1 + 16) = v5;
      v4 = *(a2 + 52);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 20);
      *(a1 + 52) |= 2u;
      *(a1 + 20) = v6;
      v4 = *(a2 + 52);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 52) |= 4u;
      v7 = *(a1 + 24);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 24);
      if (!v8)
      {
        v8 = *(qword_1009F9AB8 + 24);
      }

      sub_1000B1E60(v7, v8);
      v4 = *(a2 + 52);
    }

    if ((v4 & 8) != 0)
    {
      *(a1 + 52) |= 8u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 32);
      if (!v10)
      {
        v10 = *(qword_1009F9AB8 + 32);
      }

      sub_1000B1E60(v9, v10);
      v4 = *(a2 + 52);
    }

    if ((v4 & 0x10) != 0)
    {
      v11 = *(a2 + 40);
      *(a1 + 52) |= 0x10u;
      *(a1 + 40) = v11;
      v4 = *(a2 + 52);
    }

    if ((v4 & 0x20) != 0)
    {
      v12 = *(a2 + 44);
      *(a1 + 52) |= 0x20u;
      *(a1 + 44) = v12;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009E24C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  sub_1000BD044((a1 + 48), a2 + 48);
  LOBYTE(v4) = *(a2 + 76);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 76))
  {
    v7 = *(a2 + 16);
    *(a1 + 76) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 76);
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

  else if ((*(a2 + 76) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 76) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 76);
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
  v9 = *(a2 + 28);
  *(a1 + 76) |= 4u;
  *(a1 + 28) = v9;
  v4 = *(a2 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    *(a1 + 76) |= 0x10u;
    v11 = *(a1 + 32);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 32);
    if (!v12)
    {
      v12 = *(qword_1009F9A80 + 32);
    }

    sub_10009F2F0(v11, v12);
    if ((*(a2 + 76) & 0x20) != 0)
    {
      goto LABEL_10;
    }

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_15:
  v10 = *(a2 + 40);
  *(a1 + 76) |= 8u;
  *(a1 + 40) = v10;
  v4 = *(a2 + 76);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 44);
    *(a1 + 76) |= 0x20u;
    *(a1 + 44) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009E410(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 88);
  if (!v4)
  {
    goto LABEL_20;
  }

  if (v4)
  {
    *(a1 + 88) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9AC0 + 16);
    }

    sub_10009F2F0(v5, v6);
    v4 = *(a2 + 88);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    if (v7 >= 2)
    {
      sub_10049DC70();
    }

    *(a1 + 88) |= 2u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 88);
  }

  if ((v4 & 4) != 0)
  {
    v18 = *(a2 + 28);
    *(a1 + 88) |= 4u;
    *(a1 + 28) = v18;
    v4 = *(a2 + 88);
    if ((v4 & 8) == 0)
    {
LABEL_15:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_41;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_15;
  }

  v19 = *(a2 + 32);
  *(a1 + 88) |= 8u;
  *(a1 + 32) = v19;
  v4 = *(a2 + 88);
  if ((v4 & 0x10) == 0)
  {
LABEL_16:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_42:
    v21 = *(a2 + 40);
    *(a1 + 88) |= 0x20u;
    *(a1 + 40) = v21;
    v4 = *(a2 + 88);
    if ((v4 & 0x40) == 0)
    {
LABEL_18:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_41:
  v20 = *(a2 + 36);
  *(a1 + 88) |= 0x10u;
  *(a1 + 36) = v20;
  v4 = *(a2 + 88);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_17:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_43:
  v22 = *(a2 + 44);
  *(a1 + 88) |= 0x40u;
  *(a1 + 44) = v22;
  v4 = *(a2 + 88);
  if ((v4 & 0x80) != 0)
  {
LABEL_19:
    v8 = *(a2 + 48);
    *(a1 + 88) |= 0x80u;
    *(a1 + 48) = v8;
    v4 = *(a2 + 88);
  }

LABEL_20:
  if ((v4 & 0xFF00) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x100) != 0)
  {
    v11 = *(a2 + 52);
    *(a1 + 88) |= 0x100u;
    *(a1 + 52) = v11;
    v4 = *(a2 + 88);
    if ((v4 & 0x200) == 0)
    {
LABEL_23:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_23;
  }

  v12 = *(a2 + 56);
  *(a1 + 88) |= 0x200u;
  *(a1 + 56) = v12;
  v4 = *(a2 + 88);
  if ((v4 & 0x400) == 0)
  {
LABEL_24:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = *(a2 + 60);
  *(a1 + 88) |= 0x400u;
  *(a1 + 60) = v13;
  v4 = *(a2 + 88);
  if ((v4 & 0x800) == 0)
  {
LABEL_25:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  v14 = *(a2 + 64);
  *(a1 + 88) |= 0x800u;
  *(a1 + 64) = v14;
  v4 = *(a2 + 88);
  if ((v4 & 0x1000) == 0)
  {
LABEL_26:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = *(a2 + 68);
  *(a1 + 88) |= 0x1000u;
  *(a1 + 68) = v15;
  v4 = *(a2 + 88);
  if ((v4 & 0x2000) == 0)
  {
LABEL_27:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

LABEL_37:
    v17 = *(a2 + 76);
    *(a1 + 88) |= 0x4000u;
    *(a1 + 76) = v17;
    if ((*(a2 + 88) & 0x8000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_29;
  }

LABEL_36:
  v16 = *(a2 + 72);
  *(a1 + 88) |= 0x2000u;
  *(a1 + 72) = v16;
  v4 = *(a2 + 88);
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  if ((v4 & 0x8000) != 0)
  {
LABEL_29:
    v9 = *(a2 + 80);
    *(a1 + 88) |= 0x8000u;
    *(a1 + 80) = v9;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009E718(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (*(a2 + 28))
  {
    *(a1 + 28) |= 1u;
    v4 = *(a1 + 16);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9AC8 + 16);
    }

    sub_10009FCB8(v4, v5);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009E828(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v28);
  }

  sub_1000C36D0((a1 + 128), a2 + 128);
  v4 = *(a2 + 160);
  if (v4)
  {
    if (v4)
    {
      v11 = *(a2 + 16);
      *(a1 + 160) |= 1u;
      *(a1 + 16) = v11;
      v4 = *(a2 + 160);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_35;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    v12 = *(a2 + 24);
    *(a1 + 160) |= 2u;
    *(a1 + 24) = v12;
    v4 = *(a2 + 160);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_35:
    v13 = *(a2 + 32);
    *(a1 + 160) |= 4u;
    *(a1 + 32) = v13;
    v4 = *(a2 + 160);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_36:
    v14 = *(a2 + 36);
    if ((sub_100094788(v14) & 1) == 0)
    {
      sub_10049DC9C();
    }

    *(a1 + 160) |= 8u;
    *(a1 + 36) = v14;
    v4 = *(a2 + 160);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }

LABEL_38:
    *(a1 + 160) |= 0x10u;
    v15 = *(a1 + 40);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 40);
    if (!v16)
    {
      v16 = *(qword_1009F9AA0 + 40);
    }

    sub_10009F2F0(v15, v16);
    v4 = *(a2 + 160);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_43:
    v17 = *(a2 + 48);
    if (v17 > 0x1B || ((1 << v17) & 0xDDB54EF) == 0)
    {
      sub_10049DCC8();
    }

    *(a1 + 160) |= 0x20u;
    *(a1 + 48) = v17;
    v4 = *(a2 + 160);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v5 = *(a2 + 56);
    *(a1 + 160) |= 0x40u;
    *(a1 + 56) = v5;
    v4 = *(a2 + 160);
LABEL_12:
    if ((v4 & 0x80) != 0)
    {
      v6 = *(a2 + 52);
      *(a1 + 160) |= 0x80u;
      *(a1 + 52) = v6;
      v4 = *(a2 + 160);
    }
  }

  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v18 = *(a2 + 64);
    *(a1 + 160) |= 0x100u;
    v19 = *(a1 + 64);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, v18);
    v4 = *(a2 + 160);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_51;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v20 = *(a2 + 88);
  *(a1 + 160) |= 0x200u;
  *(a1 + 88) = v20;
  v4 = *(a2 + 160);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v21 = *(a2 + 72);
  *(a1 + 160) |= 0x400u;
  *(a1 + 72) = v21;
  v4 = *(a2 + 160);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v22 = *(a2 + 80);
  *(a1 + 160) |= 0x800u;
  *(a1 + 80) = v22;
  v4 = *(a2 + 160);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v23 = *(a2 + 96);
  *(a1 + 160) |= 0x1000u;
  *(a1 + 96) = v23;
  v4 = *(a2 + 160);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_54:
  v24 = *(a2 + 92);
  if (v24 >= 4)
  {
    sub_10049DCF4();
  }

  *(a1 + 160) |= 0x2000u;
  *(a1 + 92) = v24;
  v4 = *(a2 + 160);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_56:
  v25 = *(a2 + 104);
  if (v25 >= 4)
  {
    sub_10049DD20();
  }

  *(a1 + 160) |= 0x4000u;
  *(a1 + 104) = v25;
  v4 = *(a2 + 160);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v7 = *(a2 + 108);
    *(a1 + 160) |= 0x8000u;
    *(a1 + 108) = v7;
    v4 = *(a2 + 160);
  }

LABEL_24:
  if ((v4 & 0xFF0000) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if ((v4 & 0x10000) != 0)
  {
    v8 = *(a2 + 120);
    if ((sub_100094824(v8) & 1) == 0)
    {
      sub_10049DD4C();
    }

    *(a1 + 160) |= 0x10000u;
    *(a1 + 120) = v8;
    v4 = *(a2 + 160);
  }

  if ((v4 & 0x20000) == 0)
  {
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v27 = *(a2 + 124);
    *(a1 + 160) |= 0x40000u;
    *(a1 + 124) = v27;
    if ((*(a2 + 160) & 0x80000) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_31;
  }

  v26 = *(a2 + 112);
  *(a1 + 160) |= 0x20000u;
  *(a1 + 112) = v26;
  v4 = *(a2 + 160);
  if ((v4 & 0x40000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((v4 & 0x80000) != 0)
  {
LABEL_31:
    v9 = *(a2 + 152);
    *(a1 + 160) |= 0x80000u;
    *(a1 + 152) = v9;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

uint64_t sub_10009EC50(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v41);
  }

  sub_1000CCA24((a1 + 208), a2 + 208);
  v4 = *(a2 + 240);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v12 = *(a2 + 16);
    *(a1 + 240) |= 1u;
    *(a1 + 16) = v12;
    v4 = *(a2 + 240);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(a2 + 24);
  *(a1 + 240) |= 2u;
  *(a1 + 24) = v13;
  v4 = *(a2 + 240);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  v14 = *(a2 + 32);
  *(a1 + 240) |= 4u;
  *(a1 + 32) = v14;
  v4 = *(a2 + 240);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  v15 = *(a2 + 36);
  *(a1 + 240) |= 8u;
  *(a1 + 36) = v15;
  v4 = *(a2 + 240);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_53:
    v17 = *(a2 + 44);
    *(a1 + 240) |= 0x20u;
    *(a1 + 44) = v17;
    v4 = *(a2 + 240);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_52:
  v16 = *(a2 + 40);
  *(a1 + 240) |= 0x10u;
  *(a1 + 40) = v16;
  v4 = *(a2 + 240);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_54:
  v18 = *(a2 + 56);
  *(a1 + 240) |= 0x40u;
  *(a1 + 56) = v18;
  v4 = *(a2 + 240);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 48);
    *(a1 + 240) |= 0x80u;
    *(a1 + 48) = v5;
    v4 = *(a2 + 240);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v19 = *(a2 + 60);
    *(a1 + 240) |= 0x100u;
    *(a1 + 60) = v19;
    v4 = *(a2 + 240);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_58;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v20 = *(a2 + 64);
  *(a1 + 240) |= 0x200u;
  *(a1 + 64) = v20;
  v4 = *(a2 + 240);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  v21 = *(a2 + 68);
  *(a1 + 240) |= 0x400u;
  *(a1 + 68) = v21;
  v4 = *(a2 + 240);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  v22 = *(a2 + 72);
  *(a1 + 240) |= 0x800u;
  *(a1 + 72) = v22;
  v4 = *(a2 + 240);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  v23 = *(a2 + 76);
  *(a1 + 240) |= 0x1000u;
  *(a1 + 76) = v23;
  v4 = *(a2 + 240);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  v24 = *(a2 + 80);
  *(a1 + 240) |= 0x2000u;
  *(a1 + 80) = v24;
  v4 = *(a2 + 240);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_62:
  v25 = *(a2 + 84);
  *(a1 + 240) |= 0x4000u;
  *(a1 + 84) = v25;
  v4 = *(a2 + 240);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 88);
    *(a1 + 240) |= 0x8000u;
    *(a1 + 88) = v6;
    v4 = *(a2 + 240);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v4 & 0x10000) != 0)
  {
    v26 = *(a2 + 92);
    *(a1 + 240) |= 0x10000u;
    *(a1 + 92) = v26;
    v4 = *(a2 + 240);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v27 = *(a2 + 96);
  *(a1 + 240) |= 0x20000u;
  *(a1 + 96) = v27;
  v4 = *(a2 + 240);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_67;
  }

LABEL_66:
  v28 = *(a2 + 104);
  *(a1 + 240) |= 0x40000u;
  *(a1 + 104) = v28;
  v4 = *(a2 + 240);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_67:
  v29 = *(a2 + 112);
  *(a1 + 240) |= 0x80000u;
  *(a1 + 112) = v29;
  v4 = *(a2 + 240);
  if ((v4 & 0x100000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

LABEL_68:
  v30 = *(a2 + 120);
  *(a1 + 240) |= 0x100000u;
  *(a1 + 120) = v30;
  v4 = *(a2 + 240);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_69:
  v31 = *(a2 + 124);
  *(a1 + 240) |= 0x200000u;
  *(a1 + 124) = v31;
  v4 = *(a2 + 240);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_70:
  v32 = *(a2 + 128);
  *(a1 + 240) |= 0x400000u;
  *(a1 + 128) = v32;
  v4 = *(a2 + 240);
  if ((v4 & 0x800000) != 0)
  {
LABEL_32:
    v7 = *(a2 + 136);
    *(a1 + 240) |= 0x800000u;
    *(a1 + 136) = v7;
    v4 = *(a2 + 240);
  }

LABEL_33:
  if (!HIBYTE(v4))
  {
    goto LABEL_42;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v33 = *(a2 + 144);
    *(a1 + 240) |= 0x1000000u;
    *(a1 + 144) = v33;
    v4 = *(a2 + 240);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_36:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_74;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_36;
  }

  v34 = *(a2 + 152);
  *(a1 + 240) |= 0x2000000u;
  *(a1 + 152) = v34;
  v4 = *(a2 + 240);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = *(a2 + 156);
  *(a1 + 240) |= 0x4000000u;
  *(a1 + 156) = v35;
  v4 = *(a2 + 240);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_76;
  }

LABEL_75:
  v36 = *(a2 + 160);
  *(a1 + 240) |= 0x8000000u;
  *(a1 + 160) = v36;
  v4 = *(a2 + 240);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = *(a2 + 168);
  *(a1 + 240) |= 0x10000000u;
  *(a1 + 168) = v37;
  v4 = *(a2 + 240);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_78:
    v39 = *(a2 + 184);
    *(a1 + 240) |= 0x40000000u;
    *(a1 + 184) = v39;
    if ((*(a2 + 240) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_79;
  }

LABEL_77:
  v38 = *(a2 + 176);
  *(a1 + 240) |= 0x20000000u;
  *(a1 + 176) = v38;
  v4 = *(a2 + 240);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_78;
  }

LABEL_41:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_79:
  v40 = *(a2 + 192);
  *(a1 + 240) |= 0x80000000;
  *(a1 + 192) = v40;
LABEL_42:
  LOBYTE(v8) = *(a2 + 244);
  if (v8)
  {
    if (*(a2 + 244))
    {
      v9 = *(a2 + 200);
      *(a1 + 244) |= 1u;
      *(a1 + 200) = v9;
      v8 = *(a2 + 244);
    }

    if ((v8 & 4) != 0)
    {
      v10 = *(a2 + 232);
      *(a1 + 244) |= 4u;
      *(a1 + 232) = v10;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009F134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009F14C(uint64_t result, uint64_t a2)
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

uint64_t sub_10009F1E0()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED5D0;
}

void sub_10009F274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009F288(uint64_t a1)
{
  *a1 = off_10098E308;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_10009F2F0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 16);
      *(a1 + 32) |= 1u;
      v6 = *(a1 + 16);
      if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v6, v5);
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 24);
      *(a1 + 32) |= 2u;
      *(a1 + 24) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009F3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009F404(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_10098E308;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_10009F464(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_10009F4DC(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_10009F404(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009F580(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(a1 + 32))
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
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 6) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10009F5D8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v15 = *(this + 1);
        v13 = *(this + 2);
LABEL_22:
        if (v15 >= v13 || (v16 = *v15, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v16;
          v17 = v15 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 32) |= 2u;
        if (v17 == v13 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        break;
      }

      *(a1 + 32) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v10 = *(a1 + 16);
      if ((*(v10 + 23) & 0x8000000000000000) != 0)
      {
        v11 = *v10;
        v12 = *(*(a1 + 16) + 8);
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v14 = *(this + 1);
      v13 = *(this + 2);
      if (v14 < v13 && *v14 == 16)
      {
        v15 = v14 + 1;
        *(this + 1) = v15;
        goto LABEL_22;
      }
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10009F794(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 16);
    if ((*(v7 + 23) & 0x8000000000000000) != 0)
    {
      v8 = *v7;
      v9 = *(*(v5 + 16) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v10 = *(v5 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 32);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  }

  v13 = *(v5 + 8);
  v12 = (v5 + 8);
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v12, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009F838(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 8);
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
    v5 = *(this + 8);
  }

  if ((v5 & 2) != 0)
  {
    v17 = *(this + 6);
    *a2 = 16;
    if (v17 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v17;
      a2 = (a2 + 2);
    }
  }

  v20 = *(this + 1);
  v19 = (this + 8);
  v18 = v20;
  if (!v20 || *v18 == v18[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, a2, a3);
}

uint64_t sub_10009F954(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (v3)
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 32) & 2) == 0)
      {
        goto LABEL_19;
      }

LABEL_15:
      v12 = *(a1 + 24);
      if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
      }

      else
      {
        v13 = 2;
      }

      v4 = (v13 + v4);
      goto LABEL_19;
    }

    v5 = *(a1 + 16);
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
      v3 = *(a1 + 32);
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
    if ((v3 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  v14 = *(a1 + 8);
  if (v14 && *v14 != v14[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 28) = v4;
  return v4;
}

uint64_t sub_10009FA30(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009F2F0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10009FB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009FB1C(uint64_t result, uint64_t a2)
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

uint64_t sub_10009FBB0()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED5E0;
}

void sub_10009FC44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009FC58(uint64_t a1)
{
  *a1 = off_10098E3B8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

uint64_t sub_10009FCB8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 24);
      if ((sub_100094788(v5) & 1) == 0)
      {
        sub_10049DD78();
      }

      *(a1 + 32) |= 1u;
      *(a1 + 24) = v5;
      v4 = *(a2 + 32);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 32) |= 2u;
      v6 = *(a1 + 16);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 16);
      if (!v7)
      {
        v7 = *(qword_1009F9990 + 16);
      }

      sub_10009F2F0(v6, v7);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009FDF8(void *a1)
{
  *a1 = off_10098E3B8;
  if (qword_1009F9990 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10009FE90(void *a1)
{
  sub_10009FDF8(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009FF34(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 6) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 2);
      if (this)
      {
        this = sub_10009F580(this);
      }
    }
  }

  v4 = *(v1 + 1);
  v3 = (v1 + 8);
  *(v3 + 6) = 0;
  if (v4)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return this;
}

uint64_t sub_10009FF9C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v8 == 2)
        {
          goto LABEL_24;
        }

LABEL_13:
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
        goto LABEL_13;
      }

      v23 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
        if (!result)
        {
          return result;
        }

        v10 = v23;
      }

      else
      {
        *(this + 1) = v9 + 1;
      }

      if (sub_100094788(v10))
      {
        *(a1 + 32) |= 1u;
        *(a1 + 24) = v10;
      }

      else
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 1, v10);
      }

      v12 = *(this + 1);
    }

    while (v12 >= *(this + 2) || *v12 != 18);
    *(this + 1) = v12 + 1;
LABEL_24:
    *(a1 + 32) |= 2u;
    v13 = *(a1 + 16);
    if (!v13)
    {
      operator new();
    }

    v24 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v14;
      *(this + 1) = v14 + 1;
    }

    v15 = *(this + 14);
    v16 = *(this + 15);
    *(this + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
    if (!sub_10009F5D8(v13, this, v18, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
    v20 = *(this + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(this + 14) = v22;
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

uint64_t sub_1000A0204(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
    v6 = *(v5 + 32);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(qword_1009F9990 + 16);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A02A0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 32))
  {
    v5 = *(this + 6);
    *a2 = 8;
    v6 = a2 + 1;
    if ((v5 & 0x80000000) != 0)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, v6, a3);
    }

    else
    {
      if (v5 <= 0x7F)
      {
        *(v3 + 1) = v5;
        v3 = (v3 + 2);
        goto LABEL_8;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v6, a3);
    }

    v3 = v7;
  }

LABEL_8:
  if ((*(this + 32) & 2) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(qword_1009F9990 + 16);
    }

    *v3 = 18;
    v9 = v8[7];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v9;
      v10 = (v3 + 2);
    }

    v3 = sub_10009F838(v8, v10, a3);
  }

  v13 = *(this + 1);
  v12 = (this + 8);
  v11 = v13;
  if (!v13 || *v11 == v11[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v12, v3, a3);
}

uint64_t sub_1000A0394(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 32))
    {
      v5 = *(a1 + 24);
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
        if ((*(a1 + 32) & 2) == 0)
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
      if ((*(a1 + 32) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      v6 = *(qword_1009F9990 + 16);
    }

    v7 = sub_10009F954(v6, a2);
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
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 28) = v4;
  return v4;
}

uint64_t sub_1000A047C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009FCB8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A0550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A0568(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A05FC()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED5F0;
}

void sub_1000A0690(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000A06A4(void *a1)
{
  *a1 = off_10098E468;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = 0;
  return a1;
}

void sub_1000A0708(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_10098E468;
  v2 = (a1 + 8);
  sub_10009F464(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A076C(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1000A0708(a1);

  operator delete();
}

uint64_t sub_1000A0810(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 28) |= 1u;
      if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v8 = *(a1 + 16);
      if ((*(v8 + 23) & 0x8000000000000000) != 0)
      {
        v9 = *v8;
        v10 = *(*(a1 + 16) + 8);
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

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000A094C(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 28))
  {
    v5 = *(this + 16);
    if ((*(v5 + 23) & 0x8000000000000000) != 0)
    {
      v6 = *v5;
      v7 = *(*(v4 + 16) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v8 = *(v4 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  v11 = *(v4 + 8);
  v10 = (v4 + 8);
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A09D8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v5 = *(this + 2);
    if ((*(v5 + 23) & 0x8000000000000000) != 0)
    {
      v6 = *v5;
      v7 = *(*(this + 2) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v10 = *(this + 2);
    *a2 = 10;
    v11 = *(v10 + 23);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = *(v10 + 8);
    }

    if (v11 > 0x7F)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, a2 + 1, v8);
    }

    else
    {
      *(a2 + 1) = v11;
      v12 = a2 + 2;
    }

    v13 = *(v10 + 23);
    if (v13 >= 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = *v10;
    }

    if (v13 >= 0)
    {
      v15 = *(v10 + 23);
    }

    else
    {
      v15 = *(v10 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v14, v15, v12, v9);
  }

  v18 = *(this + 1);
  v17 = (this + 8);
  v16 = v18;
  if (!v18 || *v16 == v16[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v17, a2, a3);
}

uint64_t sub_1000A0AC0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
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

    v3 = (v9 + v5);
  }

  else
  {
    v3 = 0;
  }

  v11 = *(a1 + 8);
  if (v11 && *v11 != v11[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1000A0B64(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009A9E8(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A0C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A0C50(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A0CE4()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED600;
}

void sub_1000A0D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000A0D8C(void *a1)
{
  *a1 = off_10098E518;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = 0;
  return a1;
}

void sub_1000A0DFC(wireless_diagnostics::google::protobuf::Message *a1)
{
  *a1 = off_10098E518;
  v2 = (a1 + 8);
  sub_1000A0E5C(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_1000A0E5C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(result + 40);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  return result;
}

void sub_1000A0F14(wireless_diagnostics::google::protobuf::Message *a1)
{
  sub_1000A0DFC(a1);

  operator delete();
}

uint64_t sub_1000A0FB8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

          if (TagFallback >> 3 > 7)
          {
            if (v8 == 8)
            {
              if ((TagFallback & 7) == 0)
              {
                v25 = *(this + 1);
                v12 = *(this + 2);
                goto LABEL_97;
              }
            }

            else if (v8 == 9)
            {
              if ((TagFallback & 7) == 0)
              {
                v27 = *(this + 1);
                v12 = *(this + 2);
                goto LABEL_105;
              }
            }

            else if (v8 == 10 && (TagFallback & 7) == 0)
            {
              v13 = *(this + 1);
              v12 = *(this + 2);
              goto LABEL_113;
            }

            goto LABEL_48;
          }

          if (v8 != 6)
          {
            if (v8 == 7 && (TagFallback & 7) == 0)
            {
              v15 = *(this + 1);
              v12 = *(this + 2);
              goto LABEL_89;
            }

            goto LABEL_48;
          }

          if (v9 != 2)
          {
            goto LABEL_48;
          }

          v23 = *(a1 + 68);
LABEL_81:
          *(a1 + 68) = v23 | 0x20;
          if (*(a1 + 40) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v34 = *(a1 + 40);
          if ((*(v34 + 23) & 0x8000000000000000) != 0)
          {
            v35 = *v34;
            v36 = *(*(a1 + 40) + 8);
          }

          wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
          v37 = *(this + 1);
          v12 = *(this + 2);
          if (v37 < v12 && *v37 == 56)
          {
            v15 = v37 + 1;
            *(this + 1) = v15;
LABEL_89:
            if (v15 >= v12 || (v38 = *v15, v38 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
              if (!result)
              {
                return result;
              }

              v39 = *(this + 1);
              v12 = *(this + 2);
            }

            else
            {
              *(a1 + 48) = v38;
              v39 = v15 + 1;
              *(this + 1) = v39;
            }

            *(a1 + 68) |= 0x40u;
            if (v39 < v12 && *v39 == 64)
            {
              v25 = v39 + 1;
              *(this + 1) = v25;
LABEL_97:
              if (v25 >= v12 || (v40 = *v25, v40 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                if (!result)
                {
                  return result;
                }

                v41 = *(this + 1);
                v12 = *(this + 2);
              }

              else
              {
                *(a1 + 52) = v40;
                v41 = v25 + 1;
                *(this + 1) = v41;
              }

              *(a1 + 68) |= 0x80u;
              if (v41 < v12 && *v41 == 72)
              {
                v27 = v41 + 1;
                *(this + 1) = v27;
LABEL_105:
                if (v27 >= v12 || (v42 = *v27, v42 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 56));
                  if (!result)
                  {
                    return result;
                  }

                  v43 = *(this + 1);
                  v12 = *(this + 2);
                }

                else
                {
                  *(a1 + 56) = v42;
                  v43 = v27 + 1;
                  *(this + 1) = v43;
                }

                *(a1 + 68) |= 0x100u;
                if (v43 < v12 && *v43 == 80)
                {
                  v13 = v43 + 1;
                  *(this + 1) = v13;
LABEL_113:
                  if (v13 >= v12 || (v44 = *v13, v44 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 60));
                    if (!result)
                    {
                      return result;
                    }

                    v45 = *(this + 1);
                    v12 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 60) = v44;
                    v45 = v13 + 1;
                    *(this + 1) = v45;
                  }

                  *(a1 + 68) |= 0x200u;
                  if (v45 == v12 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_48;
          }

          v14 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_36;
        }

        if (v9 != 2)
        {
          goto LABEL_48;
        }

        *(a1 + 68) |= 1u;
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
        v10 = *(this + 2);
        if (v20 < v10 && *v20 == 16)
        {
          v14 = v20 + 1;
          *(this + 1) = v14;
LABEL_36:
          if (v14 >= v10 || (v21 = *v14, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v22 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v21;
            v22 = v14 + 1;
            *(this + 1) = v22;
          }

          *(a1 + 68) |= 2u;
          if (v22 < v10 && *v22 == 24)
          {
            v24 = v22 + 1;
            *(this + 1) = v24;
LABEL_57:
            if (v24 >= v10 || (v28 = *v24, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
              if (!result)
              {
                return result;
              }

              v29 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 28) = v28;
              v29 = v24 + 1;
              *(this + 1) = v29;
            }

            *(a1 + 68) |= 4u;
            if (v29 < v10 && *v29 == 32)
            {
              v26 = v29 + 1;
              *(this + 1) = v26;
              goto LABEL_65;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v24 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_57;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_48;
      }

      v26 = *(this + 1);
      v10 = *(this + 2);
LABEL_65:
      if (v26 >= v10 || (v30 = *v26, v30 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
        if (!result)
        {
          return result;
        }

        v31 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 32) = v30;
        v31 = v26 + 1;
        *(this + 1) = v31;
      }

      *(a1 + 68) |= 8u;
      if (v31 < v10 && *v31 == 40)
      {
        v11 = v31 + 1;
        *(this + 1) = v11;
LABEL_73:
        if (v11 >= v10 || (v32 = *v11, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 36) = v32;
          v33 = v11 + 1;
          *(this + 1) = v33;
        }

        v23 = *(a1 + 68) | 0x10;
        *(a1 + 68) = v23;
        if (v33 < v10 && *v33 == 50)
        {
          *(this + 1) = v33 + 1;
          goto LABEL_81;
        }
      }
    }

    if (v8 == 5 && (TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_73;
    }

LABEL_48:
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

uint64_t sub_1000A1528(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
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
    v6 = *(v5 + 68);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 68);
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
  v14 = *(v5 + 40);
  if ((*(v14 + 23) & 0x8000000000000000) != 0)
  {
    v15 = *v14;
    v16 = *(*(v5 + 40) + 8);
  }

  wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
  v17 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 56), a2, a4);
    if ((*(v5 + 68) & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 52), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v6 & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 60), a2, a4);
  }

LABEL_12:
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A16CC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v5 = *(this + 17);
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
    v5 = *(this + 17);
  }

  if ((v5 & 2) != 0)
  {
    v17 = *(this + 6);
    *a2 = 16;
    if (v17 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v17;
      a2 = (a2 + 2);
    }
  }

  if ((*(this + 68) & 4) != 0)
  {
    v18 = *(this + 7);
    *a2 = 24;
    if (v18 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v18;
      a2 = (a2 + 2);
    }
  }

  if ((*(this + 68) & 8) != 0)
  {
    v19 = *(this + 8);
    *a2 = 32;
    if (v19 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v19;
      a2 = (a2 + 2);
    }
  }

  if ((*(this + 68) & 0x10) != 0)
  {
    v20 = *(this + 9);
    *a2 = 40;
    if (v20 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v20;
      a2 = (a2 + 2);
    }
  }

  v21 = *(this + 17);
  if ((v21 & 0x20) != 0)
  {
    v22 = *(this + 5);
    if ((*(v22 + 23) & 0x8000000000000000) != 0)
    {
      v23 = *v22;
      v24 = *(*(this + 5) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v27 = *(this + 5);
    *a2 = 50;
    v28 = *(v27 + 23);
    if ((v28 & 0x8000000000000000) != 0)
    {
      v28 = *(v27 + 8);
    }

    if (v28 > 0x7F)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, a2 + 1, v25);
    }

    else
    {
      *(a2 + 1) = v28;
      v29 = a2 + 2;
    }

    v30 = *(v27 + 23);
    if (v30 >= 0)
    {
      v31 = v27;
    }

    else
    {
      v31 = *v27;
    }

    if (v30 >= 0)
    {
      v32 = *(v27 + 23);
    }

    else
    {
      v32 = *(v27 + 8);
    }

    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v31, v32, v29, v26);
    v21 = *(this + 17);
  }

  if ((v21 & 0x40) != 0)
  {
    v33 = *(this + 12);
    *a2 = 56;
    if (v33 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v33;
      a2 = (a2 + 2);
    }
  }

  if ((*(this + 68) & 0x80) != 0)
  {
    v34 = *(this + 13);
    *a2 = 64;
    if (v34 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v34;
      a2 = (a2 + 2);
    }
  }

  if (*(this + 69))
  {
    v35 = *(this + 14);
    *a2 = 72;
    if (v35 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v35, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v35;
      a2 = (a2 + 2);
    }
  }

  if ((*(this + 69) & 2) != 0)
  {
    v36 = *(this + 15);
    *a2 = 80;
    if (v36 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v36;
      a2 = (a2 + 2);
    }
  }

  v39 = *(this + 1);
  v38 = (this + 8);
  v37 = v39;
  if (!v39 || *v37 == v37[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v38, a2, a3);
}

uint64_t sub_1000A19D0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 68);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_55;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v5 = *(a1 + 16);
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
    v3 = *(a1 + 68);
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
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(a1 + 24);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
      v3 = *(a1 + 68);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v14 = *(a1 + 28);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 68);
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v16 = *(a1 + 32);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(a1 + 68);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_34:
  v18 = *(a1 + 36);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    v3 = *(a1 + 68);
  }

  else
  {
    v19 = 2;
  }

  v4 = (v19 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_38:
  v20 = *(a1 + 40);
  v21 = *(v20 + 23);
  v22 = v21;
  v23 = *(v20 + 8);
  if ((v21 & 0x80u) == 0)
  {
    v24 = *(v20 + 23);
  }

  else
  {
    v24 = v23;
  }

  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
    v21 = *(v20 + 23);
    v23 = *(v20 + 8);
    v3 = *(a1 + 68);
    v22 = *(v20 + 23);
  }

  else
  {
    v25 = 1;
  }

  if (v22 < 0)
  {
    v21 = v23;
  }

  v4 = (v4 + v25 + v21 + 1);
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

LABEL_47:
  v26 = *(a1 + 48);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
    v3 = *(a1 + 68);
  }

  else
  {
    v27 = 2;
  }

  v4 = (v27 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_51:
    v28 = *(a1 + 52);
    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 1;
      v3 = *(a1 + 68);
    }

    else
    {
      v29 = 2;
    }

    v4 = (v29 + v4);
  }

LABEL_55:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v30 = *(a1 + 56);
      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 1;
        v3 = *(a1 + 68);
      }

      else
      {
        v31 = 2;
      }

      v4 = (v31 + v4);
    }

    if ((v3 & 0x200) != 0)
    {
      v32 = *(a1 + 60);
      if (v32 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 1;
      }

      else
      {
        v33 = 2;
      }

      v4 = (v33 + v4);
    }
  }

  v34 = *(a1 + 8);
  if (v34 && *v34 != v34[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 64) = v4;
  return v4;
}

uint64_t sub_1000A1C48(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009AADC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A1D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1D34(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A1DC8()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED610;
}

void sub_1000A1E5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1E70(uint64_t a1)
{
  *a1 = off_10098E5C8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_1000A1ED0(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 24))
  {
    v4 = *(a2 + 16);
    a1[6] |= 1u;
    a1[4] = v4;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1000A1F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000A1F80(uint64_t a1)
{
  *a1 = off_10098E5C8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A1FD4(uint64_t a1)
{
  *a1 = off_10098E5C8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A20A8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    *(a1 + 16) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1000A20C8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 24) |= 1u;
      if (v11 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000A21CC(uint64_t this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 24))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
  }

  v8 = *(v5 + 8);
  v7 = (v5 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A2240(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 24))
  {
    v4 = *(this + 4);
    *a2 = 8;
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v4;
      a2 = (a2 + 2);
    }
  }

  v7 = *(this + 1);
  v6 = (this + 8);
  v5 = v7;
  if (!v7 || *v5 == v5[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, a2, a3);
}

uint64_t sub_1000A22D0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4 >= 0x80)
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

  v5 = *(a1 + 8);
  if (v5 && *v5 != v5[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_1000A2344(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000A1ED0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A2418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A2430(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A24C4()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED620;
}

void sub_1000A2558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A256C(uint64_t a1)
{
  *a1 = off_10098E678;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 80) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  return a1;
}

void sub_1000A25D8(uint64_t *a1)
{
  *a1 = off_10098E678;
  if (qword_1009F99B0 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100077C08(a1 + 7);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A267C(uint64_t *a1)
{
  sub_1000A25D8(a1);

  operator delete();
}

uint64_t sub_1000A2720(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v8 != 1)
        {
          if (v8 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_42;
          }

          v13 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_55;
        }

        if (v9 != 2)
        {
          goto LABEL_42;
        }

        *(a1 + 84) |= 1u;
        v15 = *(a1 + 16);
        if (!v15)
        {
          operator new();
        }

        v62 = 0;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v62))
          {
            return 0;
          }
        }

        else
        {
          v62 = *v16;
          *(this + 1) = v16 + 1;
        }

        v23 = *(this + 14);
        v24 = *(this + 15);
        *(this + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v62);
        if (!sub_10009F5D8(v15, this, v26, v27) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
        v28 = *(this + 14);
        v29 = __OFSUB__(v28, 1);
        v30 = v28 - 1;
        if (v30 < 0 == v29)
        {
          *(this + 14) = v30;
        }

        v31 = *(this + 1);
        v12 = *(this + 2);
        if (v31 < v12 && *v31 == 16)
        {
          v13 = v31 + 1;
          *(this + 1) = v13;
LABEL_55:
          v62 = 0;
          if (v13 >= v12 || (v32 = *v13, (v32 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v62);
            if (!result)
            {
              return result;
            }

            v32 = v62;
          }

          else
          {
            *(this + 1) = v13 + 1;
          }

          if (v32 <= 0x1B && ((1 << v32) & 0xDDB54EF) != 0)
          {
            *(a1 + 84) |= 2u;
            *(a1 + 24) = v32;
          }

          else
          {
            wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v32);
          }

          v34 = *(this + 1);
          v18 = *(this + 2);
          if (v34 < v18 && *v34 == 24)
          {
            v19 = v34 + 1;
            *(this + 1) = v19;
LABEL_66:
            v62 = 0;
            if (v19 >= v18 || (v35 = *v19, (v35 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v62);
              if (!result)
              {
                return result;
              }

              v35 = v62;
            }

            else
            {
              *(this + 1) = v19 + 1;
            }

            if (v35 > 1)
            {
              wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v35);
            }

            else
            {
              *(a1 + 84) |= 4u;
              *(a1 + 28) = v35;
            }

            v36 = *(this + 1);
            v10 = *(this + 2);
            if (v36 < v10 && *v36 == 32)
            {
              v21 = v36 + 1;
              *(this + 1) = v21;
              goto LABEL_77;
            }
          }
        }
      }

      else
      {
        if (v8 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_42;
          }

          v19 = *(this + 1);
          v18 = *(this + 2);
          goto LABEL_66;
        }

        if (v8 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_42;
          }

          v21 = *(this + 1);
          v10 = *(this + 2);
LABEL_77:
          if (v21 >= v10 || (v37 = *v21, v37 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
            if (!result)
            {
              return result;
            }

            v38 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 32) = v37;
            v38 = v21 + 1;
            *(this + 1) = v38;
          }

          *(a1 + 84) |= 8u;
          if (v38 < v10 && *v38 == 40)
          {
            v11 = v38 + 1;
            *(this + 1) = v11;
LABEL_85:
            if (v11 >= v10 || (v39 = *v11, v39 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
              if (!result)
              {
                return result;
              }

              v40 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 36) = v39;
              v40 = v11 + 1;
              *(this + 1) = v40;
            }

            *(a1 + 84) |= 0x10u;
            if (v40 < v10 && *v40 == 48)
            {
              v17 = v40 + 1;
              *(this + 1) = v17;
LABEL_93:
              if (v17 >= v10 || (v41 = *v17, v41 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
                if (!result)
                {
                  return result;
                }

                v42 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                *(a1 + 40) = v41;
                v42 = v17 + 1;
                *(this + 1) = v42;
              }

              *(a1 + 84) |= 0x20u;
              if (v42 < v10 && *v42 == 56)
              {
                v14 = v42 + 1;
                *(this + 1) = v14;
LABEL_101:
                if (v14 >= v10 || (v43 = *v14, v43 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
                  if (!result)
                  {
                    return result;
                  }

                  v44 = *(this + 1);
                  v10 = *(this + 2);
                }

                else
                {
                  *(a1 + 44) = v43;
                  v44 = v14 + 1;
                  *(this + 1) = v44;
                }

                *(a1 + 84) |= 0x40u;
                if (v44 < v10 && *v44 == 64)
                {
                  v20 = v44 + 1;
                  *(this + 1) = v20;
LABEL_109:
                  if (v20 >= v10 || (v45 = *v20, v45 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
                    if (!result)
                    {
                      return result;
                    }

                    v46 = *(this + 1);
                    v10 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 48) = v45;
                    v46 = v20 + 1;
                    *(this + 1) = v46;
                  }

                  *(a1 + 84) |= 0x80u;
                  if (v46 < v10 && *v46 == 72)
                  {
                    v22 = v46 + 1;
                    *(this + 1) = v22;
LABEL_117:
                    if (v22 >= v10 || (v47 = *v22, v47 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
                      if (!result)
                      {
                        return result;
                      }

                      v48 = *(this + 1);
                      v10 = *(this + 2);
                    }

                    else
                    {
                      *(a1 + 52) = v47;
                      v48 = v22 + 1;
                      *(this + 1) = v48;
                    }

                    *(a1 + 84) |= 0x100u;
                    if (v48 < v10 && *v48 == 82)
                    {
LABEL_126:
                      *(this + 1) = v48 + 1;
                      goto LABEL_127;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v8 == 5 && (TagFallback & 7) == 0)
          {
            v11 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_85;
          }

LABEL_42:
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

    if (TagFallback >> 3 <= 7)
    {
      if (v8 == 6)
      {
        if ((TagFallback & 7) == 0)
        {
          v17 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_93;
        }
      }

      else if (v8 == 7 && (TagFallback & 7) == 0)
      {
        v14 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_101;
      }

      goto LABEL_42;
    }

    if (v8 == 8)
    {
      if ((TagFallback & 7) == 0)
      {
        v20 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_109;
      }

      goto LABEL_42;
    }

    if (v8 == 9)
    {
      if ((TagFallback & 7) == 0)
      {
        v22 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_117;
      }

      goto LABEL_42;
    }

    if (v8 != 10 || v9 != 2)
    {
      goto LABEL_42;
    }

LABEL_127:
    v49 = *(a1 + 68);
    v50 = *(a1 + 64);
    if (v50 >= v49)
    {
      if (v49 == *(a1 + 72))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56), v49 + 1);
        v49 = *(a1 + 68);
      }

      *(a1 + 68) = v49 + 1;
      sub_1000CCE00();
    }

    v51 = *(a1 + 56);
    *(a1 + 64) = v50 + 1;
    v52 = *(v51 + 8 * v50);
    v62 = 0;
    v53 = *(this + 1);
    if (v53 >= *(this + 2) || *v53 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v62))
      {
        return 0;
      }
    }

    else
    {
      v62 = *v53;
      *(this + 1) = v53 + 1;
    }

    v54 = *(this + 14);
    v55 = *(this + 15);
    *(this + 14) = v54 + 1;
    if (v54 >= v55)
    {
      return 0;
    }

    v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v62);
    if (!sub_1000A20C8(v52, this, v57, v58) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v56);
    v59 = *(this + 14);
    v29 = __OFSUB__(v59, 1);
    v60 = v59 - 1;
    if (v60 < 0 == v29)
    {
      *(this + 14) = v60;
    }

    v48 = *(this + 1);
    v61 = *(this + 2);
    if (v48 < v61 && *v48 == 82)
    {
      goto LABEL_126;
    }

    if (v48 == v61 && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_1000A2E4C(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    v11 = *(this + 16);
    if (!v11)
    {
      v11 = *(qword_1009F99B0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v11, a2, a4);
    v6 = *(v5 + 84);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 48), a2, a4);
  if ((*(v5 + 84) & 0x100) != 0)
  {
LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 52), a2, a4);
  }

LABEL_11:
  if (*(v5 + 64) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, *(*(v5 + 56) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 64));
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A2FF4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 21);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F99B0 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = v6[7];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = (v3 + 2);
    }

    v3 = sub_10009F838(v6, v9, a3);
    v5 = *(this + 21);
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(this + 6);
    *v3 = 16;
    v11 = v3 + 1;
    if ((v10 & 0x80000000) != 0)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v11, a3);
    }

    else
    {
      if (v10 <= 0x7F)
      {
        *(v3 + 1) = v10;
        v3 = (v3 + 2);
        goto LABEL_15;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v11, a3);
    }

    v3 = v12;
  }

LABEL_15:
  if ((*(this + 84) & 4) == 0)
  {
    goto LABEL_22;
  }

  v13 = *(this + 7);
  *v3 = 24;
  v14 = v3 + 1;
  if ((v13 & 0x80000000) != 0)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v14, a3);
  }

  else
  {
    if (v13 <= 0x7F)
    {
      *(v3 + 1) = v13;
      v3 = (v3 + 2);
      goto LABEL_22;
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v14, a3);
  }

  v3 = v15;
LABEL_22:
  if ((*(this + 84) & 8) != 0)
  {
    v16 = *(this + 8);
    *v3 = 32;
    if (v16 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v16;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 84) & 0x10) != 0)
  {
    v17 = *(this + 9);
    *v3 = 40;
    if (v17 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v17;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 84) & 0x20) != 0)
  {
    v18 = *(this + 10);
    *v3 = 48;
    if (v18 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v18;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 84) & 0x40) != 0)
  {
    v19 = *(this + 11);
    *v3 = 56;
    if (v19 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v19;
      v3 = (v3 + 2);
    }
  }

  if ((*(this + 84) & 0x80) != 0)
  {
    v20 = *(this + 12);
    *v3 = 64;
    if (v20 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v20;
      v3 = (v3 + 2);
    }
  }

  if (*(this + 85))
  {
    v21 = *(this + 13);
    *v3 = 72;
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
    }
  }

  if (*(this + 16) >= 1)
  {
    v22 = 0;
    do
    {
      v23 = *(*(this + 7) + 8 * v22);
      *v3 = 82;
      v24 = v23[5];
      if (v24 > 0x7F)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v3 + 1, a3);
      }

      else
      {
        *(v3 + 1) = v24;
        v25 = (v3 + 2);
      }

      v3 = sub_1000A2240(v23, v25, a3);
      ++v22;
    }

    while (v22 < *(this + 16));
  }

  v28 = *(this + 1);
  v27 = (this + 8);
  v26 = v28;
  if (!v28 || *v26 == v26[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v27, v3, a3);
}

uint64_t sub_1000A32CC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 84);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_1009F99B0 + 16);
  }

  v6 = sub_10009F954(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = v7 + v8 + 1;
  v3 = *(a1 + 84);
  if ((v3 & 2) != 0)
  {
LABEL_13:
    v9 = *(a1 + 24);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 84);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_19:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 28);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(a1 + 84);
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v13 = *(a1 + 32);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 84);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_37:
  v15 = *(a1 + 36);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(a1 + 84);
  }

  else
  {
    v16 = 2;
  }

  v4 += v16;
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_41:
  v17 = *(a1 + 40);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
    v3 = *(a1 + 84);
  }

  else
  {
    v18 = 2;
  }

  v4 += v18;
  if ((v3 & 0x40) == 0)
  {
LABEL_24:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_45:
  v19 = *(a1 + 44);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    v3 = *(a1 + 84);
  }

  else
  {
    v20 = 2;
  }

  v4 += v20;
  if ((v3 & 0x80) == 0)
  {
LABEL_25:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_49:
  v21 = *(a1 + 48);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
    v3 = *(a1 + 84);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x100) != 0)
  {
LABEL_53:
    v23 = *(a1 + 52);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
    }

    else
    {
      v24 = 2;
    }

    v4 += v24;
  }

LABEL_57:
  v25 = *(a1 + 64);
  v26 = (v25 + v4);
  if (v25 >= 1)
  {
    v27 = 0;
    do
    {
      v28 = sub_1000A22D0(*(*(a1 + 56) + 8 * v27), a2);
      v29 = v28;
      if (v28 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
      }

      else
      {
        v30 = 1;
      }

      v26 = (v29 + v26 + v30);
      ++v27;
    }

    while (v27 < *(a1 + 64));
  }

  v31 = *(a1 + 8);
  if (v31 && *v31 != v31[1])
  {
    v26 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v26;
  }

  *(a1 + 80) = v26;
  return v26;
}

uint64_t sub_1000A3548(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009AD30(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A361C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A3634(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
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
        sub_1000CCE00();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      result = sub_1000A1ED0(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  return result;
}

void sub_1000A375C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A3774(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A3808()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED630;
}

void sub_1000A389C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000A38B0(void *a1)
{
  *a1 = off_10098E728;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void sub_1000A390C(void *a1)
{
  *a1 = off_10098E728;
  if (qword_1009F99B8 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A39A4(void *a1)
{
  sub_1000A390C(a1);

  operator delete();
}

uint64_t sub_1000A3A48(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 28) |= 1u;
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v19);
      if (!sub_10009FF9C(v8, this, v13, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000A3C0C(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F99B8 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A3C90(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v4 = *(this + 2);
    if (!v4)
    {
      v4 = *(qword_1009F99B8 + 16);
    }

    *a2 = 10;
    v5 = v4[7];
    if (v5 > 0x7F)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v5;
      v6 = (a2 + 2);
    }

    a2 = sub_1000A02A0(v4, v6, a3);
  }

  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_1000A3D40(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F99B8 + 16);
    }

    v5 = sub_1000A0394(v4, a2);
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
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1000A3DD4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009AF78(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A3EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A3EC0(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A3F54()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED640;
}

void sub_1000A3FE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A3FFC(uint64_t a1)
{
  *a1 = off_10098E7D8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_1000A405C(void *a1)
{
  *a1 = off_10098E7D8;
  if (qword_1009F99C0 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A40F4(void *a1)
{
  sub_1000A405C(a1);

  operator delete();
}

uint64_t sub_1000A4198(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v10 = *(this + 2);
            goto LABEL_43;
          }
        }

        else if (v8 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_51;
        }

        goto LABEL_22;
      }

      if (v8 == 1)
      {
        break;
      }

      if (v8 == 2 && (TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
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

    if (v9 != 2)
    {
      goto LABEL_22;
    }

    *(a1 + 44) |= 1u;
    v13 = *(a1 + 16);
    if (!v13)
    {
      operator new();
    }

    v32 = 0;
    v14 = *(this + 1);
    if (v14 >= *(this + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
      {
        return 0;
      }
    }

    else
    {
      v32 = *v14;
      *(this + 1) = v14 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
    if (!sub_10009F5D8(v13, this, v19, v20) || *(this + 36) != 1)
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
    v10 = *(this + 2);
    if (v24 < v10 && *v24 == 16)
    {
      v11 = v24 + 1;
      *(this + 1) = v11;
LABEL_35:
      if (v11 >= v10 || (v25 = *v11, v25 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
        if (!result)
        {
          return result;
        }

        v26 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 24) = v25;
        v26 = v11 + 1;
        *(this + 1) = v26;
      }

      *(a1 + 44) |= 2u;
      if (v26 < v10 && *v26 == 24)
      {
        v15 = v26 + 1;
        *(this + 1) = v15;
LABEL_43:
        if (v15 >= v10 || (v28 = *v15, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v29 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v28;
          v29 = v15 + 1;
          *(this + 1) = v29;
        }

        *(a1 + 44) |= 4u;
        if (v29 < v10 && *v29 == 32)
        {
          v12 = v29 + 1;
          *(this + 1) = v12;
LABEL_51:
          if (v12 >= v10 || (v30 = *v12, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
            if (!result)
            {
              return result;
            }

            v31 = *(this + 1);
            v10 = *(this + 2);
          }

          else
          {
            *(a1 + 36) = v30;
            v31 = v12 + 1;
            *(this + 1) = v31;
          }

          *(a1 + 44) |= 8u;
          if (v31 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

uint64_t sub_1000A44C4(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    v10 = *(this + 16);
    if (!v10)
    {
      v10 = *(qword_1009F99C0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_16:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 44) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v6 & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 36), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A45A0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 11);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F99C0 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = v6[7];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = (v3 + 2);
    }

    v3 = sub_10009F838(v6, v9, a3);
    v5 = *(this + 11);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(this + 3);
  *v3 = 16;
  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v3 + 1, a3);
  if ((*(this + 11) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v11 = *(this + 8);
  *v3 = 24;
  if (v11 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3 + 1, a3);
  }

  else
  {
    *(v3 + 1) = v11;
    v3 = (v3 + 2);
  }

LABEL_15:
  if ((*(this + 44) & 8) != 0)
  {
    v12 = *(this + 9);
    *v3 = 32;
    if (v12 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    }

    else
    {
      *(v3 + 1) = v12;
      v3 = (v3 + 2);
    }
  }

  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, v3, a3);
}

uint64_t sub_1000A46E8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (v3)
  {
    if (*(a1 + 44))
    {
      v5 = *(a1 + 16);
      if (!v5)
      {
        v5 = *(qword_1009F99C0 + 16);
      }

      v6 = sub_10009F954(v5, a2);
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
      v3 = *(a1 + 44);
      if ((v3 & 2) == 0)
      {
LABEL_13:
        if ((v3 & 4) != 0)
        {
          v9 = *(a1 + 32);
          if (v9 >= 0x80)
          {
            v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
            v3 = *(a1 + 44);
          }

          else
          {
            v10 = 2;
          }

          v4 = (v10 + v4);
          if ((v3 & 8) == 0)
          {
            goto LABEL_24;
          }
        }

        else if ((v3 & 8) == 0)
        {
          goto LABEL_24;
        }

        v11 = *(a1 + 36);
        if (v11 >= 0x80)
        {
          v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
        }

        else
        {
          v12 = 2;
        }

        v4 = (v12 + v4);
        goto LABEL_24;
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 44) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    v3 = *(a1 + 44);
    goto LABEL_13;
  }

  v4 = 0;
LABEL_24:
  v13 = *(a1 + 8);
  if (v13 && *v13 != v13[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 40) = v4;
  return v4;
}

uint64_t sub_1000A47FC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B088(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A48D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A48E8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A497C()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED650;
}

void sub_1000A4A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000A4A24(void *a1)
{
  *a1 = off_10098E888;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void sub_1000A4A80(void *a1)
{
  *a1 = off_10098E888;
  if (qword_1009F99C8 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A4B18(void *a1)
{
  sub_1000A4A80(a1);

  operator delete();
}

uint64_t sub_1000A4BBC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 28) |= 1u;
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v19);
      if (!sub_10009FF9C(v8, this, v13, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000A4D80(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F99C8 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A4E04(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v4 = *(this + 2);
    if (!v4)
    {
      v4 = *(qword_1009F99C8 + 16);
    }

    *a2 = 10;
    v5 = v4[7];
    if (v5 > 0x7F)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v5;
      v6 = (a2 + 2);
    }

    a2 = sub_1000A02A0(v4, v6, a3);
  }

  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_1000A4EB4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F99C8 + 16);
    }

    v5 = sub_1000A0394(v4, a2);
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
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1000A4F48(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B1FC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A501C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A5034(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A50C8()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED660;
}

void sub_1000A515C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A5170(uint64_t a1)
{
  *a1 = off_10098E938;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void sub_1000A51D0(void *a1)
{
  *a1 = off_10098E938;
  if (qword_1009F99D0 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A5268(void *a1)
{
  sub_1000A51D0(a1);

  operator delete();
}

uint64_t sub_1000A530C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

      if ((TagFallback & 7) == 0)
      {
        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_28;
      }

LABEL_15:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if (TagFallback >> 3 != 1 || v8 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 32) |= 1u;
    v9 = *(a1 + 16);
    if (!v9)
    {
      operator new();
    }

    v25 = 0;
    v10 = *(this + 1);
    if (v10 >= *(this + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v25))
      {
        return 0;
      }
    }

    else
    {
      v25 = *v10;
      *(this + 1) = v10 + 1;
    }

    v13 = *(this + 14);
    v14 = *(this + 15);
    *(this + 14) = v13 + 1;
    if (v13 >= v14)
    {
      return 0;
    }

    v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v25);
    if (!sub_10009F5D8(v9, this, v16, v17) || *(this + 36) != 1)
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
    v11 = *(this + 2);
    if (v21 < v11 && *v21 == 16)
    {
      v12 = v21 + 1;
      *(this + 1) = v12;
LABEL_28:
      v24 = 0;
      if (v12 >= v11 || (v22 = *v12, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24);
        if (!result)
        {
          return result;
        }

        v22 = v24;
      }

      else
      {
        *(this + 1) = v12 + 1;
      }

      if (v22 > 1)
      {
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 2, v22);
      }

      else
      {
        *(a1 + 32) |= 2u;
        *(a1 + 24) = v22;
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
}

uint64_t sub_1000A5574(uint64_t this, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 16);
    if (!v7)
    {
      v7 = *(qword_1009F99D0 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v7, a2, a4);
    v6 = *(v5 + 32);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A5610(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 8);
  if (v5)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(qword_1009F99D0 + 16);
    }

    *a2 = 10;
    v7 = a2 + 1;
    v8 = v6[7];
    if (v8 > 0x7F)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      *(v3 + 1) = v8;
      v9 = (v3 + 2);
    }

    v3 = sub_10009F838(v6, v9, a3);
    v5 = *(this + 8);
  }

  if ((v5 & 2) != 0)
  {
    v10 = *(this + 6);
    *v3 = 16;
    v11 = v3 + 1;
    if ((v10 & 0x80000000) != 0)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v10, v11, a3);
    }

    else
    {
      if (v10 <= 0x7F)
      {
        *(v3 + 1) = v10;
        v3 = (v3 + 2);
        goto LABEL_15;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v11, a3);
    }

    v3 = v12;
  }

LABEL_15:
  v15 = *(this + 1);
  v14 = (this + 8);
  v13 = v15;
  if (!v15 || *v13 == v13[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v14, v3, a3);
}

uint64_t sub_1000A5704(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 32))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      v3 = 0;
      if ((*(a1 + 32) & 2) == 0)
      {
        goto LABEL_18;
      }

LABEL_12:
      v8 = *(a1 + 24);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      }

      else
      {
        v9 = 2;
      }

      v3 = (v9 + v3);
      goto LABEL_18;
    }

    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F99D0 + 16);
    }

    v5 = sub_10009F954(v4, a2);
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
    if ((*(a1 + 32) & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_18:
  v10 = *(a1 + 8);
  if (v10 && *v10 != v10[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 28) = v3;
  return v3;
}

uint64_t sub_1000A57DC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B30C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A58B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A58C8(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A595C()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED670;
}

void sub_1000A59F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000A5A04(void *a1)
{
  *a1 = off_10098E9E8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  return a1;
}

void sub_1000A5A60(void *a1)
{
  *a1 = off_10098E9E8;
  if (qword_1009F99D8 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A5AF8(void *a1)
{
  sub_1000A5A60(a1);

  operator delete();
}

uint64_t sub_1000A5B9C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 28) |= 1u;
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v19);
      if (!sub_10009FF9C(v8, this, v13, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000A5D60(uint64_t this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 28))
  {
    v6 = *(this + 16);
    if (!v6)
    {
      v6 = *(qword_1009F99D8 + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v6, a2, a4);
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1000A5DE4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 28))
  {
    v4 = *(this + 2);
    if (!v4)
    {
      v4 = *(qword_1009F99D8 + 16);
    }

    *a2 = 10;
    v5 = v4[7];
    if (v5 > 0x7F)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v5;
      v6 = (a2 + 2);
    }

    a2 = sub_1000A02A0(v4, v6, a3);
  }

  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_1000A5E94(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (*(a1 + 28))
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1009F99D8 + 16);
    }

    v5 = sub_1000A0394(v4, a2);
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
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 8);
  if (v8 && *v8 != v8[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v3;
  }

  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1000A5F28(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B448(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1000A5FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A6014(uint64_t result, uint64_t a2)
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

uint64_t sub_1000A60A8()
{
  v0 = qword_1009ED940;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_100090A18;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_1009ED680;
}

void sub_1000A613C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1000A6150(void *a1)
{
  *a1 = off_10098EA98;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

void sub_1000A61B0(void *a1)
{
  *a1 = off_10098EA98;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1000A6228(void *a1)
{
  sub_1000A61B0(a1);

  operator delete();
}

uint64_t sub_1000A62CC(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if ((TagFallback & 0xFFFFFFF8) == 8)
      {
        break;
      }

LABEL_9:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
      {
        return 0;
      }
    }

    if ((TagFallback & 7) != 0)
    {
      break;
    }

    v11 = *(this + 1);
    v10 = *(this + 2);
    while (1)
    {
      v23 = 0;
      if (v11 >= v10 || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
        {
          return 0;
        }
      }

      else
      {
        v23 = *v11;
        *(this + 1) = v11 + 1;
      }

      v12 = *(a1 + 24);
      if (v12 == *(a1 + 28))
      {
        sub_100077844((a1 + 16), v12 + 1);
        v12 = *(a1 + 24);
      }

      v13 = v23;
      v14 = *(a1 + 16);
      *(a1 + 24) = v12 + 1;
      *(v14 + 4 * v12) = v13;
      v15 = *(a1 + 28) - *(a1 + 24);
      if (v15 >= 1)
      {
        v16 = v15 + 1;
        do
        {
          v17 = *(this + 1);
          v18 = *(this + 2);
          if (v17 >= v18 || *v17 != 8)
          {
            break;
          }

          *(this + 1) = v17 + 1;
          if ((v17 + 1) >= v18 || v17[1] < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
            {
              return 0;
            }
          }

          else
          {
            v23 = v17[1];
            *(this + 1) = v17 + 2;
          }

          v19 = *(a1 + 24);
          if (v19 >= *(a1 + 28))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
            v19 = *(a1 + 24);
          }

          v20 = v23;
          v21 = *(a1 + 16);
          *(a1 + 24) = v19 + 1;
          *(v21 + 4 * v19) = v20;
          --v16;
        }

        while (v16 > 1);
      }

LABEL_32:
      v22 = *(this + 1);
      v10 = *(this + 2);
      if (v22 >= v10 || *v22 != 8)
      {
        break;
      }

      v11 = v22 + 1;
      *(this + 1) = v11;
    }

    if (v22 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_9;
  }

  result = sub_1000A6548(this, a1 + 16);
  if (result)
  {
    goto LABEL_32;
  }

  return result;
}