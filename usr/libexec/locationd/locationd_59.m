double sub_100408638(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100408264(a1, lpsrc);
}

double sub_1004086D8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 52))
  {
    *(a1 + 52) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636B70 + 8);
    }

    result = sub_100408264(v6, v7);
    v5 = *(a2 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_21:
      *(a1 + 52) |= 4u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        operator new();
      }

      v11 = *(a2 + 24);
      if (!v11)
      {
        v11 = *(qword_102636B70 + 24);
      }

      result = sub_100408264(v10, v11);
      v5 = *(a2 + 52);
      if ((v5 & 8) == 0)
      {
LABEL_8:
        if ((v5 & 0x10) == 0)
        {
          return result;
        }

        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 52) |= 2u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    v9 = *(qword_102636B70 + 16);
  }

  result = sub_100408264(v8, v9);
  v5 = *(a2 + 52);
  if ((v5 & 4) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((v5 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_26:
  *(a1 + 52) |= 8u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    v13 = *(qword_102636B70 + 32);
  }

  result = sub_100408264(v12, v13);
  if ((*(a2 + 52) & 0x10) != 0)
  {
LABEL_9:
    result = *(a2 + 40);
    *(a1 + 52) |= 0x10u;
    *(a1 + 40) = result;
  }

  return result;
}

void sub_10040893C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100408954(void *result)
{
  if (qword_102636B70 != result)
  {
    v1 = result;
    v2 = result[1];
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

    result = v1[4];
    if (result)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_100408A4C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024510F8;
  sub_100408954(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100408AA0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024510F8;
  sub_100408954(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100408B60(uint64_t result)
{
  LOBYTE(v1) = *(result + 52);
  if (v1)
  {
    if (*(result + 52))
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(result + 52);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v1 = *(result + 52);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(result + 24);
      if (v4)
      {
        if (*(v4 + 28))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 28) = 0;
        v1 = *(result + 52);
      }
    }

    if ((v1 & 8) != 0)
    {
      v5 = *(result + 32);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
      }
    }

    *(result + 40) = 0;
  }

  *(result + 52) = 0;
  return result;
}

uint64_t sub_100408BF0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          *(a1 + 52) |= 8u;
          v37 = *(a1 + 32);
          if (!v37)
          {
            operator new();
          }

          v47[0] = 0;
          v38 = *(this + 1);
          if (v38 >= *(this + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47))
            {
              return 0;
            }
          }

          else
          {
            v47[0] = *v38;
            *(this + 1) = v38 + 1;
          }

          v39 = *(this + 14);
          v40 = *(this + 15);
          *(this + 14) = v39 + 1;
          if (v39 >= v40)
          {
            return 0;
          }

          v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47[0]);
          if (!sub_1004083FC(v37, this, v42) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
          v43 = *(this + 14);
          v16 = __OFSUB__(v43, 1);
          v44 = v43 - 1;
          if (v44 < 0 == v16)
          {
            *(this + 14) = v44;
          }

          v45 = *(this + 1);
          if (v45 < *(this + 2) && *v45 == 41)
          {
            *(this + 1) = v45 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_80:
          *v47 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v47) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 40) = *v47;
          *(a1 + 52) |= 0x10u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
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

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v47[0] = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47))
        {
          return 0;
        }
      }

      else
      {
        v47[0] = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47[0]);
      if (!sub_1004083FC(v9, this, v14) || *(this + 36) != 1)
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
      if (v18 < *(this + 2) && *v18 == 18)
      {
        *(this + 1) = v18 + 1;
LABEL_38:
        *(a1 + 52) |= 2u;
        v19 = *(a1 + 16);
        if (!v19)
        {
          operator new();
        }

        v47[0] = 0;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47))
          {
            return 0;
          }
        }

        else
        {
          v47[0] = *v20;
          *(this + 1) = v20 + 1;
        }

        v21 = *(this + 14);
        v22 = *(this + 15);
        *(this + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47[0]);
        if (!sub_1004083FC(v19, this, v24) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
        v25 = *(this + 14);
        v16 = __OFSUB__(v25, 1);
        v26 = v25 - 1;
        if (v26 < 0 == v16)
        {
          *(this + 14) = v26;
        }

        v27 = *(this + 1);
        if (v27 < *(this + 2) && *v27 == 26)
        {
          *(this + 1) = v27 + 1;
LABEL_52:
          *(a1 + 52) |= 4u;
          v28 = *(a1 + 24);
          if (!v28)
          {
            operator new();
          }

          v47[0] = 0;
          v29 = *(this + 1);
          if (v29 >= *(this + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v47))
            {
              return 0;
            }
          }

          else
          {
            v47[0] = *v29;
            *(this + 1) = v29 + 1;
          }

          v30 = *(this + 14);
          v31 = *(this + 15);
          *(this + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47[0]);
          if (!sub_1004083FC(v28, this, v33) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
          v34 = *(this + 14);
          v16 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (v35 < 0 == v16)
          {
            *(this + 14) = v35;
          }

          v36 = *(this + 1);
          if (v36 < *(this + 2) && *v36 == 34)
          {
            *(this + 1) = v36 + 1;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100409158(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636B70 + 8);
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
    v8 = *(qword_102636B70 + 16);
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
    v9 = *(qword_102636B70 + 24);
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
    v10 = *(qword_102636B70 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_19:
    v11 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v11, a3);
  }

  return result;
}

uint64_t sub_10040925C(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    result = 0;
    goto LABEL_36;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102636B70 + 8);
  }

  v7 = sub_1004085DC(v6, a2);
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
  v3 = *(a1 + 52);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = *(qword_102636B70 + 16);
    }

    v11 = sub_1004085DC(v10, a2);
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
    v3 = *(a1 + 52);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v14 = *(a1 + 24);
    if (!v14)
    {
      v14 = *(qword_102636B70 + 24);
    }

    v15 = sub_1004085DC(v14, a2);
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
    v3 = *(a1 + 52);
    if ((v3 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if ((v3 & 8) != 0)
  {
LABEL_27:
    v18 = *(a1 + 32);
    if (!v18)
    {
      v18 = *(qword_102636B70 + 32);
    }

    v19 = sub_1004085DC(v18, a2);
    v21 = v19;
    if (v19 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, v20);
    }

    else
    {
      v22 = 1;
    }

    v4 += v21 + v22 + 1;
    v3 = *(a1 + 52);
  }

LABEL_33:
  if ((v3 & 0x10) != 0)
  {
    result = v4 + 9;
  }

  else
  {
    result = v4;
  }

LABEL_36:
  *(a1 + 48) = result;
  return result;
}

double sub_1004093D4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1004086D8(a1, lpsrc);
}

void sub_100409474(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v7 = *(a2 + 16);
    *(a1 + 40) |= 2u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v6 = *(a2 + 8);
  *(a1 + 40) |= 1u;
  *(a1 + 8) = v6;
  v4 = *(a2 + 40);
  if ((v4 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  v8 = *(a2 + 32);
  if (v8 >= 0x24)
  {
    sub_101881818();
  }

  *(a1 + 40) |= 4u;
  *(a1 + 32) = v8;
  if ((*(a2 + 40) & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 24);
    *(a1 + 40) |= 8u;
    *(a1 + 24) = v5;
  }
}

void sub_100409574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1004095AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102451170;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100409658(uint64_t result)
{
  if (*(result + 40))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
  }

  *(result + 40) = 0;
  return result;
}

uint64_t sub_100409674(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_47;
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

      v12 = *(this + 1);
      v8 = *(this + 2);
      if (v12 >= v8 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v13;
        v14 = v12 + 1;
        *(this + 1) = v14;
      }

      *(a1 + 40) |= 1u;
      if (v14 < v8 && *v14 == 16)
      {
        v9 = v14 + 1;
        *(this + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v16 = *v9, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v17 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v16;
          v17 = v9 + 1;
          *(this + 1) = v17;
        }

        *(a1 + 40) |= 2u;
        if (v17 < v8 && *v17 == 24)
        {
          v15 = v17 + 1;
          *(this + 1) = v15;
LABEL_37:
          v23 = 0;
          if (v15 >= v8 || (v18 = *v15, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
            if (!result)
            {
              return result;
            }

            v18 = v23;
          }

          else
          {
            *(this + 1) = v15 + 1;
          }

          if (v18 <= 0x23)
          {
            *(a1 + 40) |= 4u;
            *(a1 + 32) = v18;
          }

          v19 = *(this + 1);
          v10 = *(this + 2);
          if (v19 < v10 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(this + 1) = v11;
LABEL_47:
            if (v11 >= v10 || (v20 = *v11, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
              if (!result)
              {
                return result;
              }

              v21 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 24) = v20;
              v21 = v11 + 1;
              *(this + 1) = v21;
            }

            *(a1 + 40) |= 8u;
            if (v21 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1004098F0(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 40) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v7, a2, a4);
}

uint64_t sub_100409998(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (*(a1 + 40))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 40);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((*(a1 + 40) & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 40);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v6 = *(a1 + 32);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 40);
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
    if ((v3 & 8) != 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v3 & 8) != 0)
  {
LABEL_10:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  }

LABEL_11:
  *(a1 + 36) = v4;
  return v4;
}

void sub_100409A58(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100409474(a1, lpsrc);
}

void sub_100409AF8(uint64_t *a1)
{
  *a1 = off_1024511E8;
  if (qword_102636B80 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 14);
  sub_100027438(a1 + 11);
  sub_100027438(a1 + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100409BAC(uint64_t *a1)
{
  sub_100409AF8(a1);

  operator delete();
}

uint64_t sub_100409C60(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(this + 1);
    if (v5 < *(this + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_40;
        }

        *(a1 + 168) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v80[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80))
          {
            return 0;
          }
        }

        else
        {
          v80[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v19 = *(this + 14);
        v20 = *(this + 15);
        *(this + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v80[0]);
        if (!sub_100408BF0(v8, this, v22) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v21);
        v23 = *(this + 14);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v25 < 0 == v24)
        {
          *(this + 14) = v25;
        }

        v26 = *(this + 1);
        v14 = *(this + 2);
        if (v26 >= v14 || *v26 != 16)
        {
          continue;
        }

        v15 = v26 + 1;
        *(this + 1) = v15;
        goto LABEL_52;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
LABEL_52:
        v80[0] = 0;
        if (v15 >= v14 || (v27 = *v15, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80);
          if (!result)
          {
            return result;
          }

          v27 = v80[0];
        }

        else
        {
          *(this + 1) = v15 + 1;
        }

        if (v27 <= 3)
        {
          *(a1 + 168) |= 2u;
          *(a1 + 56) = v27;
        }

        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 25)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_62:
        *v80 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v80;
        *(a1 + 168) |= 4u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 33)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_66:
        *v80 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v80;
        *(a1 + 168) |= 8u;
        v31 = *(this + 1);
        v10 = *(this + 2);
        if (v31 >= v10 || *v31 != 40)
        {
          continue;
        }

        v11 = v31 + 1;
        *(this + 1) = v11;
LABEL_70:
        if (v11 >= v10 || (v32 = *v11, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v32;
          v33 = v11 + 1;
          *(this + 1) = v33;
        }

        *(a1 + 168) |= 0x10u;
        if (v33 >= v10 || *v33 != 48)
        {
          continue;
        }

        v16 = v33 + 1;
        *(this + 1) = v16;
LABEL_78:
        if (v16 >= v10 || (v34 = *v16, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v35 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v34;
          v35 = v16 + 1;
          *(this + 1) = v35;
        }

        *(a1 + 168) |= 0x20u;
        if (v35 >= v10 || *v35 != 56)
        {
          continue;
        }

        v18 = v35 + 1;
        *(this + 1) = v18;
LABEL_86:
        if (v18 >= v10 || (v36 = *v18, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v37 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v36;
          v37 = v18 + 1;
          *(this + 1) = v37;
        }

        *(a1 + 168) |= 0x40u;
        if (v37 >= v10 || *v37 != 66)
        {
          continue;
        }

        do
        {
          *(this + 1) = v37 + 1;
LABEL_94:
          v38 = *(a1 + 76);
          v39 = *(a1 + 72);
          if (v39 >= v38)
          {
            if (v38 == *(a1 + 80))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 64), v38 + 1);
              v38 = *(a1 + 76);
            }

            *(a1 + 76) = v38 + 1;
            operator new();
          }

          v40 = *(a1 + 64);
          *(a1 + 72) = v39 + 1;
          v41 = *(v40 + 8 * v39);
          v80[0] = 0;
          v42 = *(this + 1);
          if (v42 >= *(this + 2) || *v42 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80))
            {
              return 0;
            }
          }

          else
          {
            v80[0] = *v42;
            *(this + 1) = v42 + 1;
          }

          v43 = *(this + 14);
          v44 = *(this + 15);
          *(this + 14) = v43 + 1;
          if (v43 >= v44)
          {
            return 0;
          }

          v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v80[0]);
          if (!sub_100409674(v41, this, v46) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
          v47 = *(this + 14);
          v24 = __OFSUB__(v47, 1);
          v48 = v47 - 1;
          if (v48 < 0 == v24)
          {
            *(this + 14) = v48;
          }

          v37 = *(this + 1);
          if (v37 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v49 = *v37;
        }

        while (v49 == 66);
        if (v49 != 74)
        {
          continue;
        }

        do
        {
          *(this + 1) = v37 + 1;
LABEL_112:
          v50 = *(a1 + 100);
          v51 = *(a1 + 96);
          if (v51 >= v50)
          {
            if (v50 == *(a1 + 104))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 88), v50 + 1);
              v50 = *(a1 + 100);
            }

            *(a1 + 100) = v50 + 1;
            operator new();
          }

          v52 = *(a1 + 88);
          *(a1 + 96) = v51 + 1;
          v53 = *(v52 + 8 * v51);
          v80[0] = 0;
          v54 = *(this + 1);
          if (v54 >= *(this + 2) || *v54 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80))
            {
              return 0;
            }
          }

          else
          {
            v80[0] = *v54;
            *(this + 1) = v54 + 1;
          }

          v55 = *(this + 14);
          v56 = *(this + 15);
          *(this + 14) = v55 + 1;
          if (v55 >= v56)
          {
            return 0;
          }

          v57 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v80[0]);
          if (!sub_100409674(v53, this, v58) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v57);
          v59 = *(this + 14);
          v24 = __OFSUB__(v59, 1);
          v60 = v59 - 1;
          if (v60 < 0 == v24)
          {
            *(this + 14) = v60;
          }

          v37 = *(this + 1);
          if (v37 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v61 = *v37;
        }

        while (v61 == 74);
        if (v61 != 82)
        {
          continue;
        }

        do
        {
          *(this + 1) = v37 + 1;
LABEL_130:
          v62 = *(a1 + 124);
          v63 = *(a1 + 120);
          if (v63 >= v62)
          {
            if (v62 == *(a1 + 128))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112), v62 + 1);
              v62 = *(a1 + 124);
            }

            *(a1 + 124) = v62 + 1;
            operator new();
          }

          v64 = *(a1 + 112);
          *(a1 + 120) = v63 + 1;
          v65 = *(v64 + 8 * v63);
          v80[0] = 0;
          v66 = *(this + 1);
          if (v66 >= *(this + 2) || *v66 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80))
            {
              return 0;
            }
          }

          else
          {
            v80[0] = *v66;
            *(this + 1) = v66 + 1;
          }

          v67 = *(this + 14);
          v68 = *(this + 15);
          *(this + 14) = v67 + 1;
          if (v67 >= v68)
          {
            return 0;
          }

          v69 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v80[0]);
          if (!sub_100409674(v65, this, v70) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v69);
          v71 = *(this + 14);
          v24 = __OFSUB__(v71, 1);
          v72 = v71 - 1;
          if (v72 < 0 == v24)
          {
            *(this + 14) = v72;
          }

          v37 = *(this + 1);
          if (v37 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v73 = *v37;
        }

        while (v73 == 82);
        if (v73 != 89)
        {
          continue;
        }

        *(this + 1) = v37 + 1;
