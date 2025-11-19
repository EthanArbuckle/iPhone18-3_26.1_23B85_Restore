void sub_100348108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10034811C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100348130(void *result)
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

  v3 = result[6];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[7];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v7 = result[8];
  if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  return result;
}

void sub_10034826C(void *a1)
{
  *a1 = off_10044AB50;
  v2 = (a1 + 1);
  sub_100348130(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1003482CC(void *a1)
{
  *a1 = off_10044AB50;
  v2 = (a1 + 1);
  sub_100348130(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1003483F4(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    goto LABEL_17;
  }

  if ((*(a1 + 88) & 1) == 0 || (v1 = *(a1 + 16), v1 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_6:
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if ((*(a1 + 88) & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    *v1 = 0;
    *(v1 + 23) = 0;
    goto LABEL_6;
  }

  **v1 = 0;
  *(v1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if ((*(a1 + 88) & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v2 = *(a1 + 48);
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

LABEL_13:
  if ((*(a1 + 88) & 0x80) != 0)
  {
    v3 = *(a1 + 56);
    if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        v4 = *(a1 + 88);
        if ((v4 & 0xFF00) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_17:
  v4 = *(a1 + 88);
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  *(a1 + 72) = 0;
  if ((v4 & 0x200) != 0)
  {
    v5 = *(a1 + 64);
    if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
      }
    }
  }

  *(a1 + 76) = &_mh_execute_header;
LABEL_26:
  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 20) = 0;
  if (v7)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100348528(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  do
  {
    do
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
                      goto LABEL_78;
                    }

                    v20 = *(this + 1);
                    v10 = *(this + 2);
                    if (v20 >= v10)
                    {
                      goto LABEL_113;
                    }

LABEL_110:
                    v35 = *v20;
                    if (v35 < 0)
                    {
                      goto LABEL_113;
                    }

                    *(a1 + 36) = v35;
                    v36 = v20 + 1;
                    *(this + 1) = v36;
                    *(a1 + 88) |= 8u;
                    if (v36 < v10)
                    {
LABEL_115:
                      if (*v36 == 40)
                      {
                        v30 = v36 + 1;
                        *(this + 1) = v30;
                        if (v30 < v10)
                        {
                          goto LABEL_117;
                        }

LABEL_120:
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
                        if (!result)
                        {
                          return result;
                        }

                        v38 = *(this + 1);
                        v10 = *(this + 2);
                        *(a1 + 88) |= 0x10u;
                        if (v38 < v10)
                        {
                          goto LABEL_122;
                        }
                      }
                    }
                  }

                  else if (v8 == 5)
                  {
                    if ((TagFallback & 7) != 0)
                    {
                      goto LABEL_78;
                    }

                    v30 = *(this + 1);
                    v10 = *(this + 2);
                    if (v30 >= v10)
                    {
                      goto LABEL_120;
                    }

LABEL_117:
                    v37 = *v30;
                    if (v37 < 0)
                    {
                      goto LABEL_120;
                    }

                    *(a1 + 40) = v37;
                    v38 = v30 + 1;
                    *(this + 1) = v38;
                    *(a1 + 88) |= 0x10u;
                    if (v38 < v10)
                    {
LABEL_122:
                      if (*v38 == 48)
                      {
                        v14 = v38 + 1;
                        *(this + 1) = v14;
                        if (v14 < v10)
                        {
                          goto LABEL_124;
                        }

LABEL_127:
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 44));
                        if (!result)
                        {
                          return result;
                        }

                        v40 = *(this + 1);
                        v42 = *(this + 2);
                        v41 = *(a1 + 88) | 0x20;
                        *(a1 + 88) = v41;
                        if (v40 < v42)
                        {
                          goto LABEL_129;
                        }
                      }
                    }
                  }

                  else
                  {
                    if (v8 != 6 || (TagFallback & 7) != 0)
                    {
                      goto LABEL_78;
                    }

                    v14 = *(this + 1);
                    v10 = *(this + 2);
                    if (v14 >= v10)
                    {
                      goto LABEL_127;
                    }

LABEL_124:
                    v39 = *v14;
                    if (v39 < 0)
                    {
                      goto LABEL_127;
                    }

                    *(a1 + 44) = v39;
                    v40 = v14 + 1;
                    *(this + 1) = v40;
                    v41 = *(a1 + 88) | 0x20;
                    *(a1 + 88) = v41;
                    if (v40 < v10)
                    {
LABEL_129:
                      if (*v40 == 58)
                      {
                        *(this + 1) = v40 + 1;
                        *(a1 + 88) = v41 | 0x40;
                        if (*(a1 + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                        {
LABEL_41:
                          operator new();
                        }

                        goto LABEL_42;
                      }
                    }
                  }
                }

                else if (v8 == 1)
                {
                  if (v9 != 2)
                  {
                    goto LABEL_78;
                  }

                  *(a1 + 88) |= 1u;
                  if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                  {
                    operator new();
                  }

                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                  if (!result)
                  {
                    return result;
                  }

                  v18 = *(this + 1);
                  if (v18 < *(this + 2) && *v18 == 17)
                  {
                    *(this + 1) = v18 + 1;
                    goto LABEL_57;
                  }
                }

                else if (v8 == 2)
                {
                  if (v9 != 1)
                  {
                    goto LABEL_78;
                  }

LABEL_57:
                  v43 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v43) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 24) = v43;
                  *(a1 + 88) |= 2u;
                  v23 = *(this + 1);
                  v10 = *(this + 2);
                  if (v23 < v10 && *v23 == 24)
                  {
                    v11 = v23 + 1;
                    *(this + 1) = v11;
                    if (v11 < v10)
                    {
                      goto LABEL_61;
                    }

LABEL_106:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                    if (!result)
                    {
                      return result;
                    }

                    v25 = *(this + 1);
                    v10 = *(this + 2);
                    *(a1 + 88) |= 4u;
                    if (v25 < v10)
                    {
                      goto LABEL_108;
                    }
                  }
                }

                else
                {
                  if (v8 != 3 || (TagFallback & 7) != 0)
                  {
                    goto LABEL_78;
                  }

                  v11 = *(this + 1);
                  v10 = *(this + 2);
                  if (v11 >= v10)
                  {
                    goto LABEL_106;
                  }

LABEL_61:
                  v24 = *v11;
                  if (v24 < 0)
                  {
                    goto LABEL_106;
                  }

                  *(a1 + 32) = v24;
                  v25 = v11 + 1;
                  *(this + 1) = v25;
                  *(a1 + 88) |= 4u;
                  if (v25 < v10)
                  {
LABEL_108:
                    if (*v25 == 32)
                    {
                      v20 = v25 + 1;
                      *(this + 1) = v20;
                      if (v20 < v10)
                      {
                        goto LABEL_110;
                      }

LABEL_113:
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                      if (!result)
                      {
                        return result;
                      }

                      v36 = *(this + 1);
                      v10 = *(this + 2);
                      *(a1 + 88) |= 8u;
                      if (v36 < v10)
                      {
                        goto LABEL_115;
                      }
                    }
                  }
                }
              }

              if (TagFallback >> 3 > 9)
              {
                break;
              }

              if (v8 == 7)
              {
                if (v9 != 2)
                {
                  goto LABEL_78;
                }

                *(a1 + 88) |= 0x40u;
                if (*(a1 + 48) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                {
                  goto LABEL_41;
                }

LABEL_42:
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v19 = *(this + 1);
                if (v19 < *(this + 2) && *v19 == 66)
                {
                  *(this + 1) = v19 + 1;
LABEL_65:
                  *(a1 + 88) |= 0x80u;
                  if (*(a1 + 56) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                  {
                    operator new();
                  }

                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                  if (!result)
                  {
                    return result;
                  }

                  v26 = *(this + 1);
                  v12 = *(this + 2);
                  if (v26 < v12 && *v26 == 72)
                  {
                    v13 = v26 + 1;
                    *(this + 1) = v13;
                    if (v13 < v12)
                    {
                      goto LABEL_71;
                    }

LABEL_101:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 72));
                    if (!result)
                    {
                      return result;
                    }

                    v28 = *(this + 1);
                    v34 = *(this + 2);
                    v29 = *(a1 + 88) | 0x100;
                    *(a1 + 88) = v29;
                    if (v28 < v34)
                    {
                      goto LABEL_103;
                    }
                  }
                }
              }

              else if (v8 == 8)
              {
                if (v9 == 2)
                {
                  goto LABEL_65;
                }

LABEL_78:
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
                if (v8 != 9 || (TagFallback & 7) != 0)
                {
                  goto LABEL_78;
                }

                v13 = *(this + 1);
                v12 = *(this + 2);
                if (v13 >= v12)
                {
                  goto LABEL_101;
                }

LABEL_71:
                v27 = *v13;
                if (v27 < 0)
                {
                  goto LABEL_101;
                }

                *(a1 + 72) = v27;
                v28 = v13 + 1;
                *(this + 1) = v28;
                v29 = *(a1 + 88) | 0x100;
                *(a1 + 88) = v29;
                if (v28 < v12)
                {
LABEL_103:
                  if (*v28 == 82)
                  {
                    *(this + 1) = v28 + 1;
                    *(a1 + 88) = v29 | 0x200;
                    if (*(a1 + 64) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
                    {
LABEL_51:
                      operator new();
                    }

                    goto LABEL_52;
                  }
                }
              }
            }

            if (v8 != 10)
            {
              break;
            }

            if (v9 != 2)
            {
              goto LABEL_78;
            }

            *(a1 + 88) |= 0x200u;
            if (*(a1 + 64) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              goto LABEL_51;
            }

LABEL_52:
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v21 = *(this + 1);
            v15 = *(this + 2);
            if (v21 < v15 && *v21 == 88)
            {
              v22 = v21 + 1;
              *(this + 1) = v22;
              goto LABEL_82;
            }
          }

          if (v8 != 11)
          {
            break;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_78;
          }

          v22 = *(this + 1);
          v15 = *(this + 2);
LABEL_82:
          if (v22 >= v15 || (v31 = *v22, v31 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
            if (!result)
            {
              return result;
            }

            v32 = *(this + 1);
            v15 = *(this + 2);
            *(a1 + 88) |= 0x400u;
            if (v32 < v15)
            {
              goto LABEL_88;
            }
          }

          else
          {
            *(a1 + 76) = v31;
            v32 = v22 + 1;
            *(this + 1) = v32;
            *(a1 + 88) |= 0x400u;
            if (v32 < v15)
            {
LABEL_88:
              if (*v32 == 96)
              {
                v16 = v32 + 1;
                *(this + 1) = v16;
                goto LABEL_90;
              }
            }
          }
        }

        if (v8 != 12 || (TagFallback & 7) != 0)
        {
          goto LABEL_78;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
LABEL_90:
        v44 = 0;
        if (v16 >= v15)
        {
          break;
        }

        v33 = *v16;
        if (v33 < 0)
        {
          break;
        }

        *(this + 1) = v16 + 1;
        if ((v33 - 1) > 1)
        {
          goto LABEL_97;
        }

LABEL_93:
        *(a1 + 88) |= 0x800u;
        *(a1 + 80) = v33;
        if (*(this + 1) == *(this + 2))
        {
          goto LABEL_98;
        }
      }

      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44);
      if (!result)
      {
        return result;
      }

      v33 = v44;
      if (v44 - 1 <= 1)
      {
        goto LABEL_93;
      }

LABEL_97:
      wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 12, v33);
    }

    while (*(this + 1) != *(this + 2));
LABEL_98:
    ;
  }

  while (!*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_100348C84(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 88);
  if (v6)
  {
    v10 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 88);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 88);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
  v6 = *(v5 + 88);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 36), a2, a4);
  v6 = *(v5 + 88);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 88);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 44), a2, a4);
  v6 = *(v5 + 88);
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
  v11 = *(v5 + 48);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 88);
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
  v12 = *(v5 + 56);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 88);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 72), a2, a4);
  v6 = *(v5 + 88);
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
  v13 = *(v5 + 64);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 88);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 76), a2, a4);
  if ((*(v5 + 88) & 0x800) == 0)
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 80), a2, a4);
  v14 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v14;
  if (!v14)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100348E38(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 22);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v15 = *(this + 3);
    *result = 17;
    *(result + 1) = v15;
    result = (result + 9);
    v5 = *(this + 22);
    goto LABEL_17;
  }

  v7 = *(this + 2);
  *a2 = 10;
  v9 = a2 + 1;
  v10 = *(v7 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v7 + 8);
    if (v10 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else if (v10 <= 0x7F)
  {
LABEL_6:
    *(a2 + 1) = v10;
    v11 = a2 + 2;
    goto LABEL_9;
  }

  v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v9, a3);
LABEL_9:
  v12 = *(v7 + 23);
  if (v12 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *v7;
  }

  if (v12 >= 0)
  {
    v14 = *(v7 + 23);
  }

  else
  {
    v14 = *(v7 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v13, v14, v11, a4);
  v5 = *(this + 22);
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  if ((v5 & 4) == 0)
  {
    if ((*(this + 88) & 8) == 0)
    {
      goto LABEL_19;
    }

LABEL_36:
    v22 = *(this + 9);
    *result = 32;
    if (v22 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, result + 1, a3);
      if ((*(this + 88) & 0x10) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *(result + 1) = v22;
      result = (result + 2);
      if ((*(this + 88) & 0x10) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_20:
    if ((*(this + 88) & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_44:
    v24 = *(this + 11);
    *result = 48;
    if (v24 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, result + 1, a3);
      v16 = *(this + 22);
      if ((v16 & 0x40) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(result + 1) = v24;
      result = (result + 2);
      v16 = *(this + 22);
      if ((v16 & 0x40) != 0)
      {
        goto LABEL_48;
      }
    }

LABEL_22:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

  v21 = *(this + 8);
  *result = 24;
  if (v21 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, result + 1, a3);
    if ((*(this + 88) & 8) != 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    *(result + 1) = v21;
    result = (result + 2);
    if ((*(this + 88) & 8) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_19:
  if ((*(this + 88) & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_40:
  v23 = *(this + 10);
  *result = 40;
  if (v23 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, result + 1, a3);
    if ((*(this + 88) & 0x20) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    *(result + 1) = v23;
    result = (result + 2);
    if ((*(this + 88) & 0x20) != 0)
    {
      goto LABEL_44;
    }
  }

LABEL_21:
  v16 = *(this + 22);
  if ((v16 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_48:
  v25 = *(this + 6);
  *result = 58;
  v26 = *(v25 + 23);
  if ((v26 & 0x8000000000000000) != 0)
  {
    v26 = *(v25 + 8);
    if (v26 <= 0x7F)
    {
      goto LABEL_50;
    }
  }

  else if (v26 <= 0x7F)
  {
LABEL_50:
    *(result + 1) = v26;
    v27 = result + 2;
    goto LABEL_53;
  }

  v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, result + 1, a3);
LABEL_53:
  v28 = *(v25 + 23);
  if (v28 >= 0)
  {
    v29 = v25;
  }

  else
  {
    v29 = *v25;
  }

  if (v28 >= 0)
  {
    v30 = *(v25 + 23);
  }

  else
  {
    v30 = *(v25 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v29, v30, v27, a4);
  v16 = *(this + 22);
  if ((v16 & 0x80) == 0)
  {
LABEL_23:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_24;
    }

LABEL_72:
    v37 = *(this + 18);
    *result = 72;
    if (v37 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, result + 1, a3);
      v17 = *(this + 22);
      if ((v17 & 0x200) != 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      *(result + 1) = v37;
      result = (result + 2);
      v17 = *(this + 22);
      if ((v17 & 0x200) != 0)
      {
        goto LABEL_76;
      }
    }

LABEL_25:
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_26;
    }

LABEL_88:
    v44 = *(this + 19);
    *result = 88;
    if (v44 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, result + 1, a3);
      if ((*(this + 89) & 8) != 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
      *(result + 1) = v44;
      result = (result + 2);
      if ((*(this + 89) & 8) != 0)
      {
        goto LABEL_92;
      }
    }

LABEL_27:
    v20 = *(this + 1);
    v19 = (this + 8);
    v18 = v20;
    if (!v20)
    {
      return result;
    }

    goto LABEL_28;
  }

LABEL_60:
  v31 = *(this + 7);
  *result = 66;
  v32 = *(v31 + 23);
  if ((v32 & 0x8000000000000000) != 0)
  {
    v32 = *(v31 + 8);
    if (v32 <= 0x7F)
    {
      goto LABEL_62;
    }
  }

  else if (v32 <= 0x7F)
  {
LABEL_62:
    *(result + 1) = v32;
    v33 = result + 2;
    goto LABEL_65;
  }

  v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, result + 1, a3);
LABEL_65:
  v34 = *(v31 + 23);
  if (v34 >= 0)
  {
    v35 = v31;
  }

  else
  {
    v35 = *v31;
  }

  if (v34 >= 0)
  {
    v36 = *(v31 + 23);
  }

  else
  {
    v36 = *(v31 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v35, v36, v33, a4);
  if ((*(this + 22) & 0x100) != 0)
  {
    goto LABEL_72;
  }

LABEL_24:
  v17 = *(this + 22);
  if ((v17 & 0x200) == 0)
  {
    goto LABEL_25;
  }

LABEL_76:
  v38 = *(this + 8);
  *result = 82;
  v39 = *(v38 + 23);
  if ((v39 & 0x8000000000000000) != 0)
  {
    v39 = *(v38 + 8);
    if (v39 <= 0x7F)
    {
      goto LABEL_78;
    }
  }

  else if (v39 <= 0x7F)
  {
LABEL_78:
    *(result + 1) = v39;
    v40 = result + 2;
    goto LABEL_81;
  }

  v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v39, result + 1, a3);
LABEL_81:
  v41 = *(v38 + 23);
  if (v41 >= 0)
  {
    v42 = v38;
  }

  else
  {
    v42 = *v38;
  }

  if (v41 >= 0)
  {
    v43 = *(v38 + 23);
  }

  else
  {
    v43 = *(v38 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v42, v43, v40, a4);
  if ((*(this + 22) & 0x400) != 0)
  {
    goto LABEL_88;
  }

LABEL_26:
  if ((*(this + 89) & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_92:
  v45 = *(this + 20);
  *result = 96;
  v46 = result + 1;
  if ((v45 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v45, v46, a3);
    v48 = *(this + 1);
    v19 = (this + 8);
    v18 = v48;
    if (!v48)
    {
      return result;
    }
  }

  else if (v45 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v46, a3);
    v49 = *(this + 1);
    v19 = (this + 8);
    v18 = v49;
    if (!v49)
    {
      return result;
    }
  }

  else
  {
    *(result + 1) = v45;
    result = (result + 2);
    v47 = *(this + 1);
    v19 = (this + 8);
    v18 = v47;
    if (!v47)
    {
      return result;
    }
  }

LABEL_28:
  if (*v18 != v18[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v19, result, a3);
  }

  return result;
}

uint64_t sub_10034929C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) != 0)
    {
      v4 = 9;
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 4) == 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    v13 = *(a1 + 32);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
      v3 = *(a1 + 88);
    }

    else
    {
      v14 = 2;
    }

    v4 = (v14 + v4);
    goto LABEL_26;
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
    v3 = *(a1 + 88);
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

  v12 = v10 + v6;
  if ((v3 & 2) != 0)
  {
    v4 = v12 + 9;
  }

  else
  {
    v4 = v12;
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  if ((v3 & 8) != 0)
  {
    v15 = *(a1 + 36);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      v3 = *(a1 + 88);
      v4 = (v16 + 1 + v4);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_28:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_41:
    v19 = *(a1 + 44);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
      v3 = *(a1 + 88);
      v4 = (v20 + 1 + v4);
      if ((v3 & 0x40) != 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x40) != 0)
      {
        goto LABEL_45;
      }
    }

LABEL_30:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_54;
  }

  if ((v3 & 0x10) == 0)
  {
    goto LABEL_28;
  }

LABEL_37:
  v17 = *(a1 + 40);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
    v3 = *(a1 + 88);
    v4 = (v18 + 1 + v4);
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v4 = (v4 + 2);
    if ((v3 & 0x20) != 0)
    {
      goto LABEL_41;
    }
  }

LABEL_29:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_45:
  v21 = *(a1 + 48);
  v22 = *(v21 + 23);
  v23 = v22;
  v24 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v25 = *(v21 + 23);
  }

  else
  {
    v25 = v24;
  }

  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
    v22 = *(v21 + 23);
    v24 = *(v21 + 8);
    v3 = *(a1 + 88);
    v23 = *(v21 + 23);
  }

  else
  {
    v26 = 1;
  }

  if (v23 < 0)
  {
    v22 = v24;
  }

  v4 = (v4 + v26 + v22 + 1);
  if ((v3 & 0x80) == 0)
  {
LABEL_31:
    if ((v3 & 0xFF00) == 0)
    {
      goto LABEL_67;
    }

LABEL_63:
    if ((v3 & 0x100) == 0)
    {
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_65;
      }

LABEL_73:
      v38 = *(a1 + 64);
      v39 = *(v38 + 23);
      v40 = v39;
      v41 = *(v38 + 8);
      if ((v39 & 0x80u) == 0)
      {
        v42 = *(v38 + 23);
      }

      else
      {
        v42 = v41;
      }

      if (v42 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42, a2);
        v39 = *(v38 + 23);
        v41 = *(v38 + 8);
        v3 = *(a1 + 88);
        v40 = *(v38 + 23);
      }

      else
      {
        v43 = 1;
      }

      if (v40 < 0)
      {
        v39 = v41;
      }

      v4 = (v4 + v43 + v39 + 1);
      if ((v3 & 0x400) == 0)
      {
LABEL_66:
        if ((v3 & 0x800) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_86;
      }

LABEL_82:
      v44 = *(a1 + 76);
      if (v44 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2) + 1 + v4;
        if ((*(a1 + 88) & 0x800) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v4 = (v4 + 2);
        if ((v3 & 0x800) == 0)
        {
          goto LABEL_67;
        }
      }

LABEL_86:
      v45 = *(a1 + 80);
      if ((v45 & 0x80000000) != 0)
      {
        v4 = (v4 + 11);
        v33 = (a1 + 8);
        v34 = *(a1 + 8);
        if (!v34)
        {
          goto LABEL_68;
        }
      }

      else if (v45 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45, a2) + 1 + v4;
        v33 = (a1 + 8);
        v34 = *(a1 + 8);
        if (!v34)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v4 = (v4 + 2);
        v33 = (a1 + 8);
        v34 = *(a1 + 8);
        if (!v34)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_93;
    }

    v36 = *(a1 + 72);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
      v3 = *(a1 + 88);
      v4 = (v37 + 1 + v4);
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v4 = (v4 + 2);
      if ((v3 & 0x200) != 0)
      {
        goto LABEL_73;
      }
    }

LABEL_65:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_82;
  }

LABEL_54:
  v27 = *(a1 + 56);
  v28 = *(v27 + 23);
  v29 = v28;
  v30 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v31 = *(v27 + 23);
  }

  else
  {
    v31 = v30;
  }

  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
    v28 = *(v27 + 23);
    v30 = *(v27 + 8);
    v3 = *(a1 + 88);
    v29 = *(v27 + 23);
  }

  else
  {
    v32 = 1;
  }

  if (v29 < 0)
  {
    v28 = v30;
  }

  v4 = (v4 + v32 + v28 + 1);
  if ((v3 & 0xFF00) != 0)
  {
    goto LABEL_63;
  }

LABEL_67:
  v33 = (a1 + 8);
  v34 = *(a1 + 8);
  if (!v34)
  {
LABEL_68:
    *(a1 + 84) = v4;
    return v4;
  }

LABEL_93:
  if (*v34 == v34[1])
  {
    goto LABEL_68;
  }

  v46 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v33, a2) + v4;
  *(a1 + 84) = v46;
  return v46;
}

uint64_t sub_100349644(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100347E0C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100349724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100349738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034974C(uint64_t result, uint64_t a2)
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

uint64_t sub_1003497E0()
{
  v0 = qword_10045DA38;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10034136C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045DA00;
}

void sub_100349870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100349884(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 60))
  {
    v7 = *(a2 + 16);
    *(a1 + 60) |= 1u;
    v8 = *(a1 + 16);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 60);
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

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 24);
  *(a1 + 60) |= 2u;
  v10 = *(a1 + 24);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v13 = *(a2 + 40);
    *(a1 + 60) |= 8u;
    *(a1 + 40) = v13;
    if ((*(a2 + 60) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_9;
  }

LABEL_17:
  v11 = *(a2 + 32);
  *(a1 + 60) |= 4u;
  v12 = *(a1 + 32);
  if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  v4 = *(a2 + 60);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 48);
    *(a1 + 60) |= 0x10u;
    *(a1 + 48) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100349A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100349A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100349A78(void *result)
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

  v3 = result[3];
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v5 = result[4];
  if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  return result;
}

void sub_100349B78(void *a1)
{
  *a1 = off_10044AC00;
  v2 = (a1 + 1);
  sub_100349A78(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100349BD8(void *a1)
{
  *a1 = off_10044AC00;
  v2 = (a1 + 1);
  sub_100349A78(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100349CEC(uint64_t a1)
{
  if (!*(a1 + 60))
  {
    goto LABEL_19;
  }

  if ((*(a1 + 60) & 1) == 0 || (v1 = *(a1 + 16), v1 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_6:
    if ((*(a1 + 60) & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    *v1 = 0;
    *(v1 + 23) = 0;
    goto LABEL_6;
  }

  **v1 = 0;
  *(v1 + 8) = 0;
  if ((*(a1 + 60) & 2) != 0)
  {
LABEL_7:
    v2 = *(a1 + 24);
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

LABEL_13:
  if ((*(a1 + 60) & 4) != 0)
  {
    v3 = *(a1 + 32);
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

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
LABEL_19:
  v5 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 13) = 0;
  if (v5)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100349DB4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_39;
          }

          *(a1 + 60) |= 2u;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        if (v9 != 2)
        {
          goto LABEL_39;
        }

        *(a1 + 60) |= 1u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 18)
        {
          *(this + 1) = v14 + 1;
          *(a1 + 60) |= 2u;
          if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
LABEL_17:
            operator new();
          }

LABEL_18:
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v11 = *(this + 1);
          if (v11 < *(this + 2) && *v11 == 26)
          {
            *(this + 1) = v11 + 1;
LABEL_23:
            *(a1 + 60) |= 4u;
            if (*(a1 + 32) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 33)
            {
              *(this + 1) = v12 + 1;
              goto LABEL_30;
            }
          }
        }
      }

      if (v8 == 3)
      {
        if (v9 != 2)
        {
          goto LABEL_39;
        }

        goto LABEL_23;
      }

      if (v8 == 4)
      {
        break;
      }

      if (v8 == 5 && v9 == 1)
      {
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_34;
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

    if (v9 != 1)
    {
      goto LABEL_39;
    }

LABEL_30:
    v15 = 0;
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
    {
      return 0;
    }

    *(a1 + 40) = v15;
    *(a1 + 60) |= 8u;
    v13 = *(this + 1);
    if (v13 < *(this + 2) && *v13 == 41)
    {
      *(this + 1) = v13 + 1;
      v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      *(a1 + 48) = v15;
      *(a1 + 60) |= 0x10u;
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

uint64_t sub_10034A0E8(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 60);
  if (v5)
  {
    v9 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v5 = *(v4 + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v4 + 24);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v11 = *(v4 + 32);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v5 = *(v4 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 40), a3);
  if ((*(v4 + 60) & 0x10) == 0)
  {
LABEL_6:
    v8 = *(v4 + 8);
    v7 = (v4 + 8);
    v6 = v8;
    if (!v8)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v4 + 48), a3);
  v12 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v12;
  if (!v12)
  {
    return result;
  }

LABEL_13:
  if (*v6 != v6[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10034A1D8(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 15);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_20;
  }

  v10 = *(this + 2);
  *a2 = 10;
  v11 = a2 + 1;
  v12 = *(v10 + 23);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v12 = *(v10 + 8);
    if (v12 <= 0x7F)
    {
      goto LABEL_10;
    }
  }

  else if (v12 <= 0x7F)
  {
LABEL_10:
    *(v4 + 1) = v12;
    v13 = v4 + 2;
    goto LABEL_13;
  }

  v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
LABEL_13:
  v14 = *(v10 + 23);
  if (v14 >= 0)
  {
    v15 = v10;
  }

  else
  {
    v15 = *v10;
  }

  if (v14 >= 0)
  {
    v16 = *(v10 + 23);
  }

  else
  {
    v16 = *(v10 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v15, v16, v13, a4);
  v6 = *(this + 15);
  if ((v6 & 2) == 0)
  {
LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

LABEL_20:
  v17 = *(this + 3);
  *v4 = 18;
  v18 = *(v17 + 23);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v18 = *(v17 + 8);
    if (v18 <= 0x7F)
    {
      goto LABEL_22;
    }
  }

  else if (v18 <= 0x7F)
  {
LABEL_22:
    *(v4 + 1) = v18;
    v19 = v4 + 2;
    goto LABEL_25;
  }

  v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
LABEL_25:
  v20 = *(v17 + 23);
  if (v20 >= 0)
  {
    v21 = v17;
  }

  else
  {
    v21 = *v17;
  }

  if (v20 >= 0)
  {
    v22 = *(v17 + 23);
  }

  else
  {
    v22 = *(v17 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v21, v22, v19, a4);
  v6 = *(this + 15);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_32:
  v23 = *(this + 4);
  *v4 = 26;
  v24 = *(v23 + 23);
  if ((v24 & 0x8000000000000000) != 0)
  {
    v24 = *(v23 + 8);
    if (v24 <= 0x7F)
    {
      goto LABEL_34;
    }
  }

  else if (v24 <= 0x7F)
  {
LABEL_34:
    *(v4 + 1) = v24;
    v25 = v4 + 2;
    goto LABEL_37;
  }

  v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v24, v4 + 1, a3);
LABEL_37:
  v26 = *(v23 + 23);
  if (v26 >= 0)
  {
    v27 = v23;
  }

  else
  {
    v27 = *v23;
  }

  if (v26 >= 0)
  {
    v28 = *(v23 + 23);
  }

  else
  {
    v28 = *(v23 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v27, v28, v25, a4);
  v6 = *(this + 15);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  v29 = *(this + 5);
  *v4 = 33;
  *(v4 + 1) = v29;
  v4 = (v4 + 9);
  if ((*(this + 15) & 0x10) == 0)
  {
LABEL_6:
    v9 = *(this + 1);
    v8 = (this + 8);
    v7 = v9;
    if (!v9)
    {
      return v4;
    }

    goto LABEL_46;
  }

LABEL_45:
  v30 = *(this + 6);
  *v4 = 41;
  *(v4 + 1) = v30;
  v4 = (v4 + 9);
  v31 = *(this + 1);
  v8 = (this + 8);
  v7 = v31;
  if (!v31)
  {
    return v4;
  }

LABEL_46:
  if (*v7 == v7[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v4, a3);
}

uint64_t sub_10034A440(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 60);
  if (v3)
  {
    if ((*(a1 + 60) & 1) == 0)
    {
      v4 = 0;
      if ((*(a1 + 60) & 2) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    v9 = *(a1 + 16);
    v10 = *(v9 + 23);
    if ((v10 & 0x80u) == 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      v13 = *(v9 + 23);
      v3 = *(a1 + 60);
      if (*(v9 + 23) < 0)
      {
        v13 = *(v9 + 8);
      }

      v4 = v12 + 1 + v13;
      if ((v3 & 2) == 0)
      {
LABEL_27:
        if ((v3 & 4) != 0)
        {
          v20 = *(a1 + 32);
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
            v3 = *(a1 + 60);
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

          v4 += v25 + v21 + 1;
        }

        v26 = v4 + 9;
        if ((v3 & 8) == 0)
        {
          v26 = v4;
        }

        if ((v3 & 0x10) != 0)
        {
          v5 = v26 + 9;
        }

        else
        {
          v5 = v26;
        }

        v6 = (a1 + 8);
        v7 = *(a1 + 8);
        if (!v7)
        {
          goto LABEL_6;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v9 + 8);
      }

      v4 = v10 + 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_18:
    v14 = *(a1 + 24);
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
      v3 = *(a1 + 60);
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

    v4 += v19 + v15 + 1;
    goto LABEL_27;
  }

  v5 = 0;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (!v7)
  {
LABEL_6:
    *(a1 + 56) = v5;
    return v5;
  }

LABEL_43:
  if (*v7 == v7[1])
  {
    goto LABEL_6;
  }

  v27 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 56) = v27;
  return v27;
}

uint64_t sub_10034A5FC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100349884(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10034A6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10034A6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034A704(uint64_t result, uint64_t a2)
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

uint64_t sub_10034A798()
{
  v0 = qword_10045DA38;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10034136C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045DA10;
}

void sub_10034A828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034A83C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), *(a2 + 32) + *(a1 + 32));
  if (*(a2 + 32) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 24) + 8 * v5);
        v10 = *(a1 + 36);
        v11 = *(a1 + 32);
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 24);
        *(a1 + 32) = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 32))
        {
          goto LABEL_11;
        }
      }

      if (v10 == *(a1 + 40))
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v10 + 1);
        v10 = *(a1 + 36);
      }

      *(a1 + 36) = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
      *(a1 + 32) = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 32));
  }