LABEL_148:
        *v80 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 136) = *v80;
        *(a1 + 168) |= 0x400u;
        v74 = *(this + 1);
        if (v74 >= *(this + 2) || *v74 != 97)
        {
          continue;
        }

        *(this + 1) = v74 + 1;
LABEL_152:
        *v80 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 144) = *v80;
        *(a1 + 168) |= 0x800u;
        v75 = *(this + 1);
        v12 = *(this + 2);
        if (v75 >= v12 || *v75 != 104)
        {
          continue;
        }

        v13 = v75 + 1;
        *(this + 1) = v13;
LABEL_156:
        v80[0] = 0;
        if (v13 >= v12 || (v76 = *v13, (v76 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80);
          if (!result)
          {
            return result;
          }

          v76 = v80[0];
          v77 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v77 = v13 + 1;
          *(this + 1) = v77;
        }

        *(a1 + 60) = v76;
        *(a1 + 168) |= 0x1000u;
        if (v77 >= v12 || *v77 != 112)
        {
          continue;
        }

        v17 = v77 + 1;
        *(this + 1) = v17;
LABEL_164:
        v80[0] = 0;
        if (v17 >= v12 || (v78 = *v17, (v78 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v80);
          if (!result)
          {
            return result;
          }

          v78 = v80[0];
          v79 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v79 = v17 + 1;
          *(this + 1) = v79;
        }

        *(a1 + 160) = v78;
        *(a1 + 168) |= 0x2000u;
        if (v79 >= v12 || *v79 != 121)
        {
          continue;
        }

        *(this + 1) = v79 + 1;
LABEL_172:
        *v80 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v80) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 152) = *v80;
        *(a1 + 168) |= 0x4000u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_40;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_66;
        }

        goto LABEL_40;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_70;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_78;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v18 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_86;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_94;
        }

        goto LABEL_40;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_112;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_130;
        }

        goto LABEL_40;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_148;
        }

        goto LABEL_40;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_152;
        }

        goto LABEL_40;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_156;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_164;
      case 0xFu:
        if (v7 == 1)
        {
          goto LABEL_172;
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

uint64_t sub_10040A6C4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 168);
  if (v6)
  {
    v11 = *(result + 8);
    if (!v11)
    {
      v11 = *(qword_102636B80 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v11, a2, a4);
    v6 = *(v5 + 168);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 56), a2, a4);
  v6 = *(v5 + 168);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 168);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 168);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 168);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  if ((*(v5 + 168) & 0x40) != 0)
  {
LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 48), a2, a4);
  }

LABEL_9:
  if (*(v5 + 72) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 64) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 72));
  }

  if (*(v5 + 96) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 88) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 96));
  }

  if (*(v5 + 120) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, *(*(v5 + 112) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 120));
  }

  v10 = *(v5 + 168);
  if ((v10 & 0x400) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 136), a3);
    v10 = *(v5 + 168);
    if ((v10 & 0x800) == 0)
    {
LABEL_20:
      if ((v10 & 0x1000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else if ((v10 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 144), a3);
  v10 = *(v5 + 168);
  if ((v10 & 0x1000) == 0)
  {
LABEL_21:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_36:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(v5 + 160), a2, a4);
    if ((*(v5 + 168) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 60), a2, a4);
  v10 = *(v5 + 168);
  if ((v10 & 0x2000) != 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((v10 & 0x4000) == 0)
  {
    return result;
  }

LABEL_37:
  v12 = *(v5 + 152);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v12, a3);
}

uint64_t sub_10040A904(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 168);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_27;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102636B80 + 8);
  }

  v7 = sub_10040925C(v6, a2);
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
  v3 = *(a1 + 168);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 56);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 168);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  v12 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v12 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v5 = v12 + 9;
  }

  else
  {
    v5 = v12;
  }

  if ((v3 & 0x10) != 0)
  {
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
    v3 = *(a1 + 168);
    if ((v3 & 0x20) == 0)
    {
LABEL_25:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_25;
  }

  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
  v3 = *(a1 + 168);
  if ((v3 & 0x40) != 0)
  {
LABEL_26:
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48), a2) + 1;
    v3 = *(a1 + 168);
  }

LABEL_27:
  if ((v3 & 0x3FC00) != 0)
  {
    v13 = v5 + 9;
    if ((v3 & 0x400) == 0)
    {
      v13 = v5;
    }

    if ((v3 & 0x800) != 0)
    {
      v5 = v13 + 9;
    }

    else
    {
      v5 = v13;
    }

    if ((v3 & 0x1000) != 0)
    {
      v14 = *(a1 + 60);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
        v3 = *(a1 + 168);
      }

      else
      {
        v15 = 2;
      }

      v5 += v15;
    }

    if ((v3 & 0x2000) != 0)
    {
      v16 = *(a1 + 160);
      if ((v16 & 0x80000000) != 0)
      {
        v17 = 11;
      }

      else if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
        v3 = *(a1 + 168);
      }

      else
      {
        v17 = 2;
      }

      v5 += v17;
    }

    if ((v3 & 0x4000) != 0)
    {
      v5 += 9;
    }
  }

  v18 = *(a1 + 72);
  v19 = v18 + v5;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = sub_100409998(*(*(a1 + 64) + 8 * v20), a2);
      v22 = v21;
      if (v21 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
      }

      else
      {
        v23 = 1;
      }

      v19 += v22 + v23;
      ++v20;
    }

    while (v20 < *(a1 + 72));
  }

  v24 = *(a1 + 96);
  v25 = v24 + v19;
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = sub_100409998(*(*(a1 + 88) + 8 * v26), a2);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
      }

      else
      {
        v29 = 1;
      }

      v25 += v28 + v29;
      ++v26;
    }

    while (v26 < *(a1 + 96));
  }

  v30 = *(a1 + 120);
  v31 = (v30 + v25);
  if (v30 >= 1)
  {
    v32 = 0;
    do
    {
      v33 = sub_100409998(*(*(a1 + 112) + 8 * v32), a2);
      v34 = v33;
      if (v33 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2);
      }

      else
      {
        v35 = 1;
      }

      v31 = (v34 + v31 + v35);
      ++v32;
    }

    while (v32 < *(a1 + 120));
  }

  *(a1 + 164) = v31;
  return v31;
}

void sub_10040ABC8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100407FAC(a1, lpsrc);
}