LABEL_11:
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56), *(a2 + 64) + *(a1 + 64));
  if (*(a2 + 64) >= 1)
  {
    v13 = 0;
    do
    {
      v15 = *(*(a2 + 56) + 8 * v13);
      v16 = *(a1 + 68);
      v17 = *(a1 + 64);
      if (v17 >= v16)
      {
        if (v16 == *(a1 + 72))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56), v16 + 1);
          v16 = *(a1 + 68);
        }

        *(a1 + 68) = v16 + 1;
        operator new();
      }

      v14 = *(a1 + 56);
      *(a1 + 64) = v17 + 1;
      sub_100349884(*(v14 + 8 * v17), v15);
      ++v13;
    }

    while (v13 < *(a2 + 64));
  }

  LOBYTE(v18) = *(a2 + 84);
  if (v18)
  {
    if (*(a2 + 84))
    {
      v19 = *(a2 + 16);
      *(a1 + 84) |= 1u;
      v20 = *(a1 + 16);
      if (v20 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      std::string::operator=(v20, v19);
      v18 = *(a2 + 84);
    }

    if ((v18 & 4) != 0)
    {
      *(a1 + 84) |= 4u;
      v21 = *(a1 + 48);
      if (!v21)
      {
        operator new();
      }

      v22 = *(a2 + 48);
      if (!v22)
      {
        v22 = *(qword_100471D20 + 48);
      }

      sub_100345C70(v21, v22);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10034ABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10034AC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10034AC38(uint64_t a1)
{
  *a1 = off_10044ACB0;
  v2 = *(a1 + 16);
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_100471D20 != a1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = *(a1 + 68);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 56) + 8 * i);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(a1 + 68);
      }
    }
  }

  if (*(a1 + 56))
  {
    operator delete[]();
  }

  if (*(a1 + 36) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a1 + 24) + 8 * v8);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v8;
    }

    while (v8 < *(a1 + 36));
  }

  if (*(a1 + 24))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10034ADD0(uint64_t a1)
{
  sub_10034AC38(a1);

  operator delete();
}

uint64_t sub_10034AEC0(uint64_t this)
{
  v1 = this;
  if (!*(this + 84))
  {
    goto LABEL_9;
  }

  if (*(this + 84))
  {
    v2 = *(this + 16);
    if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((*(this + 84) & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_7;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((*(this + 84) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  this = *(this + 48);
  if (this)
  {
    this = sub_100346350(this);
  }

LABEL_9:
  if (*(v1 + 32) >= 1)
  {
    v3 = 0;
    do
    {
      while (1)
      {
        v4 = *(*(v1 + 24) + 8 * v3);
        if (*(v4 + 23) < 0)
        {
          break;
        }

        *v4 = 0;
        *(v4 + 23) = 0;
        if (++v3 >= *(v1 + 32))
        {
          goto LABEL_14;
        }
      }

      **v4 = 0;
      *(v4 + 8) = 0;
      ++v3;
    }

    while (v3 < *(v1 + 32));
  }

LABEL_14:
  *(v1 + 32) = 0;
  if (*(v1 + 64) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v1 + 56) + 8 * v5);
      this = (*(*v6 + 32))(v6);
      ++v5;
    }

    while (v5 < *(v1 + 64));
  }

  v8 = *(v1 + 8);
  v7 = (v1 + 8);
  *(v7 + 14) = 0;
  *(v7 + 19) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
  }

  return this;
}

uint64_t sub_10034B014(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v6 = *(this + 1);
        if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          v7 = result;
          *(this + 8) = result;
          if (!result)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = v7;
          *(this + 1) = v6 + 1;
          if (!v7)
          {
            return 1;
          }
        }

        v8 = v7 >> 3;
        v9 = v7 & 7;
        if (v7 >> 3 > 2)
        {
          break;
        }

        if (v8 != 1)
        {
          if (v8 == 2 && v9 == 2)
          {
            v10 = *(v5 + 36);
            v11 = *(v5 + 32);
            if (v11 < v10)
            {
              goto LABEL_12;
            }

            goto LABEL_31;
          }

          goto LABEL_27;
        }

        if (v9 != 2)
        {
          goto LABEL_27;
        }

        *(v5 + 84) |= 1u;
        if (*(v5 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        if (v18 < *(this + 2) && *v18 == 18)
        {
          while (1)
          {
            *(this + 1) = v18 + 1;
            v10 = *(v5 + 36);
            v11 = *(v5 + 32);
            if (v11 < v10)
            {
LABEL_12:
              v12 = *(v5 + 24);
              *(v5 + 32) = v11 + 1;
              v13 = *(v12 + 8 * v11);
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              goto LABEL_34;
            }

LABEL_31:
            if (v10 == *(v5 + 40))
            {
              result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24), v10 + 1);
              v10 = *(v5 + 36);
            }

            *(v5 + 36) = v10 + 1;
            v19 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
            v20 = *(v5 + 24);
            v21 = *(v5 + 32);
            *(v5 + 32) = v21 + 1;
            *(v20 + 8 * v21) = v19;
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

LABEL_34:
            v18 = *(this + 1);
            if (v18 >= *(this + 2))
            {
              break;
            }

            v22 = *v18;
            if (v22 != 18)
            {
              if (v22 != 26)
              {
                goto LABEL_2;
              }

              *(this + 1) = v18 + 1;
              goto LABEL_38;
            }
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_27;
      }

LABEL_38:
      *(v5 + 84) |= 4u;
      v23 = *(v5 + 48);
      if (!v23)
      {
        operator new();
      }

      v43 = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
        {
          return 0;
        }
      }

      else
      {
        v43 = *v24;
        *(this + 1) = v24 + 1;
      }

      v25 = *(this + 14);
      v26 = *(this + 15);
      *(this + 14) = v25 + 1;
      if (v25 >= v26)
      {
        return 0;
      }

      v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
      if (!sub_100346464(v23, this, v28, v29) || *(this + 36) != 1)
      {
        return 0;
      }

      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
      v30 = *(this + 14);
      v31 = __OFSUB__(v30, 1);
      v32 = v30 - 1;
      if (v32 < 0 == v31)
      {
        *(this + 14) = v32;
      }

      v33 = *(this + 1);
      if (v33 < *(this + 2) && *v33 == 34)
      {
        do
        {
          *(this + 1) = v33 + 1;
          v14 = *(v5 + 68);
          v15 = *(v5 + 64);
          if (v15 >= v14)
          {
LABEL_52:
            if (v14 == *(v5 + 72))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 56), v14 + 1);
              v14 = *(v5 + 68);
            }

            *(v5 + 68) = v14 + 1;
            operator new();
          }

LABEL_18:
          v16 = *(v5 + 56);
          *(v5 + 64) = v15 + 1;
          v17 = *(v16 + 8 * v15);
          v44 = 0;
          v34 = *(this + 1);
          if (v34 >= *(this + 2) || *v34 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v34;
            *(this + 1) = v34 + 1;
          }

          v35 = *(this + 14);
          v36 = *(this + 15);
          *(this + 14) = v35 + 1;
          if (v35 >= v36)
          {
            return 0;
          }

          v37 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
          if (!sub_100349DB4(v17, this, v38, v39) || *(this + 36) != 1)
          {
            return 0;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v37);
          v40 = *(this + 14);
          v31 = __OFSUB__(v40, 1);
          v41 = v40 - 1;
          if (v41 < 0 == v31)
          {
            *(this + 14) = v41;
          }

          v33 = *(this + 1);
          v42 = *(this + 2);
        }

        while (v33 < v42 && *v33 == 34);
        if (v33 == v42 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 4 && v9 == 2)
    {
      v14 = *(v5 + 68);
      v15 = *(v5 + 64);
      if (v15 >= v14)
      {
        goto LABEL_52;
      }

      goto LABEL_18;
    }

LABEL_27:
    if (v9 == 4)
    {
      return 1;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
    if ((result & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10034B570(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 84))
  {
    v6 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v5 + 24) + 8 * v7);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v7;
    }

    while (v7 < *(v5 + 32));
  }

  if ((*(v5 + 84) & 4) != 0)
  {
    v9 = *(v5 + 48);
    if (!v9)
    {
      v9 = *(qword_100471D20 + 48);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v9, a2, a4);
  }

  if (*(v5 + 64) >= 1)
  {
    v10 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(*(v5 + 56) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 64));
  }

  v13 = *(v5 + 8);
  v12 = (v5 + 8);
  v11 = v13;
  if (v13 && *v11 != v11[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v12, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10034B680(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((*(this + 84) & 1) == 0)
  {
    result = a2;
    if (*(this + 8) < 1)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  v6 = *(this + 2);
  *a2 = 10;
  v8 = a2 + 1;
  v9 = *(v6 + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v9 = *(v6 + 8);
    if (v9 <= 0x7F)
    {
      goto LABEL_6;
    }
  }

  else if (v9 <= 0x7F)
  {
LABEL_6:
    *(a2 + 1) = v9;
    v10 = a2 + 2;
    goto LABEL_9;
  }

  v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
LABEL_9:
  v11 = *(v6 + 23);
  if (v11 >= 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *v6;
  }

  if (v11 >= 0)
  {
    v13 = *(v6 + 23);
  }

  else
  {
    v13 = *(v6 + 8);
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
  if (*(this + 8) >= 1)
  {
LABEL_16:
    for (i = 0; i < *(this + 8); ++i)
    {
      v19 = *(*(this + 3) + 8 * i);
      *result = 18;
      v20 = *(v19 + 23);
      if ((v20 & 0x8000000000000000) != 0)
      {
        v20 = *(v19 + 8);
        if (v20 > 0x7F)
        {
LABEL_29:
          v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, result + 1, a3);
          goto LABEL_18;
        }
      }

      else if (v20 > 0x7F)
      {
        goto LABEL_29;
      }

      *(result + 1) = v20;
      v15 = result + 2;
LABEL_18:
      v16 = *(v19 + 23);
      if (v16 >= 0)
      {
        v17 = v19;
      }

      else
      {
        v17 = *v19;
      }

      if (v16 >= 0)
      {
        v18 = *(v19 + 23);
      }

      else
      {
        v18 = *(v19 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v17, v18, v15, a4);
    }
  }

LABEL_30:
  if ((*(this + 84) & 4) == 0)
  {
    goto LABEL_37;
  }

  v21 = *(this + 6);
  if (!v21)
  {
    v21 = *(qword_100471D20 + 48);
    *result = 26;
    v22 = result + 1;
    v23 = v21[27];
    if (v23 <= 0x7F)
    {
      goto LABEL_33;
    }

LABEL_35:
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v22, a3);
    goto LABEL_36;
  }

  *result = 26;
  v22 = result + 1;
  v23 = v21[27];
  if (v23 > 0x7F)
  {
    goto LABEL_35;
  }

LABEL_33:
  *(result + 1) = v23;
  v24 = (result + 2);
LABEL_36:
  result = sub_1003472D0(v21, v24, a3, a4);
LABEL_37:
  if (*(this + 16) >= 1)
  {
    v25 = 0;
    do
    {
      v27 = *(*(this + 7) + 8 * v25);
      *result = 34;
      v28 = *(v27 + 14);
      if (v28 <= 0x7F)
      {
        *(result + 1) = v28;
        v26 = (result + 2);
      }

      else
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v27 + 14), result + 1, a3);
      }

      result = sub_10034A1D8(v27, v26, a3, a4);
      ++v25;
    }

    while (v25 < *(this + 16));
  }

  v31 = *(this + 1);
  v30 = (this + 8);
  v29 = v31;
  if (v31 && *v29 != v29[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v30, result, a3);
  }

  return result;
}

uint64_t sub_10034B8C0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 84);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 84) & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_17:
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = sub_1003477DC(v10, a2);
      if (v11 < 0x80)
      {
LABEL_19:
        v12 = 1;
LABEL_22:
        v4 += v11 + v12 + 1;
        goto LABEL_23;
      }
    }

    else
    {
      v11 = sub_1003477DC(*(qword_100471D20 + 48), a2);
      if (v11 < 0x80)
      {
        goto LABEL_19;
      }
    }

    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    goto LABEL_22;
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = *(v5 + 23);
  }

  else
  {
    v7 = *(v5 + 8);
  }

  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
    v9 = *(v5 + 23);
    if (*(v5 + 23) < 0)
    {
      v9 = *(v5 + 8);
    }

    v4 = v8 + 1 + v9;
    if ((*(a1 + 84) & 4) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v5 + 8);
    }

    v4 = v6 + 2;
    if ((v3 & 4) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_23:
  v13 = *(a1 + 32);
  v14 = v13 + v4;
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v18 = *(*(a1 + 24) + 8 * i);
      v17 = *(v18 + 23);
      v19 = v17;
      v20 = *(v18 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v21 = *(v18 + 23);
      }

      else
      {
        v21 = v20;
      }

      if (v21 < 0x80)
      {
        v16 = 1;
      }

      else
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
        v17 = *(v18 + 23);
        v20 = *(v18 + 8);
        v13 = *(a1 + 32);
        v19 = *(v18 + 23);
      }

      if (v19 < 0)
      {
        v17 = v20;
      }

      v14 += v16 + v17;
    }
  }

  v22 = *(a1 + 64);
  v23 = (v22 + v14);
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v26 = sub_10034A440(*(*(a1 + 56) + 8 * v24), a2);
      v27 = v26;
      if (v26 < 0x80)
      {
        v25 = 1;
      }

      else
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
      }

      v23 = (v27 + v23 + v25);
      ++v24;
    }

    while (v24 < *(a1 + 64));
  }

  v28 = *(a1 + 8);
  if (v28 && *v28 != v28[1])
  {
    v23 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v23;
  }

  *(a1 + 80) = v23;
  return v23;
}

uint64_t sub_10034BAB8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10034A83C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10034BB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10034BBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034BBC0(uint64_t result, uint64_t a2)
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

uint64_t sub_10034BC4C(uint64_t a1)
{
  if ((*(a1 + 84) & 4) == 0)
  {
    return 1;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    v1 = *(qword_100471D20 + 48);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_10034BCAC()
{
  v0 = qword_10045DA38;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10034136C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045DA20;
}

void sub_10034BD3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034BD8C(unsigned __int16 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a4;
  if (v11 && fabs(((*(a2 + 240) - a5) / 1000000000)) <= 1.25)
  {
    v12 = *(a1 + 1);
    if (!(v12 % *a1))
    {
      v44 = 0u;
      memset(v45, 0, sizeof(v45));
      v43 = 0u;
      memset(v42, 0, sizeof(v42));
      v37 = v11;
      [v11 gpsLocation];
      v40[2] = 0;
      v40[0] = off_10043DB28;
      v40[1] = 0;
      v41 &= 0xFCu;
      sub_1001294D4(v40, *(v42 + 4));
      sub_1001294DC(v40, *(v42 + 12));
      v13 = *(&v42[1] + 4);
      v14 = v43;
      v15 = *(a2 + 296);
      v16 = objc_alloc_init(NSMutableDictionary);
      v46[0] = @"externalLocUnc";
      v17 = [NSNumber numberWithDouble:v13];
      v47[0] = v17;
      v46[1] = @"externalLocType";
      v18 = [NSNumber numberWithUnsignedInt:v14];
      v47[1] = v18;
      v46[2] = @"yieldStatus";
      v19 = [NSNumber numberWithInt:v15];
      v47[2] = v19;
      v46[3] = @"pipelinedLocType";
      v20 = [NSNumber numberWithUnsignedInt:a3];
      v47[3] = v20;
      v21 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:4];
      [v16 setDictionary:v21];

      if ((*(a2 + 755) & 4) != 0)
      {
        v22 = *(a2 + 48);
        v23 = *(a2 + 56);
        v24 = [NSNumber numberWithDouble:sub_1000BC490(a2 + 40, v40)];
        [v16 setObject:v24 forKey:@"distance"];

        v26 = [NSNumber numberWithDouble:*(a2 + 280)];
        [v16 setObject:v26 forKey:@"pipelinedUnc"];
      }

      v27 = [NSNumber numberWithDouble:*(a2 + 320)];
      [v16 setObject:v27 forKey:@"prbCoarseIndoorSaysIndoor"];

      if ((*(a2 + 757) & 2) != 0)
      {
        v28 = [NSNumber numberWithDouble:*(a2 + 560)];
        [v16 setObject:v28 forKey:@"signedDistToSurveyBound"];
      }

      v29 = *(a2 + 456);
      if ((v29 & 0x20) != 0)
      {
        v30 = [NSNumber numberWithDouble:*(a2 + 448)];
        [v16 setObject:v30 forKey:@"prbCoarseIndoorSaysIndoorWifiAndGps"];

        v29 = *(a2 + 456);
      }

      if ((v29 & 0x10) != 0)
      {
        v31 = [NSNumber numberWithDouble:*(a2 + 440)];
        [v16 setObject:v31 forKey:@"prbRawCLOutdoorServiceSaysIndoor"];

        v29 = *(a2 + 456);
      }

      if ((v29 & 8) != 0)
      {
        v32 = [NSNumber numberWithDouble:*(a2 + 432)];
        [v16 setObject:v32 forKey:@"prbZAxisSaysIndoor"];
      }

      v33 = *(a2 + 752);
      if ((v33 & 0x100000000000) != 0)
      {
        v34 = [NSNumber numberWithUnsignedInt:*(a2 + 608)];
        [v16 setObject:v34 forKey:@"yieldParticleFilterType"];

        v33 = *(a2 + 752);
      }

      if ((v33 & 0x80) != 0)
      {
        v35 = [NSNumber numberWithInt:*(a2 + 128)];
        [v16 setObject:v35 forKey:@"floorOrdinal"];
      }

      if (*a6)
      {
        sub_1001181E4(buf, (*a6 + 8));
      }

      v38 = v16;
      AnalyticsSendEventLazy();

      nullsub_76(v40);
      v12 = *(a1 + 1);
      v11 = v37;
    }

    *(a1 + 1) = v12 + 1;
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void sub_10034C4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  nullsub_76(&STACK[0x870]);

  _Unwind_Resume(a1);
}

void sub_10034C620(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

void sub_10034C664()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10034C6D4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10034C744()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10034C834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = IndoorServiceTransactionManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_10034D0D0()
{
  if (qword_10045B070 == -1)
  {
    v1 = qword_10045B078;
  }

  else
  {
    sub_100387AA8();
    v1 = qword_10045B078;
  }

  return v1;
}

void sub_10034D134(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_10034D178(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

void sub_10034D1BC(float a1, uint64_t a2, uint64_t a3)
{
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = 2082;
}

void sub_10034D338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10034D454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_10034D4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10034D83C(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void sub_10034D9AC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

double sub_10034D9F0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 48);
  result = (a2 + *(a1 + 56) * v2) / (v2 + 1.0);
  *(a1 + 56) = result;
  *(a1 + 48) = v2 + 1;
  return result;
}

uint64_t sub_10034DA20(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (!v2)
  {
    *(result + 24) = *(a2 + 240) - *(result + 8);
  }

  *(result + 40) = (*(a2 + 280) + *(result + 40) * v2) / (v2 + 1.0);
  *(result + 32) = v2 + 1;
  if (!*(a2 + 524))
  {
    ++*(result + 36);
  }

  return result;
}

uint64_t sub_10034DAA8(uint64_t a1)
{
  v2 = (*(a1 + 16) - *(a1 + 8)) / 1000000000.0;
  *(a1 + 24);
  *(a1 + 32);
  v3 = *(a1 + 36);
  *(a1 + 40);
  v4 = *(a1 + 48);
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = *(a1 + 56);
    }

    else if (v4 >= 3)
    {
      if (v4 >= 5)
      {
        *(a1 + 56);
      }

      else
      {
        v8 = *(a1 + 56);
      }
    }

    else
    {
      v7 = *(a1 + 56);
    }
  }

  else
  {
    v6 = *(a1 + 56);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = *(a1 + 68);
    }

    else if (v9 >= 3)
    {
      if (v9 >= 5)
      {
        *(a1 + 68);
      }

      else
      {
        v13 = *(a1 + 68);
      }
    }

    else
    {
      v12 = *(a1 + 68);
    }
  }

  else
  {
    v11 = *(a1 + 68);
  }

  v14 = *(a1 + 72);
  v15 = *(a1 + 76);
  v16 = *(a1 + 80);
  if (qword_10045B050 != -1)
  {
    sub_100387AD0();
  }

  v17 = qword_10045B058;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = (*(a1 + 16) - *(a1 + 8)) / 1000000000.0;
    *buf = 134351873;
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    v21 = *(a1 + 36);
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
    v26 = *(a1 + 68);
    v27 = *(a1 + 72);
    v28 = *(a1 + 76);
    v29 = *(a1 + 80);
    v32 = v18;
    v33 = 2050;
    v34 = v19 / 1000000000.0;
    v35 = 1026;
    v36 = v20;
    v37 = 1026;
    v38 = v21;
    v39 = 2050;
    v40 = v22;
    v41 = 1025;
    v42 = v23;
    v43 = 2049;
    v44 = v24;
    v45 = 1026;
    v46 = v25;
    v47 = 1026;
    v48 = v26;
    v49 = 1026;
    v50 = v27;
    v51 = 1025;
    v52 = v28;
    v53 = 2049;
    v54 = v29;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "LocalizationSessionStats, length, %{public}.3lf, ttff, %{public}.3lf, numOfFix, %{public}d, numOfIndoorFix, %{public}d, avgHAcc, %{public}.2lf, changeOfUniverse, %{private}d, avgNumOfSelectedLoc, %{private}.2lf, changeOfLocContext, %{public}d, numOfVL, %{public}d, numOfVIO, %{public}d, numOfWifiScan, %{private}d, avgNumApsPerScan, %{private}.2lf", buf, 0x5Eu);
  }

  AnalyticsSendEventLazy();
  return 1;
}

id sub_10034E52C(unsigned int *a1)
{
  v16[0] = @"sessionLength";
  v15 = [NSNumber numberWithInt:a1[8]];
  v17[0] = v15;
  v16[1] = @"ttff";
  v14 = [NSNumber numberWithInt:a1[9]];
  v17[1] = v14;
  v16[2] = @"numOfFixes";
  v13 = [NSNumber numberWithInt:a1[10]];
  v17[2] = v13;
  v16[3] = @"numOfIndoorFixes";
  v2 = [NSNumber numberWithInt:a1[11]];
  v17[3] = v2;
  v16[4] = @"avgHAcc";
  v3 = [NSNumber numberWithInt:a1[12]];
  v17[4] = v3;
  v16[5] = @"numOfUniverseChange";
  v4 = [NSNumber numberWithInt:a1[13]];
  v17[5] = v4;
  v16[6] = @"avgNumOfSelectedLocs";
  v5 = [NSNumber numberWithInt:a1[14]];
  v17[6] = v5;
  v16[7] = @"numOfLocContextChange";
  v6 = [NSNumber numberWithInt:a1[15]];
  v17[7] = v6;
  v16[8] = @"numOfVL";
  v7 = [NSNumber numberWithInt:a1[16]];
  v17[8] = v7;
  v16[9] = @"numOfVIO";
  v8 = [NSNumber numberWithInt:a1[17]];
  v17[9] = v8;
  v16[10] = @"numOfWifiScan";
  v9 = [NSNumber numberWithInt:a1[18]];
  v17[10] = v9;
  v16[11] = @"avgNumOfApsInWifiScan";
  v10 = [NSNumber numberWithInt:a1[19]];
  v17[11] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:12];

  return v11;
}

double sub_10034E870(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 76);
  result = ((0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3)) + *(a1 + 80) * v4) / (v4 + 1.0);
  *(a1 + 80) = result;
  *(a1 + 76) = v4 + 1;
  return result;
}

void sub_10034E948(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_10034E98C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10034E9FC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10034EA6C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10034EE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10034F180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  nullsub_76(&a9);
  nullsub_76(&a17);
  _Unwind_Resume(a1);
}

void sub_10034F1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  nullsub_76(va);
  _Unwind_Resume(a1);
}

void sub_10034F4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10034FA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10034FC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10034FD50(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

void sub_10034FD94()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10034FE04()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10034FE74()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100350D54(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

void sub_100350D98(uint64_t a1)
{
  if (qword_10045B070 != -1)
  {
    sub_100387B20();
    v2 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Connection invalidated", v4, 2u);
  }

LABEL_4:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExportedObject:0];
}

void sub_100350E6C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100350E94(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *(&v30.__r_.__value_.__s + 23) = 15;
  strcpy(&v30, "ActivityPolicy[");
  v4 = std::string::append(&v30, "interval=");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v29, *(a1 + 8));
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v29;
  }

  else
  {
    v6 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v31, v6, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v32, ",grace period=");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a1 + 24);
  v13 = *(a1 + 8) * 0.5;
  if (!*(a1 + 16))
  {
    v12 = *(a1 + 8) * 0.5;
  }

  std::to_string(&v28, v12);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v28;
  }

  else
  {
    v14 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v28.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v33, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v34, ",delay=");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = *(a1 + 40);
  v21 = *(a1 + 8) * 0.5;
  if (!*(a1 + 32))
  {
    v20 = *(a1 + 8) * 0.5;
  }

  std::to_string(&__p, v20);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = __p.__r_.__value_.__l.__size_;
  }

  v24 = std::string::append(&v35, p_p, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v36, " ]");
  *a2 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v35.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v34.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v32.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_31:
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v29.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_43:
    operator delete(v30.__r_.__value_.__l.__data_);
    return;
  }

LABEL_42:
  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_43;
  }
}

void sub_100351190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 41) < 0)
  {
    operator delete(*(v52 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v52 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v52 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v52 - 105) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v52 - 96));
  if ((*(v52 - 105) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v52 - 128));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a52 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a15);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a47);
  if ((a45 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a40);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a21);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a27);
  _Unwind_Resume(exception_object);
}

void sub_10035130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    JUMPOUT(0x1003512FCLL);
  }

  JUMPOUT(0x1003511E4);
}

_BYTE *sub_10035131C(_BYTE *result)
{
  if (result[32] == 1)
  {
    result[32] = 0;
    if (result[16] != 1)
    {
LABEL_3:
      if (*result != 1)
      {
        return result;
      }

LABEL_7:
      *result = 0;
      return result;
    }
  }

  else if (result[16] != 1)
  {
    goto LABEL_3;
  }

  result[16] = 0;
  if (*result == 1)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_10035161C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak((v16 - 56));
  _Unwind_Resume(a1);
}

void sub_100351654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 56));
  _Unwind_Resume(a1);
}

void sub_100351678(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_12;
  }

  state = xpc_activity_get_state(v3);
  if (!state)
  {
    if (qword_10045B070 == -1)
    {
      v7 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        [WeakRetained handleTileCleanupCheckIn:v3];
        goto LABEL_12;
      }
    }

    else
    {
      sub_100387B84();
      v7 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "@CtsClear, CHECK_IN", buf, 2u);
    goto LABEL_11;
  }

  if (state == 2)
  {
    if (qword_10045B070 == -1)
    {
      v6 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:
        [WeakRetained handleTileCleanup:v3];
        goto LABEL_12;
      }
    }

    else
    {
      sub_100387B84();
      v6 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }
    }

    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "@CtsClear, RUN", v8, 2u);
    goto LABEL_7;
  }

LABEL_12:
}