void sub_10040AC68(uint64_t *a1)
{
  *a1 = off_102451260;
  if (qword_102636B88 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 33);
  sub_100027438(a1 + 30);
  sub_100027438(a1 + 27);
  sub_100027438(a1 + 24);
  sub_100027438(a1 + 17);
  sub_100027438(a1 + 14);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10040AD40(uint64_t *a1)
{
  sub_10040AC68(a1);

  operator delete();
}

uint64_t sub_10040AE14(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(this + 1);
    if (v5 < *(this + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        *(a1 + 292) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v124[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
          {
            return 0;
          }
        }

        else
        {
          v124[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
        if (!sub_100408BF0(v8, this, v23) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
        v24 = *(this + 14);
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v26 < 0 == v25)
        {
          *(this + 14) = v26;
        }

        v27 = *(this + 1);
        v14 = *(this + 2);
        if (v27 >= v14 || *v27 != 16)
        {
          continue;
        }

        v15 = v27 + 1;
        *(this + 1) = v15;
        goto LABEL_70;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
LABEL_70:
        v124[0] = 0;
        if (v15 >= v14 || (v28 = *v15, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
          if (!result)
          {
            return result;
          }

          v28 = v124[0];
        }

        else
        {
          *(this + 1) = v15 + 1;
        }

        if (v28 <= 6)
        {
          *(a1 + 292) |= 2u;
          *(a1 + 16) = v28;
        }

        v30 = *(this + 1);
        v10 = *(this + 2);
        if (v30 >= v10 || *v30 != 24)
        {
          continue;
        }

        v11 = v30 + 1;
        *(this + 1) = v11;
LABEL_80:
        v124[0] = 0;
        if (v11 >= v10 || (v31 = *v11, (v31 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124);
          if (!result)
          {
            return result;
          }

          v31 = v124[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v31 <= 3)
        {
          *(a1 + 292) |= 4u;
          *(a1 + 20) = v31;
        }

        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 33)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_90:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v124;
        *(a1 + 292) |= 8u;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 != 41)
        {
          continue;
        }

        *(this + 1) = v33 + 1;
LABEL_94:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v124;
        *(a1 + 292) |= 0x10u;
        v34 = *(this + 1);
        v12 = *(this + 2);
        if (v34 >= v12 || *v34 != 48)
        {
          continue;
        }

        v16 = v34 + 1;
        *(this + 1) = v16;
LABEL_98:
        if (v16 >= v12 || (v35 = *v16, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v36 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v35;
          v36 = v16 + 1;
          *(this + 1) = v36;
        }

        *(a1 + 292) |= 0x20u;
        if (v36 >= v12 || *v36 != 56)
        {
          continue;
        }

        v17 = v36 + 1;
        *(this + 1) = v17;
LABEL_106:
        if (v17 >= v12 || (v37 = *v17, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v38 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v37;
          v38 = v17 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 292) |= 0x40u;
        if (v38 >= v12 || *v38 != 64)
        {
          continue;
        }

        v13 = v38 + 1;
        *(this + 1) = v13;
LABEL_114:
        if (v13 >= v12 || (v39 = *v13, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 56));
          if (!result)
          {
            return result;
          }

          v40 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 56) = v39;
          v40 = v13 + 1;
          *(this + 1) = v40;
        }

        *(a1 + 292) |= 0x80u;
        if (v40 >= v12 || *v40 != 73)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
LABEL_122:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v124;
        *(a1 + 292) |= 0x100u;
        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 81)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_126:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v124;
        *(a1 + 292) |= 0x200u;
        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 != 89)
        {
          continue;
        }

        *(this + 1) = v42 + 1;
LABEL_130:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v124;
        *(a1 + 292) |= 0x400u;
        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 != 97)
        {
          continue;
        }

        *(this + 1) = v43 + 1;
LABEL_134:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v124;
        *(a1 + 292) |= 0x800u;
        v44 = *(this + 1);
        if (v44 >= *(this + 2) || *v44 != 105)
        {
          continue;
        }

        *(this + 1) = v44 + 1;
LABEL_138:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v124;
        *(a1 + 292) |= 0x1000u;
        v45 = *(this + 1);
        if (v45 >= *(this + 2) || *v45 != 113)
        {
          continue;
        }

        *(this + 1) = v45 + 1;
LABEL_142:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v124;
        *(a1 + 292) |= 0x2000u;
        v46 = *(this + 1);
        if (v46 >= *(this + 2) || *v46 != 122)
        {
          continue;
        }

        do
        {
          *(this + 1) = v46 + 1;
LABEL_146:
          v47 = *(a1 + 124);
          v48 = *(a1 + 120);
          if (v48 >= v47)
          {
            if (v47 == *(a1 + 128))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112), v47 + 1);
              v47 = *(a1 + 124);
            }

            *(a1 + 124) = v47 + 1;
            operator new();
          }

          v49 = *(a1 + 112);
          *(a1 + 120) = v48 + 1;
          v50 = *(v49 + 8 * v48);
          v124[0] = 0;
          v51 = *(this + 1);
          if (v51 >= *(this + 2) || *v51 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
            {
              return 0;
            }
          }

          else
          {
            v124[0] = *v51;
            *(this + 1) = v51 + 1;
          }

          v52 = *(this + 14);
          v53 = *(this + 15);
          *(this + 14) = v52 + 1;
          if (v52 >= v53)
          {
            return 0;
          }

          v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
          if (!sub_100409674(v50, this, v55) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
          v56 = *(this + 14);
          v25 = __OFSUB__(v56, 1);
          v57 = v56 - 1;
          if (v57 < 0 == v25)
          {
            *(this + 14) = v57;
          }

          v46 = *(this + 1);
          v58 = *(this + 2);
        }

        while (v46 < v58 && *v46 == 122);
        if (v58 - v46 < 2 || *v46 != 130 || v46[1] != 1)
        {
          continue;
        }

        while (1)
        {
          *(this + 1) = v46 + 2;
LABEL_166:
          v59 = *(a1 + 148);
          v60 = *(a1 + 144);
          if (v60 >= v59)
          {
            if (v59 == *(a1 + 152))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 136), v59 + 1);
              v59 = *(a1 + 148);
            }

            *(a1 + 148) = v59 + 1;
            operator new();
          }

          v61 = *(a1 + 136);
          *(a1 + 144) = v60 + 1;
          v62 = *(v61 + 8 * v60);
          v124[0] = 0;
          v63 = *(this + 1);
          if (v63 >= *(this + 2) || *v63 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
            {
              return 0;
            }
          }

          else
          {
            v124[0] = *v63;
            *(this + 1) = v63 + 1;
          }

          v64 = *(this + 14);
          v65 = *(this + 15);
          *(this + 14) = v64 + 1;
          if (v64 >= v65)
          {
            return 0;
          }

          v66 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
          if (!sub_100409674(v62, this, v67) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v66);
          v68 = *(this + 14);
          v25 = __OFSUB__(v68, 1);
          v69 = v68 - 1;
          if (v69 < 0 == v25)
          {
            *(this + 14) = v69;
          }

          v46 = *(this + 1);
          if (*(this + 4) - v46 <= 1)
          {
            goto LABEL_1;
          }

          v70 = *v46;
          if (v70 == 137)
          {
            break;
          }

          if (v70 != 130 || v46[1] != 1)
          {
            goto LABEL_1;
          }
        }

        if (v46[1] != 1)
        {
          continue;
        }

        *(this + 1) = v46 + 2;
LABEL_187:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 160) = *v124;
        *(a1 + 292) |= 0x10000u;
        v71 = *(this + 1);
        if (*(this + 4) - v71 < 2 || *v71 != 145 || v71[1] != 1)
        {
          continue;
        }

        *(this + 1) = v71 + 2;
LABEL_192:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 168) = *v124;
        *(a1 + 292) |= 0x20000u;
        v72 = *(this + 1);
        if (*(this + 4) - v72 < 2 || *v72 != 153 || v72[1] != 1)
        {
          continue;
        }

        *(this + 1) = v72 + 2;
LABEL_197:
        *v124 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v124) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 176) = *v124;
        *(a1 + 292) |= 0x40000u;
        v73 = *(this + 1);
        v19 = *(this + 2);
        if (v19 - v73 >= 2 && *v73 == 160 && v73[1] == 1)
        {
          v18 = (v73 + 2);
          *(this + 1) = v18;
LABEL_202:
          if (v18 >= v19 || (v74 = *v18, v74 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 184));
            if (!result)
            {
              return result;
            }

            v75 = *(this + 1);
            v19 = *(this + 2);
          }

          else
          {
            *(a1 + 184) = v74;
            v75 = (v18 + 1);
            *(this + 1) = v75;
          }

          *(a1 + 292) |= 0x80000u;
          if (v19 - v75 >= 2 && *v75 == 170 && v75[1] == 1)
          {
            while (1)
            {
              *(this + 1) = v75 + 2;
LABEL_211:
              v76 = *(a1 + 204);
              v77 = *(a1 + 200);
              if (v77 >= v76)
              {
                if (v76 == *(a1 + 208))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 192), v76 + 1);
                  v76 = *(a1 + 204);
                }

                *(a1 + 204) = v76 + 1;
                operator new();
              }

              v78 = *(a1 + 192);
              *(a1 + 200) = v77 + 1;
              v79 = *(v78 + 8 * v77);
              v124[0] = 0;
              v80 = *(this + 1);
              if (v80 >= *(this + 2) || *v80 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
                {
                  return 0;
                }
              }

              else
              {
                v124[0] = *v80;
                *(this + 1) = v80 + 1;
              }

              v81 = *(this + 14);
              v82 = *(this + 15);
              *(this + 14) = v81 + 1;
              if (v81 >= v82)
              {
                return 0;
              }

              v83 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
              if (!sub_100409674(v79, this, v84) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v83);
              v85 = *(this + 14);
              v25 = __OFSUB__(v85, 1);
              v86 = v85 - 1;
              if (v86 < 0 == v25)
              {
                *(this + 14) = v86;
              }

              v75 = *(this + 1);
              if (*(this + 4) - v75 <= 1)
              {
                goto LABEL_1;
              }

              v87 = *v75;
              if (v87 == 178)
              {
                break;
              }

              if (v87 != 170 || v75[1] != 1)
              {
                goto LABEL_1;
              }
            }

            if (v75[1] == 1)
            {
              while (1)
              {
                *(this + 1) = v75 + 2;
LABEL_232:
                v88 = *(a1 + 228);
                v89 = *(a1 + 224);
                if (v89 >= v88)
                {
                  if (v88 == *(a1 + 232))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 216), v88 + 1);
                    v88 = *(a1 + 228);
                  }

                  *(a1 + 228) = v88 + 1;
                  operator new();
                }

                v90 = *(a1 + 216);
                *(a1 + 224) = v89 + 1;
                v91 = *(v90 + 8 * v89);
                v124[0] = 0;
                v92 = *(this + 1);
                if (v92 >= *(this + 2) || *v92 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
                  {
                    return 0;
                  }
                }

                else
                {
                  v124[0] = *v92;
                  *(this + 1) = v92 + 1;
                }

                v93 = *(this + 14);
                v94 = *(this + 15);
                *(this + 14) = v93 + 1;
                if (v93 >= v94)
                {
                  return 0;
                }

                v95 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
                if (!sub_100409674(v91, this, v96) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v95);
                v97 = *(this + 14);
                v25 = __OFSUB__(v97, 1);
                v98 = v97 - 1;
                if (v98 < 0 == v25)
                {
                  *(this + 14) = v98;
                }

                v75 = *(this + 1);
                if (*(this + 4) - v75 <= 1)
                {
                  goto LABEL_1;
                }

                v99 = *v75;
                if (v99 == 186)
                {
                  break;
                }

                if (v99 != 178 || v75[1] != 1)
                {
                  goto LABEL_1;
                }
              }

              if (v75[1] == 1)
              {
                while (1)
                {
                  *(this + 1) = v75 + 2;
LABEL_253:
                  v100 = *(a1 + 252);
                  v101 = *(a1 + 248);
                  if (v101 >= v100)
                  {
                    if (v100 == *(a1 + 256))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 240), v100 + 1);
                      v100 = *(a1 + 252);
                    }

                    *(a1 + 252) = v100 + 1;
                    operator new();
                  }

                  v102 = *(a1 + 240);
                  *(a1 + 248) = v101 + 1;
                  v103 = *(v102 + 8 * v101);
                  v124[0] = 0;
                  v104 = *(this + 1);
                  if (v104 >= *(this + 2) || *v104 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v124[0] = *v104;
                    *(this + 1) = v104 + 1;
                  }

                  v105 = *(this + 14);
                  v106 = *(this + 15);
                  *(this + 14) = v105 + 1;
                  if (v105 >= v106)
                  {
                    return 0;
                  }

                  v107 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
                  if (!sub_100409674(v103, this, v108) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v107);
                  v109 = *(this + 14);
                  v25 = __OFSUB__(v109, 1);
                  v110 = v109 - 1;
                  if (v110 < 0 == v25)
                  {
                    *(this + 14) = v110;
                  }

                  v75 = *(this + 1);
                  if (*(this + 4) - v75 <= 1)
                  {
                    goto LABEL_1;
                  }

                  v111 = *v75;
                  if (v111 == 194)
                  {
                    break;
                  }

                  if (v111 != 186 || v75[1] != 1)
                  {
                    goto LABEL_1;
                  }
                }

                if (v75[1] == 1)
                {
                  do
                  {
                    *(this + 1) = v75 + 2;
LABEL_274:
                    v112 = *(a1 + 272);
                    v113 = *(a1 + 276);
                    if (v112 >= v113)
                    {
                      if (v113 == *(a1 + 280))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 264), v113 + 1);
                        v113 = *(a1 + 276);
                      }

                      *(a1 + 276) = v113 + 1;
                      operator new();
                    }

                    v114 = *(a1 + 264);
                    *(a1 + 272) = v112 + 1;
                    v115 = *(v114 + 8 * v112);
                    v124[0] = 0;
                    v116 = *(this + 1);
                    if (v116 >= *(this + 2) || *v116 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v124))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v124[0] = *v116;
                      *(this + 1) = v116 + 1;
                    }

                    v117 = *(this + 14);
                    v118 = *(this + 15);
                    *(this + 14) = v117 + 1;
                    if (v117 >= v118)
                    {
                      return 0;
                    }

                    v119 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v124[0]);
                    if (!sub_100409674(v115, this, v120) || *(this + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v119);
                    v121 = *(this + 14);
                    v25 = __OFSUB__(v121, 1);
                    v122 = v121 - 1;
                    if (v122 < 0 == v25)
                    {
                      *(this + 14) = v122;
                    }

                    v75 = *(this + 1);
                    v123 = *(this + 2);
                  }

                  while (v123 - v75 > 1 && *v75 == 194 && v75[1] == 1);
                  if (v75 == v123 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_80;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_58;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_94;
        }

        goto LABEL_58;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v16 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_98;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v17 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_106;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_114;
      case 9u:
        if (v7 == 1)
        {
          goto LABEL_122;
        }

        goto LABEL_58;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_126;
        }

        goto LABEL_58;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_130;
        }

        goto LABEL_58;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_134;
        }

        goto LABEL_58;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_138;
        }

        goto LABEL_58;
      case 0xEu:
        if (v7 == 1)
        {
          goto LABEL_142;
        }

        goto LABEL_58;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_146;
        }

        goto LABEL_58;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_166;
        }

        goto LABEL_58;
      case 0x11u:
        if (v7 == 1)
        {
          goto LABEL_187;
        }

        goto LABEL_58;
      case 0x12u:
        if (v7 == 1)
        {
          goto LABEL_192;
        }

        goto LABEL_58;
      case 0x13u:
        if (v7 == 1)
        {
          goto LABEL_197;
        }

        goto LABEL_58;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v18 = *(this + 1);
        v19 = *(this + 2);
        goto LABEL_202;
      case 0x15u:
        if (v7 == 2)
        {
          goto LABEL_211;
        }

        goto LABEL_58;
      case 0x16u:
        if (v7 == 2)
        {
          goto LABEL_232;
        }

        goto LABEL_58;
      case 0x17u:
        if (v7 == 2)
        {
          goto LABEL_253;
        }

        goto LABEL_58;
      case 0x18u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        goto LABEL_274;
      default:
LABEL_58:
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

uint64_t sub_10040BFB0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 292);
  if (v6)
  {
    v14 = *(result + 8);
    if (!v14)
    {
      v14 = *(qword_102636B88 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v14, a2, a4);
    v6 = *(v5 + 292);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 56), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 72), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 80), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 88), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_54:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 96), a3);
  if ((*(v5 + 292) & 0x2000) != 0)
  {
LABEL_15:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 104), a3);
  }

LABEL_16:
  if (*(v5 + 120) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 112) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 120));
  }

  if (*(v5 + 144) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 136) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 144));
  }

  v9 = *(v5 + 292);
  if ((v9 & 0x10000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 160), a3);
    v9 = *(v5 + 292);
    if ((v9 & 0x20000) == 0)
    {
LABEL_24:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_58;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 168), a3);
  v9 = *(v5 + 292);
  if ((v9 & 0x40000) == 0)
  {
LABEL_25:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_58:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(v5 + 176), a3);
  if ((*(v5 + 292) & 0x80000) != 0)
  {
LABEL_26:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x14, *(v5 + 184), a2, a4);
  }

LABEL_27:
  if (*(v5 + 200) >= 1)
  {
    v10 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, *(*(v5 + 192) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 200));
  }

  if (*(v5 + 224) >= 1)
  {
    v11 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, *(*(v5 + 216) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 224));
  }

  if (*(v5 + 248) >= 1)
  {
    v12 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, *(*(v5 + 240) + 8 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 248));
  }

  if (*(v5 + 272) >= 1)
  {
    v13 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, *(*(v5 + 264) + 8 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 272));
  }

  return result;
}

uint64_t sub_10040C31C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 292);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_34;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102636B88 + 8);
  }

  v7 = sub_10040925C(v6, a2);
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
  v3 = *(a1 + 292);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 16);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 292);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v12 = *(a1 + 20);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
      v3 = *(a1 + 292);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

  v14 = v4 + 9;
  if ((v3 & 8) == 0)
  {
    v14 = v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v5 = v14 + 9;
  }

  else
  {
    v5 = v14;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
    v3 = *(a1 + 292);
    if ((v3 & 0x40) == 0)
    {
LABEL_32:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_32;
  }

  v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48), a2) + 1;
  v3 = *(a1 + 292);
  if ((v3 & 0x80) != 0)
  {
LABEL_33:
    v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 56), a2) + 1;
    v3 = *(a1 + 292);
  }

LABEL_34:
  v15 = v5 + 9;
  if ((v3 & 0x100) == 0)
  {
    v15 = v5;
  }

  if ((v3 & 0x200) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0x400) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0x800) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0x1000) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0x2000) != 0)
  {
    v15 += 9;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v5 = v15;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    v16 = v5 + 10;
    if ((v3 & 0x10000) == 0)
    {
      v16 = v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v16 += 10;
    }

    if ((v3 & 0x40000) != 0)
    {
      v5 = v16 + 10;
    }

    else
    {
      v5 = v16;
    }

    if ((v3 & 0x80000) != 0)
    {
      v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 184), a2) + 2;
    }
  }

  v17 = *(a1 + 120);
  v18 = v17 + v5;
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = sub_100409998(*(*(a1 + 112) + 8 * v19), a2);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      }

      else
      {
        v22 = 1;
      }

      v18 += v21 + v22;
      ++v19;
    }

    while (v19 < *(a1 + 120));
  }

  v23 = *(a1 + 144);
  v24 = v18 + 2 * v23;
  if (v23 >= 1)
  {
    v25 = 0;
    do
    {
      v26 = sub_100409998(*(*(a1 + 136) + 8 * v25), a2);
      v27 = v26;
      if (v26 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
      }

      else
      {
        v28 = 1;
      }

      v24 += v27 + v28;
      ++v25;
    }

    while (v25 < *(a1 + 144));
  }

  v29 = *(a1 + 200);
  v30 = v24 + 2 * v29;
  if (v29 >= 1)
  {
    v31 = 0;
    do
    {
      v32 = sub_100409998(*(*(a1 + 192) + 8 * v31), a2);
      v33 = v32;
      if (v32 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2);
      }

      else
      {
        v34 = 1;
      }

      v30 += v33 + v34;
      ++v31;
    }

    while (v31 < *(a1 + 200));
  }

  v35 = *(a1 + 224);
  v36 = v30 + 2 * v35;
  if (v35 >= 1)
  {
    v37 = 0;
    do
    {
      v38 = sub_100409998(*(*(a1 + 216) + 8 * v37), a2);
      v39 = v38;
      if (v38 >= 0x80)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
      }

      else
      {
        v40 = 1;
      }

      v36 += v39 + v40;
      ++v37;
    }

    while (v37 < *(a1 + 224));
  }

  v41 = *(a1 + 248);
  v42 = v36 + 2 * v41;
  if (v41 >= 1)
  {
    v43 = 0;
    do
    {
      v44 = sub_100409998(*(*(a1 + 240) + 8 * v43), a2);
      v45 = v44;
      if (v44 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2);
      }

      else
      {
        v46 = 1;
      }

      v42 += v45 + v46;
      ++v43;
    }

    while (v43 < *(a1 + 248));
  }

  v47 = *(a1 + 272);
  v48 = (v42 + 2 * v47);
  if (v47 >= 1)
  {
    v49 = 0;
    do
    {
      v50 = sub_100409998(*(*(a1 + 264) + 8 * v49), a2);
      v51 = v50;
      if (v50 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
      }

      else
      {
        v52 = 1;
      }

      v48 = (v51 + v48 + v52);
      ++v49;
    }

    while (v49 < *(a1 + 272));
  }

  *(a1 + 288) = v48;
  return v48;
}

double sub_10040C70C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100406B20(a1, lpsrc);
}