void sub_10035180C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_12;
  }

  state = xpc_activity_get_state(v3);
  if (!state)
  {
    if (qword_10045B070 == -1)
    {
      v7 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        [WeakRetained handleVacuumDBsCheckIn:v3];
        goto LABEL_12;
      }
    }

    else
    {
      sub_100387B84();
      v7 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "@CtsVacuum, CHECK_IN", buf, 2u);
    goto LABEL_11;
  }

  if (state == 2)
  {
    if (qword_10045B070 == -1)
    {
      v6 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:
        [WeakRetained handleVacuumDBs:v3];
        goto LABEL_12;
      }
    }

    else
    {
      sub_100387B84();
      v6 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }
    }

    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "@CtsVacuum, RUN", v8, 2u);
    goto LABEL_7;
  }

LABEL_12:
}

void sub_100351DC0(uint64_t a1, void *a2)
{
  xdict = a2;
  if (*a1 == 1)
  {
    xpc_dictionary_set_double(xdict, XPC_ACTIVITY_INTERVAL, *(a1 + 8));
  }

  if (*(a1 + 16) == 1)
  {
    xpc_dictionary_set_double(xdict, XPC_ACTIVITY_GRACE_PERIOD, *(a1 + 24));
  }

  if (*(a1 + 32) == 1)
  {
    xpc_dictionary_set_double(xdict, XPC_ACTIVITY_DELAY, *(a1 + 40));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, v3);
  }

  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    v5 = &XPC_ACTIVITY_REQUIRES_CLASS_B;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_14;
    }

    v5 = &XPC_ACTIVITY_REQUIRES_CLASS_C;
  }

  xpc_dictionary_set_BOOL(xdict, *v5, 1);
LABEL_14:
}

uint64_t sub_100351F14(uint64_t a1, void *a2)
{
  v6 = a2;
  v7 = xpc_dictionary_get_value(v6, XPC_ACTIVITY_INTERVAL);
  v8 = v7;
  if (v7)
  {
    value = xpc_double_get_value(v7);
  }

  v9 = xpc_dictionary_get_value(v6, XPC_ACTIVITY_GRACE_PERIOD);
  v10 = v9;
  if (v9)
  {
    v3 = xpc_double_get_value(v9);
  }

  v11 = xpc_dictionary_get_value(v6, XPC_ACTIVITY_DELAY);
  v12 = v11;
  if (v11)
  {
    v4 = xpc_double_get_value(v11);
  }

  string = xpc_dictionary_get_string(v6, XPC_ACTIVITY_PRIORITY);
  *a1 = 0;
  if (v8)
  {
    *(a1 + 8) = value;
    *a1 = 1;
  }

  *(a1 + 16) = 0;
  if (v10)
  {
    *(a1 + 24) = v3;
    *(a1 + 16) = 1;
  }

  *(a1 + 32) = 0;
  if (v12)
  {
    *(a1 + 40) = v4;
    *(a1 + 32) = 1;
  }

  *(a1 + 48) = string;
  *(a1 + 56) = 0;

  return a1;
}

void sub_100352298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_1003522CC(uint64_t a1)
{
  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B84();
    }

    v2 = qword_10045B078;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      state = xpc_activity_get_state(*(a1 + 32));
      v4 = 134349056;
      v5 = state;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to mark vacuum db activity as done.  current state is %{public}ld", &v4, 0xCu);
    }
  }
}

void sub_100352838(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

void sub_10035287C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003528EC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10035295C()
{
  v0 = objc_autoreleasePoolPush();
  qword_10045DA50 = 0x40E5180000000000;
  byte_10045DA48 = 1;
  byte_10045DA58 = 0;
  byte_10045DA68 = 0;
  qword_10045DA78 = XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  dword_10045DA80 = 2;
  __cxa_atexit(sub_10035131C, &byte_10045DA48, &_mh_execute_header);
  qword_10045DA90 = 0x411FA40000000000;
  byte_10045DA88 = 1;
  byte_10045DA98 = 0;
  byte_10045DAA8 = 0;
  qword_10045DAB8 = XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  dword_10045DAC0 = 2;
  __cxa_atexit(sub_10035131C, &byte_10045DA88, &_mh_execute_header);
  byte_10045DAC8 = 1;
  qword_10045DAD0 = 0x40C5180000000000;
  byte_10045DAD8 = 0;
  byte_10045DAE8 = 0;
  qword_10045DAF8 = XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  dword_10045DB00 = 2;
  __cxa_atexit(sub_10035131C, &byte_10045DAC8, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_100352D64(uint64_t a1)
{
  *a1 = off_10043A548;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 225) = 0u;
  *(a1 + 248) = off_10043A508;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) &= 0xF0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 288) = off_10043A528;
  *(a1 + 296) = a1 + 304;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 320) = 0;
  *(a1 + 348) &= 0xF8u;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 400) = 0;
  *(a1 + 402) = *(a1 + 402) & 0xFC | 1;
  sub_1000ED7A4();
}

void sub_10035315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10004D6EC(va);
  sub_10004A800(v5 - 48);
  sub_10002BB1C(v5 - 32);
  sub_1000E2BFC(v4);
  _Unwind_Resume(a1);
}

void sub_1003531BC(uint64_t a1)
{
  v2 = 20;
  strcpy(__p, "datarun_metadata.bin");
  if (*(a1 + 23) < 0)
  {
    sub_100003228(&v3, *a1, *(a1 + 8));
  }

  else
  {
    v3 = *a1;
  }

  sub_1000032E4(&v3, __p);
  if (v2 < 0)
  {
    operator delete(*__p);
  }

  sub_100352D64(__p);
}

void sub_1003534CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035358C(uint64_t a1, uint64_t a2, void *__src, int a4)
{
  v7 = __src[2];
  __n = v7;
  __srca[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(__srca, __src, v7);
    v13 = __n;
    v12[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v12, __srca, __n);
      __dst[2] = v13;
      __dst[0] = 0;
      if (v13 <= 0x10)
      {
        memcpy(__dst, v12, v13);
        v11 = a4;
        sub_100353E98(a1, a2, __dst);
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_100353760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    operator delete[]();
  }

  if (v17 >= 0x11)
  {
    if (a10)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003537B8(uint64_t a1, __int128 *a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003228(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "hybridlogger");
  if (*(a1 + 23) < 0)
  {
    sub_100003228((a1 + 24), *a1, *(a1 + 8));
  }

  else
  {
    *(a1 + 24) = *a1;
    *(a1 + 40) = *(a1 + 16);
  }

  sub_1000032E4((a1 + 24), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(&__p.__r_.__value_.__s + 23) = 11;
  strcpy(&__p, "unprocessed");
  if (*(a1 + 23) < 0)
  {
    sub_100003228((a1 + 48), *a1, *(a1 + 8));
  }

  else
  {
    *(a1 + 48) = *a1;
    *(a1 + 64) = *(a1 + 16);
  }

  sub_1000032E4((a1 + 48), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 72) = a3;
  sub_10001B06C(a1);
  if (!v6)
  {
    sub_1000474A4(v9, "");
    sub_1000E0488("Need absolute directory for datarundb", &__p);
    sub_1000E661C(v9, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }

    sub_10003F5D0(v8);
  }

  if (a3)
  {
    sub_100002F5C((a1 + 48), 0, &__p);
    if (LODWORD(__p.__r_.__value_.__l.__data_) == 3)
    {
      sub_100019390(a1 + 24, 0);
      goto LABEL_18;
    }

    sub_1000474A4(v9, "");
    sub_10023FCC4("Couldn't find unprocessed directory @ ", &__p);
    sub_100049000(a1 + 48, &v12);
    sub_1000E661C(v9, &__p, 2);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

LABEL_38:
        operator delete(v9[0]);
LABEL_32:
        sub_10003F5D0(v8);
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_38;
  }

LABEL_18:
  sub_100002F5C((a1 + 24), 0, &__p);
  if (LODWORD(__p.__r_.__value_.__l.__data_) != 3)
  {
    sub_1000474A4(v9, "");
    sub_10004A7B0("Couldn't find rootdir @ ", &__p);
    sub_100049000(a1 + 24, &v12);
    sub_1000E661C(v9, &__p, 2);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_27:
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_35:
        operator delete(v9[0]);
LABEL_28:
        sub_10003F5D0(v8);
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  return a1;
}

void sub_100353B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 + 71) < 0)
  {
    operator delete(*(v27 + 48));
  }

  if (*(v27 + 47) < 0)
  {
    operator delete(*(v27 + 24));
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100353C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v17 = 0;
  sub_100015910(&v17, a1 + 24, 0, v18);
  v16 = 0;
  v5 = v17;
  if (v17)
  {
    v6 = 0;
    do
    {
      if ((!v5 || v5[1] == v5[2]) && (!v6 || v6[1] == v6[2]))
      {
        break;
      }

      if ((v19 & 1) == 0 || (v19 == 1 ? (v9 = LODWORD(v18[0]) == 0) : (v9 = 0), v9))
      {
        sub_100014CD8(*(v5[2] - 1) + 8, 0, __p);
        if (LODWORD(__p[0]) == 3)
        {
          sub_10001B178((*(v17[2] - 1) + 8), v14);
          if (*(a2 + 23) < 0)
          {
            sub_100003228(__p, *a2, *(a2 + 8));
          }

          else
          {
            *__p = *a2;
            v13 = *(a2 + 16);
          }

          v10 = sub_10001A918(v14, __p);
          if (SHIBYTE(v13) < 0)
          {
            operator delete(__p[0]);
            if (v15 < 0)
            {
LABEL_24:
              operator delete(v14[0]);
              if (!v10)
              {
LABEL_28:
                sub_1003531BC(*(v17[2] - 1) + 8);
              }

              goto LABEL_25;
            }
          }

          else if (v15 < 0)
          {
            goto LABEL_24;
          }

          if (!v10)
          {
            goto LABEL_28;
          }
        }
      }

LABEL_25:
      sub_100015CA8(&v17, v18);
      v7 = v17;
      __p[0] = v17;
      if (v17)
      {
        atomic_fetch_add(v17, 1u);
        v7 = __p[0];
        v8 = v17;
      }

      else
      {
        v8 = 0;
      }

      __p[0] = v8;
      v17 = v7;
      sub_10010A3F8(__p);
      v6 = v16;
      v5 = v17;
    }

    while (v17 != v16);
  }

  sub_10010A3F8(&v16);
  result = sub_10010A3F8(&v17);
  *a3 = 0;
  return result;
}

void sub_100353E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  sub_10010A3F8(&a21);
  sub_10010A3F8((v21 - 64));
  _Unwind_Resume(a1);
}

void sub_100353E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = *(a3 + 16);
  v9[2] = v7;
  v9[0] = 0;
  if (v7 < 0x11)
  {
    memcpy(v9, a3, v7);
    v10 = *(a3 + 24);
    sub_100354388(v8, v5, v5 + v6, v9);
  }

  operator new[]();
}

void sub_100354240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void (***sub_1003542E8(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void (***sub_100354338(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void sub_100354388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  __n = v6;
  __src[0] = 0;
  if (v6 < 0x11)
  {
    memcpy(__src, a4, v6);
    v7 = *(a4 + 24);
    v10 = v7;
    v12 = __n;
    v11[0] = 0;
    if (__n < 0x11)
    {
      memcpy(v11, __src, __n);
      v13 = v7;
      *a1 = 0;
      v15 = v12;
      v14[0] = 0;
      if (v12 < 0x11)
      {
        memcpy(v14, v11, v12);
        v16 = v7;
        v18 = v15;
        v17[0] = 0;
        if (v15 < 0x11)
        {
          memcpy(v17, v14, v15);
          v19 = v7;
          v20[2] = v18;
          v20[0] = 0;
          if (v18 < 0x11)
          {
            memcpy(v20, v17, v18);
            v21 = v7;
            sub_1003547CC(off_10044B108, v20);
          }

          operator new[]();
        }

        operator new[]();
      }

      operator new[]();
    }

    operator new[]();
  }

  operator new[]();
}

void sub_1003546C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27)
{
  if (a21)
  {
    operator delete[]();
  }

  if (v29 >= 0x11 && a17)
  {
    operator delete[]();
  }

  if (v28 >= 0x11 && a13)
  {
    operator delete[]();
  }

  if (v27 >= 0x11)
  {
    if (a9)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

void (***sub_100354774(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void sub_1003547CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  __src[2] = v3;
  __src[0] = 0;
  if (v3 < 0x11)
  {
    memcpy(__src, a2, v3);
    v5 = *(a2 + 24);
    operator new();
  }

  operator new[]();
}

void *sub_10035496C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v17 = 0;
  v5 = *a2;
  if (*a2)
  {
    v17 = *a2;
    if (v5)
    {
      v18 = *(a2 + 8);
      v19 = *(a2 + 24);
    }

    else
    {
      v6 = a2;
      (*v5)(a2 + 8, &v18, 0);
      a2 = v6;
    }
  }

  v7 = *(a2 + 48);
  v20 = *(a2 + 32);
  v21 = v7;
  v22 = *(a2 + 64);
  v11 = 0;
  v8 = *a3;
  if (*a3)
  {
    v11 = *a3;
    if (v8)
    {
      v12 = *(a3 + 8);
      v13 = *(a3 + 24);
    }

    else
    {
      (*v8)(a3 + 8, &v12, 0);
    }
  }

  v9 = *(a3 + 48);
  v14 = *(a3 + 32);
  v15 = v9;
  v16 = *(a3 + 64);
  sub_100354B3C(a1, &v17, &v11);
  if (v11)
  {
    if ((v11 & 1) == 0 && *v11)
    {
      (*v11)(&v12, &v12, 2);
    }

    v11 = 0;
  }

  if (v17 && (v17 & 1) == 0 && *v17)
  {
    (*v17)(&v18, &v18, 2);
  }

  return a1;
}

void sub_100354AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100354B20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (**)(void, void, void));
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_100354338(va);
  sub_100354338(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100354B3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v26 = result;
  v27 = 0;
  while (!*a3)
  {
    if ((*a2 == 0) | *(a2 + 64) & 1)
    {
      return result;
    }

LABEL_13:
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    v11 = v9 - v10;
    if ((v9 - v10) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    if (v11 > 0x16)
    {
      operator new();
    }

    HIBYTE(v25) = v9 - v10;
    if (v9 != v10)
    {
      memmove(&__dst, v10, v9 - v10);
    }

    *(&__dst + v11) = 0;
    v13 = *(v5 + 8);
    v12 = *(v5 + 16);
    if (v13 >= v12)
    {
      v15 = *v5;
      v16 = v13 - *v5;
      v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3) + 1;
      if (v17 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10000FC84();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (v19 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_10000D444();
      }

      v20 = 8 * (v16 >> 3);
      *v20 = __dst;
      *(v20 + 16) = v25;
      v14 = v20 + 24;
      v21 = v20 - v16;
      memcpy((v20 - v16), v15, v16);
      *v5 = v21;
      *(v5 + 8) = v14;
      *(v5 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = __dst;
      *(v13 + 16) = v25;
      v14 = v13 + 24;
    }

    *(v5 + 8) = v14;
    v22 = *(a2 + 56);
    if (*a2)
    {
      result = (*((*a2 & 0xFFFFFFFFFFFFFFFELL) + 8))(a2 + 8, *(a2 + 48), v22);
      v22 = *(a2 + 56);
      if (result != v22)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v23 = *(a2 + 56);
      result = v23;
    }

    if (v23 == v22 && *(a2 + 40) == v22)
    {
      *(a2 + 64) = 1;
    }

LABEL_2:
    *(a2 + 32) = *(a2 + 48);
    *(a2 + 40) = result;
    *(a2 + 48) = v23;
  }

  if ((*a2 == 0) | *(a2 + 64) & 1 | *(a3 + 64) & 1)
  {
    if (((((*a2 == 0) | *(a2 + 64)) ^ *(a3 + 64)) & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v6 = *(a2 + 32);
  v7 = *(a3 + 32);
  v8 = *(a2 + 40) - v6;
  if (v8 != *(a3 + 40) - v7)
  {
    goto LABEL_13;
  }

  result = memcmp(v6, v7, v8);
  if (result || *(a2 + 48) != *(a3 + 48) || *(a2 + 56) != *(a3 + 56))
  {
    goto LABEL_13;
  }

  return result;
}

void sub_100354E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void ***a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_10004E764(&a16);
    _Unwind_Resume(a1);
  }

  sub_10004E764(&a16);
  _Unwind_Resume(a1);
}

void sub_100354E80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044B128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100354EFC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100354F6C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100355334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100355A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_100118124(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003560D4(_Unwind_Exception *a1)
{
  sub_100118124(&STACK[0x2C0]);

  _Unwind_Resume(a1);
}

uint64_t sub_100356144(int a1)
{
  if (a1 == 4)
  {
    return 11;
  }

  if (a1 == 1 || a1 == 3)
  {
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v3, "Yield source not viable for location type conversion");
    std::runtime_error::runtime_error(&v4, &v3);
    v4.__vftable = &off_1004336A0;
    sub_10010A984(v2);
  }

  return 10;
}

void sub_10035623C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100356E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1003645C0;
  block[3] = &unk_10044B2F8;
  objc_copyWeak(&v11, (a1 + 32));
  sub_100126300(v12, a3);
  v8 = a5[1];
  v13 = *a5;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_copyWeak(&v16, &v11);
  sub_100126300(v17, v12);
  v17[95] = v13;
  v18 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v7, block);
  v9 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  sub_1001234CC(v12);
  objc_destroyWeak(&v11);
  v10 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  sub_1001234CC(v17);
  objc_destroyWeak(&v16);
}

void sub_10035703C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  objc_destroyWeak((v9 + 32));
  sub_10036471C(&a9);
  _Unwind_Resume(a1);
}

id sub_10035706C(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_1003570A8(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

void sub_100357110(uint64_t a1, char a2, int a3)
{
  v5 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1003647FC;
  block[3] = &unk_10044B378;
  objc_copyWeak(&v6, (a1 + 32));
  LOBYTE(v7) = a2;
  HIDWORD(v7) = a3;
  objc_copyWeak(v9, &v6);
  v9[1] = v7;
  dispatch_async(v5, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(v9);
}

id sub_1003571D4(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_100357210(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

uint64_t sub_100357298(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_100364D88(a1 + 16);
    *(a1 + 8) = 0;
  }

  return a1;
}

void sub_100357584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100357AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100357C3C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 + 12);
  __cxa_end_catch();
  JUMPOUT(0x100357BE8);
}

void sub_100357DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CLIndoorProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100358308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v21);

  _Unwind_Resume(a1);
}

void sub_10035895C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10035881CLL);
}

void sub_100358998(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_autoreleasePoolPush();
  v3 = [WeakRetained xpcConnection];
  [WeakRetained notify:v3 failedWithReason:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_10035919C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, char a4, ...)
{
  va_start(va, a4);
  if (a4 == 1)
  {
    sub_10014E2CC(va);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100359F18(id a1, CLPrefetchFloorRequest *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [CLLocationContextUtil isRegional:[(CLPrefetchFloorRequest *)v4 locationContext]];

  return v5 ^ 1;
}

BOOL sub_100359F70(id a1, CLPrefetchFloorRequest *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [CLLocationContextUtil isRegional:[(CLPrefetchFloorRequest *)v4 locationContext]];

  return v5;
}

void sub_10035A318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_10035A6F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004D7DC(va);
  _Unwind_Resume(a1);
}

void sub_10035A708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a15 == 1)
  {
    sub_10035B188((v26 + 8));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035AEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10035B044(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_10000FE58(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_100184488(a1, i + 2);
  }

  return a1;
}

void *sub_10035B188(void *a1)
{
  v2 = a1[8];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  while (v3)
  {
    v4 = v3;
    v3 = *v3;
    sub_10011B04C(v4 + 4);
    v5 = v4[3];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v4);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[1];
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void sub_10035B538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10035B598(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained currentForegroundFetchRequest];
    [v2 requestDidComplete:*(a1 + 32)];

    v3 = [WeakRetained currentForegroundFetchRequest];
    LOBYTE(v2) = [v3 allFloorsDownloaded];

    if (v2)
    {
      [WeakRetained foregroundTileDownloadComplete];
    }
  }
}

void sub_10035B628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_10035B96C(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 56)))
  {
    v2 = *(*(a1 + 32) + 856);
    [*(a1 + 40) floorUuid];
    [objc_claimAutoreleasedReturnValue() UTF8String];
    sub_1001180E4();
  }
}

void sub_10035BB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100118124(&a9);

  _Unwind_Resume(a1);
}

void sub_10035BD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10035C400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void **a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_1003690C0(&a36);

  _Unwind_Resume(a1);
}

void *sub_10035C4EC(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_10035CEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, std::runtime_error a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10035D5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10035DC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19, char a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a19);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_10002BB1C(&a20);

  _Unwind_Resume(a1);
}

void sub_10035E5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002BB1C(v16 - 160);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10035E69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v26);
  sub_10002BB1C(&a24);
  _Unwind_Resume(a1);
}

void sub_10035E6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_10035B188((v13 + 8));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10035E72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10035EB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10035F558(uint64_t a1, id *a2)
{
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v4 = qword_10045B078;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*a2 count];
    v7 = 134349056;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[CLIndoorProvider] startUpdatingLocationAtLocation. Universe was updated, start requesting %{public}lu venues", &v7, 0xCu);
  }

  result = [*a2 count];
  if (result)
  {
    return [**(a1 + 32) setSet:*a2];
  }

  return result;
}

void sub_100360C5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100361458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1003618F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100361BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id *sub_100361C38(id *result, id *a2, int a3, char a4)
{
  v25 = result;
  if (a3 && (a4 & 1) == 0)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387BC0();
    }

    v5 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "updateUniverse calling changeLocationGroup with the new universe", buf, 2u);
    }

    result = [v25[4] changeLocationGroups:*a2];
  }

  if (*(v25[4] + 31))
  {
    *buf = off_10043D8B8;
    v36 = 0;
    v38 = 0;
    v39 = 0;
    v37 = off_10043DB28;
    v40 &= 0xFCu;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 &= 0xFE00u;
    sub_100126648(buf, a2[1]);
    v33[1] = 0;
    v33[2] = 0;
    v33[0] = off_10043DB28;
    v34 &= 0xFCu;
    sub_1001294D4(v33, *(a2 + 116));
    sub_1001294DC(v33, *(a2 + 124));
    sub_100126650(buf, v33);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *a2;
    v6 = [obj countByEnumeratingWithState:&v29 objects:v49 count:16];
    if (!v6)
    {
      goto LABEL_34;
    }

    v7 = *v30;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = v9;
        v11 = [v9 UTF8String];
        v12 = strlen(v11);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_10000D39C();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v28) = v12;
        if (v12)
        {
          memmove(&__dst, v11, v12);
          *(&__dst + v13) = 0;
          v15 = *(&v41 + 1);
          v14 = v42;
          if (*(&v41 + 1) < v42)
          {
LABEL_18:
            *v15 = __dst;
            *(v15 + 16) = v28;
            v16 = v15 + 24;
            goto LABEL_32;
          }
        }

        else
        {
          LOBYTE(__dst) = 0;
          v15 = *(&v41 + 1);
          v14 = v42;
          if (*(&v41 + 1) < v42)
          {
            goto LABEL_18;
          }
        }

        v17 = v41;
        v18 = v15 - v41;
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v41) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10000FC84();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v41) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (v22 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_10000D444();
        }

        v23 = 24 * v19;
        *v23 = __dst;
        *(v23 + 16) = v28;
        v16 = 24 * v19 + 24;
        v24 = 24 * v19 - v18;
        memcpy((v23 - v18), v17, v18);
        *&v41 = v24;
        *(&v41 + 1) = v16;
        *&v42 = 0;
        if (v17)
        {
          operator delete(v17);
        }

LABEL_32:
        *(&v41 + 1) = v16;
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v49 count:16];
      if (!v6)
      {
LABEL_34:

        sub_1000CF500(*(v25[4] + 31), buf);
        nullsub_76(v33);
        return sub_10012660C(buf);
      }
    }
  }

  return result;
}

void sub_100362074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  nullsub_76(&a26);
  sub_10012660C(&a30);
  _Unwind_Resume(a1);
}

id sub_100362108(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_1003627D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003633D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35)
{
  sub_10006DD50(&a35);
  sub_1000A8524(v36 - 120);

  _Unwind_Resume(a1);
}

void sub_100363A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36)
{
  sub_10005F4E8(&a36);
  sub_1000A8524(v37 - 120);

  _Unwind_Resume(a1);
}

void sub_100363D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, char a32)
{
  sub_10006A6AC(&a32);
  sub_1000A8524(v33 - 120);

  _Unwind_Resume(a1);
}

void sub_10036457C(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

void sub_1003645C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onQueueNotify:a1 + 40 onFloor:a1 + 800];
}

uint64_t sub_100364628(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = sub_100126300(a1 + 40, a2 + 40);
  *(a1 + 800) = *(a2 + 800);
  v5 = *(a2 + 808);
  *(a1 + 808) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100364698(uint64_t a1)
{
  v2 = *(a1 + 808);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1001234CC(a1 + 40);

  objc_destroyWeak((a1 + 32));
}

id *sub_10036471C(uint64_t a1)
{
  v1 = *(a1 + 776);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1;
  sub_1001234CC(a1 + 8);
  objc_destroyWeak(v3);
  return v3;
}

void sub_1003647A0(uint64_t a1)
{

  operator delete();
}

void sub_1003647FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onQueueNotifyLocationContext:*(a1 + 40) withLocationContext:*(a1 + 44)];
}

void sub_1003648A4(uint64_t a1)
{

  operator delete();
}

void sub_10036493C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 1)
  {
    if (*a2)
    {
      if (*(a1 + 31) < 0)
      {
        v3 = a1;
        v4 = a2;
        operator delete(*(a1 + 8));
        a2 = v4;
        a1 = v3;
      }

      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 8) = v5;
      a2[31] = 0;
      a2[8] = 0;
      v6 = *(a2 + 2);
      *(a2 + 4) = 0;
      *(a2 + 5) = 0;
      v7 = *(a1 + 40);
      *(a1 + 32) = v6;
      if (v7)
      {
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = a1;
          v9 = a2;
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          a2 = v9;
          a1 = v8;
        }
      }

      *(a1 + 48) = *(a2 + 12);
    }

    else
    {
      v11 = *(a1 + 40);
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v12 = a1;
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        a1 = v12;
      }

      if (*(a1 + 31) < 0)
      {
        v13 = a1;
        operator delete(*(a1 + 8));
        *v13 = 0;
      }

      else
      {
        *a1 = 0;
      }
    }
  }

  else if (*a2)
  {
    v10 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v10;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 1) = 0;
    *(a1 + 32) = *(a2 + 2);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a1 + 48) = *(a2 + 12);
    *a1 = 1;
  }
}

uint64_t sub_100364AF4(uint64_t a1)
{
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*a1);
  return a1;
}

uint64_t sub_100364B68(uint64_t a1, const char *a2)
{
  *a1 = os_transaction_create();
  v4 = (a1 + 8);
  v5 = strlen(a2);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v5;
  if (v5)
  {
    memmove(v4, a2, v5);
  }

  *(v4 + v6) = 0;
  if (qword_10045B050 != -1)
  {
    sub_100387BD4();
    v7 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      return a1;
    }

    goto LABEL_9;
  }

  v7 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_9:
    v9 = 136315138;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Starting OSTransaction for %s", &v9, 0xCu);
  }

  return a1;
}

void sub_100364CE0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000D388(a1);
}

id sub_100364CEC()
{
  if (qword_10045B050 == -1)
  {
    v1 = qword_10045B058;
  }

  else
  {
    sub_100387BD4();
    v1 = qword_10045B058;
  }

  return v1;
}

void sub_100364D44(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

uint64_t sub_100364D88(uint64_t a1)
{
  if (*a1)
  {
    if (qword_10045B050 == -1)
    {
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_100387BD4();
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_7;
      }
    }

    v3 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v3 = *v3;
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Ending OSTransaction for %s", &v5, 0xCu);
  }

LABEL_7:
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

atomic_uint *sub_100364E8C(atomic_uint **a1, atomic_uint **a2, uint64_t *a3)
{
  v3 = *a1;
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  sub_1003650CC(&v11, &v10, a3, v12);
  v6 = v12[0];
  v5 = v12[1];
  if (v12[0] && atomic_fetch_add(v12[0], 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v6 + 6, v6 + 7, v13);
    if (*(v6 + 31) < 0)
    {
      operator delete(*(v6 + 1));
    }

    operator delete();
  }

  v7 = v10;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v7 + 6, v7 + 7, v13);
    if (*(v7 + 31) < 0)
    {
      operator delete(*(v7 + 1));
    }

    operator delete();
  }

  v8 = v11;
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v8 + 6, v8 + 7, v13);
    if (*(v8 + 31) < 0)
    {
      operator delete(*(v8 + 1));
    }

    operator delete();
  }

  return v5;
}

void sub_100364FDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_10004FD84(va);
  sub_10004FD84(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_100364FF8(uint64_t *result)
{
  v1 = result[1];
  if (v1 && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8((v1 + 48), (v1 + 56), v3);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  v2 = *result;
  if (*result && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8((v2 + 48), (v2 + 56), v3);
    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_1003650CC(atomic_uint **a1@<X0>, atomic_uint **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  *a1 = 0;
  v7 = *a2;
  v8 = v4;
  *a2 = 0;
  sub_1003651CC(&v8, &v7, a3, a4);
  v5 = v7;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v5 + 6, v5 + 7, v9);
    if (*(v5 + 31) < 0)
    {
      operator delete(*(v5 + 1));
    }

    operator delete();
  }

  v6 = v8;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v6 + 6, v6 + 7, v9);
    if (*(v6 + 31) < 0)
    {
      operator delete(*(v6 + 1));
    }

    operator delete();
  }
}

void sub_1003651B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_10004FD84(va);
  sub_10004FD84(va1);
  _Unwind_Resume(a1);
}