void sub_10040C7AC(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024512D8;
  if (qword_102636B90 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10040C83C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10040C7AC(a1);

  operator delete();
}

uint64_t sub_10040C8F8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          goto LABEL_71;
        }

        *(a1 + 228) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v65[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65))
          {
            return 0;
          }
        }

        else
        {
          v65[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v22 = *(this + 14);
        v23 = *(this + 15);
        *(this + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v65[0]);
        if (!sub_100408BF0(v8, this, v25) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
        v26 = *(this + 14);
        v27 = __OFSUB__(v26, 1);
        v28 = v26 - 1;
        if (v28 < 0 == v27)
        {
          *(this + 14) = v28;
        }

        v29 = *(this + 1);
        v14 = *(this + 2);
        if (v29 >= v14 || *v29 != 16)
        {
          continue;
        }

        v15 = v29 + 1;
        *(this + 1) = v15;
        goto LABEL_83;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
LABEL_83:
        v65[0] = 0;
        if (v15 >= v14 || (v30 = *v15, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65);
          if (!result)
          {
            return result;
          }

          v30 = v65[0];
        }

        else
        {
          *(this + 1) = v15 + 1;
        }

        if (v30 <= 9)
        {
          *(a1 + 228) |= 2u;
          *(a1 + 24) = v30;
        }

        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 25)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_93:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v65;
        *(a1 + 228) |= 4u;
        v33 = *(this + 1);
        v20 = *(this + 2);
        if (v33 >= v20 || *v33 != 32)
        {
          continue;
        }

        v21 = v33 + 1;
        *(this + 1) = v21;
LABEL_97:
        v65[0] = 0;
        if (v21 >= v20 || (v34 = *v21, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65);
          if (!result)
          {
            return result;
          }

          v34 = v65[0];
        }

        else
        {
          *(this + 1) = v21 + 1;
        }

        if (v34 <= 3)
        {
          *(a1 + 228) |= 8u;
          *(a1 + 28) = v34;
        }

        v35 = *(this + 1);
        if (v35 >= *(this + 2) || *v35 != 41)
        {
          continue;
        }

        *(this + 1) = v35 + 1;
LABEL_107:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v65;
        *(a1 + 228) |= 0x10u;
        v36 = *(this + 1);
        if (v36 >= *(this + 2) || *v36 != 49)
        {
          continue;
        }

        *(this + 1) = v36 + 1;
LABEL_111:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v65;
        *(a1 + 228) |= 0x20u;
        v37 = *(this + 1);
        v18 = *(this + 2);
        if (v37 >= v18 || *v37 != 56)
        {
          continue;
        }

        v19 = v37 + 1;
        *(this + 1) = v19;
LABEL_115:
        v65[0] = 0;
        if (v19 >= v18 || (v38 = *v19, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65);
          if (!result)
          {
            return result;
          }

          v38 = v65[0];
        }

        else
        {
          *(this + 1) = v19 + 1;
        }

        if (v38 <= 9)
        {
          *(a1 + 228) |= 0x40u;
          *(a1 + 48) = v38;
        }

        v39 = *(this + 1);
        v16 = *(this + 2);
        if (v39 >= v16 || *v39 != 64)
        {
          continue;
        }

        v17 = v39 + 1;
        *(this + 1) = v17;
LABEL_125:
        v65[0] = 0;
        if (v17 >= v16 || (v40 = *v17, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65);
          if (!result)
          {
            return result;
          }

          v40 = v65[0];
        }

        else
        {
          *(this + 1) = v17 + 1;
        }

        if (v40 <= 3)
        {
          *(a1 + 228) |= 0x80u;
          *(a1 + 52) = v40;
        }

        v41 = *(this + 1);
        v12 = *(this + 2);
        if (v41 >= v12 || *v41 != 72)
        {
          continue;
        }

        v13 = v41 + 1;
        *(this + 1) = v13;
LABEL_135:
        v65[0] = 0;
        if (v13 >= v12 || (v42 = *v13, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65);
          if (!result)
          {
            return result;
          }

          v42 = v65[0];
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v42 <= 2)
        {
          *(a1 + 228) |= 0x100u;
          *(a1 + 136) = v42;
        }

        v43 = *(this + 1);
        if (*(this + 4) - v43 < 2 || *v43 != 161 || v43[1] != 1)
        {
          continue;
        }

        *(this + 1) = v43 + 2;
LABEL_146:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v65;
        *(a1 + 228) |= 0x200u;
        v44 = *(this + 1);
        if (*(this + 4) - v44 < 2 || *v44 != 169 || v44[1] != 1)
        {
          continue;
        }

        *(this + 1) = v44 + 2;
LABEL_151:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v65;
        *(a1 + 228) |= 0x400u;
        v45 = *(this + 1);
        if (*(this + 4) - v45 < 2 || *v45 != 177 || v45[1] != 1)
        {
          continue;
        }

        *(this + 1) = v45 + 2;
LABEL_156:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v65;
        *(a1 + 228) |= 0x800u;
        v46 = *(this + 1);
        if (*(this + 4) - v46 < 2 || *v46 != 185 || v46[1] != 1)
        {
          continue;
        }

        *(this + 1) = v46 + 2;
LABEL_161:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v65;
        *(a1 + 228) |= 0x1000u;
        v47 = *(this + 1);
        if (*(this + 4) - v47 < 2 || *v47 != 193 || v47[1] != 1)
        {
          continue;
        }

        *(this + 1) = v47 + 2;
LABEL_166:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v65;
        *(a1 + 228) |= 0x2000u;
        v48 = *(this + 1);
        if (*(this + 4) - v48 < 2 || *v48 != 201 || v48[1] != 1)
        {
          continue;
        }

        *(this + 1) = v48 + 2;
LABEL_171:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v65;
        *(a1 + 228) |= 0x4000u;
        v49 = *(this + 1);
        if (*(this + 4) - v49 < 2 || *v49 != 209 || v49[1] != 1)
        {
          continue;
        }

        *(this + 1) = v49 + 2;
LABEL_176:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v65;
        *(a1 + 228) |= 0x8000u;
        v50 = *(this + 1);
        if (*(this + 4) - v50 < 2 || *v50 != 217 || v50[1] != 1)
        {
          continue;
        }

        *(this + 1) = v50 + 2;
LABEL_181:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 112) = *v65;
        *(a1 + 228) |= 0x10000u;
        v51 = *(this + 1);
        if (*(this + 4) - v51 < 2 || *v51 != 225 || v51[1] != 1)
        {
          continue;
        }

        *(this + 1) = v51 + 2;
LABEL_186:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 120) = *v65;
        *(a1 + 228) |= 0x20000u;
        v52 = *(this + 1);
        if (*(this + 4) - v52 < 2 || *v52 != 233 || v52[1] != 1)
        {
          continue;
        }

        *(this + 1) = v52 + 2;
LABEL_191:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 128) = *v65;
        *(a1 + 228) |= 0x40000u;
        v53 = *(this + 1);
        if (*(this + 4) - v53 < 2 || *v53 != 145 || v53[1] != 3)
        {
          continue;
        }

        *(this + 1) = v53 + 2;
LABEL_196:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 144) = *v65;
        *(a1 + 228) |= 0x80000u;
        v54 = *(this + 1);
        if (*(this + 4) - v54 < 2 || *v54 != 153 || v54[1] != 3)
        {
          continue;
        }

        *(this + 1) = v54 + 2;
LABEL_201:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 152) = *v65;
        *(a1 + 228) |= 0x100000u;
        v55 = *(this + 1);
        if (*(this + 4) - v55 < 2 || *v55 != 161 || v55[1] != 3)
        {
          continue;
        }

        *(this + 1) = v55 + 2;
LABEL_206:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 160) = *v65;
        *(a1 + 228) |= 0x200000u;
        v56 = *(this + 1);
        if (*(this + 4) - v56 < 2 || *v56 != 169 || v56[1] != 3)
        {
          continue;
        }

        *(this + 1) = v56 + 2;
LABEL_211:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 168) = *v65;
        *(a1 + 228) |= 0x400000u;
        v57 = *(this + 1);
        if (*(this + 4) - v57 < 2 || *v57 != 225 || v57[1] != 3)
        {
          continue;
        }

        *(this + 1) = v57 + 2;
LABEL_216:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 176) = *v65;
        *(a1 + 228) |= 0x800000u;
        v58 = *(this + 1);
        if (*(this + 4) - v58 < 2 || *v58 != 233 || v58[1] != 3)
        {
          continue;
        }

        *(this + 1) = v58 + 2;
LABEL_221:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 184) = *v65;
        *(a1 + 228) |= 0x1000000u;
        v59 = *(this + 1);
        if (*(this + 4) - v59 < 2 || *v59 != 241 || v59[1] != 3)
        {
          continue;
        }

        *(this + 1) = v59 + 2;
LABEL_226:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 192) = *v65;
        *(a1 + 228) |= 0x2000000u;
        v60 = *(this + 1);
        if (*(this + 4) - v60 < 2 || *v60 != 249 || v60[1] != 3)
        {
          continue;
        }

        *(this + 1) = v60 + 2;
LABEL_231:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 200) = *v65;
        *(a1 + 228) |= 0x4000000u;
        v61 = *(this + 1);
        if (*(this + 4) - v61 < 2 || *v61 != 177 || v61[1] != 4)
        {
          continue;
        }

        *(this + 1) = v61 + 2;
LABEL_236:
        *v65 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 208) = *v65;
        *(a1 + 228) |= 0x8000000u;
        v62 = *(this + 1);
        if (*(this + 4) - v62 < 2 || *v62 != 185 || v62[1] != 4)
        {
          continue;
        }

        *(this + 1) = v62 + 2;
LABEL_241:
        *v65 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v65))
        {
          *(a1 + 216) = *v65;
          *(a1 + 228) |= 0x10000000u;
          v63 = *(this + 1);
          v10 = *(this + 2);
          if (v10 - v63 >= 2 && *v63 == 128 && v63[1] == 5)
          {
            v11 = (v63 + 2);
            *(this + 1) = v11;
LABEL_246:
            v65[0] = 0;
            if (v11 >= v10 || (v64 = *v11, (v64 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v65);
              if (!result)
              {
                return result;
              }

              v64 = v65[0];
            }

            else
            {
              *(this + 1) = v11 + 1;
            }

            if (v64 <= 7)
            {
              *(a1 + 228) |= 0x20000000u;
              *(a1 + 140) = v64;
            }

            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_93;
        }

        goto LABEL_71;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_97;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_107;
        }

        goto LABEL_71;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_111;
        }

        goto LABEL_71;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_115;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_125;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_135;
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
        goto LABEL_71;
      case 0x14u:
        if (v7 == 1)
        {
          goto LABEL_146;
        }

        goto LABEL_71;
      case 0x15u:
        if (v7 == 1)
        {
          goto LABEL_151;
        }

        goto LABEL_71;
      case 0x16u:
        if (v7 == 1)
        {
          goto LABEL_156;
        }

        goto LABEL_71;
      case 0x17u:
        if (v7 == 1)
        {
          goto LABEL_161;
        }

        goto LABEL_71;
      case 0x18u:
        if (v7 == 1)
        {
          goto LABEL_166;
        }

        goto LABEL_71;
      case 0x19u:
        if (v7 == 1)
        {
          goto LABEL_171;
        }

        goto LABEL_71;
      case 0x1Au:
        if (v7 == 1)
        {
          goto LABEL_176;
        }

        goto LABEL_71;
      case 0x1Bu:
        if (v7 == 1)
        {
          goto LABEL_181;
        }

        goto LABEL_71;
      case 0x1Cu:
        if (v7 == 1)
        {
          goto LABEL_186;
        }

        goto LABEL_71;
      case 0x1Du:
        if (v7 == 1)
        {
          goto LABEL_191;
        }

        goto LABEL_71;
      case 0x32u:
        if (v7 == 1)
        {
          goto LABEL_196;
        }

        goto LABEL_71;
      case 0x33u:
        if (v7 == 1)
        {
          goto LABEL_201;
        }

        goto LABEL_71;
      case 0x34u:
        if (v7 == 1)
        {
          goto LABEL_206;
        }

        goto LABEL_71;
      case 0x35u:
        if (v7 == 1)
        {
          goto LABEL_211;
        }

        goto LABEL_71;
      case 0x3Cu:
        if (v7 == 1)
        {
          goto LABEL_216;
        }

        goto LABEL_71;
      case 0x3Du:
        if (v7 == 1)
        {
          goto LABEL_221;
        }

        goto LABEL_71;
      case 0x3Eu:
        if (v7 != 1)
        {
          goto LABEL_71;
        }

        goto LABEL_226;
      case 0x3Fu:
        if (v7 == 1)
        {
          goto LABEL_231;
        }

        goto LABEL_71;
      case 0x46u:
        if (v7 == 1)
        {
          goto LABEL_236;
        }

        goto LABEL_71;
      case 0x47u:
        if (v7 == 1)
        {
          goto LABEL_241;
        }

        goto LABEL_71;
      default:
        if (TagFallback >> 3 == 80 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          goto LABEL_246;
        }