void sub_1003651CC(atomic_uint **a1@<X0>, atomic_uint **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v24 = v7;
  if (v7)
  {
    atomic_fetch_add(v7, 1u);
  }

  v23 = *a2;
  *a2 = 0;
  sub_1003654EC(&v24, &v23, &v25);
  v8 = v23;
  if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v8 + 6, v8 + 7, v27);
    if (*(v8 + 31) < 0)
    {
      operator delete(*(v8 + 1));
    }

    operator delete();
  }

  v9 = v24;
  if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v9 + 6, v9 + 7, v27);
    if (*(v9 + 31) < 0)
    {
      operator delete(*(v9 + 1));
    }

    operator delete();
  }

  v19 = v26;
  v20 = v25;
  v25 = 0;
  v26 = 0;
  sub_1003655E8(&v20, &v19, a3, &v21);
  v10 = v19;
  if (v19 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v10 + 6, v10 + 7, v27);
    if (*(v10 + 31) < 0)
    {
      operator delete(*(v10 + 1));
    }

    operator delete();
  }

  v11 = v20;
  if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v11 + 6, v11 + 7, v27);
    if (*(v11 + 31) < 0)
    {
      operator delete(*(v11 + 1));
    }

    operator delete();
  }

  v12 = *a1;
  *a1 = 0;
  v13 = v21;
  v21 = 0;
  if (v12)
  {
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      sub_100014DC8(v12 + 6, v12 + 7, v27);
      if (*(v12 + 31) < 0)
      {
        operator delete(*(v12 + 1));
      }

      operator delete();
    }

    v15 = v21;
    v14 = v22;
    *a4 = v13;
    a4[1] = v14;
    if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      sub_100014DC8((v15 + 48), (v15 + 56), v27);
      if (*(v15 + 31) < 0)
      {
        operator delete(*(v15 + 8));
      }

      operator delete();
    }
  }

  else
  {
    v16 = v22;
    *a4 = v13;
    a4[1] = v16;
  }

  v17 = v26;
  if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v17 + 6, v17 + 7, v27);
    if (*(v17 + 31) < 0)
    {
      operator delete(*(v17 + 1));
    }

    operator delete();
  }

  v18 = v25;
  if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8(v18 + 6, v18 + 7, v27);
    if (*(v18 + 31) < 0)
    {
      operator delete(*(v18 + 1));
    }

    operator delete();
  }
}

void sub_1003654AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_10004FD84(va);
  sub_10004FD84(va1);
  sub_100364FF8(va2);
  _Unwind_Resume(a1);
}

void sub_1003654D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_10004FD84(va);
  sub_10004FD84(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003654EC@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  *result = 0;
  if (v3)
  {
    atomic_fetch_add(v3, 1u);
  }

  v4 = *a2;
  *a2 = 0;
  if (!v4)
  {
    *a3 = v3;
    a3[1] = 0;
    if (!v3)
    {
      return result;
    }

    goto LABEL_11;
  }

  atomic_fetch_add(v4, 1u);
  *a3 = v3;
  a3[1] = v4;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    sub_100014DC8((v4 + 48), (v4 + 56), v5);
    if (*(v4 + 31) < 0)
    {
      operator delete(*(v4 + 8));
    }

    operator delete();
  }

  if (v3)
  {
LABEL_11:
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      sub_100014DC8((v3 + 48), (v3 + 56), v5);
      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
      }

      operator delete();
    }
  }

  return result;
}

void sub_1003655E8(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  for (i = *a2; *a1 != *a2; i = *a2)
  {
    if ((!v7 || !*(v7 + 48)) && (!i || !*(i + 48)))
    {
      break;
    }

    v11 = a3[1];
    if (v11 >= a3[2])
    {
      v10 = sub_1003656DC(a3, v7 + 8);
    }

    else
    {
      if (*(v7 + 31) < 0)
      {
        sub_100003228(a3[1], *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v12 = *(v7 + 8);
        *(v11 + 16) = *(v7 + 24);
        *v11 = v12;
      }

      *(v11 + 24) = *(v7 + 32);
      *(v11 + 32) = *(v7 + 40);
      v10 = v11 + 40;
      a3[1] = v11 + 40;
    }

    a3[1] = v10;
    sub_100015408(a1, 0);
    v7 = *a1;
  }

  *a1 = 0;
  *a4 = v7;
  a4[1] = a3;
}

uint64_t sub_1003656DC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x666666666666666)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_10000D444();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_100003228(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  v7 = v6;
  *(v6 + 24) = *(a2 + 24);
  v8 = v6 + 40;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 3);
      *(v13 + 32) = *(v12 + 4);
      v12 = (v12 + 40);
      v13 += 40;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 40;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_100365894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003658A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003658A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100365910(size_t a1, size_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        if ((sub_10001A918(a1, a2 - 40) & 0x80000000) != 0)
        {
          v26 = *a1;
          *v37 = *(a1 + 8);
          *&v37[7] = *(a1 + 15);
          v27 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v28 = *(a1 + 24);
          v29 = *(a2 - 24);
          *a1 = *v9;
          *(a1 + 16) = v29;
          *(a2 - 17) = 0;
          *(a2 - 40) = 0;
          *(a1 + 24) = *(a2 - 16);
          *(a1 + 32) = *(a2 - 8);
          if (*(a2 - 17) < 0)
          {
            v35 = v28;
            operator delete(*v9);
            v28 = v35;
          }

          *(a2 - 40) = v26;
          *(a2 - 32) = *v37;
          *(a2 - 25) = *&v37[7];
          *(a2 - 17) = v27;
          *(a2 - 16) = v28;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      sub_100366194(a1, a1 + 40, a1 + 80, a2 - 40);
      return;
    }

    if (v14 == 5)
    {

      sub_1003663CC(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
      return;
    }

LABEL_10:
    if (v13 <= 959)
    {
      if (a5)
      {

        sub_1003666A0(a1, a2);
      }

      else
      {

        sub_1003667DC(a1, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (a1 != a2)
      {
        v30 = (v14 - 2) >> 1;
        v31 = v30 + 1;
        v32 = a1 + 40 * v30;
        do
        {
          sub_100367060(a1, a3, 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3), v32);
          v32 -= 40;
          --v31;
        }

        while (v31);
        v33 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          sub_100367218(a1, a2, a3, v33);
          a2 -= 40;
        }

        while (v33-- > 2);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = a1 + 40 * (v14 >> 1);
    if (v13 < 0x1401)
    {
      sub_100365E6C(v16, a1, a2 - 40);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_100365E6C(a1, v16, a2 - 40);
      v17 = 40 * v15;
      v18 = 40 * v15 + a1 - 40;
      sub_100365E6C(a1 + 40, v18, a2 - 80);
      sub_100365E6C(a1 + 80, a1 + 40 + v17, a2 - 120);
      sub_100365E6C(v18, v16, a1 + 40 + v17);
      v19 = *a1;
      *&v36 = *(a1 + 8);
      *(&v36 + 7) = *(a1 + 15);
      v20 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v21 = *v16;
      *(a1 + 16) = *(v16 + 16);
      *a1 = v21;
      *(v16 + 23) = 0;
      *v16 = v19;
      *(v16 + 15) = *(&v36 + 7);
      *(v16 + 8) = v36;
      *(v16 + 23) = v20;
      v22 = *(a1 + 24);
      *(a1 + 24) = *(v16 + 24);
      *(v16 + 24) = v22;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if ((sub_10001A918(a1, a1 - 40) & 0x80000000) == 0)
    {
      v10 = sub_100366910(a1, a2);
      goto LABEL_22;
    }

LABEL_17:
    v23 = sub_100366B44(a1, a2);
    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }

    v25 = sub_100366D80(a1, v23);
    v10 = v23 + 40;
    if (sub_100366D80(v23 + 40, a2))
    {
      a4 = -v12;
      a2 = v23;
      if (v25)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v25)
    {
LABEL_20:
      sub_100365910(a1, v23, a3, -v12, a5 & 1);
      v10 = v23 + 40;
LABEL_22:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  sub_100365E6C(a1, a1 + 40, a2 - 40);
}

uint64_t sub_100365E6C(size_t a1, size_t a2, size_t a3)
{
  v6 = sub_10001A918(a1, a2);
  v7 = sub_10001A918(a2, a3);
  if (v6 < 0)
  {
    if (v7 < 0)
    {
      v26 = *a1;
      *v34 = *(a1 + 8);
      *&v34[7] = *(a1 + 15);
      v14 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v15 = *(a1 + 24);
      v27 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v27;
      *(a3 + 23) = 0;
      *a3 = 0;
      *(a1 + 24) = *(a3 + 24);
      *(a1 + 32) = *(a3 + 32);
      if (*(a3 + 23) < 0)
      {
        v32 = v15;
        operator delete(*a3);
        v15 = v32;
      }

      v17 = *v34;
      *a3 = v26;
    }

    else
    {
      v9 = *a1;
      *v33 = *(a1 + 8);
      *&v33[7] = *(a1 + 15);
      v10 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v11 = *(a1 + 24);
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      *(a2 + 23) = 0;
      *a2 = 0;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      if (*(a2 + 23) < 0)
      {
        v28 = v11;
        operator delete(*a2);
        v11 = v28;
      }

      *a2 = v9;
      *(a2 + 8) = *v33;
      *(a2 + 15) = *&v33[7];
      *(a2 + 23) = v10;
      *(a2 + 24) = v11;
      if ((sub_10001A918(a2, a3) & 0x80000000) == 0)
      {
        return 1;
      }

      v13 = *a2;
      *v34 = *(a2 + 8);
      *&v34[7] = *(a2 + 15);
      v14 = *(a2 + 23);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      v15 = *(a2 + 24);
      v16 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v16;
      *(a3 + 23) = 0;
      *a3 = 0;
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 32) = *(a3 + 32);
      if (*(a3 + 23) < 0)
      {
        v29 = v15;
        operator delete(*a3);
        v15 = v29;
      }

      v17 = *v34;
      *a3 = v13;
    }

    *(a3 + 8) = v17;
    *(a3 + 15) = *&v34[7];
    *(a3 + 23) = v14;
    *(a3 + 24) = v15;
  }

  else
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 0;
    }

    v18 = *a2;
    *v35 = *(a2 + 8);
    *&v35[7] = *(a2 + 15);
    v19 = *(a2 + 23);
    *(a2 + 16) = 0;
    *(a2 + 8) = 0;
    *a2 = 0;
    v20 = *(a2 + 24);
    v21 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v21;
    *(a3 + 23) = 0;
    *a3 = 0;
    *(a2 + 24) = *(a3 + 24);
    *(a2 + 32) = *(a3 + 32);
    if (*(a3 + 23) < 0)
    {
      v30 = v20;
      operator delete(*a3);
      v20 = v30;
    }

    *a3 = v18;
    *(a3 + 8) = *v35;
    *(a3 + 15) = *&v35[7];
    *(a3 + 23) = v19;
    *(a3 + 24) = v20;
    if ((sub_10001A918(a1, a2) & 0x80000000) != 0)
    {
      v22 = *a1;
      *v36 = *(a1 + 8);
      *&v36[7] = *(a1 + 15);
      v23 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v24 = *(a1 + 24);
      v25 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v25;
      *(a2 + 23) = 0;
      *a2 = 0;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      if (*(a2 + 23) < 0)
      {
        v31 = v24;
        operator delete(*a2);
        v24 = v31;
      }

      *a2 = v22;
      *(a2 + 8) = *v36;
      *(a2 + 15) = *&v36[7];
      *(a2 + 23) = v23;
      *(a2 + 24) = v24;
    }
  }

  return 1;
}

void sub_100366194(size_t a1, size_t a2, size_t a3, size_t a4)
{
  sub_100365E6C(a1, a2, a3);
  if ((sub_10001A918(a3, a4) & 0x80000000) != 0)
  {
    v8 = *a3;
    *v23 = *(a3 + 8);
    *&v23[7] = *(a3 + 15);
    v9 = *(a3 + 23);
    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
    *a3 = 0;
    v10 = *(a3 + 24);
    v11 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v11;
    *(a4 + 23) = 0;
    *a4 = 0;
    *(a3 + 24) = *(a4 + 24);
    *(a3 + 32) = *(a4 + 32);
    if (*(a4 + 23) < 0)
    {
      v20 = v10;
      operator delete(*a4);
      v10 = v20;
    }

    *a4 = v8;
    *(a4 + 8) = *v23;
    *(a4 + 15) = *&v23[7];
    *(a4 + 23) = v9;
    *(a4 + 24) = v10;
    if ((sub_10001A918(a2, a3) & 0x80000000) != 0)
    {
      v12 = *a2;
      *v24 = *(a2 + 8);
      *&v24[7] = *(a2 + 15);
      v13 = *(a2 + 23);
      *(a2 + 16) = 0;
      *(a2 + 8) = 0;
      *a2 = 0;
      v14 = *(a2 + 24);
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *(a3 + 23) = 0;
      *a3 = 0;
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 32) = *(a3 + 32);
      if (*(a3 + 23) < 0)
      {
        v21 = v14;
        operator delete(*a3);
        v14 = v21;
      }

      *a3 = v12;
      *(a3 + 8) = *v24;
      *(a3 + 15) = *&v24[7];
      *(a3 + 23) = v13;
      *(a3 + 24) = v14;
      if ((sub_10001A918(a1, a2) & 0x80000000) != 0)
      {
        v16 = *a1;
        *v25 = *(a1 + 8);
        *&v25[7] = *(a1 + 15);
        v17 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v18 = *(a1 + 24);
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a2 + 23) = 0;
        *a2 = 0;
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        if (*(a2 + 23) < 0)
        {
          v22 = v18;
          operator delete(*a2);
          v18 = v22;
        }

        *a2 = v16;
        *(a2 + 8) = *v25;
        *(a2 + 15) = *&v25[7];
        *(a2 + 23) = v17;
        *(a2 + 24) = v18;
      }
    }
  }
}

void sub_1003663CC(size_t a1, size_t a2, size_t a3, size_t a4, size_t a5)
{
  sub_100366194(a1, a2, a3, a4);
  if ((sub_10001A918(a4, a5) & 0x80000000) != 0)
  {
    v10 = *a4;
    *v30 = *(a4 + 8);
    *&v30[7] = *(a4 + 15);
    v11 = *(a4 + 23);
    *(a4 + 16) = 0;
    *(a4 + 8) = 0;
    *a4 = 0;
    v12 = *(a4 + 24);
    v13 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v13;
    *(a5 + 23) = 0;
    *a5 = 0;
    *(a4 + 24) = *(a5 + 24);
    *(a4 + 32) = *(a5 + 32);
    if (*(a5 + 23) < 0)
    {
      v26 = v12;
      operator delete(*a5);
      v12 = v26;
    }

    *a5 = v10;
    *(a5 + 8) = *v30;
    *(a5 + 15) = *&v30[7];
    *(a5 + 23) = v11;
    *(a5 + 24) = v12;
    if ((sub_10001A918(a3, a4) & 0x80000000) != 0)
    {
      v14 = *a3;
      *v31 = *(a3 + 8);
      *&v31[7] = *(a3 + 15);
      v15 = *(a3 + 23);
      *(a3 + 16) = 0;
      *(a3 + 8) = 0;
      *a3 = 0;
      v16 = *(a3 + 24);
      v17 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v17;
      *(a4 + 23) = 0;
      *a4 = 0;
      *(a3 + 24) = *(a4 + 24);
      *(a3 + 32) = *(a4 + 32);
      if (*(a4 + 23) < 0)
      {
        v27 = v16;
        operator delete(*a4);
        v16 = v27;
      }

      *a4 = v14;
      *(a4 + 8) = *v31;
      *(a4 + 15) = *&v31[7];
      *(a4 + 23) = v15;
      *(a4 + 24) = v16;
      if ((sub_10001A918(a2, a3) & 0x80000000) != 0)
      {
        v18 = *a2;
        *v32 = *(a2 + 8);
        *&v32[7] = *(a2 + 15);
        v19 = *(a2 + 23);
        *(a2 + 16) = 0;
        *(a2 + 8) = 0;
        *a2 = 0;
        v20 = *(a2 + 24);
        v21 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v21;
        *(a3 + 23) = 0;
        *a3 = 0;
        *(a2 + 24) = *(a3 + 24);
        *(a2 + 32) = *(a3 + 32);
        if (*(a3 + 23) < 0)
        {
          v28 = v20;
          operator delete(*a3);
          v20 = v28;
        }

        *a3 = v18;
        *(a3 + 8) = *v32;
        *(a3 + 15) = *&v32[7];
        *(a3 + 23) = v19;
        *(a3 + 24) = v20;
        if ((sub_10001A918(a1, a2) & 0x80000000) != 0)
        {
          v22 = *a1;
          *v33 = *(a1 + 8);
          *&v33[7] = *(a1 + 15);
          v23 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v24 = *(a1 + 24);
          v25 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v25;
          *(a2 + 23) = 0;
          *a2 = 0;
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          if (*(a2 + 23) < 0)
          {
            v29 = v24;
            operator delete(*a2);
            v24 = v29;
          }

          *a2 = v22;
          *(a2 + 8) = *v33;
          *(a2 + 15) = *&v33[7];
          *(a2 + 23) = v23;
          *(a2 + 24) = v24;
        }
      }
    }
  }
}

void sub_1003666A0(size_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v18 = v2;
    v19 = v3;
    v6 = a1 + 40;
    if (a1 + 40 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v10 = v6;
        if ((sub_10001A918(v8, v6) & 0x80000000) != 0)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
          *v10 = 0;
          v17 = *(v8 + 64);
          v11 = v7;
          while (1)
          {
            v12 = a1 + v11;
            if (*(a1 + v11 + 63) < 0)
            {
              operator delete(*(v12 + 40));
            }

            *(v12 + 40) = *v12;
            *(v12 + 56) = *(v12 + 16);
            *(v12 + 23) = 0;
            *v12 = 0;
            v13 = *(v12 + 32);
            *(v12 + 64) = *(v12 + 24);
            *(v12 + 72) = v13;
            if (!v11)
            {
              break;
            }

            v11 -= 40;
            if ((sub_10001A918(v11 + a1, &v15) & 0x80000000) == 0)
            {
              v14 = a1 + v11 + 40;
              if ((*(v14 + 23) & 0x80000000) == 0)
              {
                goto LABEL_4;
              }

              goto LABEL_15;
            }
          }

          v14 = a1;
          if ((*(a1 + 23) & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_15:
          operator delete(*v14);
LABEL_4:
          *v14 = v15;
          *(v14 + 16) = v16;
          v9 = *(&v17 + 1);
          *(v14 + 24) = v17;
          *(v14 + 32) = v9;
        }

        v6 = v10 + 40;
        v7 += 40;
        v8 = v10;
      }

      while (v10 + 40 != a2);
    }
  }
}

void sub_1003667DC(size_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v19 = v2;
    v20 = v3;
    v5 = a1;
    v6 = a1 + 40;
    if (a1 + 40 != a2)
    {
      v7 = (a1 + 72);
      do
      {
        v10 = v6;
        if ((sub_10001A918(v5, v6) & 0x80000000) != 0)
        {
          v16 = *v10;
          v17 = *(v10 + 16);
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
          *v10 = 0;
          v18 = *(v5 + 64);
          v11 = v7;
          do
          {
            v15 = (v11 - 4);
            if (*(v11 - 9) < 0)
            {
              operator delete(*v15);
            }

            *v15 = *(v11 - 9);
            *(v11 - 2) = *(v11 - 7);
            *(v11 - 49) = 0;
            *(v11 - 72) = 0;
            v12 = v11 - 5;
            v13 = *(v11 - 5);
            *(v11 - 1) = *(v11 - 6);
            *v11 = v13;
            v14 = sub_10001A918((v11 - 14), &v16);
            v11 -= 5;
          }

          while (v14 < 0);
          v8 = (v12 - 4);
          if (*(v12 - 9) < 0)
          {
            operator delete(*v8);
          }

          *v8 = v16;
          *(v12 - 2) = v17;
          v9 = *(&v18 + 1);
          *(v12 - 1) = v18;
          *v12 = v9;
        }

        v6 = v10 + 40;
        v7 += 5;
        v5 = v10;
      }

      while (v10 + 40 != a2);
    }
  }
}

size_t sub_100366910(size_t a1, size_t a2)
{
  v2 = a2;
  *__p = *a1;
  v18 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v19 = *(a1 + 24);
  if ((sub_10001A918(a2 - 40, __p) & 0x80000000) != 0)
  {
    v5 = a1;
    do
    {
      v5 += 40;
    }

    while ((sub_10001A918(v5, __p) & 0x80000000) == 0);
  }

  else
  {
    v4 = a1 + 40;
    do
    {
      v5 = v4;
      if (v4 >= v2)
      {
        break;
      }

      v6 = sub_10001A918(v4, __p);
      v4 = v5 + 40;
    }

    while ((v6 & 0x80000000) == 0);
  }

  if (v5 < v2)
  {
    do
    {
      v2 -= 40;
    }

    while ((sub_10001A918(v2, __p) & 0x80000000) != 0);
  }

  while (v5 < v2)
  {
    v7 = *v5;
    v20[0] = *(v5 + 8);
    *(v20 + 7) = *(v5 + 15);
    v8 = *(v5 + 23);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
    v9 = *(v5 + 24);
    v10 = *(v2 + 16);
    *v5 = *v2;
    *(v5 + 16) = v10;
    *(v2 + 23) = 0;
    *v2 = 0;
    *(v5 + 24) = *(v2 + 24);
    *(v5 + 32) = *(v2 + 32);
    if (*(v2 + 23) < 0)
    {
      v16 = v9;
      operator delete(*v2);
      v9 = v16;
    }

    *v2 = v7;
    v11 = *(v20 + 7);
    *(v2 + 8) = v20[0];
    *(v2 + 15) = v11;
    *(v2 + 23) = v8;
    *(v2 + 24) = v9;
    do
    {
      v5 += 40;
    }

    while ((sub_10001A918(v5, __p) & 0x80000000) == 0);
    do
    {
      v2 -= 40;
    }

    while ((sub_10001A918(v2, __p) & 0x80000000) != 0);
  }

  v12 = (v5 - 40);
  if (v5 - 40 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    *(a1 + 16) = *(v5 - 24);
    *a1 = v13;
    *(v5 - 17) = 0;
    *(v5 - 40) = 0;
    *(a1 + 24) = *(v5 - 16);
    *(a1 + 32) = *(v5 - 8);
  }

  if (*(v5 - 17) < 0)
  {
    operator delete(*v12);
  }

  v14 = *__p;
  *(v5 - 24) = v18;
  *v12 = v14;
  HIBYTE(v18) = 0;
  LOBYTE(__p[0]) = 0;
  *(v5 - 16) = v19;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

size_t sub_100366B44(uint64_t a1, size_t a2)
{
  v4 = 0;
  *__p = *a1;
  v20 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v21 = *(a1 + 24);
  do
  {
    v4 += 40;
  }

  while ((sub_10001A918(__p, v4 + a1) & 0x80000000) != 0);
  v5 = a1 + v4;
  if (v4 == 40)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 40;
    }

    while ((sub_10001A918(__p, a2) & 0x80000000) == 0);
  }

  else
  {
    do
    {
      a2 -= 40;
    }

    while ((sub_10001A918(__p, a2) & 0x80000000) == 0);
  }

  v6 = a1 + v4;
  if (v5 < a2)
  {
    v7 = a2;
    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      *&v22[7] = *(v6 + 15);
      *v22 = v8;
      v10 = *(v6 + 23);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v11 = *(v6 + 24);
      v12 = *(v7 + 16);
      *v6 = *v7;
      *(v6 + 16) = v12;
      *(v7 + 23) = 0;
      *v7 = 0;
      *(v6 + 24) = *(v7 + 24);
      *(v6 + 32) = *(v7 + 32);
      if (*(v7 + 23) < 0)
      {
        v18 = v11;
        operator delete(*v7);
        v11 = v18;
      }

      *v7 = v9;
      v13 = *&v22[7];
      *(v7 + 8) = *v22;
      *(v7 + 15) = v13;
      *(v7 + 23) = v10;
      *(v7 + 24) = v11;
      do
      {
        v6 += 40;
      }

      while ((sub_10001A918(__p, v6) & 0x80000000) != 0);
      do
      {
        v7 -= 40;
      }

      while ((sub_10001A918(__p, v7) & 0x80000000) == 0);
    }

    while (v6 < v7);
  }

  v14 = (v6 - 40);
  if (v6 - 40 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v15 = *v14;
    *(a1 + 16) = *(v6 - 24);
    *a1 = v15;
    *(v6 - 17) = 0;
    *(v6 - 40) = 0;
    *(a1 + 24) = *(v6 - 16);
    *(a1 + 32) = *(v6 - 8);
  }

  if (*(v6 - 17) < 0)
  {
    operator delete(*v14);
  }

  v16 = *__p;
  *(v6 - 24) = v20;
  *v14 = v16;
  HIBYTE(v20) = 0;
  LOBYTE(__p[0]) = 0;
  *(v6 - 16) = v21;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  return v6 - 40;
}

BOOL sub_100366D80(size_t a1, uint64_t a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 40);
        if ((sub_10001A918(a1, a2 - 40) & 0x80000000) != 0)
        {
          v6 = *a1;
          *&v23 = *(a1 + 8);
          *(&v23 + 7) = *(a1 + 15);
          v7 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v8 = *(a1 + 24);
          v9 = *(a2 - 24);
          *a1 = *v5;
          *(a1 + 16) = v9;
          *(a2 - 17) = 0;
          *(a2 - 40) = 0;
          *(a1 + 24) = *(a2 - 16);
          *(a1 + 32) = *(a2 - 8);
          if (*(a2 - 17) < 0)
          {
            v22 = v8;
            operator delete(*v5);
            v8 = v22;
          }

          v10 = v23;
          *(a2 - 40) = v6;
          *(a2 - 32) = v10;
          *(a2 - 25) = *(&v23 + 7);
          *(a2 - 17) = v7;
          *(a2 - 16) = v8;
        }

        return 1;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_100365E6C(a1, a1 + 40, a2 - 40);
      return 1;
    case 4:
      sub_100366194(a1, a1 + 40, a1 + 80, a2 - 40);
      return 1;
    case 5:
      sub_1003663CC(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
      return 1;
  }

LABEL_13:
  sub_100365E6C(a1, a1 + 40, a1 + 80);
  v11 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  v14 = a1 + 80;
  while (1)
  {
    if ((sub_10001A918(v14, v11) & 0x80000000) != 0)
    {
      v23 = *v11;
      v24 = *(v11 + 16);
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 0;
      v25 = *(v11 + 24);
      v16 = v12;
      while (1)
      {
        v17 = a1 + v16;
        if (*(a1 + v16 + 143) < 0)
        {
          operator delete(*(v17 + 120));
        }

        *(v17 + 120) = *(v17 + 80);
        *(v17 + 136) = *(v17 + 96);
        *(v17 + 103) = 0;
        *(v17 + 80) = 0;
        v18 = *(v17 + 112);
        *(v17 + 144) = *(v17 + 104);
        *(v17 + 152) = v18;
        if (v16 == -80)
        {
          break;
        }

        v19 = sub_10001A918(a1 + v16 + 40, &v23);
        v16 -= 40;
        if ((v19 & 0x80000000) == 0)
        {
          v20 = a1 + v16 + 120;
          if ((*(v20 + 23) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }
      }

      v20 = a1;
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_26:
      operator delete(*v20);
LABEL_15:
      *v20 = v23;
      *(v20 + 16) = v24;
      HIBYTE(v24) = 0;
      LOBYTE(v23) = 0;
      v15 = *(&v25 + 1);
      *(v20 + 24) = v25;
      *(v20 + 32) = v15;
      if (++v13 == 8)
      {
        return v11 + 40 == a2;
      }
    }

    v14 = v11;
    v12 += 40;
    v11 += 40;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

double sub_100367060(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v23 = v4;
    v24 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v11 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v12 = a1 + 40 * v11;
      v13 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v13 < a3 && sub_10001A918(v12 + 40, a1 + 40 * v11) < 0)
      {
        v12 += 40;
        v11 = v13;
      }

      if ((sub_10001A918(v7, v12) & 0x80000000) == 0)
      {
        v20 = *v7;
        v21 = *(v7 + 16);
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        v22 = *(v7 + 24);
        do
        {
          v15 = v12;
          if (*(v7 + 23) < 0)
          {
            operator delete(*v7);
          }

          v16 = *v12;
          *(v7 + 16) = *(v12 + 16);
          *v7 = v16;
          *(v12 + 23) = 0;
          *v12 = 0;
          *(v7 + 24) = *(v12 + 24);
          *(v7 + 32) = *(v12 + 32);
          if (v9 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = a1 + 40 * v17;
          v18 = 2 * v11 + 2;
          if (v18 < a3 && sub_10001A918(v12 + 40, a1 + 40 * v17) < 0)
          {
            v12 += 40;
            v17 = v18;
          }

          v7 = v15;
          v11 = v17;
        }

        while ((sub_10001A918(&v20, v12) & 0x80000000) == 0);
        if (*(v15 + 23) < 0)
        {
          operator delete(*v15);
        }

        v19 = v20;
        *(v15 + 16) = v21;
        *v15 = v19;
        *(v15 + 24) = v22;
        result = *(&v22 + 1);
        *(v15 + 32) = *(&v22 + 1);
      }
    }
  }

  return result;
}

void sub_100367218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = 0;
    v24 = *a1;
    *v26 = *(a1 + 8);
    *&v26[7] = *(a1 + 15);
    v25 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v22 = *(a1 + 28);
    v23 = *(a1 + 24);
    v8 = (a4 - 2) >> 1;
    v9 = a1;
    v20 = *(a1 + 32);
    v21 = *(a1 + 36);
    do
    {
      v11 = v9 + 40 * v7;
      v12 = v11 + 40;
      v13 = 2 * v7;
      v7 = (2 * v7) | 1;
      v14 = v13 + 2;
      if (v13 + 2 < a4)
      {
        v15 = v11 + 80;
        if (sub_10001A918(v11 + 80, v11 + 40) < 0)
        {
          v12 = v15;
          v7 = v14;
        }
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v10 = *v12;
      *(v9 + 16) = *(v12 + 16);
      *v9 = v10;
      *(v12 + 23) = 0;
      *v12 = 0;
      *(v9 + 24) = *(v12 + 24);
      *(v9 + 32) = *(v12 + 32);
      v9 = v12;
    }

    while (v7 <= v8);
    v16 = (a2 - 40);
    v17 = *(v12 + 23);
    if (v12 == a2 - 40)
    {
      if (v17 < 0)
      {
        operator delete(*v12);
      }

      *v12 = v24;
      *(v12 + 8) = *v26;
      *(v12 + 15) = *&v26[7];
      *(v12 + 23) = v25;
      *(v12 + 24) = v23;
      *(v12 + 28) = v22;
      *(v12 + 32) = v20;
      *(v12 + 36) = v21;
    }

    else
    {
      if (v17 < 0)
      {
        operator delete(*v12);
      }

      v18 = *v16;
      *(v12 + 16) = *(a2 - 24);
      *v12 = v18;
      *(a2 - 17) = 0;
      *(a2 - 40) = 0;
      *(v12 + 24) = *(a2 - 16);
      *(v12 + 32) = *(a2 - 8);
      if (*(a2 - 17) < 0)
      {
        operator delete(*v16);
      }

      *(a2 - 40) = v24;
      *(a2 - 32) = *v26;
      *(a2 - 25) = *&v26[7];
      *(a2 - 17) = v25;
      *(a2 - 16) = v23;
      *(a2 - 12) = v22;
      *(a2 - 8) = v20;
      *(a2 - 4) = v21;
      sub_10036746C(a1, v12 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v12 + 40 - a1) >> 3));
    }
  }
}

double sub_10036746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v17 = v4;
    v18 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = a1 + 40 * v8;
    v10 = a2 - 40;
    if ((sub_10001A918(a2 - 40, v9) & 0x80000000) != 0)
    {
      v14 = *v10;
      v15 = *(v10 + 16);
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 0;
      v16 = *(a2 - 16);
      do
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        *(v10 + 24) = *(v9 + 24);
        *(v10 + 32) = *(v9 + 32);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 40 * v8;
        v10 = v12;
      }

      while ((sub_10001A918(&v14, v9) & 0x80000000) != 0);
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      *v12 = v14;
      *(v12 + 16) = v15;
      result = *&v16;
      *(v12 + 24) = v16;
    }
  }

  return result;
}

void ***sub_100367580(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 17);
        v3 -= 5;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

std::string *sub_1003675F4@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100367628(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100367664(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044B4B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003676E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1003678C8;
  block[3] = &unk_10044B520;
  objc_copyWeak(&v7, (a1 + 32));
  v4 = *(a2 + 8);
  v8 = *a2;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  objc_copyWeak(v11, &v7);
  v11[1] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v3, block);
  v5 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  objc_destroyWeak(&v7);
  v6 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  objc_destroyWeak(v11);
}

id sub_100367850(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_10036788C(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

void sub_1003678C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onQueueRecordInputEventMetrics:a1 + 40];
}

void sub_10036792C(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_100367974(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = (a1 + 32);
  }

  else
  {
    v2 = (a1 + 32);
  }

  objc_destroyWeak(v2);
}

void sub_100367A3C(uint64_t a1)
{

  operator delete();
}

void sub_100367A98(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = a1;
  memset(&v5, 0, sizeof(v5));
  if ((sub_1000D3958(&v4, &v5) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v6);
    v6.__vftable = &off_100434090;
    sub_100049F88(&v6);
  }

  v3 = std::string::insert(&v5, 0, "DispatchSensorObserver ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_100367B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::bad_cast a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100367B9C(_DWORD *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = (a1 + 2);
  v4 = v3 ^ (v3 >> 31);
  if (v4 <= 2)
  {
    if (!v4)
    {

      sub_100367D00();
    }

    if (v4 == 1)
    {
      LODWORD(v6) = *v2;
      sub_100367E84(*v2);
    }

    else
    {
      v6 = *v2;
      sub_100367F14(*v2);
    }

    return v6;
  }

  else
  {
    if (v4 > 4)
    {
      if (v4 == 5)
      {
        v7 = *v2;

        sub_10036868C();
      }

      v11 = *v2;

      sub_100368810();
    }

    if (v4 == 3)
    {

      return sub_100367FA4(a2, v2);
    }

    else
    {
      v8 = *v2;
      sub_1003685F0(*v2);
      v9 = ceil(v8);
      v10 = floor(v8);
      if (v8 >= 0.0)
      {
        v9 = v10;
      }

      return v9;
    }
  }
}

void sub_100367DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100367E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x100367E3CLL);
}

uint64_t sub_100367E84(uint64_t result)
{
  v1 = 2 * ((result & 0xFFFF0000) != 0);
  if (result < 0)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }

  return result;
}

uint64_t sub_100367F14(uint64_t result)
{
  v1 = 2 * ((result & 0xFFFFFFFFFFFF0000) != 0);
  if (result < 0)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }

  return result;
}

uint64_t sub_100367FA4(uint64_t a1, unsigned __int8 *a2)
{
  v9 = 0;
  v2 = a2[23];
  v3 = *a2;
  if (v2 >= 0)
  {
    v3 = a2;
  }

  if (v2 < 0)
  {
    v2 = *(a2 + 1);
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  v4 = &v3[v2];
  v5 = *v3;
  if (v5 == 45 || v5 == 43)
  {
    ++v3;
  }

  LOBYTE(v10.__vftable) = 0;
  WORD1(v10.__vftable) = 1;
  v11 = &v9;
  v12 = v3;
  v13 = v4;
  v6 = sub_1003680B8(&v10);
  if (v5 == 45)
  {
    v7 = -v9;
    v9 = -v9;
    if (v6)
    {
      return v7;
    }

LABEL_14:
    std::bad_cast::bad_cast(&v10);
    v10.__vftable = &off_100434090;
    sub_100049F88(&v10);
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  return v9;
}

uint64_t sub_1003680B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  *(a1 + 24) = v1 - 1;
  v3 = *(a1 + 8);
  *v3 = 0;
  if (v2 > v1 - 1)
  {
    return 0;
  }

  v4 = *(v1 - 1);
  if ((v4 - 58) < 0xF6u)
  {
    return 0;
  }

  *v3 = (v4 - 48);
  *(a1 + 24) = v1 - 2;
  std::locale::locale(&v51);
  v7 = std::locale::classic();
  if (std::locale::operator==(&v51, v7))
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    if (v8 >= v9)
    {
      v13 = *a1;
      while (1)
      {
        v16 = *(a1 + 2);
        v13 |= (v16 >> 1) > 0xCCCu;
        *a1 = v13 & 1;
        v17 = 10 * v16;
        *(a1 + 2) = 10 * v16;
        v18 = *v8;
        if ((*v8 - 58) < 0xF6u)
        {
          break;
        }

        v19 = v18 - 48;
        v20 = (v18 - 48) * v17;
        if (v19)
        {
          if (v13)
          {
            break;
          }

          if (((v19 * v17) & 0xFFFF0000) != 0)
          {
            break;
          }

          v14 = *(a1 + 8);
          v15 = *v14;
          if (((v15 + v20) & 0x10000) != 0)
          {
            break;
          }
        }

        else
        {
          v14 = *(a1 + 8);
          LOWORD(v15) = *v14;
        }

        *v14 = v15 + v20;
        *(a1 + 24) = --v8;
        if (v8 < v9)
        {
          goto LABEL_6;
        }
      }

      v10 = 0;
    }

    else
    {
LABEL_6:
      v10 = 1;
    }

    goto LABEL_58;
  }

  v11 = std::locale::use_facet(&v51, &std::numpunct<char>::id);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = v50;
  if ((v50 & 0x8000000000000000) != 0)
  {
    v12 = v49;
    if (!v49 || *__p <= 0)
    {
LABEL_26:
      v28 = *(a1 + 16);
      v27 = *(a1 + 24);
      if (v27 >= v28)
      {
        v39 = *a1;
        while (1)
        {
          v42 = *(a1 + 2);
          v39 |= (v42 >> 1) > 0xCCCu;
          *a1 = v39 & 1;
          v43 = 10 * v42;
          *(a1 + 2) = 10 * v42;
          v44 = *v27;
          if ((*v27 - 58) < 0xF6u)
          {
            break;
          }

          v45 = v44 - 48;
          v46 = (v44 - 48) * v43;
          if (v45)
          {
            if (v39)
            {
              break;
            }

            if (((v45 * v43) & 0xFFFF0000) != 0)
            {
              break;
            }

            v40 = *(a1 + 8);
            v41 = *v40;
            if (((v41 + v46) & 0x10000) != 0)
            {
              break;
            }
          }

          else
          {
            v40 = *(a1 + 8);
            LOWORD(v41) = *v40;
          }

          *v40 = v41 + v46;
          *(a1 + 24) = --v27;
          if (v27 < v28)
          {
            goto LABEL_27;
          }
        }

LABEL_55:
        v29 = 0;
        if ((v50 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      goto LABEL_27;
    }
  }

  else if (!v50 || __p <= 0)
  {
    goto LABEL_26;
  }

  v21 = (v11->__vftable[1].~facet_0)(v11);
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  if (v23 >= v22)
  {
    v24 = 0;
    p_p = __p;
    if (v50 >= 0)
    {
      p_p = &__p;
    }

    v26 = *p_p - 1;
    while (1)
    {
      while (v26)
      {
        v32 = *(a1 + 2);
        v33 = *a1 | ((v32 >> 1) > 0xCCCu);
        *a1 = v33;
        v34 = 10 * v32;
        *(a1 + 2) = v34;
        v35 = *v23;
        if ((*v23 - 58) < 0xF6u)
        {
          goto LABEL_55;
        }

        v36 = v35 - 48;
        v37 = (v35 - 48) * v34;
        if (v36)
        {
          if (v33)
          {
            goto LABEL_55;
          }

          if (((v36 * v34) & 0xFFFF0000) != 0)
          {
            goto LABEL_55;
          }

          v30 = *(a1 + 8);
          v31 = *v30;
          if (((v31 + v37) & 0x10000) != 0)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v30 = *(a1 + 8);
          LOWORD(v31) = *v30;
        }

        *v30 = v31 + v37;
        --v26;
        *(a1 + 24) = --v23;
        if (v23 < v22)
        {
          goto LABEL_27;
        }
      }

      if (*v23 != v21)
      {
        break;
      }

      if (v23 == v22)
      {
        goto LABEL_55;
      }

      if (v12 - 1 > v24)
      {
        ++v24;
      }

      if (v50 >= 0)
      {
        v38 = &__p;
      }

      else
      {
        v38 = __p;
      }

      v26 = v38[v24];
      *(a1 + 24) = --v23;
      if (v23 < v22)
      {
        goto LABEL_27;
      }
    }

    v29 = sub_100368504(a1);
    if ((v50 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_27:
  v29 = 1;
  if (v50 < 0)
  {
LABEL_56:
    v47 = v29;
    operator delete(__p);
    v29 = v47;
  }

LABEL_57:
  v10 = v29;
LABEL_58:
  std::locale::~locale(&v51);
  return v10;
}

void sub_1003684C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::locale::~locale(&a15);
    _Unwind_Resume(a1);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_100368504(uint64_t a1)
{
  if (*(a1 + 24) < *(a1 + 16))
  {
    return 1;
  }

  do
  {
    result = sub_10036855C(a1);
    if (!result)
    {
      break;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24) - 1;
    *(a1 + 24) = v4;
  }

  while (v4 >= v3);
  return result;
}

uint64_t sub_10036855C(uint64_t a1)
{
  v1 = *(a1 + 2);
  v2 = *a1 | ((v1 >> 1) > 0xCCCu);
  *a1 = v2;
  v3 = 10 * v1;
  *(a1 + 2) = v3;
  v4 = **(a1 + 24);
  if ((**(a1 + 24) - 58) < 0xF6u)
  {
    return 0;
  }

  v5 = v4 - 48;
  v6 = (v4 - 48) * v3;
  if (v5)
  {
    if (v2)
    {
      return 0;
    }

    if (((v5 * v3) & 0xFFFF0000) != 0)
    {
      return 0;
    }

    v7 = *(a1 + 8);
    v8 = *v7;
    if (((v8 + v6) & 0x10000) != 0)
    {
      return 0;
    }
  }

  else
  {
    v7 = *(a1 + 8);
    LOWORD(v8) = *v7;
  }

  *v7 = v8 + v6;
  return 1;
}

void sub_1003685F0(double a1)
{
  v1 = 2 * (a1 >= 65536.0);
  if (a1 <= -1.0)
  {
    v1 = 1;
  }

  if (v1 == 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    exception->__vftable = 0;
    v3 = sub_1000D8810(exception);
  }

  if (v1 == 1)
  {
    v4 = __cxa_allocate_exception(8uLL);
    v4->__vftable = 0;
    v5 = sub_1000D87D8(v4);
  }
}

void sub_100368770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1003687D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1003687C8);
}

void sub_1003688F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10036895C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10036894CLL);
}

uint64_t sub_100368994@<X0>(char *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_100368A44(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_100368A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100368A44(char *a1, std::string *a2)
{
  sub_1000D2150(&v22);
  sub_100368C2C(&v22, a1);
  v5 = v4;
  if (v4)
  {
    v7 = v25;
    v6 = v26;
    v8 = &v26[-v25];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v12 = a2->__r_.__value_.__r.__words[2];
      v11 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v11 >= v8)
      {
        v13 = HIBYTE(v12);
LABEL_9:
        if ((v13 & 0x80u) == 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_12:
        if (v7 == v6)
        {
          v14 = v10;
        }

        else
        {
          if (v8 < 0x20 || v10 - v7 < 0x20)
          {
            v14 = v10;
            v15 = v7;
          }

          else
          {
            v14 = (v10 + (v8 & 0xFFFFFFFFFFFFFFE0));
            v15 = (v7 + (v8 & 0xFFFFFFFFFFFFFFE0));
            v16 = (v7 + 16);
            v17 = &v10->__r_.__value_.__r.__words[2];
            v18 = v8 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v19 = *v16;
              *(v17 - 1) = *(v16 - 1);
              *v17 = v19;
              v16 += 2;
              v17 += 4;
              v18 -= 32;
            }

            while (v18);
            if (v8 == (v8 & 0xFFFFFFFFFFFFFFE0))
            {
              goto LABEL_22;
            }
          }

          do
          {
            v20 = *v15++;
            v14->__r_.__value_.__s.__data_[0] = v20;
            v14 = (v14 + 1);
          }

          while (v15 != v6);
        }

LABEL_22:
        v14->__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          a2->__r_.__value_.__l.__size_ = v8;
        }

        else
        {
          *(&a2->__r_.__value_.__s + 23) = v8 & 0x7F;
        }

        goto LABEL_25;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v10 = a2;
      if (v8 <= 0x16)
      {
        goto LABEL_12;
      }

      v11 = 22;
    }

    std::string::__grow_by(a2, v11, v8 - v11, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v13) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_9;
  }

LABEL_25:
  std::ostream::~ostream();
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22.n128_i8[8]);
  return v5;
}

__n128 sub_100368C2C(__n128 *a1, char *a2)
{
  v4 = &a1[6].n128_u64[1];
  v5 = &a1[6].n128_i8[*(a1[6].n128_u64[1] - 24) + 8];
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  v9 = *a2;
  v6 = sub_10003C2E4(v4, &v9, 1);
  v7 = (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
  result = *(*(v4 + *(a1[6].n128_u64[1] - 24) + 40) + 40);
  a1[17] = result;
  return result;
}

const void ***sub_100368D1C(void *a1, uint64_t ***a2)
{
  v4 = sub_1001183C0(&v14, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_1001182C8(v10 + 2, a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1001182C8(v10 + 2, a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_100369090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100184820(va);
  _Unwind_Resume(a1);
}

void sub_1003690A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100118124(v2);
  sub_100184820(va);
  _Unwind_Resume(a1);
}

void ***sub_1003690C0(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_100369158(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      if ((*(i - 33) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 33) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1003691DC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x492492492492492)
  {
    sub_10000FC84();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_10000D444();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  v16 = v6;
  v17 = v6;
  if (*(a2 + 23) < 0)
  {
    sub_100003228(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100003228((v6 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v6 + 24) = *(a2 + 24);
    *(v6 + 40) = *(a2 + 40);
  }

  *(v6 + 48) = *(a2 + 48);
  v7 = v6 + 56;
  v8 = *a1;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v16 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 24) = v14;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 3) = 0;
      *(v12 + 48) = *(v11 + 12);
      v11 = (v11 + 56);
      v12 += 56;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
        if (*(v8 + 23) < 0)
        {
LABEL_25:
          operator delete(*v8);
        }
      }

      else if (*(v8 + 23) < 0)
      {
        goto LABEL_25;
      }

      v8 += 56;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v17 + 56;
}

void sub_1003693F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
    sub_100369158(va);
    _Unwind_Resume(a1);
  }

  sub_100369158(va);
  _Unwind_Resume(a1);
}

void sub_100369450(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044B5B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003694A4(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100369500(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044B608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10036957C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100003228(v8, *a3, *(a3 + 8));
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v8 = *a3;
    v9 = *(a3 + 16);
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      *__p = *a4;
      v7 = *(a4 + 16);
      goto LABEL_6;
    }
  }

  sub_100003228(__p, *a4, *(a4 + 8));
LABEL_6:
  sub_100316C10(a2, v8, __p);
  if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v8[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_10;
  }
}

void sub_100369644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_100369740(_Unwind_Exception *a1)
{
  sub_10002BB1C(&v1[1].__shared_weak_owners_);
  sub_10002BB1C(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_100369770(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1003697A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044B658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100369978(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1003699B0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044B6A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100369A04(uint64_t a1)
{
  std::mutex::~mutex((a1 + 72));
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = v2[*(a1 + 32)];
    if (!v3)
    {
LABEL_18:
      operator delete(v2);
      *(a1 + 40) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      return;
    }

    while (1)
    {
      v5 = *v3;
      v6 = v3[3];
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = v3[4];
      v4 = v3[3];
      if (v7 != v6)
      {
        break;
      }

LABEL_5:
      v3[4] = v6;
      operator delete(v4);
LABEL_6:
      operator delete(v3);
      v3 = v5;
      if (!v5)
      {
        v2 = *(a1 + 64);
        goto LABEL_18;
      }
    }

    while (1)
    {
      v8 = *(v7 - 8);
      if (v8)
      {
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v9 = *(v7 - 40);
      if (v9)
      {
        goto LABEL_14;
      }

LABEL_10:
      v7 -= 48;
      if (v7 == v6)
      {
        v4 = v3[3];
        goto LABEL_5;
      }
    }

    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v9 = *(v7 - 40);
    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_14:
    (*(*v9 + 8))(v9);
    goto LABEL_10;
  }
}

void sub_100369C88(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_100369DEC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_100369E04(uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a2[3];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a2[1];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a2[1];
    if (!v5)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_100369F40(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044B6F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10036A0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

std::string *sub_10036A0C0@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10036A0F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036A110()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10036A180()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10036A1F0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10036A740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036AFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036B358()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10036B3C8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10036B444()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10036B4B4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10036B524()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10036B7E4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_10036B840()
{
  if (qword_10045B070 == -1)
  {
    v1 = qword_10045B078;
  }

  else
  {
    sub_100387C38();
    v1 = qword_10045B078;
  }

  return v1;
}

void sub_10036B898(id a1, NSArray *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = a2;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v5 = *v13;
    *&v4 = 138477827;
    v11 = v4;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (([v7 hasPrefix:{@"com.apple.pipelined.TilePrefetch", v11, v12}] & 1) != 0 && (objc_msgSend(v7, "isEqualToString:", @"com.apple.pipelined.TilePrefetch.v0") & 1) == 0)
        {
          if (qword_10045B070 != -1)
          {
            sub_100387C10();
          }

          v8 = qword_10045B078;
          if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
          {
            *buf = v11;
            v17 = v7;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Cancelling existing stale session %{private}@", buf, 0xCu);
          }

          v9 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v7];
          v10 = [NSURLSession sessionWithConfiguration:v9];
          [v10 invalidateAndCancel];
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v3);
  }
}

void sub_10036C404(uint64_t a1)
{
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
    v2 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "unavailable foreground session reset complete", v3, 2u);
  }

LABEL_4:
  dispatch_group_leave(*(a1 + 32));
}

void sub_10036C4A4(uint64_t a1)
{
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
    v2 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "available foreground session reset complete", v3, 2u);
  }

LABEL_4:
  dispatch_group_leave(*(a1 + 32));
}

void sub_10036C544(uint64_t a1)
{
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
    v2 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "background session reset complete", v3, 2u);
  }

LABEL_4:
  dispatch_group_leave(*(a1 + 32));
}

void sub_10036CA30(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10036C9B0);
}

void sub_10036CC00(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10036CB7CLL);
}

void sub_10036CC20(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10036CB3CLL);
}

void sub_10036CD4C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10036CCC8);
}

void sub_10036CD6C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10036CC88);
}

void sub_10036CEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10036CED8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_10036CEF0(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 8));
  v2 = a1[5];

  return dispatch_semaphore_signal(v2);
}

void sub_10036D014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::future<void> a10)
{
  std::future<void>::~future(&a10);
  std::promise<void>::~promise((v10 - 56));

  _Unwind_Resume(a1);
}

void sub_10036D038(_Unwind_Exception *a1)
{
  std::promise<void>::~promise((v1 - 56));

  _Unwind_Resume(a1);
}

void sub_10036D068(uint64_t a1)
{
  objc_storeStrong((**(a1 + 32) + 8), **(a1 + 40));
  v2 = *(a1 + 48);

  std::promise<void>::set_value(v2);
}

__n128 sub_10036D0B0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

void sub_10036D9D8(id a1, NSArray *a2, NSArray *a3, NSArray *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v9 = qword_10045B078;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v20 = [(NSArray *)v8 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Building list of in-flight background downloads to cancel: downloadTasks: %lu.", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = v8;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v14 + 1) + 8 * i) cancel];
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

void sub_10036DC4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = a2;
  v21 = a3;
  v22 = a4;
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v7 = qword_10045B078;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v32 = [v22 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found %{public}lu download tasks to cancel", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v22;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        v12 = [IndoorRequestInfo indoorRequestInfoFromTask:v11];
        v13 = *(a1 + 32);
        v14 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v13 count] - 1);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10036E090;
        v24[3] = &unk_10044B830;
        v15 = v12;
        v25 = v15;
        v16 = [v13 indexOfObjectAtIndexes:v14 options:0 passingTest:v24];

        if (*(a1 + 32) && v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (qword_10045B070 != -1)
          {
            sub_100387C10();
          }

          v17 = qword_10045B078;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v18 = [v15 description];
            *buf = 138477827;
            v32 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Leaving %{private}@ as background", buf, 0xCu);
          }
        }

        else
        {
          [v11 cancel];
          if (qword_10045B070 != -1)
          {
            sub_100387C10();
          }

          v17 = qword_10045B078;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v19 = [v11 description];
            *buf = 138477827;
            v32 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Cancelling %{private}@", buf, 0xCu);
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }
}

id sub_10036E090(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 floorUuid];
  v7 = [*(a1 + 32) floorUuid];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

id sub_10036EB08(uint64_t a1)
{
  v7[0] = @"canstart";
  v2 = [NSNumber numberWithBool:*(a1 + 40)];
  v8[0] = v2;
  v7[1] = @"idsInUniverse";
  v3 = [NSNumber numberWithInt:*(a1 + 32)];
  v8[1] = v3;
  v7[2] = @"pctOnDisk";
  v4 = [NSNumber numberWithInt:*(a1 + 36)];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_10036F1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036F7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  sub_100047F24(&a28);

  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_10036FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v15 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_100370050(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_autoreleasePoolPop(v2);
}

void sub_1003700B0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100370294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1003702B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained onQueueNotifyDelegateForegroundFetchComplete];

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100370508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_100370528(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained onQueueNotifyDelegatePrefetchComplete];

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100370710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  objc_destroyWeak((v21 + 40));
  _Block_object_dispose(&a16, 8);

  objc_destroyWeak((v22 - 40));
  _Unwind_Resume(a1);
}

void sub_100370764(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained backgroundSessionQueue];
  v4 = [v3 session];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100370870;
  v5[3] = &unk_10044B930;
  objc_copyWeak(&v6, (a1 + 40));
  v5[4] = *(a1 + 32);
  [v4 getTasksWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
}

void sub_100370838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));

  _Unwind_Resume(a1);
}

void sub_100370870(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [v5 indexesOfObjectsPassingTest:&stru_10044B908];
  if (qword_10045B070 != -1)
  {
    sub_100387C38();
  }

  v7 = qword_10045B078;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 count];
    v12 = 134349312;
    v13 = v8 - [v6 count];
    v14 = 2050;
    v15 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found %{public}lu out of %{public}lu download tasks complete", &v12, 0x16u);
  }

  if (![v6 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained notifyDelegatePrefetchComplete];
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

BOOL sub_100370A04(id a1, NSURLSessionDownloadTask *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(NSURLSessionDownloadTask *)v4 state]== 2)
  {

    return 0;
  }

  else
  {
    v6 = [(NSURLSessionDownloadTask *)v4 state]!= 3;

    return v6;
  }
}

void sub_100370B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100364D88(&a9);

  _Unwind_Resume(a1);
}

void sub_100370C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100364D88(&a9);

  _Unwind_Resume(a1);
}

void sub_100370E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_100370ED4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained onQueueSessionWillSendRequestForEstablishedConnection:*(a1 + 32) task:*(a1 + 40) completionHandler:*(a1 + 48)];

  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_10037175C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_100047F24(v51 - 160);

  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void sub_100371B94(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_100371BD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v11 = *(a1 + 72);
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [WeakRetained onQueueSession:v4 didFinishDownloadTask:v5 toPath:v6 inTempPath:&v11];
  v8 = v12;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_100371CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100371CB8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100371CD4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100372090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003723CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained URLSession:*(a1 + 32) task:*(a1 + 40) didCompleteWithError:*(a1 + 48)];
}

void sub_100372AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  sub_10002BB1C(&a25);

  _Unwind_Resume(a1);
}

uint64_t sub_100372C44(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v4 = +[NSDate date];
  }

  v5 = v4;
  v6 = [v3 lastRelevant];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  if (v8 < 0.0 && [v3 context] != 1)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387C38();
    }

    v9 = qword_10045B078;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = [v3 venueUuid];
      v14 = 136380931;
      v15 = [v12 UTF8String];
      v16 = 2050;
      v17 = v8 / 3600.0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "TileRelevant, %{private}s, future, %{public}f, ignoring, #Warning", &v14, 0x16u);
    }

    goto LABEL_15;
  }

  if (v8 >= 540000.0)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387C38();
    }

    v9 = qword_10045B078;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v3 venueUuid];
      v14 = 136380931;
      v15 = [v10 UTF8String];
      v16 = 2050;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "TileRelevant, %{private}s, tooOld, %{public}f, ignoring, #Warning", &v14, 0x16u);
    }

LABEL_15:

    v11 = 0;
    goto LABEL_16;
  }

  v11 = 1;
LABEL_16:

  return v11;
}

void sub_100372E6C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1003730EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_100373128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained onQueueSessionDidCompleteTask:*(a1 + 32) withError:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100373780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  sub_100364D88(&a35);
  _Unwind_Resume(a1);
}

void sub_100373D20(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

void sub_100373D84(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044BA08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100373E24()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100373E94()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100373F04()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id sub_100374178()
{
  if (qword_10045B070 == -1)
  {
    v1 = qword_10045B078;
  }

  else
  {
    sub_100388008();
    v1 = qword_10045B078;
  }

  return v1;
}

void sub_100374C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 - 136));

  _Unwind_Resume(a1);
}

void sub_100374DA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_29;
  }

  sub_100375374(v14);
  v2 = WeakRetained[8];
  if (v2 != 1)
  {
    v10 = v2 == v14[0];
    v9 = v10;
    if (v14[0])
    {
      if ((v16 & 0x80) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

LABEL_24:
    if (v10)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if ((v14[0] & 1) == 0)
  {
    v10 = v14[0] == 1;
    goto LABEL_24;
  }

  v3 = WeakRetained[39];
  if (v3 >= 0)
  {
    v4 = WeakRetained[39];
  }

  else
  {
    v4 = *(WeakRetained + 3);
  }

  v5 = v16;
  v6 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  if (v4 != v5)
  {
    v9 = 0;
    if ((v16 & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (v3 >= 0)
  {
    v7 = WeakRetained + 16;
  }

  else
  {
    v7 = *(WeakRetained + 2);
  }

  if ((v16 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = memcmp(v7, v8, v4) == 0;
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  operator delete(__p[0]);
  if (v9)
  {
    goto LABEL_29;
  }

LABEL_25:
  v11 = *(WeakRetained + 15);
  *(WeakRetained + 15) = 0;

  v12 = *(WeakRetained + 6);
  *(WeakRetained + 5) = 0;
  *(WeakRetained + 6) = 0;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  [WeakRetained _setWorkingdir:{*(a1 + 40), WeakRetained}];
LABEL_29:
}

id sub_100374F80(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_100374FBC(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

void sub_1003752FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100375374(uint64_t a1)
{
  v2 = sub_1000DD718();
  sub_100003AE8(v2);
  data = v9.__r_.__value_.__l.__data_;
  sub_100005B18(&v9);
  if (data == data >> 31)
  {
    *a1 = 0;
  }

  else
  {
    v7 = sub_1000DD718();
    v8 = v4;
    v6 = 0;
    LOBYTE(__p) = 0;
    sub_100322CE0(&v7, &__p, &v9);
    *(a1 + 8) = v9;
    memset(&v9, 0, sizeof(v9));
    *a1 = 1;
    if (v6 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_100375444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int128 __p, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    if (SHIBYTE(a11) < 0)
    {
      sub_100003228(&a14, __p, *(&__p + 1));
    }

    else
    {
      a14 = __p;
      a15 = a11;
    }

    __cxa_end_catch();
    JUMPOUT(0x1003753E8);
  }

  _Unwind_Resume(exception_object);
}

void sub_100375884(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained transactionManager];
  [v4 openTransactionWithDescription:@"vacuumDBs"];

  if (qword_10045B070 != -1)
  {
    sub_100388008();
  }

  v5 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Processing request to vacuum databases", &v15, 2u);
  }

  if ([WeakRetained initializeDb])
  {
    if (qword_10045B070 != -1)
    {
      sub_100388618();
    }

    v6 = qword_10045B078;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = (*(*WeakRetained[5] + 232))(WeakRetained[5]);
      if (*(v7 + 23) >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = *v7;
      }

      v15 = 136380675;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Vacuuming database at %{private}s", &v15, 0xCu);
    }

    (*(*WeakRetained[5] + 104))(WeakRetained[5]);
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100388618();
    }

    v9 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No DB handles could be obtained to process db vacuuming request.", &v15, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
  v10 = [WeakRetained transactionManager];
  v11 = [v10 isLastOpenTransactionWithDescription:@"vacuumDBs"];

  if (v11)
  {
    [WeakRetained releaseObjectsNotNeededForLocalization];
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100388618();
    }

    v12 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Deferring destruction of FilesystemDB objects and prefetcher since we're still active", &v15, 2u);
    }
  }

  if (qword_10045B070 != -1)
  {
    sub_100388618();
  }

  v13 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Releasing the VacuumDBs transaction", &v15, 2u);
  }

  v14 = [WeakRetained transactionManager];
  [v14 closeTransactionWithDescription:@"vacuumDBs"];

  objc_autoreleasePoolPop(v2);
}

void sub_100375BAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p)
{
  if (a2)
  {

    __cxa_begin_catch(a1);
    v12 = sub_100374178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = (*(**(v9 + 40) + 232))(*(v9 + 40));
      v14 = *(v13 + 23);
      v15 = *v13;
      sub_10010A5D4(&__p);
    }

    __cxa_end_catch();
    JUMPOUT(0x100375A48);
  }

  _Unwind_Resume(a1);
}

void sub_100375E38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained transactionManager];
  [v3 openTransactionWithDescription:@"clearTiles"];

  v4 = objc_autoreleasePoolPush();
  if (qword_10045B070 == -1)
  {
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100388008();
  v5 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Processing request to clear tiles", buf, 2u);
  }

LABEL_4:
  [WeakRetained onQueueClearTiles:*(a1 + 32)];
  objc_autoreleasePoolPop(v4);
  v6 = [WeakRetained transactionManager];
  v7 = [v6 isLastOpenTransactionWithDescription:@"clearTiles"];

  if (v7)
  {
    [*(a1 + 40) releaseObjectsNotNeededForLocalization];
    goto LABEL_9;
  }

  if (qword_10045B070 == -1)
  {
    v8 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100388618();
  v8 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_8:
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Deferring destruction of FilesystemDB objects and prefetcher since we're still active", v12, 2u);
  }

LABEL_9:
  if (qword_10045B070 != -1)
  {
    sub_100388618();
    v9 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_11:
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Releasing the ClearTiles transaction", v11, 2u);
  }

LABEL_12:
  v10 = [WeakRetained transactionManager];
  [v10 closeTransactionWithDescription:@"clearTiles"];
}