LABEL_71:
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

uint64_t sub_10040D6F0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 228);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636B90 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 228);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 228);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 52), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 136), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 56), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 64), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x16, a2, *(v5 + 72), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 80), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x18, a2, *(v5 + 88), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x19, a2, *(v5 + 96), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 104), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 112), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 120), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1D, a2, *(v5 + 128), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x32, a2, *(v5 + 144), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x33, a2, *(v5 + 152), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x34, a2, *(v5 + 160), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x35, a2, *(v5 + 168), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3C, a2, *(v5 + 176), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3D, a2, *(v5 + 184), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3E, a2, *(v5 + 192), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3F, a2, *(v5 + 200), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_62:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x47, a2, *(v5 + 216), a3);
    if ((*(v5 + 228) & 0x20000000) == 0)
    {
      return result;
    }

    goto LABEL_63;
  }

LABEL_61:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x46, a2, *(v5 + 208), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_62;
  }

LABEL_30:
  if ((v6 & 0x20000000) == 0)
  {
    return result;
  }

LABEL_63:
  v8 = *(v5 + 140);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x50, v8, a2, a4);
}

uint64_t sub_10040DA80(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 228);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_46;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102636B90 + 8);
    }

    v7 = sub_10040925C(v6, a2);
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
    v3 = *(a1 + 228);
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
    v10 = *(a1 + 24);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 228);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 8) != 0)
  {
    v12 = *(a1 + 28);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
      v3 = *(a1 + 228);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

  v14 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v14 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v5 = v14 + 9;
  }

  else
  {
    v5 = v14;
  }

  if ((v3 & 0x40) != 0)
  {
    v15 = *(a1 + 48);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
      v3 = *(a1 + 228);
    }

    else
    {
      v16 = 2;
    }

    v5 = (v16 + v5);
  }

  if ((v3 & 0x80) != 0)
  {
    v17 = *(a1 + 52);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(a1 + 228);
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
  }

LABEL_46:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v19 = *(a1 + 136);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 11;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
        v3 = *(a1 + 228);
      }

      else
      {
        v20 = 2;
      }

      LODWORD(v5) = v20 + v5;
    }

    v21 = v5 + 10;
    if ((v3 & 0x200) == 0)
    {
      v21 = v5;
    }

    if ((v3 & 0x400) != 0)
    {
      v21 += 10;
    }

    if ((v3 & 0x800) != 0)
    {
      v21 += 10;
    }

    if ((v3 & 0x1000) != 0)
    {
      v21 += 10;
    }

    if ((v3 & 0x2000) != 0)
    {
      v21 += 10;
    }

    if ((v3 & 0x4000) != 0)
    {
      v21 += 10;
    }

    if ((v3 & 0x8000) != 0)
    {
      v5 = v21 + 10;
    }

    else
    {
      v5 = v21;
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    v22 = v5 + 10;
    if ((v3 & 0x10000) == 0)
    {
      v22 = v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x40000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x80000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x100000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x200000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x400000) != 0)
    {
      v22 += 10;
    }

    if ((v3 & 0x800000) != 0)
    {
      v5 = v22 + 10;
    }

    else
    {
      v5 = v22;
    }
  }

  if (HIBYTE(v3))
  {
    v23 = v5 + 10;
    if ((v3 & 0x1000000) == 0)
    {
      v23 = v5;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v23 += 10;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v23 += 10;
    }

    if ((v3 & 0x8000000) != 0)
    {
      v23 += 10;
    }

    if ((v3 & 0x10000000) != 0)
    {
      v5 = v23 + 10;
    }

    else
    {
      v5 = v23;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v24 = *(a1 + 140);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 12;
      }

      else if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 2;
      }

      else
      {
        v25 = 3;
      }

      v5 = (v25 + v5);
    }
  }

  *(a1 + 224) = v5;
  return v5;
}

void sub_10040DD6C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100406EB4(a1, lpsrc);
}

void sub_10040DE0C(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451350;
  if (qword_102636B98 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10040DE9C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10040DE0C(a1);

  operator delete();
}

uint64_t sub_10040DF4C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          goto LABEL_50;
        }

        *(a1 + 160) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v42[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v42))
          {
            return 0;
          }
        }

        else
        {
          v42[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v13 = *(this + 14);
        v14 = *(this + 15);
        *(this + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42[0]);
        if (!sub_100408BF0(v8, this, v16) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
        v17 = *(this + 14);
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v19 < 0 == v18)
        {
          *(this + 14) = v19;
        }

        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 != 17)
        {
          continue;
        }

        *(this + 1) = v20 + 1;
        goto LABEL_62;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_50;
        }

LABEL_62:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v42;
        *(a1 + 160) |= 2u;
        v21 = *(this + 1);
        if (v21 >= *(this + 2) || *v21 != 25)
        {
          continue;
        }

        *(this + 1) = v21 + 1;
LABEL_66:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = *v42;
        *(a1 + 160) |= 4u;
        v22 = *(this + 1);
        if (v22 >= *(this + 2) || *v22 != 33)
        {
          continue;
        }

        *(this + 1) = v22 + 1;
LABEL_70:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 32) = *v42;
        *(a1 + 160) |= 8u;
        v23 = *(this + 1);
        v10 = *(this + 2);
        if (v23 >= v10 || *v23 != 40)
        {
          continue;
        }

        v11 = v23 + 1;
        *(this + 1) = v11;
LABEL_74:
        v42[0] = 0;
        if (v11 >= v10 || (v24 = *v11, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v42);
          if (!result)
          {
            return result;
          }

          v24 = v42[0];
          v25 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v25 = v11 + 1;
          *(this + 1) = v25;
        }

        *(a1 + 152) = v24 != 0;
        *(a1 + 160) |= 0x10u;
        if (v25 >= v10 || *v25 != 48)
        {
          continue;
        }

        v12 = v25 + 1;
        *(this + 1) = v12;
LABEL_82:
        v42[0] = 0;
        if (v12 >= v10 || (v27 = *v12, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v42);
          if (!result)
          {
            return result;
          }

          v27 = v42[0];
          v28 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v28 = v12 + 1;
          *(this + 1) = v28;
        }

        *(a1 + 153) = v27 != 0;
        *(a1 + 160) |= 0x20u;
        if (v28 >= v10 || *v28 != 57)
        {
          continue;
        }

        *(this + 1) = v28 + 1;
LABEL_90:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = *v42;
        *(a1 + 160) |= 0x40u;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 != 65)
        {
          continue;
        }

        *(this + 1) = v29 + 1;
LABEL_94:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v42;
        *(a1 + 160) |= 0x80u;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 != 73)
        {
          continue;
        }

        *(this + 1) = v30 + 1;
LABEL_98:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 56) = *v42;
        *(a1 + 160) |= 0x100u;
        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 81)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_102:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v42;
        *(a1 + 160) |= 0x200u;
        v32 = *(this + 1);
        if (v32 >= *(this + 2) || *v32 != 89)
        {
          continue;
        }

        *(this + 1) = v32 + 1;
LABEL_106:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v42;
        *(a1 + 160) |= 0x400u;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 != 97)
        {
          continue;
        }

        *(this + 1) = v33 + 1;
LABEL_110:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = *v42;
        *(a1 + 160) |= 0x800u;
        v34 = *(this + 1);
        if (v34 >= *(this + 2) || *v34 != 105)
        {
          continue;
        }

        *(this + 1) = v34 + 1;
LABEL_114:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 88) = *v42;
        *(a1 + 160) |= 0x1000u;
        v35 = *(this + 1);
        if (v35 >= *(this + 2) || *v35 != 113)
        {
          continue;
        }

        *(this + 1) = v35 + 1;
LABEL_118:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = *v42;
        *(a1 + 160) |= 0x2000u;
        v36 = *(this + 1);
        if (v36 >= *(this + 2) || *v36 != 121)
        {
          continue;
        }

        *(this + 1) = v36 + 1;
LABEL_122:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 104) = *v42;
        *(a1 + 160) |= 0x4000u;
        v37 = *(this + 1);
        if (*(this + 4) - v37 < 2 || *v37 != 129 || v37[1] != 1)
        {
          continue;
        }

        *(this + 1) = v37 + 2;
LABEL_127:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 112) = *v42;
        *(a1 + 160) |= 0x8000u;
        v38 = *(this + 1);
        if (*(this + 4) - v38 < 2 || *v38 != 137 || v38[1] != 1)
        {
          continue;
        }

        *(this + 1) = v38 + 2;
LABEL_132:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 120) = *v42;
        *(a1 + 160) |= 0x10000u;
        v39 = *(this + 1);
        if (*(this + 4) - v39 < 2 || *v39 != 145 || v39[1] != 1)
        {
          continue;
        }

        *(this + 1) = v39 + 2;
LABEL_137:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 128) = *v42;
        *(a1 + 160) |= 0x20000u;
        v40 = *(this + 1);
        if (*(this + 4) - v40 < 2 || *v40 != 153 || v40[1] != 1)
        {
          continue;
        }

        *(this + 1) = v40 + 2;
LABEL_142:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 136) = *v42;
        *(a1 + 160) |= 0x40000u;
        v41 = *(this + 1);
        if (*(this + 4) - v41 < 2 || *v41 != 161 || v41[1] != 1)
        {
          continue;
        }

        *(this + 1) = v41 + 2;
LABEL_147:
        *v42 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v42))
        {
          *(a1 + 144) = *v42;
          *(a1 + 160) |= 0x80000u;
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
          goto LABEL_66;
        }

        goto LABEL_50;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_70;
        }

        goto LABEL_50;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_74;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_82;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_50;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_94;
        }

        goto LABEL_50;
      case 9u:
        if (v7 == 1)
        {
          goto LABEL_98;
        }

        goto LABEL_50;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_102;
        }

        goto LABEL_50;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_106;
        }

        goto LABEL_50;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_110;
        }

        goto LABEL_50;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_114;
        }

        goto LABEL_50;
      case 0xEu:
        if (v7 == 1)
        {
          goto LABEL_118;
        }

        goto LABEL_50;
      case 0xFu:
        if (v7 == 1)
        {
          goto LABEL_122;
        }

        goto LABEL_50;
      case 0x10u:
        if (v7 == 1)
        {
          goto LABEL_127;
        }

        goto LABEL_50;
      case 0x11u:
        if (v7 == 1)
        {
          goto LABEL_132;
        }

        goto LABEL_50;
      case 0x12u:
        if (v7 == 1)
        {
          goto LABEL_137;
        }

        goto LABEL_50;
      case 0x13u:
        if (v7 == 1)
        {
          goto LABEL_142;
        }

        goto LABEL_50;
      case 0x14u:
        if (v7 != 1)
        {
          goto LABEL_50;
        }

        goto LABEL_147;
      default:
LABEL_50:
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

uint64_t sub_10040E834(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 160);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636B98 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 160);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 160);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 160);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 152), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 153), a2, a4);
  v6 = *(v5 + 160);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 48), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 80), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 88), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 96), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(v5 + 104), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 112), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 120), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