void sub_100376184(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  if (*(WeakRetained + 18))
  {
    if (qword_10045B070 == -1)
    {
      v3 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
LABEL_6:
        v4 = [v2 prefetcher];
        [v4 invalidate];

        [v2 setPrefetcher:0];
        goto LABEL_7;
      }
    }

    else
    {
      sub_100388008();
      v3 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }
    }

    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating the prefetcher", v8, 2u);
    goto LABEL_6;
  }

LABEL_7:
  v5 = [v2 transactionManager];
  v6 = [v5 hasOpenTransactionWithDescription:@"Prefetching"];

  if (v6)
  {
    v7 = [v2 transactionManager];
    [v7 closeTransactionWithDescription:@"Prefetching"];
  }

LABEL_9:
}

void sub_1003762A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100376664(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_100376680(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained onQueuePrefetch:*(a1 + 32) callback:*(a1 + 40) when:*(a1 + 56)];
}

void sub_100376D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void **a41)
{
  sub_10037CEBC(&a41);

  _Unwind_Resume(a1);
}

id sub_100376DDC(unsigned int *a1)
{
  v15[0] = @"numIncoming";
  v14 = [NSNumber numberWithInt:a1[8]];
  v16[0] = v14;
  v15[1] = @"numQueued";
  v13 = [NSNumber numberWithInt:a1[9]];
  v16[1] = v13;
  v15[2] = @"numAlreadyOnDisk";
  v2 = [NSNumber numberWithInt:a1[10]];
  v16[2] = v2;
  v15[3] = @"numLowPriority";
  v3 = [NSNumber numberWithInt:a1[11]];
  v16[3] = v3;
  v15[4] = @"numEvictLow";
  v4 = [NSNumber numberWithInt:a1[12]];
  v16[4] = v4;
  v15[5] = @"numEvictOff";
  v5 = [NSNumber numberWithInt:a1[13]];
  v16[5] = v5;
  v15[6] = @"numTilesInDb";
  v6 = [NSNumber numberWithInt:a1[14]];
  v16[6] = v6;
  v15[7] = @"pctRequested";
  v7 = [NSNumber numberWithInt:a1[17]];
  v16[7] = v7;
  v15[8] = @"pctEvicted";
  v8 = [NSNumber numberWithInt:a1[18]];
  v16[8] = v8;
  v15[9] = @"pctOnDisk";
  v9 = [NSNumber numberWithInt:a1[19]];
  v16[9] = v9;
  v15[10] = @"pctQueued";
  v10 = [NSNumber numberWithInt:a1[20]];
  v16[10] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:11];

  return v11;
}

id sub_1003770E4(unsigned int *a1)
{
  v7[0] = @"numEvicted";
  v2 = [NSNumber numberWithInt:a1[8]];
  v8[0] = v2;
  v7[1] = @"numUntouched";
  v3 = [NSNumber numberWithInt:a1[17]];
  v8[1] = v3;
  v7[2] = @"pctUntouched";
  v4 = [NSNumber numberWithInt:a1[18]];
  v7[3] = @"trigger";
  v8[2] = v4;
  v8[3] = @"prefetch";
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

void sub_10037831C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_4:
      if (a34 < 0)
      {
        operator delete(a29);
      }

      _Unwind_Resume(a1);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(__p);
  goto LABEL_4;
}

void sub_100378634(void *a1)
{
  v1 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100378BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100378CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10037A604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = v6;

  sub_100048F1C(va);
  _Unwind_Resume(a1);
}

void sub_10037AF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10037B03C(uint64_t a1)
{
  v9[0] = @"numEvicted";
  v2 = [NSNumber numberWithInt:*(a1 + 56)];
  v10[0] = v2;
  v9[1] = @"numUntouched";
  v3 = [NSNumber numberWithInt:*(a1 + 60)];
  v10[1] = v3;
  v9[2] = @"pctUntouched";
  v4 = [NSNumber numberWithInt:*(a1 + 64)];
  v10[2] = v4;
  v9[3] = @"trigger";
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

_BYTE *sub_10037B1C4(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_100003228(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_10037B1F0(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_10037B630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_100048F1C(&a9);

  _Unwind_Resume(a1);
}

void sub_10037B8B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained transactionManager];
  [v3 openTransactionWithDescription:@"getNumFloors"];

  if (qword_10045B070 == -1)
  {
    v4 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100388008();
  v4 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Processing request to get number of floors", buf, 2u);
  }

LABEL_4:
  **(a1 + 40) = [WeakRetained onQueueNumFloors];
  v5 = [WeakRetained transactionManager];
  v6 = [v5 isLastOpenTransactionWithDescription:@"getNumFloors"];

  if (v6)
  {
    [WeakRetained releaseObjectsNotNeededForLocalization];
    goto LABEL_9;
  }

  if (qword_10045B070 == -1)
  {
    v7 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100388618();
  v7 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_8:
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Deferring destruction of FilesystemDB objects and prefetcher since we're still active", v11, 2u);
  }

LABEL_9:
  if (qword_10045B070 != -1)
  {
    sub_100388618();
    v8 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_11:
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Releasing getNumFloors transaction", v10, 2u);
  }

LABEL_12:
  v9 = [WeakRetained transactionManager];
  [v9 closeTransactionWithDescription:@"getNumFloors"];
}

void sub_10037BE0C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10037BD98);
}

void sub_10037BE20(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10037BDC8);
}

void sub_10037C038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);

  _Unwind_Resume(a1);
}

void sub_10037C63C(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (qword_10045B070 == -1)
  {
    v3 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100388008();
  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Connection invalidated", buf, 2u);
  }

LABEL_4:
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (!WeakRetained)
  {
    if (qword_10045B070 == -1)
    {
      v11 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
LABEL_16:
        objc_autoreleasePoolPop(v2);
        return;
      }
    }

    else
    {
      sub_100388618();
      v11 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No connection so nothing to do", buf, 2u);
    goto LABEL_16;
  }

  v5 = WeakRetained;
  v6 = [WeakRetained exportedObject];
  v7 = v6;
  if (!v6)
  {
    if (qword_10045B070 == -1)
    {
      v12 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      sub_100388618();
      v12 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "No provider so nothing to invalidate", buf, 2u);
    goto LABEL_15;
  }

  [v6 onConnectionQueueShutdown];

  [v5 setExportedObject:0];
  objc_autoreleasePoolPop(v2);
  v8 = objc_loadWeakRetained(a1 + 6);
  v9 = objc_autoreleasePoolPush();
  v10 = [v8 delayedClearTilesPolicy];

  if (v10)
  {
    if (v8)
    {
      [v8 onQueueDbsToClear];
    }

    else
    {
      *buf = 0;
      v31 = 0;
      v32 = 0;
    }

    v13 = [v8 delayedClearTilesPolicy];
    __p = 0;
    v28 = 0;
    v29 = 0;
    p_p = &__p;
    v34 = 0;
    if (v31 != *buf)
    {
      if ((&v31[-*buf] & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }

    [v8 onQueueClearTiles:v13 fromDbs:&__p];
    v14 = __p;
    if (__p)
    {
      v15 = v28;
      v16 = __p;
      if (v28 != __p)
      {
        do
        {
          v17 = *(v15 - 1);
          if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v17->__on_zero_shared)(v17);
            std::__shared_weak_count::__release_weak(v17);
          }

          v15 -= 16;
        }

        while (v15 != v14);
        v16 = __p;
      }

      v28 = v14;
      operator delete(v16);
    }

    v18 = *buf;
    if (*buf)
    {
      v19 = v31;
      v20 = *buf;
      if (v31 != *buf)
      {
        do
        {
          v21 = *(v19 - 1);
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
          }

          v19 -= 16;
        }

        while (v19 != v18);
        v20 = *buf;
      }

      v31 = v18;
      operator delete(v20);
    }
  }

  objc_autoreleasePoolPop(v9);
  v22 = [v8 transactionManager];
  v23 = [v22 isLastOpenTransactionWithDescription:@"start indoor provider"];

  if (v23)
  {
    [a1[4] releaseObjectsNotNeededForLocalization];
    goto LABEL_44;
  }

  if (qword_10045B070 == -1)
  {
    v24 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  sub_100388618();
  v24 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_43:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Deferring destruction of FilesystemDB objects and prefetcher since we're still active", buf, 2u);
  }

LABEL_44:
  if (qword_10045B070 != -1)
  {
    sub_100388618();
    v25 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v25 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
LABEL_46:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Releasing the indoor provider transaction", buf, 2u);
  }

LABEL_47:
  v26 = [v8 transactionManager];
  [v26 closeTransactionWithDescription:@"start indoor provider"];
}

void sub_10037CB50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_100048F1C(va);

  sub_100048F1C(va1);
  _Unwind_Resume(a1);
}

void sub_10037CDE0(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Daemon");
  v2 = qword_10045B078;
  qword_10045B078 = v1;
}

uint64_t sub_10037CE24(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10037CE78(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Database");
  v2 = qword_10045B088;
  qword_10045B088 = v1;
}

void ***sub_10037CEBC(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10037CF30(uint64_t a1, const char **a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_10000FC84();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_10000D444();
  }

  v9 = 32 * v3;
  v17 = 32 * v3;
  v18 = 32 * v3;
  v10 = *a2;
  v11 = strlen(*a2);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  *(v9 + 23) = v11;
  if (v11)
  {
    memmove(v9, v10, v11);
  }

  *(v9 + v12) = 0;
  *(v9 + 24) = *a3;
  v13 = *(a1 + 8) - *a1;
  v14 = v17 - v13;
  memcpy((v17 - v13), *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v18 + 32;
  *(a1 + 16) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  return v18 + 32;
}

void sub_10037D0C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10037D0D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10037D0D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_10037D1BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_10044BC48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_10037D1F4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  ++**(a1 + 8);
  if (![*v4 tileLastModified:v3 - kCFAbsoluteTimeIntervalSince1970 needsEvictionAt:**(a1 + 24)])
  {
    return 1;
  }

  ++**(a1 + 32);
  if (qword_10045B070 == -1)
  {
    v5 = qword_10045B078;
    result = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    sub_100388008();
    v5 = qword_10045B078;
    result = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }
  }

  *v7 = 0;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Resetting visit for venue", v7, 2u);
  return 0;
}

uint64_t sub_10037D2F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z40[CLIndoorServiceDelegate initializeDb:]E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z40[CLIndoorServiceDelegate initializeDb:]E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z40[CLIndoorServiceDelegate initializeDb:]E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z40[CLIndoorServiceDelegate initializeDb:]E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_10037D368(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_10037D4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_10037D530(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044BCD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_10037D628(uint64_t a1, uint64_t a2)
{
  *a2 = off_10044BD28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL sub_10037D660(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *a3;
  v6 = *a4;
  if (![**(a1 + 8) tileLastModified:*a2 - kCFAbsoluteTimeIntervalSince1970 needsEvictionAt:**(a1 + 16)])
  {
    return 1;
  }

  if (v6 == 82)
  {
    ++**(a1 + 24);
    if (v5)
    {
      ++**(a1 + 32);
    }
  }

  if (qword_10045B070 == -1)
  {
    v7 = qword_10045B078;
    result = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    sub_100388008();
    v7 = qword_10045B078;
    result = os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }
  }

  *v9 = 0;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Requesting tile eviction of a venue", v9, 2u);
  return 0;
}

uint64_t sub_10037D77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z53[CLIndoorServiceDelegate onQueueClearTiles:fromDbs:]E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "Z53[CLIndoorServiceDelegate onQueueClearTiles:fromDbs:]E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z53[CLIndoorServiceDelegate onQueueClearTiles:fromDbs:]E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z53[CLIndoorServiceDelegate onQueueClearTiles:fromDbs:]E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_10037D7F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_10037D8A8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10037D918()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10037D988()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10037DA74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, unint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  if (a17 < 0)
  {
    sub_100003228(&a18, a12, a13);
  }

  else
  {
    a18 = *(v19 + 16);
    a19 = *(v19 + 32);
  }

  __cxa_end_catch();
  JUMPOUT(0x10037D9E0);
}

void sub_10037DAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __cxa_end_catch();
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10037DB14(id a1)
{
  v1 = MKBUserTypeDeviceMode();
  v2 = [v1 objectForKey:kMKBDeviceModeKey];
  if ([v2 isEqualToString:kMKBDeviceModeSharedIPad])
  {
    byte_10045DB0A = 1;
  }
}

void sub_10037DC60(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10037DF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10037E008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = Keybag;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10037E0AC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_10037E0F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onQueueUpdateDelegate];
}

void sub_10037E160()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10037E1D0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10037E240()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10037E268(uint64_t a1, std::string *a2, uint64_t a3)
{
  sub_1001F1028(a2, &v16);
  sub_1001F0E18(a2, &v14);
  if (*(a3 + 23) < 0)
  {
    sub_100003228(v12, *a3, *(a3 + 8));
  }

  else
  {
    *v12 = *a3;
    v13 = *(a3 + 16);
  }

  v6 = sub_1001F1020(a2);
  v11 = 0;
  LOBYTE(__p) = 0;
  memset(v8, 0, sizeof(v8));
  v7[0] = off_10043A528;
  v7[1] = v8;
  v9[0] = 0;
  *(v9 + 5) = 0;
  sub_100333DB0(a1, &v16, &v14, v12, v6, &__p, v7);
  sub_1000E1ACC(v7);
  if (v11 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
LABEL_6:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v12[0]);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(v16);
    return;
  }

LABEL_11:
  operator delete(v14);
  if (v17 < 0)
  {
    goto LABEL_12;
  }
}

void sub_10037E3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
    if ((*(v29 - 33) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v29 - 33) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v29 - 56));
  _Unwind_Resume(exception_object);
}

uint64_t sub_10037E45C(uint64_t a1)
{
  sub_1000E1ACC(a1 + 136);
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
      *(a1 + 104) = 0;
      if (*(a1 + 103) < 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(a1 + 104) = 0;
      if (*(a1 + 103) < 0)
      {
        goto LABEL_11;
      }
    }

LABEL_3:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  operator delete(*(a1 + 80));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_14;
  }

LABEL_12:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_14:
  operator delete(*a1);
  return a1;
}

void sub_10037E528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100184308(v6, a2);
  if (*(a3 + 23) < 0)
  {
    sub_100003228(v4, *a3, *(a3 + 8));
  }

  else
  {
    *v4 = *a3;
    v5 = *(a3 + 16);
  }

  sub_10037E268(&v7, v6, v4);
  sub_10037E870();
}

void sub_10037E7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_10035B188(va);
  _Unwind_Resume(a1);
}

void sub_10037E804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  nullsub_59(&a10);
  sub_10002BB1C(&a17);
  sub_10002BB1C(&a15);
  sub_10037E45C(&a44);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_10035B188(&a25);
  _Unwind_Resume(a1);
}

void sub_10037E978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::~__shared_weak_count(v14);
    operator delete(v16);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_10037E9D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044BE28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10037EA54(uint64_t result)
{
  *result = off_10044BE78;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_10037EAB0(uint64_t a1)
{
  *a1 = off_10044BE78;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

char *sub_10037EB4C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[31] < 0)
  {
    return sub_100003228(a2, *(result + 1), *(result + 2));
  }

  *a2 = *(result + 8);
  *(a2 + 16) = *(result + 3);
  return result;
}

char *sub_10037EB74@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[31] < 0)
  {
    return sub_100003228(a2, *(result + 1), *(result + 2));
  }

  *a2 = *(result + 8);
  *(a2 + 16) = *(result + 3);
  return result;
}

void sub_10037EB9C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10037EC0C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10037EC7C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10037ECA4(uint64_t a1, uint64_t a2, double *a3, int8x16_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a4.i64[0];
  *v6.i64 = sub_10037EF80(a3);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *&v8 = vbslq_s8(vnegq_f64(v7), v6, a4).u64[0];
  if (*a4.i64 == 0.0)
  {
    v8 = 0.0;
  }

  *(a1 + 16) = v8;
  if (a2 < 0)
  {
    sub_100014A08(v12, "");
    sub_10023AEF4("Invalid timestamp", &v13);
    sub_100382FC4(&v13, __p, v12);
    sub_1000BC6D8(__p);
  }

  return a1;
}

void sub_10037ED84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037EDCC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10037EE3C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double *sub_10037EEAC(double *result, double a2, double a3, double a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

double sub_10037EEB8(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 16) = result;
  return result;
}

float64_t sub_10037EEDC(float64x2_t *a1, float64x2_t *a2)
{
  *a1 = vaddq_f64(*a2, *a1);
  result = a2[1].f64[0] + a1[1].f64[0];
  a1[1].f64[0] = result;
  return result;
}

float64_t sub_10037EF00(float64x2_t *a1, float64x2_t *a2)
{
  *a1 = vsubq_f64(*a1, *a2);
  result = a1[1].f64[0] - a2[1].f64[0];
  a1[1].f64[0] = result;
  return result;
}

float64_t sub_10037EF44(float64x2_t *a1, double a2)
{
  *a1 = vmulq_n_f64(*a1, a2);
  result = a1[1].f64[0] * a2;
  a1[1].f64[0] = result;
  return result;
}

float64_t sub_10037EF60(float64x2_t *a1, double a2)
{
  *a1 = vdivq_f64(*a1, vdupq_lane_s64(*&a2, 0));
  result = a1[1].f64[0] / a2;
  a1[1].f64[0] = result;
  return result;
}

double sub_10037EF9C(double *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  return a1[2];
}

void sub_10037F1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v56 - 64));
  if (*(v56 - 73) < 0)
  {
    operator delete(*(v56 - 96));
    if ((*(v56 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      if ((a18 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((*(v56 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v56 - 128));
  if ((a18 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v56 - 137) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a13);
  if ((*(v56 - 137) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v56 - 160));
  if ((a56 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a51);
  if ((a24 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a49 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a19);
  if ((a49 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a44);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a37);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a36 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

LABEL_22:
  operator delete(a25);
  if ((a36 & 0x80000000) == 0)
  {
LABEL_23:
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(a31);
  goto LABEL_23;
}

uint64_t sub_10037F3E8@<X0>(char *__s@<X1>, const void **a2@<X0>, void *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = strlen(__s);
  v8 = v6 + result;
  if (v6 + result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v9 = result;
  if (v8 > 0x16)
  {
    operator new();
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *(a3 + 23) = v8;
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    result = memmove(a3, v10, v6);
  }

  v11 = a3 + v6;
  if (v9)
  {
    result = memmove(v11, __s, v9);
  }

  v11[v9] = 0;
  return result;
}

void sub_10037F4EC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10037F55C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double *sub_10037F5CC(double *a1)
{
  v2 = sub_10037EEAC(a1, 0.0, 0.0, -1.0);
  sub_10037EEAC(v2 + 3, 0.0, 0.0, -9.81);
  sub_10037EEAC(a1 + 6, 0.0, 0.0, 0.0);
  return a1;
}

double sub_10037F634(uint64_t a1, uint64_t a2)
{
  sub_10037EEB8(&v4, a2);
  v6 = v4;
  v7 = v5;
  sub_10037EEDC(&v6, (a1 + 24));
  result = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = result;
  return result;
}

void sub_10037F7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10037F7E0(double *a1)
{
  *v2.i64 = sub_10037EF80(a1 + 6);
  v8 = v2;
  *v3.i64 = sub_10037EF24(a1 + 6, a1);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  *&v5 = vbslq_s8(vnegq_f64(v4), v8, v3).u64[0];
  v6 = *v3.i64 == 0.0;
  result = 0.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

double sub_10037F83C(uint64_t a1)
{
  *a1 = 892857142;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = off_10043D988;
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) &= 0xFC00u;
  *(a1 + 136) = 0x7FF8000000000000;
  *(a1 + 144) = off_10043D988;
  *(a1 + 224) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 192) = 0;
  *(a1 + 232) &= 0xFC00u;
  *(a1 + 240) = 0x7FF8000000000000;
  return result;
}

uint64_t *sub_10037F8EC(uint64_t *a1, uint64_t a2, double a3)
{
  sub_10012A2B8((a1 + 5), (a1 + 18));
  a1[17] = a1[30];
  sub_10012A244(v9, a2);
  v10 = a3;
  sub_10012A2B8((a1 + 18), v9);
  *(a1 + 30) = v10;
  nullsub_67(v9);
  v6 = a1[2];
  if (v6 >= a1[3])
  {
    v7 = sub_10037FF98(a1 + 1, (a1 + 18));
  }

  else
  {
    sub_10012A244(a1[2], (a1 + 18));
    *(v6 + 96) = a1[30];
    v7 = v6 + 104;
    a1[2] = v6 + 104;
  }

  a1[2] = v7;
  return sub_10037FD10(a1, 0x4EC4EC4EC4EC4EC5 * ((v7 - a1[1]) >> 3) - 1);
}

void sub_10037F9DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nullsub_67(va);
  _Unwind_Resume(a1);
}

float64_t sub_10037FA14(uint64_t a1)
{
  v8.f64[0] = sub_10037EECC();
  v8.f64[1] = v2;
  v9 = v3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5)
  {
    v6 = *(a1 + 8);
  }

  else
  {
    do
    {
      sub_10037EEB8(&v10, v4);
      sub_10037EEDC(&v8, &v10);
      v4 += 104;
    }

    while (v4 != v5);
    v4 = *(a1 + 8);
    v6 = *(a1 + 16);
  }

  sub_10037EF44(&v8, 1.0 / (0x4EC4EC4EC4EC4EC5 * ((v6 - v4) >> 3)));
  return v8.f64[0];
}

double sub_10037FAD4(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 16) || *(a1 + 32) != 2)
  {
    return NAN;
  }

  v13 = v4;
  v14 = v3;
  v15 = v1;
  v16 = v2;
  v11[0] = sub_10037FA14(a1);
  v11[1] = v6;
  v11[2] = v7;
  sub_10037EEB8(&v12, *(a1 + 16) - 104);
  v8 = sub_10037FBC8(&v12, v11);
  sub_10037EEB8(&v12, *(a1 + 8));
  v9 = sub_10037FBC8(&v12, v11);
  if (v8 >= v9)
  {
    v9 = v8;
  }

  return v9 / (((*(*(a1 + 16) - 72) - *(*(a1 + 8) + 32)) / 2) / 1000000000.0);
}

long double sub_10037FBC8(float64x2_t *a1, uint64_t a2)
{
  v8 = *a2;
  v9 = *(a2 + 16);
  sub_10037EF00(&v8, a1);
  v4 = sub_10037EF80(v8.f64);
  v8 = *a2;
  v9 = *(a2 + 16);
  sub_10037EEDC(&v8, a1);
  sub_10037EF44(&v8, 0.5);
  v5 = sub_10037EF80(v8.f64);
  if (v5 < v4)
  {
    return 3.14159265;
  }

  v7 = asin(v4 / v5);
  return v7 + v7;
}

void **sub_10037FCB4(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = nullsub_67(v3 - 104);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_10037FD10(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  v3 = result[2] - v2;
  if (v3 == 104)
  {
    *(result + 8) = 1;
  }

  else
  {
    v4 = 0x4EC4EC4EC4EC4EC5 * (v3 >> 3);
    if (v4 <= a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        if (v5 != a2)
        {
          v6 = *(v2 + 104 * a2 + 32);
          v7 = *result;
          v8 = (v2 + 32 + 104 * v5);
          while (1)
          {
            v9 = *v8;
            v8 += 13;
            if (v7 >= v6 - v9)
            {
              break;
            }

            ++v5;
            *(result + 8) = 2;
            if (a2 == v5)
            {
              goto LABEL_5;
            }
          }
        }

        if (v5 == a2)
        {
LABEL_5:
          *(result + 8) = 1;
          v5 = a2;
        }

        ++a2;
      }

      while (a2 != v4);
    }

    memset(__p, 0, 24);
    __p[3] = __p;
    v11 = 0;
    if (v5)
    {
      if (v5 < 0x276276276276277)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  return result;
}

void sub_10037FF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003801C8(va);
  _Unwind_Resume(a1);
}

void sub_10037FF50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10037FCB4(va);
  _Unwind_Resume(a1);
}

void sub_10037FF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v6)
  {
    v8 = v5 - 104;
    v9 = -v6;
    do
    {
      v8 = nullsub_67(v8) - 104;
      v9 += 104;
    }

    while (v9);
  }

  sub_1003801C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10037FF98(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_10000FC84();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x276276276276276)
    {
      operator new();
    }

    sub_10000D444();
  }

  v14 = 8 * ((a1[1] - *a1) >> 3);
  sub_10012A244(v14, a2);
  *(v7 + 96) = *(a2 + 96);
  v8 = 104 * v2 + 104;
  v9 = *a1;
  v10 = a1[1];
  v11 = v14 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      sub_10012A244(v11 + v12, &v9[v12]);
      *(v11 + v12 + 96) = *&v9[v12 + 96];
      v12 += 104;
    }

    while (&v9[v12] != v10);
    do
    {
      nullsub_67(v9);
      v9 += 104;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_100380130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100380174(va);
  _Unwind_Resume(a1);
}

void sub_100380144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = v2 - 104;
    v6 = -v3;
    do
    {
      v5 = nullsub_67(v5) - 104;
      v6 += 104;
    }

    while (v6);
  }

  sub_100380174(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100380174(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    nullsub_67(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_1003801C8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = nullsub_67(v4 - 104);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

double sub_100380240(uint64_t a1)
{
  if (*a1 == 1)
  {
    return 1.0 / (*(a1 + 8) / 1000000000.0);
  }

  else
  {
    return NAN;
  }
}

char *sub_10038027C(char *result, uint64_t a2)
{
  v2 = *(result + 3);
  if (v2 == 0x8000000000000000)
  {
    if (*result)
    {
      v3 = 0;
LABEL_9:
      *result = v3;
    }
  }

  else
  {
    v4 = *(result + 2);
    if (v4 == 0x8000000000000000)
    {
      v5 = 2 * (a2 - v2);
    }

    else
    {
      v5 = a2 - v4;
    }

    v6 = *result;
    *(result + 1) = v5;
    if ((v6 & 1) == 0)
    {
      v3 = 1;
      goto LABEL_9;
    }
  }

  *(result + 2) = v2;
  *(result + 3) = a2;
  return result;
}

float64x2_t sub_1003802D0(uint64_t a1)
{
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  result = vnegq_f64(0);
  *(a1 + 16) = result;
  return result;
}

void sub_10038034C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003803BC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10038042C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 225000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 750000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  operator new();
}

void sub_100380540(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x10038050CLL);
}

void sub_100380554(_Unwind_Exception *a1)
{
  if (*(v1 + 120) == 1)
  {
    *(v1 + 120) = 0;
  }

  sub_10002BB1C(v1 + 96);
  sub_100380D4C(v2);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1003805B0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 32);
  *&v46 = v5;
  *(&v46 + 1) = a3;
  sub_1000277F8(a1 + 24, &v46);
  sub_1000462CC((a1 + 16), ((*(a1 + 32) - *(a1 + 24)) >> 4) - 1);
  v6 = *(a1 + 72);
  if (v6 >= *(a1 + 80))
  {
    v7 = sub_1000511F8((a1 + 64), a2);
  }

  else
  {
    sub_10012A244(*(a1 + 72), a2);
    v7 = v6 + 96;
    *(a1 + 72) = v6 + 96;
  }

  *(a1 + 72) = v7;
  sub_100380EF8((a1 + 56), 0xAAAAAAAAAAAAAAABLL * ((v7 - *(a1 + 64)) >> 5) - 1);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (v8 == v9)
  {
    v11 = 0.0;
    goto LABEL_12;
  }

  v10 = v9 - v8 - 16;
  if (v10 < 0x10)
  {
    v11 = 0.0;
    v12 = *(a1 + 24);
    do
    {
LABEL_11:
      v11 = v11 + *(v12 + 8);
      v12 += 16;
    }

    while (v12 != v9);
    goto LABEL_12;
  }

  v13 = (v10 >> 4) + 1;
  v12 = v8 + 16 * (v13 & 0x1FFFFFFFFFFFFFFELL);
  v14 = (v8 + 24);
  v11 = 0.0;
  v15 = v13 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    v16 = *(v14 - 2);
    v17 = *v14;
    v14 += 4;
    v11 = v11 + v16 + v17;
    v15 -= 2;
  }

  while (v15);
  if (v13 != (v13 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_11;
  }

LABEL_12:
  v18 = v11 / ((v9 - v8) >> 4);
  *(a1 + 8) = v18;
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = v19 - v20;
  if (v19 == v20)
  {
    *a1 = 0;
LABEL_26:
    *(a1 + 152) = 2;
    sub_1003802D0(a1 + 120);
    *(a1 + 160) = 0;
    *(a1 + 180) = 2;
    return;
  }

  v22 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 5);
  v23 = v21 - 96;
  v24 = (v21 - 96) / 0x60uLL + 1;
  if (v23 <= 0x5F)
  {
    v25 = 0uLL;
    v26 = 0.0;
    v27 = *(a1 + 64);
    do
    {
LABEL_19:
      v25 = vaddq_f64(v25, *(v27 + 1));
      v26 = v26 + v27[3];
      v27 += 12;
    }

    while (v27 != v19);
    goto LABEL_20;
  }

  v27 = &v20[12 * (v24 & 0x7FFFFFFFFFFFFFELL)];
  v28 = v20 + 15;
  v25 = 0uLL;
  v26 = 0.0;
  v29 = v24 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v25 = vaddq_f64(vaddq_f64(v25, *(v28 - 14)), *(v28 - 2));
    v26 = v26 + *(v28 - 12) + *v28;
    v28 += 24;
    v29 -= 2;
  }

  while (v29);
  if (v24 != (v24 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_19;
  }

LABEL_20:
  v30 = v22;
  v31 = v25.f64[0] / v22;
  v32 = v25.f64[1] / v22;
  v33 = 0.0;
  v34 = v26 / v22;
  if (v23 <= 0x5F)
  {
    goto LABEL_42;
  }

  v35 = &v20[12 * (v24 & 0x7FFFFFFFFFFFFFELL)];
  v36 = v20 + 15;
  v37 = v24 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    v38 = *(v36 - 14) - v31;
    v39 = *(v36 - 2) - v31;
    v40 = *(v36 - 13) - v32;
    v41 = *(v36 - 1) - v32;
    v42 = *(v36 - 12);
    v43 = *v36;
    v36 += 24;
    v33 = v33 + (v40 * v40 + v38 * v38 + (v42 - v34) * (v42 - v34)) / v30 + (v41 * v41 + v39 * v39 + (v43 - v34) * (v43 - v34)) / v30;
    v37 -= 2;
  }

  while (v37);
  v20 = v35;
  if (v24 != (v24 & 0x7FFFFFFFFFFFFFELL))
  {
LABEL_42:
    do
    {
      v33 = v33 + ((v20[2] - v32) * (v20[2] - v32) + (v20[1] - v31) * (v20[1] - v31) + (v20[3] - v34) * (v20[3] - v34)) / v30;
      v20 += 12;
    }

    while (v20 != v19);
  }

  *a1 = v33;
  if (v33 < 0.290521)
  {
    goto LABEL_26;
  }

  v44 = *(a1 + 152);
  if (v44 && v18 > 0.75)
  {
    if (!sub_100380950(a1, v5))
    {
      goto LABEL_37;
    }

    v45 = 0;
    goto LABEL_36;
  }

  if (v44 != 1 && v18 < -0.75 && sub_100380950(a1, v5))
  {
    v45 = 1;
LABEL_36:
    *(a1 + 152) = v45;
  }