LABEL_42:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(v5 + 136), a3);
    if ((*(v5 + 160) & 0x80000) == 0)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 128), a3);
  v6 = *(v5 + 160);
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_42;
  }

LABEL_20:
  if ((v6 & 0x80000) == 0)
  {
    return result;
  }

LABEL_43:
  v8 = *(v5 + 144);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, v8, a3);
}

uint64_t sub_10040EAAC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 160);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636B98 + 8);
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
      v3 = *(a1 + 160);
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

    v11 = ((v3 >> 4) & 2) + ((v3 >> 3) & 2) + v4;
    if ((v3 & 0x40) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v11 + 9;
    }

    else
    {
      result = v11;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v12 = result + 9;
    if ((v3 & 0x100) == 0)
    {
      v12 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x4000) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x8000) != 0)
    {
      result = v12 + 10;
    }

    else
    {
      result = v12;
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    v13 = result + 10;
    if ((v3 & 0x10000) == 0)
    {
      v13 = result;
    }

    if ((v3 & 0x20000) != 0)
    {
      v13 += 10;
    }

    if ((v3 & 0x40000) != 0)
    {
      v13 += 10;
    }

    if ((v3 & 0x80000) != 0)
    {
      result = v13 + 10;
    }

    else
    {
      result = v13;
    }
  }

  *(a1 + 156) = result;
  return result;
}

double sub_10040EC24(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1004079B4(a1, lpsrc);
}

void sub_10040ECC4(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024513C8;
  if (qword_102636BA0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10040ED54(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10040ECC4(a1);

  operator delete();
}

uint64_t sub_10040EDF4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        if (TagFallback >> 3 <= 9)
        {
          if (v7 == 7)
          {
            if (v8 == 1)
            {
              goto LABEL_88;
            }
          }

          else if (v7 == 8)
          {
            if (v8 == 1)
            {
              goto LABEL_92;
            }
          }

          else if (v7 == 9 && v8 == 1)
          {
            goto LABEL_96;
          }

          goto LABEL_48;
        }

        if (v7 == 10)
        {
          if (v8 == 1)
          {
            goto LABEL_100;
          }

          goto LABEL_48;
        }

        if (v7 == 11)
        {
          if (v8 != 1)
          {
            goto LABEL_48;
          }

LABEL_104:
          *v35 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 72) = *v35;
          *(a1 + 96) |= 0x400u;
          v34 = *(this + 1);
          if (v34 < *(this + 2) && *v34 == 97)
          {
            *(this + 1) = v34 + 1;
            goto LABEL_108;
          }
        }

        else
        {
          if (v7 != 12 || v8 != 1)
          {
            goto LABEL_48;
          }

LABEL_108:
          *v35 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 80) = *v35;
          *(a1 + 96) |= 0x800u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 > 3)
      {
        if (v7 == 4)
        {
          if (v8 == 1)
          {
            goto LABEL_76;
          }
        }

        else if (v7 == 5)
        {
          if (v8 == 1)
          {
            goto LABEL_80;
          }
        }

        else if (v7 == 6 && v8 == 1)
        {
          goto LABEL_84;
        }

        goto LABEL_48;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_48;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
LABEL_60:
        v35[0] = 0;
        if (v13 >= v9 || (v22 = *v13, (v22 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35);
          if (!result)
          {
            return result;
          }

          v22 = v35[0];
          v23 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v23 = v13 + 1;
          *(this + 1) = v23;
        }

        *(a1 + 88) = v22 != 0;
        *(a1 + 96) |= 2u;
        if (v23 < v9 && *v23 == 24)
        {
          v10 = v23 + 1;
          *(this + 1) = v10;
LABEL_68:
          v35[0] = 0;
          if (v10 >= v9 || (v25 = *v10, (v25 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35);
            if (!result)
            {
              return result;
            }

            v25 = v35[0];
            v26 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            v26 = v10 + 1;
            *(this + 1) = v26;
          }

          *(a1 + 89) = v25 != 0;
          *(a1 + 96) |= 4u;
          if (v26 < v9 && *v26 == 33)
          {
            *(this + 1) = v26 + 1;
LABEL_76:
            *v35 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = *v35;
            *(a1 + 96) |= 8u;
            v27 = *(this + 1);
            if (v27 < *(this + 2) && *v27 == 41)
            {
              *(this + 1) = v27 + 1;
LABEL_80:
              *v35 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 24) = *v35;
              *(a1 + 96) |= 0x10u;
              v28 = *(this + 1);
              if (v28 < *(this + 2) && *v28 == 49)
              {
                *(this + 1) = v28 + 1;
LABEL_84:
                *v35 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 32) = *v35;
                *(a1 + 96) |= 0x20u;
                v29 = *(this + 1);
                if (v29 < *(this + 2) && *v29 == 57)
                {
                  *(this + 1) = v29 + 1;
LABEL_88:
                  *v35 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 40) = *v35;
                  *(a1 + 96) |= 0x40u;
                  v30 = *(this + 1);
                  if (v30 < *(this + 2) && *v30 == 65)
                  {
                    *(this + 1) = v30 + 1;
LABEL_92:
                    *v35 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
                    {
                      return 0;
                    }

                    *(a1 + 48) = *v35;
                    *(a1 + 96) |= 0x80u;
                    v31 = *(this + 1);
                    if (v31 < *(this + 2) && *v31 == 73)
                    {
                      *(this + 1) = v31 + 1;
LABEL_96:
                      *v35 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
                      {
                        return 0;
                      }

                      *(a1 + 56) = *v35;
                      *(a1 + 96) |= 0x100u;
                      v32 = *(this + 1);
                      if (v32 < *(this + 2) && *v32 == 81)
                      {
                        *(this + 1) = v32 + 1;
LABEL_100:
                        *v35 = 0;
                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v35) & 1) == 0)
                        {
                          return 0;
                        }

                        *(a1 + 64) = *v35;
                        *(a1 + 96) |= 0x200u;
                        v33 = *(this + 1);
                        if (v33 < *(this + 2) && *v33 == 89)
                        {
                          *(this + 1) = v33 + 1;
                          goto LABEL_104;
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

      else
      {
        if (v7 == 3 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_68;
        }

LABEL_48:
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
      goto LABEL_48;
    }

    *(a1 + 96) |= 1u;
    v11 = *(a1 + 8);
    if (!v11)
    {
      operator new();
    }

    v35[0] = 0;
    v12 = *(this + 1);
    if (v12 >= *(this + 2) || *v12 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v35))
      {
        return 0;
      }
    }

    else
    {
      v35[0] = *v12;
      *(this + 1) = v12 + 1;
    }

    v14 = *(this + 14);
    v15 = *(this + 15);
    *(this + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v35[0]);
    if (!sub_100408BF0(v11, this, v17) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
    v18 = *(this + 14);
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v20 < 0 == v19)
    {
      *(this + 14) = v20;
    }

    v21 = *(this + 1);
    v9 = *(this + 2);
    if (v21 < v9 && *v21 == 16)
    {
      v13 = v21 + 1;
      *(this + 1) = v13;
      goto LABEL_60;
    }
  }
}

uint64_t sub_10040F424(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 96);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BA0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 88), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 89), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
    if ((*(v5 + 96) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return result;
  }

LABEL_27:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, v8, a3);
}

uint64_t sub_10040F5BC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102636BA0 + 8);
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
      v3 = *(a1 + 96);
    }

    else
    {
      v4 = 0;
    }

    v11 = (v3 & 2) + v4 + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v11 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v11 + 9;
    }

    else
    {
      result = v11;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v12 = result + 9;
    if ((v3 & 0x100) == 0)
    {
      v12 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x400) != 0)
    {
      v12 += 9;
    }

    if ((v3 & 0x800) != 0)
    {
      result = v12 + 9;
    }

    else
    {
      result = v12;
    }
  }

  *(a1 + 92) = result;
  return result;
}

double sub_10040F6C8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_100407D34(a1, lpsrc);
}

void *sub_10040F768(void *result)
{
  if (qword_102636BA8 != result)
  {
    v1 = result;
    v2 = result[1];
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

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    result = v1[10];
    if (result)
    {
      v11 = *(*result + 8);

      return v11();
    }
  }

  return result;
}

void sub_10040F968(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102451440;
  sub_10040F768(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10040F9BC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102451440;
  sub_10040F768(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10040FA88(uint64_t result)
{
  v1 = result;
  v2 = *(result + 92);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t sub_10040FAE8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 132);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 132);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 104) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 72) = 0u;
  }

  *(v1 + 132) = 0;
  return result;
}

uint64_t sub_10040FB58(uint64_t result)
{
  v1 = result;
  v2 = *(result + 92);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t sub_10040FBB8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 92);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t sub_10040FC18(uint64_t result)
{
  v1 = result;
  v2 = *(result + 132);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 132);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 104) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 72) = 0u;
  }

  *(v1 + 132) = 0;
  return result;
}

uint64_t sub_10040FC88(uint64_t result)
{
  v1 = result;
  v2 = *(result + 92);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t sub_10040FCE8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 92);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t sub_10040FD48(uint64_t result)
{
  v1 = result;
  v2 = *(result + 92);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 92);
      }
    }

    *(v1 + 64) = 0;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t sub_10040FDA8(uint64_t result)
{
  v1 = result;
  if (*(result + 60))
  {
    if (*(result + 60))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
      }
    }

    *(v1 + 48) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  *(v1 + 60) = 0;
  return result;
}