LABEL_37:
  if (*(a1 + 180) != 2 && sub_100380328(a1 + 120, v5))
  {
    sub_1003802D0(a1 + 120);
    *(a1 + 180) = 3;
  }
}

BOOL sub_100380950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100380304(a1 + 120, a2);
  if (v4)
  {
    if (qword_10045B050 != -1)
    {
      sub_100388B08();
      v5 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        return !v4;
      }

      goto LABEL_4;
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:
      v8 = 134217984;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Spurious accelerometer data at time tNanos=%llu We will not trigger a step for this!!", &v8, 0xCu);
    }
  }

  else
  {
    sub_10038027C((a1 + 120), a2);
    ++*(a1 + 156);
    *(a1 + 160) = sub_100380240(a1 + 120);
    if (sub_1003802F0(a1 + 120))
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    *(a1 + 180) = v6;
  }

  return !v4;
}

uint64_t sub_100380A9C(uint64_t a1)
{
  if (*(a1 + 112) && sub_100253A98(*(a1 + 96)) && *(a1 + 180) == 3)
  {
    return 1;
  }

  else
  {
    return *(a1 + 180);
  }
}

double sub_100380AF0(uint64_t a1)
{
  if (*(a1 + 112) && sub_100253A98(*(a1 + 96)) && *(a1 + 180) == 3)
  {
    v2 = *(a1 + 96);

    return sub_100253B64(v2);
  }

  else
  {
    v4 = *(a1 + 180);
    switch(v4)
    {
      case 3:
        return 1.4;
      case 2:
        return 0.0;
      case 1:
        if (*(a1 + 176) == 1)
        {
          return *(a1 + 168) * *(a1 + 160);
        }

        else
        {
          v5 = *(a1 + 192);
          return v5 * pow(*(a1 + 160), *(a1 + 184));
        }

      default:
        __cxa_allocate_exception(0x40uLL);
        v9 = *(a1 + 180);
        sub_100200D1C(&v9, &v7);
        std::runtime_error::runtime_error(&v8, &v7);
        v8.__vftable = &off_1004336A0;
        sub_10010A984(v6);
    }
  }
}

void sub_100380CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a19);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100380D4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      v5 = v3 - 12;
      v6 = v3 - 12;
      v7 = v3 - 12;
      do
      {
        v8 = *v7;
        v7 -= 12;
        (*v8)(v6);
        v5 -= 12;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_100380E38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044BF10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100380E8C(uint64_t result)
{
  v1 = result;
  if (*(result + 120) != 1)
  {
    if (*(result + 24) != 1)
    {
      return result;
    }

LABEL_5:
    result = nullsub_71(v1 + 32);
    *(v1 + 24) = 0;
    return result;
  }

  result = nullsub_71(result + 128);
  *(v1 + 120) = 0;
  if (*(v1 + 24) == 1)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t *sub_100380EF8(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  v3 = result[2] - v2;
  if (v3 == 96)
  {
    *(result + 8) = 1;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 5);
    if (v4 <= a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        if (v5 != a2)
        {
          v6 = *(v2 + 96 * a2 + 32);
          v7 = *result;
          v8 = (v2 + 32 + 96 * v5);
          while (1)
          {
            v9 = *v8;
            v8 += 12;
            if (v7 >= v6 - v9)
            {
              break;
            }

            ++v5;
            *(result + 8) = 2;
            if (a2 == v5)
            {
              goto LABEL_5;
            }
          }
        }

        if (v5 == a2)
        {
LABEL_5:
          *(result + 8) = 1;
          v5 = a2;
        }

        ++a2;
      }

      while (a2 != v4);
    }

    memset(__p, 0, 24);
    __p[3] = __p;
    v11 = 0;
    if (v5)
    {
      if (v5 < 0x2AAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  return result;
}

void sub_100381164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003811B4(va);
  _Unwind_Resume(a1);
}

void sub_100381178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10012C4EC(va);
  _Unwind_Resume(a1);
}

void sub_10038118C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    sub_100388B1C();
  }

  sub_1003811B4(va);
  _Unwind_Resume(a1);
}

void ***sub_1003811B4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 12;
        v7 = v4 - 12;
        v8 = v4 - 12;
        do
        {
          v9 = *v8;
          v8 -= 12;
          (*v9)(v7);
          v6 -= 12;
          v10 = v7 == v2;
          v7 = v8;
        }

        while (!v10);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_100381278()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003812E8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1003813E4(_Unwind_Exception *a1)
{
  sub_100381434(v1 + 432);
  if (*(v1 + 376) == 1)
  {
    *(v1 + 376) = 0;
  }

  sub_100381434(v1 + 128);
  sub_100046734((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_100381434(uint64_t a1)
{
  nullsub_67(a1 + 144);
  nullsub_67(a1 + 40);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 = nullsub_67(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1003814A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  sub_10037EEB8(v40, a2);
  __p[23] = 19;
  strcpy(__p, "accel cannot be NaN");
  sub_10037EF9C(v40);
  v5 = *(a2 + 8);
  v6 = -v5;
  v7 = *(a2 + 16);
  v8 = -v7;
  v9 = *(a2 + 24);
  v10 = sub_100046780((a1 + 8), v4 / 1000000000.0, v6, v8, -v9);
  v12 = v11;
  LODWORD(v4) = v13;
  v14 = *(a2 + 32);
  *__p = off_10043D988;
  v38 = 0;
  *&__p[8] = 0u;
  v32 = 0u;
  v33 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v37 = 0;
  v39 = 0;
  sub_1001294EC(__p, v14);
  sub_1001294D4(__p, v10);
  sub_1001294DC(__p, v12);
  sub_1001294E4(__p, *&v4);
  sub_10037EEB8(v30, __p);
  if (sub_100046CD8(a1 + 8) && sub_10037EF80(v30) != 0.0)
  {
    operator new();
  }

  sub_10037F634(a1 + 16, a2);
  sub_10037EEB8(&v41, a2);
  v15 = nullsub_35(a1 + 16);
  v16 = sub_10037EF24(v41.f64, v15);
  v17 = *(v15 + 16);
  *(a1 + 104) = *v15;
  *(a1 + 120) = v17;
  sub_10037EF44((a1 + 104), -v16);
  sub_10037EEDC((a1 + 104), &v41);
  _Q4 = *(v15 + 8);
  v19 = vnegq_f64(_Q4);
  __asm { FMLS            D7, D4, V4.D[0] }

  _D16 = *(v15 + 16);
  v26.f64[0] = vmuld_lane_f64(v19.f64[0], _Q4, 1);
  v27 = vmulq_n_f64(v19, *v15);
  _Q7.f64[1] = vmuld_lane_f64(_Q4.f64[0], v19, 1);
  __asm { FMLS            D6, D16, V4.D[1] }

  v26.f64[1] = _D6;
  *(a1 + 88) = vdivq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(_Q7, v41.f64[1]), v27, v41.f64[0]), v26, v42), vsqrtq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(_Q7, _Q7), v27, v27), v27, v27)));
  return nullsub_67(__p);
}

void sub_100381810(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  sub_10037EEB8(&v3, a2);
  operator new();
}

void sub_100381A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    nullsub_67(&a19);
    _Unwind_Resume(a1);
  }

  nullsub_67(&a19);
  _Unwind_Resume(a1);
}

uint64_t *sub_100381ACC(uint64_t a1, uint64_t a2)
{
  sub_10037EEB8(v13, a2);
  sub_100381B98(a1, v13, &v11);
  v4 = v12;
  v6 = *(v11 + 8);
  v5 = *(v11 + 16);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = v5;
    v8 = v6;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v6 = v8;
    v5 = v7;
  }

  v9 = atan2(v5, v6);
  return sub_10037F8EC((a1 + 432), a2, 3.14159265 - v9);
}

void sub_100381B98(uint64_t a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  sub_10037EF80(a2);
  v6 = nullsub_35(a1 + 16);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = hypot(v8, v7);
  if (fabs(v9) >= nextafter(1.0, INFINITY) + -1.0)
  {
    v10 = (*a2 * 0.0 - v8 * a2[1] + v7 * a2[2]) / v9;
    if (*a2 == 0.0 && v10 == 0.0)
    {
      operator new();
    }

    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_100381D48(uint64_t *a1, uint64_t a2)
{
  sub_10037EEB8(v11, a2);
  sub_100381B98(a1, v11, &v9);
  v4 = v9;
  v5 = atan2(*(v9 + 16), *(v9 + 8));
  sub_10037F8EC(a1 + 85, a2, 3.14159265 - v5);
  v6 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a1[116] = v4;
  v7 = a1[117];
  a1[117] = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_100381E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100381E9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100046CD8(a1 + 8);
  v5 = sub_1001F41FC(a1 + 16);
  if (!v4 || sub_10037EF80(v5) == 0.0)
  {
    *a2 = 0;
  }

  else
  {
    v6 = nullsub_35(a1 + 16);
    *(a2 + 8) = *v6;
    *(a2 + 24) = *(v6 + 16);
    *a2 = 1;
  }
}

void sub_100381F44(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 928);
  if (v4)
  {
    v5 = *(a1 + 936);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10[5] = v2;
    v10[6] = v3;
    v10[0] = sub_10037EECC();
    v10[1] = v8;
    v10[2] = v9;
    sub_100381B98(a1, v10, a2);
  }
}

void sub_100381FB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6[0] = sub_10037FA14(a1 + 680);
  v6[1] = v4;
  v6[2] = v5;
  sub_100381B98(a1, v6, a2);
}

void sub_100382004(uint64_t a1)
{
  sub_10038203C(a1);

  operator delete();
}

uint64_t sub_10038203C(uint64_t a1)
{
  *a1 = off_10044BF60;
  v2 = *(a1 + 936);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  nullsub_67(a1 + 824);
  nullsub_67(a1 + 720);
  v3 = *(a1 + 688);
  if (v3)
  {
    v4 = *(a1 + 696);
    v5 = *(a1 + 688);
    if (v4 != v3)
    {
      do
      {
        v4 = nullsub_67(v4 - 104);
      }

      while (v4 != v3);
      v5 = *(a1 + 688);
    }

    *(a1 + 696) = v3;
    operator delete(v5);
  }

  nullsub_67(a1 + 576);
  nullsub_67(a1 + 472);
  v6 = *(a1 + 440);
  if (v6)
  {
    v7 = *(a1 + 448);
    v8 = *(a1 + 440);
    if (v7 != v6)
    {
      do
      {
        v7 = nullsub_67(v7 - 104);
      }

      while (v7 != v6);
      v8 = *(a1 + 440);
    }

    *(a1 + 448) = v6;
    operator delete(v8);
  }

  if (*(a1 + 376) == 1)
  {
    *(a1 + 376) = 0;
  }

  nullsub_67(a1 + 272);
  nullsub_67(a1 + 168);
  v9 = *(a1 + 136);
  if (v9)
  {
    v10 = *(a1 + 144);
    v11 = *(a1 + 136);
    if (v10 != v9)
    {
      do
      {
        v10 = nullsub_67(v10 - 104);
      }

      while (v10 != v9);
      v11 = *(a1 + 136);
    }

    *(a1 + 144) = v9;
    operator delete(v11);
  }

  sub_100046734((a1 + 8));
  return a1;
}

void sub_1003821D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044C080;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100382250()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003822C0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100382354()
{
  v0 = sub_10000C95C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100010BC0();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Bluetooth scanning should not be on by default, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = sub_10000C95C();
  if (os_signpost_enabled(v1))
  {
    sub_100010BC0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Bluetooth scanning should not be on by default", "{msg%{public}.0s:Bluetooth scanning should not be on by default, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = sub_10000C95C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    sub_100010BC0();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Bluetooth scanning should not be on by default, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  __break(1u);
}

void sub_100382554(void *a1)
{
  sub_100016F38();
  if (v2 || ((boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 12) & 1) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  *a1 = 12;
  a1[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  a1[2] = v3;
}

uint64_t sub_1003825D0(void *a1, char a2, uint64_t *a3)
{
  __cxa_begin_catch(a1);
  if (a2)
  {
    return 1;
  }

  sub_100016F38();
  if (v7 || ((*(*v6 + 48))(v6, 12) & 1) != 0)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  result = 0;
  *a3 = v8;
  return result;
}

void sub_100382658(void *a1, uint64_t *a2)
{
  sub_100016F38();
  if (v4 || ((boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 84) & 1) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  *a1 = 84;
  a1[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  *a2 = v5;
}

void sub_1003826E0(void *a1, uint64_t *a2)
{
  __cxa_begin_catch(a1);
  sub_100016F38();
  if (v4 || ((*(*v3 + 48))(v3, 12) & 1) != 0)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

void sub_100382754(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_100382780(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100382924(NSObject **a1)
{
  v2 = sub_100024218();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100027DF4();
    sub_100027DDC();
    sub_100027E40();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x2Cu);
  }

  v7 = sub_100024218();
  if (os_signpost_enabled(v7))
  {
    sub_100027DF4();
    sub_100027DDC();
    sub_100027E0C();
    _os_signpost_emit_with_name_impl(v8, v9, v10, v11, v12, v13, v14, 0x2Cu);
  }

  v15 = sub_100024218();
  *a1 = v15;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    sub_100027DF4();
    sub_100027DDC();
    sub_100027E40();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x2Cu);
  }
}

void sub_100382AD4()
{
  if (qword_10045B060 != -1)
  {
    dispatch_once(&qword_10045B060, &stru_100432A60);
  }

  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_FAULT))
  {
    sub_100027DC4();
    sub_100027DDC();
    sub_100027E40();
    _os_log_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x2Cu);
  }

  if (qword_10045B060 != -1)
  {
    dispatch_once(&qword_10045B060, &stru_100432A60);
  }

  if (os_signpost_enabled(qword_10045B068))
  {
    sub_100027DC4();
    sub_100027DDC();
    sub_100027E0C();
    _os_signpost_emit_with_name_impl(v4, v5, v6, v7, v8, v9, v10, 0x2Cu);
  }

  if (qword_10045B060 != -1)
  {
    dispatch_once(&qword_10045B060, &stru_100432A60);
  }

  if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_INFO))
  {
    sub_100027DC4();
    sub_100027DDC();
    sub_100027E40();
    _os_log_impl(v11, v12, OS_LOG_TYPE_INFO, v13, v14, 0x2Cu);
  }
}

void sub_100382CB4(NSObject **a1)
{
  v2 = sub_100024218();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100027DC4();
    sub_100027E28();
    sub_100027E40();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v7 = sub_100024218();
  if (os_signpost_enabled(v7))
  {
    sub_100027DC4();
    sub_100027E28();
    sub_100027E0C();
    _os_signpost_emit_with_name_impl(v8, v9, v10, v11, v12, v13, v14, 0x26u);
  }

  v15 = sub_100024218();
  *a1 = v15;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    sub_100027DC4();
    sub_100027E28();
    sub_100027E40();
    _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x26u);
  }
}