uint64_t sub_10040FDF0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
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
              if (v8 == 2)
              {
                goto LABEL_110;
              }
            }

            else if (v7 == 7 && v8 == 2)
            {
              goto LABEL_124;
            }

            goto LABEL_42;
          }

          if (v7 == 8)
          {
            if (v8 == 2)
            {
              goto LABEL_138;
            }

            goto LABEL_42;
          }

          if (v7 == 9)
          {
            if (v8 != 2)
            {
              goto LABEL_42;
            }

LABEL_152:
            *(a1 + 92) |= 0x100u;
            v82 = *(a1 + 72);
            if (!v82)
            {
              operator new();
            }

            v100 = 0;
            v83 = *(this + 1);
            if (v83 >= *(this + 2) || *v83 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
              {
                return 0;
              }
            }

            else
            {
              v100 = *v83;
              *(this + 1) = v83 + 1;
            }

            v84 = *(this + 14);
            v85 = *(this + 15);
            *(this + 14) = v84 + 1;
            if (v84 >= v85)
            {
              return 0;
            }

            v86 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
            if (!sub_100416BB8(v82, this, v87) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v86);
            v88 = *(this + 14);
            v16 = __OFSUB__(v88, 1);
            v89 = v88 - 1;
            if (v89 < 0 == v16)
            {
              *(this + 14) = v89;
            }

            v90 = *(this + 1);
            if (v90 < *(this + 2) && *v90 == 82)
            {
              *(this + 1) = v90 + 1;
              goto LABEL_166;
            }
          }

          else
          {
            if (v7 != 10 || v8 != 2)
            {
              goto LABEL_42;
            }

LABEL_166:
            *(a1 + 92) |= 0x200u;
            v91 = *(a1 + 80);
            if (!v91)
            {
              operator new();
            }

            v100 = 0;
            v92 = *(this + 1);
            if (v92 >= *(this + 2) || *v92 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
              {
                return 0;
              }
            }

            else
            {
              v100 = *v92;
              *(this + 1) = v92 + 1;
            }

            v93 = *(this + 14);
            v94 = *(this + 15);
            *(this + 14) = v93 + 1;
            if (v93 >= v94)
            {
              return 0;
            }

            v95 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
            if (!sub_100417504(v91, this, v96) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v95);
            v97 = *(this + 14);
            v16 = __OFSUB__(v97, 1);
            v98 = v97 - 1;
            if (v98 < 0 == v16)
            {
              *(this + 14) = v98;
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

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
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

        v100 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
          {
            return 0;
          }
        }

        else
        {
          v100 = *v10;
          *(this + 1) = v10 + 1;
        }

        v11 = *(this + 14);
        v12 = *(this + 15);
        *(this + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
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
        if (v18 < *(this + 2) && *v18 == 18)
        {
          *(this + 1) = v18 + 1;
LABEL_54:
          *(a1 + 92) |= 2u;
          v19 = *(a1 + 16);
          if (!v19)
          {
            operator new();
          }

          v100 = 0;
          v20 = *(this + 1);
          if (v20 >= *(this + 2) || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
            {
              return 0;
            }
          }

          else
          {
            v100 = *v20;
            *(this + 1) = v20 + 1;
          }

          v21 = *(this + 14);
          v22 = *(this + 15);
          *(this + 14) = v21 + 1;
          if (v21 >= v22)
          {
            return 0;
          }

          v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
          if (!sub_1004125FC(v19, this, v24) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
          v25 = *(this + 14);
          v16 = __OFSUB__(v25, 1);
          v26 = v25 - 1;
          if (v26 < 0 == v16)
          {
            *(this + 14) = v26;
          }

          v27 = *(this + 1);
          if (v27 < *(this + 2) && *v27 == 26)
          {
            *(this + 1) = v27 + 1;
LABEL_68:
            *(a1 + 92) |= 4u;
            v28 = *(a1 + 24);
            if (!v28)
            {
              operator new();
            }

            v100 = 0;
            v29 = *(this + 1);
            if (v29 >= *(this + 2) || *v29 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
              {
                return 0;
              }
            }

            else
            {
              v100 = *v29;
              *(this + 1) = v29 + 1;
            }

            v30 = *(this + 14);
            v31 = *(this + 15);
            *(this + 14) = v30 + 1;
            if (v30 >= v31)
            {
              return 0;
            }

            v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
            if (!sub_100412F58(v28, this, v33) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
            v34 = *(this + 14);
            v16 = __OFSUB__(v34, 1);
            v35 = v34 - 1;
            if (v35 < 0 == v16)
            {
              *(this + 14) = v35;
            }

            v36 = *(this + 1);
            if (v36 < *(this + 2) && *v36 == 34)
            {
              *(this + 1) = v36 + 1;
              goto LABEL_82;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_68;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_42;
      }

LABEL_82:
      *(a1 + 92) |= 8u;
      v37 = *(a1 + 32);
      if (!v37)
      {
        operator new();
      }

      v100 = 0;
      v38 = *(this + 1);
      if (v38 >= *(this + 2) || *v38 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
        {
          return 0;
        }
      }

      else
      {
        v100 = *v38;
        *(this + 1) = v38 + 1;
      }

      v39 = *(this + 14);
      v40 = *(this + 15);
      *(this + 14) = v39 + 1;
      if (v39 >= v40)
      {
        return 0;
      }

      v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
      if (!sub_100413ADC(v37, this, v42) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
      v43 = *(this + 14);
      v16 = __OFSUB__(v43, 1);
      v44 = v43 - 1;
      if (v44 < 0 == v16)
      {
        *(this + 14) = v44;
      }

      v45 = *(this + 1);
      if (v45 < *(this + 2) && *v45 == 42)
      {
        *(this + 1) = v45 + 1;
LABEL_96:
        *(a1 + 92) |= 0x10u;
        v46 = *(a1 + 40);
        if (!v46)
        {
          operator new();
        }

        v100 = 0;
        v47 = *(this + 1);
        if (v47 >= *(this + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
          {
            return 0;
          }
        }

        else
        {
          v100 = *v47;
          *(this + 1) = v47 + 1;
        }

        v48 = *(this + 14);
        v49 = *(this + 15);
        *(this + 14) = v48 + 1;
        if (v48 >= v49)
        {
          return 0;
        }

        v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
        if (!sub_100414430(v46, this, v51) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
        v52 = *(this + 14);
        v16 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        if (v53 < 0 == v16)
        {
          *(this + 14) = v53;
        }

        v54 = *(this + 1);
        if (v54 < *(this + 2) && *v54 == 50)
        {
          *(this + 1) = v54 + 1;
LABEL_110:
          *(a1 + 92) |= 0x20u;
          v55 = *(a1 + 48);
          if (!v55)
          {
            operator new();
          }

          v100 = 0;
          v56 = *(this + 1);
          if (v56 >= *(this + 2) || *v56 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
            {
              return 0;
            }
          }

          else
          {
            v100 = *v56;
            *(this + 1) = v56 + 1;
          }

          v57 = *(this + 14);
          v58 = *(this + 15);
          *(this + 14) = v57 + 1;
          if (v57 >= v58)
          {
            return 0;
          }

          v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
          if (!sub_100414D8C(v55, this, v60) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
          v61 = *(this + 14);
          v16 = __OFSUB__(v61, 1);
          v62 = v61 - 1;
          if (v62 < 0 == v16)
          {
            *(this + 14) = v62;
          }

          v63 = *(this + 1);
          if (v63 < *(this + 2) && *v63 == 58)
          {
            *(this + 1) = v63 + 1;
LABEL_124:
            *(a1 + 92) |= 0x40u;
            v64 = *(a1 + 56);
            if (!v64)
            {
              operator new();
            }

            v100 = 0;
            v65 = *(this + 1);
            if (v65 >= *(this + 2) || *v65 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
              {
                return 0;
              }
            }

            else
            {
              v100 = *v65;
              *(this + 1) = v65 + 1;
            }

            v66 = *(this + 14);
            v67 = *(this + 15);
            *(this + 14) = v66 + 1;
            if (v66 >= v67)
            {
              return 0;
            }

            v68 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
            if (!sub_100415910(v64, this, v69) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v68);
            v70 = *(this + 14);
            v16 = __OFSUB__(v70, 1);
            v71 = v70 - 1;
            if (v71 < 0 == v16)
            {
              *(this + 14) = v71;
            }

            v72 = *(this + 1);
            if (v72 < *(this + 2) && *v72 == 66)
            {
              *(this + 1) = v72 + 1;
LABEL_138:
              *(a1 + 92) |= 0x80u;
              v73 = *(a1 + 64);
              if (!v73)
              {
                operator new();
              }

              v100 = 0;
              v74 = *(this + 1);
              if (v74 >= *(this + 2) || *v74 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v100))
                {
                  return 0;
                }
              }

              else
              {
                v100 = *v74;
                *(this + 1) = v74 + 1;
              }

              v75 = *(this + 14);
              v76 = *(this + 15);
              *(this + 14) = v75 + 1;
              if (v75 >= v76)
              {
                return 0;
              }

              v77 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v100);
              if (!sub_100416264(v73, this, v78) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v77);
              v79 = *(this + 14);
              v16 = __OFSUB__(v79, 1);
              v80 = v79 - 1;
              if (v80 < 0 == v16)
              {
                *(this + 14) = v80;
              }

              v81 = *(this + 1);
              if (v81 < *(this + 2) && *v81 == 74)
              {
                *(this + 1) = v81 + 1;
                goto LABEL_152;
              }
            }
          }
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_96;
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

uint64_t sub_100410A8C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636BA8 + 8);
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

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636BA8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102636BA8 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_21:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102636BA8 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_102636BA8 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_27:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_102636BA8 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_30:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(qword_102636BA8 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_33:
  v14 = *(v5 + 64);
  if (!v14)
  {
    v14 = *(qword_102636BA8 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v14, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

LABEL_36:
  v15 = *(v5 + 72);
  if (!v15)
  {
    v15 = *(qword_102636BA8 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v15, a2, a4);
  if ((*(v5 + 92) & 0x200) != 0)
  {
LABEL_39:
    v16 = *(v5 + 80);
    if (!v16)
    {
      v16 = *(qword_102636BA8 + 80);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v16, a2, a4);
  }

  return result;
}

uint64_t sub_100410C7C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 92);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102636BA8 + 8);
  }

  v6 = sub_10040925C(v5, a2);
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
  v3 = *(a1 + 92);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102636BA8 + 16);
    }

    v10 = sub_100412C8C(v9, a2);
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
    v3 = *(a1 + 92);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      v13 = *(qword_102636BA8 + 24);
    }

    v14 = sub_1004137DC(v13, a2);
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
    v3 = *(a1 + 92);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 32);
  if (!v17)
  {
    v17 = *(qword_102636BA8 + 32);
  }

  v18 = sub_10041416C(v17, a2);
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
  v3 = *(a1 + 92);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(a1 + 40);
  if (!v21)
  {
    v21 = *(qword_102636BA8 + 40);
  }

  v22 = sub_100414AC0(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(a1 + 92);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v25 = *(a1 + 48);
  if (!v25)
  {
    v25 = *(qword_102636BA8 + 48);
  }

  v26 = sub_100415610(v25, a2);
  v27 = v26;
  if (v26 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
  }

  else
  {
    v28 = 1;
  }

  v4 = (v4 + v27 + v28 + 1);
  v3 = *(a1 + 92);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v29 = *(a1 + 56);
  if (!v29)
  {
    v29 = *(qword_102636BA8 + 56);
  }

  v30 = sub_100415FA0(v29, a2);
  v31 = v30;
  if (v30 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
  }

  else
  {
    v32 = 1;
  }

  v4 = (v4 + v31 + v32 + 1);
  v3 = *(a1 + 92);
  if ((v3 & 0x80) != 0)
  {
LABEL_55:
    v33 = *(a1 + 64);
    if (!v33)
    {
      v33 = *(qword_102636BA8 + 64);
    }

    v34 = sub_1004168F4(v33, a2);
    v35 = v34;
    if (v34 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2);
    }

    else
    {
      v36 = 1;
    }

    v4 = (v4 + v35 + v36 + 1);
    v3 = *(a1 + 92);
  }

LABEL_61:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v37 = *(a1 + 72);
      if (!v37)
      {
        v37 = *(qword_102636BA8 + 72);
      }

      v38 = sub_100417248(v37, a2);
      v39 = v38;
      if (v38 >= 0x80)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
      }

      else
      {
        v40 = 1;
      }

      v4 = (v4 + v39 + v40 + 1);
      v3 = *(a1 + 92);
    }

    if ((v3 & 0x200) != 0)
    {
      v41 = *(a1 + 80);
      if (!v41)
      {
        v41 = *(qword_102636BA8 + 80);
      }

      v42 = sub_1004179A4(v41, a2);
      v44 = v42;
      if (v42 >= 0x80)
      {
        v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, v43);
      }

      else
      {
        v45 = 1;
      }

      v4 = (v4 + v44 + v45 + 1);
    }
  }

  *(a1 + 88) = v4;
  return v4;
}

double sub_100410FB4(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_1004073B0(a1, lpsrc);
}

double sub_10041103C(uint64_t a1, uint64_t a2)
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
      v7 = *(qword_102636BB0 + 8);
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

void sub_100411254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_10041126C(uint64_t a1, uint64_t a2)
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
      v7 = *(qword_102636BB8 + 8);
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

void sub_10041152C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_100411544(uint64_t a1, uint64_t a2)
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
      v7 = *(qword_102636BC0 + 8);
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