void sub_100382E4C(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2081;
  *(buf + 20) = v4;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "serialized";
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed to serialize-append properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_100382FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000E661C(a3, a1, 1);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

uint64_t sub_1003830C8(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 96;
  v4 = (a1 - 96);
  v5 = (a1 - 96);
  do
  {
    v6 = *v5;
    v5 -= 12;
    result = (*v6)(v4);
    v3 -= 96;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

uint64_t sub_100383134(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v27 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || *v7 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v27 = *v7;
    *(this + 1) = v7 + 1;
  }

  v9 = *(a4 + 2);
  v10 = *a4;
  if (v9 == *(a4 + 3))
  {
    if (2 * v9 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = 2 * v9;
    }

    if (v11 <= 4)
    {
      v11 = 4;
    }

    *(a4 + 3) = v11;
    operator new[]();
  }

  v12 = *a4;
  v13 = v27;
  *(a4 + 2) = v9 + 1;
  *(v12 + 4 * v9) = v13;
  v14 = *(a4 + 3) - *(a4 + 2);
  if (v14 >= 1)
  {
    if (a2 > 0x7F)
    {
      if (!(a2 >> 14))
      {
        v20 = a2 & 0x7F | 0x80;
        v21 = a2 >> 7;
        v22 = v14 + 1;
        do
        {
          v23 = *(this + 1);
          v24 = *(this + 2);
          if (v24 - v23 < 2 || v20 != *v23 || v21 != v23[1])
          {
            break;
          }

          *(this + 1) = v23 + 2;
          if ((v23 + 2) >= v24 || (v25 = v23[2], (v25 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
            if (!result)
            {
              return result;
            }

            v25 = v27;
            v12 = *a4;
          }

          else
          {
            v27 = v23[2];
            *(this + 1) = v23 + 3;
          }

          v26 = *(a4 + 2);
          *(a4 + 2) = v26 + 1;
          *(v12 + 4 * v26) = v25;
          --v22;
        }

        while (v22 > 1);
      }
    }

    else
    {
      v15 = v14 + 1;
      do
      {
        v17 = *(this + 1);
        v16 = *(this + 2);
        if (v17 >= v16 || *v17 != a2)
        {
          break;
        }

        *(this + 1) = v17 + 1;
        if ((v17 + 1) >= v16 || (v18 = v17[1], (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
          if (!result)
          {
            return result;
          }

          v18 = v27;
          v12 = *a4;
        }

        else
        {
          v27 = v17[1];
          *(this + 1) = v17 + 2;
        }

        v19 = *(a4 + 2);
        *(a4 + 2) = v19 + 1;
        *(v12 + 4 * v19) = v18;
        --v15;
      }

      while (v15 > 1);
    }
  }

  return 1;
}

uint64_t sub_100383374(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v31 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31);
    if (!result)
    {
      return result;
    }

    v8 = v31;
  }

  else
  {
    *(this + 1) = v7 + 1;
  }

  v10 = -(v8 & 1) ^ (v8 >> 1);
  v11 = *(a4 + 2);
  v12 = *a4;
  if (v11 == *(a4 + 3))
  {
    if (2 * v11 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = 2 * v11;
    }

    if (v13 <= 4)
    {
      v13 = 4;
    }

    *(a4 + 3) = v13;
    operator new[]();
  }

  v14 = *a4;
  *(a4 + 2) = v11 + 1;
  *(v14 + 4 * v11) = v10;
  v15 = *(a4 + 3) - *(a4 + 2);
  if (v15 >= 1)
  {
    if (a2 > 0x7F)
    {
      if (!(a2 >> 14))
      {
        v22 = a2 & 0x7F | 0x80;
        v23 = a2 >> 7;
        for (i = v15 + 1; i > 1; --i)
        {
          v25 = *(this + 1);
          v26 = *(this + 2);
          if (v26 - v25 < 2 || v22 != *v25 || v23 != v25[1])
          {
            break;
          }

          *(this + 1) = v25 + 2;
          v30 = 0;
          if ((v25 + 2) >= v26 || (v27 = v25[2], (v27 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
            {
              return 0;
            }

            v27 = v30;
            v14 = *a4;
          }

          else
          {
            *(this + 1) = v25 + 3;
          }

          v28 = -(v27 & 1) ^ (v27 >> 1);
          v29 = *(a4 + 2);
          *(a4 + 2) = v29 + 1;
          *(v14 + 4 * v29) = v28;
        }
      }
    }

    else
    {
      v16 = v15 + 1;
      do
      {
        v17 = *(this + 1);
        v18 = *(this + 2);
        if (v17 >= v18 || *v17 != a2)
        {
          break;
        }

        *(this + 1) = v17 + 1;
        v30 = 0;
        if ((v17 + 1) >= v18 || (v19 = v17[1], (v19 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
          {
            return 0;
          }

          v19 = v30;
          v14 = *a4;
        }

        else
        {
          *(this + 1) = v17 + 2;
        }

        v20 = -(v19 & 1) ^ (v19 >> 1);
        v21 = *(a4 + 2);
        *(a4 + 2) = v21 + 1;
        *(v14 + 4 * v21) = v20;
        --v16;
      }

      while (v16 > 1);
    }
  }

  return 1;
}

uint64_t sub_1003835DC(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v29 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29);
    if (!result)
    {
      return result;
    }

    v8 = v29;
  }

  else
  {
    *(this + 1) = v7 + 1;
  }

  v10 = v8 != 0;
  v11 = *(a4 + 2);
  v12 = *a4;
  if (v11 == *(a4 + 3))
  {
    if (2 * v11 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = 2 * v11;
    }

    if (v13 <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    *(a4 + 3) = v14;
    operator new[]();
  }

  v15 = *a4;
  v16 = v11 + 1;
  *(a4 + 2) = v11 + 1;
  *(v15 + v11) = v10;
  v17 = *(a4 + 3);
  if (v17 - (v11 + 1) >= 1)
  {
    if (a2 > 0x7F)
    {
      if (!(a2 >> 14))
      {
        v22 = a2 & 0x7F | 0x80;
        v23 = a2 >> 7;
        for (i = v17 - v11; i > 1; --i)
        {
          v25 = *(this + 1);
          v26 = *(this + 2);
          if (v26 - v25 < 2 || v22 != *v25 || v23 != v25[1])
          {
            break;
          }

          *(this + 1) = v25 + 2;
          v28 = 0;
          if ((v25 + 2) >= v26 || (v27 = v25[2], (v27 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
            {
              return 0;
            }

            v27 = v28;
            v15 = *a4;
            v16 = *(a4 + 2);
          }

          else
          {
            *(this + 1) = v25 + 3;
          }

          *(v15 + v16++) = v27 != 0;
          *(a4 + 2) = v16;
        }
      }
    }

    else
    {
      v18 = v17 - v11;
      do
      {
        v19 = *(this + 1);
        v20 = *(this + 2);
        if (v19 >= v20 || *v19 != a2)
        {
          break;
        }

        *(this + 1) = v19 + 1;
        v28 = 0;
        if ((v19 + 1) >= v20 || (v21 = v19[1], (v21 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
          {
            return 0;
          }

          v21 = v28;
          v15 = *a4;
          v16 = *(a4 + 2);
        }

        else
        {
          *(this + 1) = v19 + 2;
        }

        *(v15 + v16++) = v21 != 0;
        *(a4 + 2) = v16;
        --v18;
      }

      while (v18 > 1);
    }
  }

  return 1;
}

uint64_t sub_100383830(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v28 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28);
    if (!result)
    {
      return result;
    }

    v8 = v28;
  }

  else
  {
    *(this + 1) = v7 + 1;
  }

  v10 = *(a4 + 2);
  v11 = *a4;
  if (v10 == *(a4 + 3))
  {
    if (2 * v10 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = 2 * v10;
    }

    if (v12 <= 4)
    {
      v12 = 4;
    }

    *(a4 + 3) = v12;
    operator new[]();
  }

  v13 = *a4;
  *(a4 + 2) = v10 + 1;
  *(v13 + 4 * v10) = v8;
  v14 = *(a4 + 3) - *(a4 + 2);
  if (v14 >= 1)
  {
    if (a2 > 0x7F)
    {
      if (!(a2 >> 14))
      {
        v20 = a2 & 0x7F | 0x80;
        v21 = a2 >> 7;
        for (i = v14 + 1; i > 1; --i)
        {
          v23 = *(this + 1);
          v24 = *(this + 2);
          if (v24 - v23 < 2 || v20 != *v23 || v21 != v23[1])
          {
            break;
          }

          *(this + 1) = v23 + 2;
          v27 = 0;
          if ((v23 + 2) >= v24 || (v25 = v23[2], (v25 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
            {
              return 0;
            }

            v25 = v27;
            v13 = *a4;
          }

          else
          {
            *(this + 1) = v23 + 3;
          }

          v26 = *(a4 + 2);
          *(a4 + 2) = v26 + 1;
          *(v13 + 4 * v26) = v25;
        }
      }
    }

    else
    {
      v15 = v14 + 1;
      do
      {
        v16 = *(this + 1);
        v17 = *(this + 2);
        if (v16 >= v17 || *v16 != a2)
        {
          break;
        }

        *(this + 1) = v16 + 1;
        v27 = 0;
        if ((v16 + 1) >= v17 || (v18 = v16[1], (v18 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
          {
            return 0;
          }

          v18 = v27;
          v13 = *a4;
        }

        else
        {
          *(this + 1) = v16 + 2;
        }

        v19 = *(a4 + 2);
        *(a4 + 2) = v19 + 1;
        *(v13 + 4 * v19) = v18;
        --v15;
      }

      while (v15 > 1);
    }
  }

  return 1;
}

void sub_100383A74(uint64_t a1, uint64_t a2)
{
  sub_1000B9D38(a1, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }
}

void sub_100383AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000BBEFC(a1, a2, a3);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }
}

void sub_100383B28(int a1, void **a2)
{
  v3 = sub_1000474A4(a2, "");
  sub_1000C79C8(v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100383C24(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2081;
  *(buf + 20) = v4;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "serialized";
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed to serialize-append-delimited properly, typename:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

BOOL sub_100383D1C(void *a1, void *a2)
{
  __cxa_begin_catch(a1);
  if (qword_10045B050 != -1)
  {
    dispatch_once(&qword_10045B050, &stru_10043A5C0);
  }

  v3 = qword_10045B058;
  *a2 = qword_10045B058;
  return os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
}

void sub_100383E04(uint64_t a1, void **a2, void **a3)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*a2);
  }

  if (*(a1 + 31) < 0)
  {
    v5 = *a3;

    operator delete(v5);
  }
}

uint64_t sub_100383E60(uint64_t a1, uint64_t (***a2)(void))
{
  v5 = a1 - 72;
  sub_100120ED4();
  do
  {
    v6 = *v3;
    v3 -= 9;
    result = (*v6)(v2);
    v5 -= 72;
    v8 = v2 == a2;
    v2 = v3;
  }

  while (!v8);
  return result;
}

uint64_t sub_100383EC8(uint64_t a1, uint64_t (***a2)(void))
{
  v5 = a1 - 112;
  sub_100120ED4();
  do
  {
    v6 = *v3;
    v3 -= 14;
    result = (*v6)(v2);
    v5 -= 112;
    v8 = v2 == a2;
    v2 = v3;
  }

  while (!v8);
  return result;
}

void sub_100383F30()
{
  sub_100120EFC();
  do
  {
    sub_100120EE0();
    (*v1)(v0);
    sub_100120EEC();
    v0 = v2;
  }

  while (!v3);
}

void sub_100383F88(void **a1, uint64_t a2, void **a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a2 + 40) = v5;
    operator delete(v5);
  }

  if (*(a2 + 31) < 0)
  {
    v6 = *a3;

    operator delete(v6);
  }
}

uint64_t sub_100383FE4(uint64_t result, uint64_t (***a2)(void), void *a3)
{
  if (result != a2)
  {
    v5 = result - 40;
    v6 = (result - 40);
    v7 = (result - 40);
    do
    {
      v8 = *v7;
      v7 -= 5;
      result = (*v8)(v6);
      v5 -= 40;
      v9 = v6 == a2;
      v6 = v7;
    }

    while (!v9);
  }

  *a3 = a2;
  return result;
}

void sub_100384090()
{
  v0 = sub_10016F598();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100010BC0();
    sub_1001708DC(&_mh_execute_header, v1, v2, "{msg%{public}.0s:@IndoorAvl, _readVenueBoundProtobufObjectFromZCIS, expecting that we have a valid destination for the venue bounds object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = sub_10016F598();
  if (os_signpost_enabled(v7))
  {
    sub_100010BC0();
    sub_1001708B0(&_mh_execute_header, v8, v9, v10, "@IndoorAvl, _readVenueBoundProtobufObjectFromZCIS, expecting that we have a valid destination for the venue bounds object we're about to read", "{msg%{public}.0s:@IndoorAvl, _readVenueBoundProtobufObjectFromZCIS, expecting that we have a valid destination for the venue bounds object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = sub_10016F598();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sub_100010BC0();
    sub_1001708FC(&_mh_execute_header, v14, v15, "{msg%{public}.0s:@IndoorAvl, _readVenueBoundProtobufObjectFromZCIS, expecting that we have a valid destination for the venue bounds object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  __break(1u);
}

void sub_1003841E0(NSObject **a1)
{
  v2 = sub_10016F598();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100170884();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, _readMetadataProtobufObjectsFromFile, expecting that we have a valid destination for the localizer parameters object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }

  v3 = sub_10016F598();
  if (os_signpost_enabled(v3))
  {
    sub_100170884();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "@IndoorAvl, _readMetadataProtobufObjectsFromFile, expecting that we have a valid destination for the localizer parameters object we're about to read", "{msg%{public}.0s:@IndoorAvl, _readMetadataProtobufObjectsFromFile, expecting that we have a valid destination for the localizer parameters object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }

  v4 = sub_10016F598();
  *a1 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    sub_100170884();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, _readMetadataProtobufObjectsFromFile, expecting that we have a valid destination for the localizer parameters object we're about to read, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v5, 0x26u);
  }
}

void sub_100384504()
{
  if (qword_10045B060 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    if (sub_100170D60())
    {
      sub_100010BC0();
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:@IndoorAvl, Trying to close file-handle that isn't opened, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_10045B060 != -1)
      {
        dispatch_once(&qword_10045B060, &stru_10043FF70);
      }
    }

    if (sub_100170DB8())
    {
      sub_100010BC0();
      sub_100170D9C();
      _os_signpost_emit_with_name_impl(v1, v2, v3, v4, v5, v6, v7, 0x26u);
      if (qword_10045B060 != -1)
      {
        dispatch_once(&qword_10045B060, &stru_10043FF70);
      }
    }

    if (sub_100170D80())
    {
      sub_100010BC0();
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@IndoorAvl, Trying to close file-handle that isn't opened, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_10045B060, &stru_10043FF70);
  }
}

void sub_1003846E0(int a1, void **a2)
{
  v3 = sub_1000474A4(a2, "");
  sub_1000E661C(v3, 0, 0);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_100384734(uint64_t *a1)
{
  v1 = sub_100176E60(a1);
  if (v1)
  {
    v2 = sub_100176E70(v1);
    (*(v3 + 8))(v2);
  }

  sub_100176E88();
}

uint64_t *sub_1003847C4(uint64_t *a1)
{
  v1 = sub_100176E60(a1);
  if (v1)
  {
    v2 = sub_100176E70(v1);
    (*(v3 + 8))(v2);
  }

  result = sub_100176E7C();
  if (result)
  {
    v5 = sub_100176E70(result);
    return (*(v6 + 8))(v5);
  }

  return result;
}

uint64_t *sub_100384834(uint64_t *a1, uint64_t **a2)
{
  v3 = sub_100176E60(a1);
  if (v3)
  {
    v4 = sub_100176E70(v3);
    (*(v5 + 8))(v4);
  }

  v6 = *a2;
  *a2 = 0;
  if (v6)
  {
    v7 = sub_100176E70(v6);
    (*(v8 + 8))(v7);
  }

  result = sub_100176E7C();
  if (result)
  {
    v10 = sub_100176E70(result);
    return (*(v11 + 8))(v10);
  }

  return result;
}

void sub_1003848D4(uint64_t *a1, uint64_t **a2)
{
  v3 = sub_100176E60(a1);
  if (v3)
  {
    v4 = sub_100176E70(v3);
    (*(v5 + 8))(v4);
  }

  v6 = *a2;
  *a2 = 0;
  if (v6)
  {
    v7 = sub_100176E70(v6);
    (*(v8 + 8))(v7);
  }

  sub_100176E88();
}

void sub_100384990(uint64_t *a1, uint64_t **a2, uint64_t **a3)
{
  v5 = sub_100176E60(a1);
  if (v5)
  {
    v6 = sub_100176E70(v5);
    (*(v7 + 8))(v6);
  }

  v8 = *a2;
  *a2 = 0;
  if (v8)
  {
    v9 = sub_100176E70(v8);
    (*(v10 + 8))(v9);
  }

  v11 = *a3;
  *a3 = 0;
  if (v11)
  {
    v12 = sub_100176E70(v11);
    (*(v13 + 8))(v12);
  }

  sub_100176E88();
}

void sub_100384AB4()
{
  v1 = sub_100184A58();
  if (sub_1001BAD58(v1))
  {
    sub_100170884();
    sub_1001BACCC(&_mh_execute_header, v2, v3, "{msg%{public}.0s:Multiple versions returned in getDbVersion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21);
  }

  v8 = sub_100184A58();
  if (os_signpost_enabled(v8))
  {
    sub_100170884();
    sub_1001BACA0(&_mh_execute_header, v9, v10, v11, "Multiple versions returned in getDbVersion", "{msg%{public}.0s:Multiple versions returned in getDbVersion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21);
  }

  v14 = sub_100184A58();
  if (sub_1001BAD0C(v14))
  {
    sub_100170884();
    sub_1001BACEC(&_mh_execute_header, v15, v16, "{msg%{public}.0s:Multiple versions returned in getDbVersion, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21);
  }
}

void sub_100384C0C(char *a1, uint64_t a2, NSObject *a3)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *a2 = 68289795;
  *(a2 + 8) = 2082;
  *(a2 + 10) = "";
  *(a2 + 18) = 2082;
  *(a2 + 20) = v4;
  *(a2 + 28) = 2082;
  *(a2 + 30) = "assert";
  *(a2 + 38) = 2081;
  *(a2 + 40) = "currentVersion.dbOkForVersion(gDbVersion)";
  sub_1001BAD28(&_mh_execute_header, a2, a3, "{msg%{public}.0s:Migration is not supported, version:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", a2);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_100384CB4(uint64_t a1, uint64_t a2)
{
  *a2 = 68289795;
  *(a2 + 8) = 2082;
  sub_1001BAD44(a1, a2);
  *(v2 + 28) = v3;
  *(v2 + 30) = "assert";
  *(v2 + 38) = v4;
  *(v2 + 40) = "!result";
  sub_1001BAD28(&_mh_execute_header, v2, v5, "{msg%{public}.0s:Multiple matches for resource, resource:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6);
}

void sub_100384D24(uint64_t a1, uint64_t a2)
{
  *a2 = 68289795;
  *(a2 + 8) = 2082;
  sub_1001BAD44(a1, a2);
  *(v2 + 28) = v3;
  *(v2 + 30) = "assert";
  *(v2 + 38) = v4;
  *(v2 + 40) = "current.is_initialized()";
  sub_1001BAD28(&_mh_execute_header, v2, v5, "{msg%{public}.0s:couldn't find resource in db, locationId:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6);
}

void sub_100384DB8()
{
  v1 = sub_100184A58();
  if (sub_1001BAD58(v1))
  {
    sub_100170884();
    sub_1001BACCC(&_mh_execute_header, v2, v3, "{msg%{public}.0s:Failed to flush output stream, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21);
  }

  v8 = sub_100184A58();
  if (os_signpost_enabled(v8))
  {
    sub_100170884();
    sub_1001BACA0(&_mh_execute_header, v9, v10, v11, "Failed to flush output stream", "{msg%{public}.0s:Failed to flush output stream, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21);
  }

  v14 = sub_100184A58();
  if (sub_1001BAD0C(v14))
  {
    sub_100170884();
    sub_1001BACEC(&_mh_execute_header, v15, v16, "{msg%{public}.0s:Failed to flush output stream, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21);
  }
}

void sub_100384ED4()
{
  v1 = sub_100184A58();
  if (sub_1001BAD58(v1))
  {
    sub_100170884();
    sub_1001BACCC(&_mh_execute_header, v2, v3, "{msg%{public}.0s:Failed to flush output stream, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21);
  }

  v8 = sub_100184A58();
  if (os_signpost_enabled(v8))
  {
    sub_100170884();
    sub_1001BACA0(&_mh_execute_header, v9, v10, v11, "Failed to flush output stream", "{msg%{public}.0s:Failed to flush output stream, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21);
  }

  v14 = sub_100184A58();
  if (sub_1001BAD0C(v14))
  {
    sub_100170884();
    sub_1001BACEC(&_mh_execute_header, v15, v16, "{msg%{public}.0s:Failed to flush output stream, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21);
  }
}

void sub_100384FF0()
{
  v1 = sub_100184A58();
  if (sub_1001BAD58(v1))
  {
    sub_100170884();
    sub_1001BACCC(&_mh_execute_header, v2, v3, "{msg%{public}.0s:Failed to flush output stream, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21);
  }

  v8 = sub_100184A58();
  if (os_signpost_enabled(v8))
  {
    sub_100170884();
    sub_1001BACA0(&_mh_execute_header, v9, v10, v11, "Failed to flush output stream", "{msg%{public}.0s:Failed to flush output stream, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21);
  }

  v14 = sub_100184A58();
  if (sub_1001BAD0C(v14))
  {
    sub_100170884();
    sub_1001BACEC(&_mh_execute_header, v15, v16, "{msg%{public}.0s:Failed to flush output stream, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21);
  }
}

uint64_t sub_100385158(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 1920;
  v4 = (a1 - 1920);
  do
  {
    result = (**v4)(v4);
    v3 -= 1920;
    v6 = v4 == a2;
    v4 -= 240;
  }

  while (!v6);
  return result;
}

void sub_10038523C(uint64_t a1, uint64_t a2)
{
  sub_1000E661C(a2, 0, 0);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_1003852BC(_DWORD *a1)
{
  sub_1001E4510();
  if (!v3)
  {
    dispatch_once(&qword_10045B050, &stru_100442290);
  }

  v4 = sub_1001E451C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100170884();
    sub_100027E40();
    sub_1001E4578(v5, v6, v7, v8, v9);
    sub_1001E4510();
    if (!v3)
    {
      dispatch_once(&qword_10045B050, &stru_100442290);
    }
  }

  v10 = sub_1001E451C();
  if (os_signpost_enabled(v10))
  {
    sub_100170884();
    sub_1001E44FC();
    sub_1001E4560(v11, v1, v12, v13, v14, v15, v16);
    sub_1001E4510();
    if (!v3)
    {
      dispatch_once(&qword_10045B050, &stru_100442290);
    }
  }

  v17 = sub_1001E451C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    sub_100170884();
    sub_100027E40();
    sub_1001E4590(v18, v19, v20, v21, v22);
  }

  *a1 = 762;
}

void sub_10038544C(_DWORD *a1)
{
  sub_1001E4510();
  if (!v3)
  {
    dispatch_once(&qword_10045B050, &stru_100442290);
  }

  v4 = sub_1001E451C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100170884();
    sub_100027E40();
    sub_1001E4578(v5, v6, v7, v8, v9);
    sub_1001E4510();
    if (!v3)
    {
      dispatch_once(&qword_10045B050, &stru_100442290);
    }
  }

  v10 = sub_1001E451C();
  if (os_signpost_enabled(v10))
  {
    sub_100170884();
    sub_1001E44FC();
    sub_1001E4560(v11, v1, v12, v13, v14, v15, v16);
    sub_1001E4510();
    if (!v3)
    {
      dispatch_once(&qword_10045B050, &stru_100442290);
    }
  }

  v17 = sub_1001E451C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    sub_100170884();
    sub_100027E40();
    sub_1001E4590(v18, v19, v20, v21, v22);
  }

  *a1 = 761;
}

void sub_1003855DC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001E4548(a1, a2);
  if (!v6)
  {
    v7 = v4 - 168;
    do
    {
      v8 = *(v4 - 176);
      if (v8 == v8 >> 31)
      {
        if (*(v4 - 128))
        {
          *(v4 - 128) = 0;
        }
      }

      else
      {
        v9 = *(v4 - 168);
        if (v8 < 0)
        {
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }
        }

        else
        {
          v10 = *(v4 - 168);
          (*v9)(v4 - 168);
        }
      }

      v4 -= 208;
      v7 -= 208;
    }

    while (v4 != v2);
    v5 = *v3;
  }

  *(v3 + 8) = v2;
  operator delete(v5);
}

void sub_1003856A4()
{
  if (qword_10045B050 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
    {
      sub_100010BC0();
      sub_1001E4578(&_mh_execute_header, v0, v1, "{msg%{public}.0s:The outdoorLocation is none. This shouldn't happen., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6);
      if (qword_10045B050 != -1)
      {
        dispatch_once(&qword_10045B050, &stru_100442290);
      }
    }

    v2 = qword_10045B058;
    if (os_signpost_enabled(qword_10045B058))
    {
      sub_100010BC0();
      sub_1001E4560(&_mh_execute_header, v2, v3, 0xEEEEB0B5B2B2EEEELL, "The outdoorLocation is none. This shouldn't happen.", "{msg%{public}.0s:The outdoorLocation is none. This shouldn't happen., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6);
      if (qword_10045B050 != -1)
      {
        dispatch_once(&qword_10045B050, &stru_100442290);
      }
    }

    v4 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      sub_100010BC0();
      sub_1001E4590(&_mh_execute_header, v4, v5, "{msg%{public}.0s:The outdoorLocation is none. This shouldn't happen., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v6);
    }

    abort_report_np();
    __break(1u);
LABEL_11:
    dispatch_once(&qword_10045B050, &stru_100442290);
  }
}

void sub_100385864()
{
  sub_1001E4538();
  do
  {
    (**v0)(v0);
    sub_1001E4528();
    v0 = v1;
  }

  while (!v2);
}

void sub_1003858C0(char a1)
{
  if ((a1 & 1) == 0)
  {
    dispatch_once(&qword_10045B050, &stru_100442290);
  }

  v1 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_FAULT))
  {
    sub_1001E44CC();
    sub_1001E44E0();
    sub_1001E4578(&_mh_execute_header, v1, v2, "{msg%{public}.0s:All pose estimates must have a timestamp!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13);
    sub_1001E4510();
    if (!v3)
    {
      dispatch_once(&qword_10045B050, &stru_100442290);
    }
  }

  v4 = qword_10045B058;
  if (os_signpost_enabled(qword_10045B058))
  {
    sub_1001E44CC();
    sub_1001E44E0();
    sub_1001E44FC();
    sub_1001E4560(v5, v4, v6, v7, v8, v9, v10);
    sub_1001E4510();
    if (!v3)
    {
      dispatch_once(&qword_10045B050, &stru_100442290);
    }
  }

  v11 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    sub_1001E44CC();
    sub_1001E44E0();
    sub_1001E4590(&_mh_execute_header, v11, v12, "{msg%{public}.0s:All pose estimates must have a timestamp!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13);
  }
}

void sub_100385A9C()
{
  sub_1001EFDBC();
  v1 = sub_1000474A4(v0, "");
  sub_1000C79C8(v1);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

uint64_t sub_100385B1C(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    operator delete[]();
  }

  return result;
}

void sub_100385C94(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_100385D48(uint64_t a1, void **a2, char *a3)
{
  sub_1000E661C(a2, 0, 0);
  if (*a3 < 0)
  {
    operator delete(*a2);
  }
}

void sub_100385DC8(uint64_t a1, uint64_t a2, char *a3)
{
  sub_1000B9D38(a1, a2);
  if (*a3 < 0)
  {
    operator delete(*v3);
  }
}

__n128 sub_100385E24(uint64_t a1, void *a2, __n128 *a3)
{
  *(a1 + 8) = 0;
  v6 = *a1;
  if (v6)
  {
    operator delete(v6);
  }

  *a1 = *a2;
  result = *a3;
  *(a1 + 8) = *a3;
  return result;
}

__n128 sub_100385E9C(uint64_t a1, void **a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  if (*a2)
  {
    operator delete(*a2);
  }

  *a2 = *a3;
  result = *(a3 + 8);
  *(a1 + 32) = result;
  return result;
}

BOOL sub_100385EEC(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  *a4 = *a1;
  if (*a2)
  {
    v5 = v4 + 40 * *a2;
    v6 = (v4 + 8);
    v7 = a3 + 8;
    do
    {
      v8 = v6 - 8;
      v9 = *(v6 - 2);
      v10 = v9 >> 31;
      if (v9 >> 31 == v9)
      {
        *v7 = *v6;
        v10 = v9;
      }

      else
      {
        v11 = *v6;
        *(v7 + 16) = *(v6 + 4);
        *v7 = v11;
      }

      *(v7 - 8) = v10 ^ v9;
      *(v7 + 24) = *(v6 + 6);
      v6 = (v6 + 40);
      v7 += 40;
    }

    while (v8 + 40 != v5);
  }

  return v4 == 0;
}

void sub_100386060(void **a1, char *a2, void **a3)
{
  v5 = *a1;
  v6 = a2;
  if (v5 != a2)
  {
    v8 = v5 - 168;
    do
    {
      v9 = *(v5 - 44);
      if (v9 == v9 >> 31)
      {
        if (*(v5 - 128))
        {
          *(v5 - 128) = 0;
        }
      }

      else
      {
        v10 = *(v5 - 21);
        if (v9 < 0)
        {
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        else
        {
          v11 = *(v5 - 21);
          (*v10)(v5 - 168);
        }
      }

      v5 -= 208;
      v8 -= 208;
    }

    while (v5 != a2);
    v6 = *a3;
  }

  *a1 = a2;
  operator delete(v6);
}

void sub_100386144(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    do
    {
      v10 = nullsub_75(v9 - 32);
      v11 = *(v9 - 40);
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11, v10);
        std::__shared_weak_count::__release_weak(v11);
      }

      v9 -= 48;
    }

    while (v9 != a2);
  }

  *a5 = a3;
  *(a5 + 8) = a4;
}

void sub_1003861F8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);
    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_10038625C(void **a1, char *a2, void **a3)
{
  v5 = *a1;
  v6 = a2;
  if (v5 != a2)
  {
    do
    {
      v8 = nullsub_75(v5 - 32);
      v9 = *(v5 - 5);
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9, v8);
        std::__shared_weak_count::__release_weak(v9);
      }

      v5 -= 48;
    }

    while (v5 != a2);
    v6 = *a3;
  }

  *a1 = a2;
  operator delete(v6);
}

void sub_100386348()
{
  if (qword_10045B080 != -1)
  {
    dispatch_once(&qword_10045B080, &stru_100443A28);
  }

  v0 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Unexpected exception type - rolling back", v1, 2u);
  }
}

uint64_t sub_100386410()
{
  sub_100241288();
  do
  {
    v4 = *v3;
    v3 -= 7;
    result = (*v4)(v1);
    v2 -= 56;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

void sub_1003864C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  *a1 = 0;
}

__n128 sub_1003864F4(void *a1, void **a2, uint64_t a3)
{
  a1[11] = 0;
  if (*a2)
  {
    operator delete(*a2);
  }

  *a2 = *a3;
  *(a1 + 11) = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a1[14] = 0;
  v6 = a1[13];
  if (v6)
  {
    operator delete(v6);
  }

  a1[13] = *(a3 + 24);
  result = *(a3 + 32);
  *(a1 + 7) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

void sub_1003865C4(int a1, void **a2, char *a3)
{
  v5 = sub_1000474A4(a2, "");
  sub_1000E661C(v5, 0, 0);
  if (*a3 < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_10038669C()
{
  sub_100263F90();
  do
  {
    v4 = *v3;
    v3 -= 20;
    result = (*v4)(v1);
    v2 -= 160;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

const void *sub_100386760(const void *result, void *a2, BOOL *a3)
{
  v4 = *(result + 23);
  if (v4 >= 0)
  {
    v5 = *(result + 23);
  }

  else
  {
    v5 = *(result + 1);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 == v6)
  {
    if (v4 < 0)
    {
      result = *result;
    }

    v8 = *a2;
    if (v7 < 0)
    {
      a2 = *a2;
    }

    result = memcmp(result, a2, v5);
    v9 = result == 0;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

void sub_1003867E8()
{
  if (__cxa_guard_acquire(&qword_10045BD70))
  {
    sub_1002AACFC(xmmword_1003D8180);

    __cxa_guard_release(&qword_10045BD70);
  }
}

void sub_100386840()
{
  if (__cxa_guard_acquire(&qword_10045BD90))
  {
    sub_1002AACE8(&xmmword_10045BD78, vdupq_n_s64(1uLL));

    __cxa_guard_release(&qword_10045BD90);
  }
}

void sub_1003868FC(int a1, uint64_t a2)
{
  v3 = sub_100014A08(a2, "");
  sub_1000E661C(v3, 0, 0);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_100386A14()
{
  sub_1002C8A2C();
  do
  {
    v4 = *v3;
    v3 -= 9;
    result = (*v4)(v1);
    v2 -= 72;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

uint64_t sub_100386A74()
{
  sub_1002C8A40();
  do
  {
    v4 = *v3;
    v3 -= 14;
    result = (*v4)(v1);
    v2 -= 112;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

uint64_t sub_100386B10()
{
  sub_1002D14EC();
  do
  {
    v4 = *v3;
    v3 -= 5;
    result = (*v4)(v1);
    v2 -= 40;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

void sub_100386B84(NSObject **a1)
{
  v2 = sub_1002EF4F4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100170884();
    sub_100027E40();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v7 = sub_1002EF4F4();
  if (os_signpost_enabled(v7))
  {
    sub_100170884();
    sub_1001BACA0(&_mh_execute_header, v8, v9, v10, "Wifi scanner thread is being deallocated without stopping properly", "{msg%{public}.0s:Wifi scanner thread is being deallocated without stopping properly, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v18);
  }

  v13 = sub_1002EF4F4();
  *a1 = v13;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sub_100170884();
    sub_100027E40();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x26u);
  }
}

void sub_100386D08(NSObject **a1)
{
  v2 = sub_1002EF4F4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100170884();
    sub_100027E40();
    _os_log_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x26u);
  }

  v7 = sub_1002EF4F4();
  if (os_signpost_enabled(v7))
  {
    sub_100170884();
    sub_1001BACA0(&_mh_execute_header, v8, v9, v10, "Wifi scanner thread is exiting early without proper cleanup", "{msg%{public}.0s:Wifi scanner thread is exiting early without proper cleanup, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v18);
  }

  v13 = sub_1002EF4F4();
  *a1 = v13;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    sub_100170884();
    sub_100027E40();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x26u);
  }
}

void sub_100386E50()
{
  v0 = sub_1002EF4F4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100010BC0();
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Wi-Fi thread runLoop allocated but scanner backend not initialized, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = sub_1002EF4F4();
  if (os_signpost_enabled(v1))
  {
    sub_100010BC0();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Wi-Fi thread runLoop allocated but scanner backend not initialized", "{msg%{public}.0s:Wi-Fi thread runLoop allocated but scanner backend not initialized, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = sub_1002EF4F4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    sub_100010BC0();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Wi-Fi thread runLoop allocated but scanner backend not initialized, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  __break(1u);
}

void sub_100386FC8(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2082;
  *(buf + 20) = a1;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "networkScan == __null || CFGetTypeID(networkScan) == CFArrayGetTypeID()";
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:We expect that networkScan is of type CFArray, but it's not. Memory smasher?, networkScanType:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
}

void sub_100387050(void **__p)
{
  do
  {
    v2 = *__p;
    v3 = __p[2];
    __p[2] = 0;
    if (v3)
    {
      sub_1002F42F8(v3);
      operator delete();
    }

    operator delete(__p);
    __p = v2;
  }

  while (v2);
}

void sub_10038712C()
{
  if (__cxa_guard_acquire(&qword_10045D4B0))
  {
    v0 = sub_10031E448(&qword_10045D4A8, "com.apple.indoor.WifiSettingsSingleton.changeListeners");
    sub_1002FC150(v0, v1, &_mh_execute_header);
    __cxa_guard_release(&qword_10045D4B0);
  }
}

void sub_100387198()
{
  if (__cxa_guard_acquire(&qword_10045D4B0))
  {
    v0 = sub_10031E448(&qword_10045D4A8, "com.apple.indoor.WifiSettingsSingleton.changeListeners");
    sub_1002FC150(v0, v1, &_mh_execute_header);

    __cxa_guard_release(&qword_10045D4B0);
  }
}

uint64_t sub_100387498()
{
  sub_10030DA38();
  do
  {
    v4 = *v3;
    v3 -= 11;
    result = (*v4)(v1);
    v2 -= 88;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

void sub_100387758(uint64_t a1, void **a2, void **a3, void **a4)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*a2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*a3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*a4);
  }

  if (*(a1 + 23) < 0)
  {
    v7 = *a1;

    operator delete(v7);
  }
}

void sub_1003879C8(uint64_t a1, uint64_t a2)
{
  sub_10034D1BC(1.7165e-36, a1, a2);
  sub_1001BAD44(v2, v3);
  *(v4 + 28) = v5;
  *(v4 + 30) = "assert";
  *(v4 + 38) = v6;
  *(v4 + 40) = "[transactionsOfType count] > 0";
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:IndoorServiceTransactionManager: expected to have at least one transaction, type:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v8, 0x30u);
}

void sub_100387A38(uint64_t a1, uint64_t a2)
{
  sub_10034D1BC(1.7165e-36, a1, a2);
  sub_1001BAD44(v2, v3);
  *(v4 + 28) = v5;
  *(v4 + 30) = "assert";
  *(v4 + 38) = v6;
  *(v4 + 40) = "transactionsOfType";
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:IndoorServiceTransactionManager: list of transactions for this type should exist!, type:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v8, 0x30u);
}

void sub_100387C4C()
{
  v0 = sub_10036B840();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100373DE4();
    sub_100027E40();
    _os_log_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x30u);
  }

  v5 = sub_10036B840();
  if (os_signpost_enabled(v5))
  {
    sub_100373DE4();
    sub_100027E0C();
    _os_signpost_emit_with_name_impl(v6, v7, v8, v9, v10, v11, v12, 0x30u);
  }

  v13 = sub_10036B840();
  if (sub_1001BAD0C(v13))
  {
    sub_100373DE4();
    sub_100027E40();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x30u);
  }
}

void sub_100387D80()
{
  v0 = sub_10036B840();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100170884();
    sub_100027E40();
    _os_log_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x26u);
  }

  v5 = sub_10036B840();
  if (os_signpost_enabled(v5))
  {
    sub_100170884();
    sub_100027E0C();
    _os_signpost_emit_with_name_impl(v6, v7, v8, v9, v10, v11, v12, 0x26u);
  }

  v13 = sub_10036B840();
  if (sub_1001BAD0C(v13))
  {
    sub_100170884();
    sub_100027E40();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x26u);
  }
}

void sub_100387EC4()
{
  v0 = sub_10036B840();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    sub_100170884();
    sub_100027E40();
    _os_log_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x26u);
  }

  v5 = sub_10036B840();
  if (os_signpost_enabled(v5))
  {
    sub_100170884();
    sub_100027E0C();
    _os_signpost_emit_with_name_impl(v6, v7, v8, v9, v10, v11, v12, 0x26u);
  }

  v13 = sub_10036B840();
  if (sub_1001BAD0C(v13))
  {
    sub_100170884();
    sub_100027E40();
    _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x26u);
  }
}

void sub_100388130(uint64_t a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 68289795;
  *(buf + 4) = 2082;
  *(buf + 10) = "";
  *(buf + 9) = 2081;
  *(buf + 20) = a1;
  *(buf + 14) = 2082;
  *(buf + 30) = "assert";
  *(buf + 19) = 2081;
  *(buf + 5) = "error == nullptr";
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed to create directory:, error:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
}

uint64_t sub_100388B1C()
{
  sub_100381264();
  do
  {
    v4 = *v3;
    v3 -= 12;
    result = (*v4)(v1);
    v2 -= 96;
    v6 = v1 == v0;
    v1 = v3;
  }

  while (!v6);
  return result;
}

void std::out_of_range::~out_of_range(std::out_of_range *this)
{
  std::out_of_range::~out_of_range(this);
}

{
  std::out_of_range::~out_of_range(this);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);
}

{
  std::runtime_error::~runtime_error(this);
}

void std::underflow_error::~underflow_error(std::underflow_error *this)
{
  std::underflow_error::~underflow_error(this);
}

{
  std::underflow_error::~underflow_error(this);
}

void std::invalid_argument::~invalid_argument(std::invalid_argument *this)
{
  std::invalid_argument::~invalid_argument(this);
}

{
  std::invalid_argument::~invalid_argument(this);
}

std::system_error *__cdecl std::system_error::system_error(std::system_error *this, int __ev, const std::error_category *__ecat)
{
  return std::system_error::system_error(this, __ev, __ecat);
}

{
  return std::system_error::system_error(this, __ev, __ecat);
}

void std::system_error::~system_error(std::system_error *this)
{
  std::system_error::~system_error(this);
}

{
  std::system_error::~system_error(this);
}

uint64_t std::istream::~istream()
{
  return std::istream::~istream();
}

{
  return std::istream::~istream();
}

uint64_t std::istream::operator>>()
{
  return std::istream::operator>>();
}

{
  return std::istream::operator>>();
}

uint64_t std::ostream::~ostream()
{
  return std::ostream::~ostream();
}

{
  return std::ostream::~ostream();
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, uint64_t __val)
{
  return std::to_string(retstr, __val);
}

{
  return std::to_string(retstr, __val);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return std::to_string(retstr, __val);
}

{
  return std::to_string(retstr, __val);
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

lldiv_t div(uint64_t __x, uint64_t __y)
{
  v4 = _div(__x, __y);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}