void sub_100094DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100094DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100094E04(void *a1)
{
  *a1 = off_1004373E0;
  if (a1[17])
  {
    operator delete[]();
  }

  if (a1[14])
  {
    operator delete[]();
  }

  if (a1[11])
  {
    operator delete[]();
  }

  if (a1[8])
  {
    operator delete[]();
  }

  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100094EE0(void *a1)
{
  sub_100094E04(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100094FC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 16) = 0;
  *(result + 22) = 0;
  *(result + 28) = 0;
  *(result + 34) = 0;
  *(result + 38) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100094FF4(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 > 3)
      {
        break;
      }

      switch(v8)
      {
        case 1u:
          if (v9 == 2)
          {
            v82 = 0;
            v11 = *(this + 1);
            if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v82))
              {
                return 0;
              }

              v12 = v82;
            }

            else
            {
              v82 = *v11;
              *(this + 1) = v11 + 1;
            }

            v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v12);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v81 = 0;
              v26 = *(this + 1);
              if (v26 >= *(this + 2) || *v26 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
                {
                  return 0;
                }
              }

              else
              {
                v81 = *v26;
                *(this + 1) = v26 + 1;
              }

              v27 = *(a1 + 24);
              v28 = *(a1 + 16);
              if (v27 == *(a1 + 28))
              {
                if (2 * v27 <= v27 + 1)
                {
                  v29 = v27 + 1;
                }

                else
                {
                  v29 = 2 * v27;
                }

                if (v29 <= 4)
                {
                  v29 = 4;
                }

                *(a1 + 28) = v29;
                operator new[]();
              }

              v24 = *(a1 + 16);
              v25 = v81;
              *(a1 + 24) = v27 + 1;
              *(v24 + 4 * v27) = v25;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
          }

          else
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_35;
            }

            result = sub_100383134(1, 0xAu, this, (a1 + 16));
            if (!result)
            {
              return result;
            }
          }

          v31 = *(this + 1);
          v30 = *(this + 2);
          if (v31 < v30 && *v31 == 18)
          {
            v20 = v31 + 1;
            *(this + 1) = v20;
            v82 = 0;
            if (v20 >= v30)
            {
              goto LABEL_73;
            }

            goto LABEL_71;
          }

          break;
        case 2u:
          if (v9 != 2)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_35;
            }

            result = sub_100383134(1, 0x12u, this, (a1 + 40));
            if (!result)
            {
              return result;
            }

            goto LABEL_90;
          }

          v20 = *(this + 1);
          v19 = *(this + 2);
          v82 = 0;
          if (v20 >= v19)
          {
LABEL_73:
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v82))
            {
              return 0;
            }

            v32 = v82;
            goto LABEL_75;
          }

LABEL_71:
          v32 = *v20;
          if ((v32 & 0x80000000) != 0)
          {
            goto LABEL_73;
          }

          v82 = *v20;
          *(this + 1) = v20 + 1;
LABEL_75:
          v33 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            v81 = 0;
            v36 = *(this + 1);
            if (v36 >= *(this + 2) || *v36 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
              {
                return 0;
              }
            }

            else
            {
              v81 = *v36;
              *(this + 1) = v36 + 1;
            }

            v37 = *(a1 + 48);
            v38 = *(a1 + 40);
            if (v37 == *(a1 + 52))
            {
              if (2 * v37 <= v37 + 1)
              {
                v39 = v37 + 1;
              }

              else
              {
                v39 = 2 * v37;
              }

              if (v39 <= 4)
              {
                v39 = 4;
              }

              *(a1 + 52) = v39;
              operator new[]();
            }

            v34 = *(a1 + 40);
            v35 = v81;
            *(a1 + 48) = v37 + 1;
            *(v34 + 4 * v37) = v35;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v33);
LABEL_90:
          v41 = *(this + 1);
          v40 = *(this + 2);
          if (v41 < v40 && *v41 == 26)
          {
            v16 = v41 + 1;
            *(this + 1) = v16;
            v81 = 0;
            if (v16 >= v40)
            {
              goto LABEL_95;
            }

LABEL_93:
            v42 = *v16;
            if ((v42 & 0x80000000) != 0)
            {
LABEL_95:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
              {
                return 0;
              }

              v42 = v81;
              goto LABEL_97;
            }

            v81 = *v16;
            *(this + 1) = v16 + 1;
LABEL_97:
            v43 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v82 = 0;
              v44 = *(this + 1);
              if (v44 >= *(this + 2) || (v45 = *v44, (v45 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v82))
                {
                  return 0;
                }

                v45 = v82;
                v46 = *(a1 + 72);
                v47 = *(a1 + 64);
                if (v46 == *(a1 + 76))
                {
LABEL_106:
                  if (2 * v46 <= v46 + 1)
                  {
                    v48 = v46 + 1;
                  }

                  else
                  {
                    v48 = 2 * v46;
                  }

                  if (v48 <= 4)
                  {
                    v48 = 4;
                  }

                  *(a1 + 76) = v48;
                  operator new[]();
                }
              }

              else
              {
                *(this + 1) = v44 + 1;
                v46 = *(a1 + 72);
                v47 = *(a1 + 64);
                if (v46 == *(a1 + 76))
                {
                  goto LABEL_106;
                }
              }

              *(a1 + 72) = v46 + 1;
              *(v47 + 4 * v46) = -(v45 & 1) ^ (v45 >> 1);
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v43);
LABEL_113:
            v50 = *(this + 1);
            v49 = *(this + 2);
            if (v50 < v49 && *v50 == 34)
            {
              v14 = v50 + 1;
              *(this + 1) = v14;
              v82 = 0;
              if (v14 >= v49)
              {
                goto LABEL_118;
              }

LABEL_116:
              v51 = *v14;
              if ((v51 & 0x80000000) != 0)
              {
LABEL_118:
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v82))
                {
                  return 0;
                }

                v51 = v82;
                goto LABEL_120;
              }

              v82 = *v14;
              *(this + 1) = v14 + 1;
LABEL_120:
              v52 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v51);
              while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
              {
                v81 = 0;
                v55 = *(this + 1);
                if (v55 >= *(this + 2) || *v55 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
                  {
                    return 0;
                  }
                }

                else
                {
                  v81 = *v55;
                  *(this + 1) = v55 + 1;
                }

                v56 = *(a1 + 96);
                v57 = *(a1 + 88);
                if (v56 == *(a1 + 100))
                {
                  if (2 * v56 <= v56 + 1)
                  {
                    v58 = v56 + 1;
                  }

                  else
                  {
                    v58 = 2 * v56;
                  }

                  if (v58 <= 4)
                  {
                    v58 = 4;
                  }

                  *(a1 + 100) = v58;
                  operator new[]();
                }

                v53 = *(a1 + 88);
                v54 = v81;
                *(a1 + 96) = v56 + 1;
                *(v53 + 4 * v56) = v54;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v52);
LABEL_135:
              v60 = *(this + 1);
              v59 = *(this + 2);
              if (v60 < v59 && *v60 == 42)
              {
                v22 = v60 + 1;
                *(this + 1) = v22;
                v81 = 0;
                if (v22 >= v59)
                {
                  goto LABEL_140;
                }

LABEL_138:
                v61 = *v22;
                if ((v61 & 0x80000000) != 0)
                {
LABEL_140:
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
                  {
                    return 0;
                  }

                  v61 = v81;
                  goto LABEL_142;
                }

                v81 = *v22;
                *(this + 1) = v22 + 1;
LABEL_142:
                v62 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v61);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                {
                  v82 = 0;
                  v63 = *(this + 1);
                  if (v63 >= *(this + 2) || (v64 = *v63, v64 < 0))
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v82))
                    {
                      return 0;
                    }

                    v65 = v82 != 0;
                    v66 = *(a1 + 120);
                    v67 = *(a1 + 112);
                    if (v66 == *(a1 + 124))
                    {
LABEL_151:
                      if (2 * v66 <= v66 + 1)
                      {
                        v68 = v66 + 1;
                      }

                      else
                      {
                        v68 = 2 * v66;
                      }

                      if (v68 <= 4)
                      {
                        v69 = 4;
                      }

                      else
                      {
                        v69 = v68;
                      }

                      *(a1 + 124) = v69;
                      operator new[]();
                    }
                  }

                  else
                  {
                    *(this + 1) = v63 + 1;
                    v65 = v64 != 0;
                    v66 = *(a1 + 120);
                    v67 = *(a1 + 112);
                    if (v66 == *(a1 + 124))
                    {
                      goto LABEL_151;
                    }
                  }

                  *(a1 + 120) = v66 + 1;
                  *(v67 + v66) = v65;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v62);
LABEL_159:
                v71 = *(this + 1);
                v70 = *(this + 2);
                if (v71 < v70 && *v71 == 50)
                {
                  v18 = v71 + 1;
                  *(this + 1) = v18;
                  v81 = 0;
                  if (v18 >= v70)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_162;
                }
              }
            }
          }

          break;
        case 3u:
          if (v9 == 2)
          {
            v16 = *(this + 1);
            v15 = *(this + 2);
            v81 = 0;
            if (v16 >= v15)
            {
              goto LABEL_95;
            }

            goto LABEL_93;
          }

          if ((TagFallback & 7) == 0)
          {
            result = sub_100383374(1, 0x1Au, this, (a1 + 64));
            if (!result)
            {
              return result;
            }

            goto LABEL_113;
          }

LABEL_35:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
          {
            return 0;
          }

          break;
        default:
          goto LABEL_35;
      }
    }

    if (v8 == 4)
    {
      if (v9 == 2)
      {
        v14 = *(this + 1);
        v13 = *(this + 2);
        v82 = 0;
        if (v14 >= v13)
        {
          goto LABEL_118;
        }

        goto LABEL_116;
      }

      if ((TagFallback & 7) == 0)
      {
        result = sub_100383134(1, 0x22u, this, (a1 + 88));
        if (!result)
        {
          return result;
        }

        goto LABEL_135;
      }

      goto LABEL_35;
    }

    if (v8 == 5)
    {
      if (v9 == 2)
      {
        v22 = *(this + 1);
        v21 = *(this + 2);
        v81 = 0;
        if (v22 >= v21)
        {
          goto LABEL_140;
        }

        goto LABEL_138;
      }

      if ((TagFallback & 7) == 0)
      {
        result = sub_1003835DC(1, 0x2Au, this, (a1 + 112));
        if (!result)
        {
          return result;
        }

        goto LABEL_159;
      }

      goto LABEL_35;
    }

    if (v8 != 6)
    {
      goto LABEL_35;
    }

    if (v9 == 2)
    {
      v18 = *(this + 1);
      v17 = *(this + 2);
      v81 = 0;
      if (v18 >= v17)
      {
        goto LABEL_164;
      }

LABEL_162:
      v72 = *v18;
      if ((v72 & 0x80000000) == 0)
      {
        v81 = *v18;
        *(this + 1) = v18 + 1;
LABEL_166:
        v73 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v82 = 0;
          v74 = *(this + 1);
          if (v74 >= *(this + 2) || (v75 = *v74, v75 < 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v82))
            {
              return 0;
            }

            v76 = v82 != 0;
            v77 = *(a1 + 144);
            v78 = *(a1 + 136);
            if (v77 == *(a1 + 148))
            {
LABEL_175:
              if (2 * v77 <= v77 + 1)
              {
                v79 = v77 + 1;
              }

              else
              {
                v79 = 2 * v77;
              }

              if (v79 <= 4)
              {
                v80 = 4;
              }

              else
              {
                v80 = v79;
              }

              *(a1 + 148) = v80;
              operator new[]();
            }
          }

          else
          {
            *(this + 1) = v74 + 1;
            v76 = v75 != 0;
            v77 = *(a1 + 144);
            v78 = *(a1 + 136);
            if (v77 == *(a1 + 148))
            {
              goto LABEL_175;
            }
          }

          *(a1 + 144) = v77 + 1;
          *(v78 + v77) = v76;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v73);
        continue;
      }

LABEL_164:
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v81))
      {
        return 0;
      }

      v72 = v81;
      goto LABEL_166;
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_35;
    }

    result = sub_1003835DC(1, 0x32u, this, (a1 + 136));
    if (!result)
    {
      return result;
    }
  }

  while (*(this + 1) != *(this + 2) || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_100095A18(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0xAu);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 32));
    if (*(v4 + 24) >= 1)
    {
      v5 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 16) + 4 * v5++));
      }

      while (v5 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 56));
    if (*(v4 + 48) >= 1)
    {
      v6 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 40) + 4 * v6++));
      }

      while (v6 < *(v4 + 48));
    }
  }

  if (*(v4 + 72) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x1Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 80));
    if (*(v4 + 72) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v4 + 64) + 4 * v7);
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, (2 * v8) ^ (v8 >> 31));
        ++v7;
      }

      while (v7 < *(v4 + 72));
    }
  }

  if (*(v4 + 96) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x22u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 104));
    if (*(v4 + 96) >= 1)
    {
      v9 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 88) + 4 * v9++));
      }

      while (v9 < *(v4 + 96));
    }
  }

  if (*(v4 + 120) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x2Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 128));
    if (*(v4 + 120) >= 1)
    {
      v10 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 112) + v10++));
      }

      while (v10 < *(v4 + 120));
    }
  }

  if (*(v4 + 144) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x32u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 152));
    if (*(v4 + 144) >= 1)
    {
      v11 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 136) + v11++));
      }

      while (v11 < *(v4 + 144));
    }
  }

  v14 = *(v4 + 8);
  v13 = (v4 + 8);
  v12 = v14;
  if (v14 && *v12 != v12[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v13, this, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100095C80(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v5 = a2 + 1;
    v6 = *(this + 8);
    if (v6 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v5, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v3 + 1) = v6;
      v3 = (v3 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    v7 = 0;
    do
    {
      while (1)
      {
        v8 = *(*(this + 2) + 4 * v7);
        if (v8 <= 0x7F)
        {
          break;
        }

        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3, a3);
        if (++v7 >= *(this + 6))
        {
          goto LABEL_10;
        }
      }

      *v3 = v8;
      v3 = (v3 + 1);
      ++v7;
    }

    while (v7 < *(this + 6));
  }

LABEL_10:
  if (*(this + 12) <= 0)
  {
    goto LABEL_19;
  }

  *v3 = 18;
  v9 = *(this + 14);
  if (v9 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v3 + 1, a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(v3 + 1) = v9;
    v3 = (v3 + 2);
    if (*(this + 12) < 1)
    {
      goto LABEL_19;
    }
  }

  v10 = 0;
  do
  {
    while (1)
    {
      v11 = *(*(this + 5) + 4 * v10);
      if (v11 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v3, a3);
      if (++v10 >= *(this + 12))
      {
        goto LABEL_19;
      }
    }

    *v3 = v11;
    v3 = (v3 + 1);
    ++v10;
  }

  while (v10 < *(this + 12));
LABEL_19:
  if (*(this + 18) <= 0)
  {
    goto LABEL_28;
  }

  *v3 = 26;
  v12 = *(this + 20);
  if (v12 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v3 + 1, a3);
    if (*(this + 18) < 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(v3 + 1) = v12;
    v3 = (v3 + 2);
    if (*(this + 18) < 1)
    {
      goto LABEL_28;
    }
  }

  v13 = 0;
  do
  {
    while (1)
    {
      v14 = *(*(this + 8) + 4 * v13);
      v15 = ((2 * v14) ^ (v14 >> 31));
      if (v15 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v3, a3);
      if (++v13 >= *(this + 18))
      {
        goto LABEL_28;
      }
    }

    *v3 = (2 * v14) ^ (v14 >> 31);
    v3 = (v3 + 1);
    ++v13;
  }

  while (v13 < *(this + 18));
LABEL_28:
  if (*(this + 24) <= 0)
  {
    goto LABEL_37;
  }

  *v3 = 34;
  v16 = *(this + 26);
  if (v16 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v3 + 1, a3);
    if (*(this + 24) < 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(v3 + 1) = v16;
    v3 = (v3 + 2);
    if (*(this + 24) < 1)
    {
      goto LABEL_37;
    }
  }

  v17 = 0;
  do
  {
    while (1)
    {
      v18 = *(*(this + 11) + 4 * v17);
      if (v18 <= 0x7F)
      {
        break;
      }

      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v3, a3);
      if (++v17 >= *(this + 24))
      {
        goto LABEL_37;
      }
    }

    *v3 = v18;
    v3 = (v3 + 1);
    ++v17;
  }

  while (v17 < *(this + 24));
LABEL_37:
  if (*(this + 30) <= 0)
  {
    goto LABEL_45;
  }

  *v3 = 42;
  v19 = *(this + 32);
  if (v19 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v3 + 1, a3);
    if (*(this + 30) < 1)
    {
      goto LABEL_45;
    }
  }

  else
  {
    *(v3 + 1) = v19;
    v3 = (v3 + 2);
    if (*(this + 30) < 1)
    {
      goto LABEL_45;
    }
  }

  v20 = 0;
  do
  {
    *(v3 + v20) = *(*(this + 14) + v20);
    ++v20;
  }

  while (v20 < *(this + 30));
  v3 = (v3 + v20);
LABEL_45:
  if (*(this + 36) > 0)
  {
    *v3 = 50;
    v21 = *(this + 38);
    if (v21 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v3 + 1, a3);
      if (*(this + 36) < 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(v3 + 1) = v21;
      v3 = (v3 + 2);
      if (*(this + 36) < 1)
      {
        goto LABEL_53;
      }
    }

    v22 = 0;
    do
    {
      *(v3 + v22) = *(*(this + 17) + v22);
      ++v22;
    }

    while (v22 < *(this + 36));
    v3 = (v3 + v22);
  }

LABEL_53:
  v25 = *(this + 1);
  v24 = (this + 8);
  v23 = v25;
  if (!v25 || *v23 == v23[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v24, v3, a3);
}

uint64_t sub_100096030(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    LODWORD(v5) = 0;
    goto LABEL_11;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    while (1)
    {
      v7 = *(*(a1 + 16) + 4 * v4);
      if (v7 < 0x80)
      {
        break;
      }

      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      v3 = *(a1 + 24);
      v5 = (v6 + v5);
      if (++v4 >= v3)
      {
        goto LABEL_6;
      }
    }

    v5 = (v5 + 1);
    ++v4;
  }

  while (v4 < v3);
LABEL_6:
  if (v5 <= 0)
  {
LABEL_11:
    *(a1 + 32) = v5;
    v8 = v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

LABEL_21:
    LODWORD(v11) = 0;
    goto LABEL_22;
  }

  if (v5 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    *(a1 + 32) = v5;
    v8 = v16 + 1 + v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  *(a1 + 32) = v5;
  v8 = v5 + 2;
  v9 = *(a1 + 48);
  if (v9 < 1)
  {
    goto LABEL_21;
  }

LABEL_12:
  v10 = 0;
  LODWORD(v11) = 0;
  do
  {
    while (1)
    {
      v13 = *(*(a1 + 40) + 4 * v10);
      if (v13 < 0x80)
      {
        break;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      v9 = *(a1 + 48);
      v11 = (v12 + v11);
      if (++v10 >= v9)
      {
        goto LABEL_16;
      }
    }

    v11 = (v11 + 1);
    ++v10;
  }

  while (v10 < v9);
LABEL_16:
  if (v11 <= 0)
  {
LABEL_22:
    *(a1 + 56) = v11;
    v14 = v8 + v11;
    v15 = *(a1 + 72);
    if (v15 >= 1)
    {
      goto LABEL_23;
    }

LABEL_32:
    LODWORD(v18) = 0;
    goto LABEL_33;
  }

  if (v11 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    *(a1 + 56) = v11;
    v14 = v24 + 1 + v8 + v11;
    v15 = *(a1 + 72);
    if (v15 >= 1)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  *(a1 + 56) = v11;
  v14 = v8 + 2 + v11;
  v15 = *(a1 + 72);
  if (v15 < 1)
  {
    goto LABEL_32;
  }

LABEL_23:
  v17 = 0;
  LODWORD(v18) = 0;
  do
  {
    while (1)
    {
      v20 = *(*(a1 + 64) + 4 * v17);
      v21 = ((2 * v20) ^ (v20 >> 31));
      if (v21 < 0x80)
      {
        break;
      }

      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2);
      v15 = *(a1 + 72);
      v18 = (v19 + v18);
      if (++v17 >= v15)
      {
        goto LABEL_27;
      }
    }

    v18 = (v18 + 1);
    ++v17;
  }

  while (v17 < v15);
LABEL_27:
  if (v18 <= 0)
  {
LABEL_33:
    *(a1 + 80) = v18;
    v22 = v14 + v18;
    v23 = *(a1 + 96);
    if (v23 >= 1)
    {
      goto LABEL_34;
    }

LABEL_43:
    LODWORD(v26) = 0;
    goto LABEL_44;
  }

  if (v18 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    *(a1 + 80) = v18;
    v22 = v31 + 1 + v14 + v18;
    v23 = *(a1 + 96);
    if (v23 >= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

  *(a1 + 80) = v18;
  v22 = v14 + 2 + v18;
  v23 = *(a1 + 96);
  if (v23 < 1)
  {
    goto LABEL_43;
  }

LABEL_34:
  v25 = 0;
  LODWORD(v26) = 0;
  do
  {
    while (1)
    {
      v28 = *(*(a1 + 88) + 4 * v25);
      if (v28 < 0x80)
      {
        break;
      }

      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
      v23 = *(a1 + 96);
      v26 = (v27 + v26);
      if (++v25 >= v23)
      {
        goto LABEL_38;
      }
    }

    v26 = (v26 + 1);
    ++v25;
  }

  while (v25 < v23);
LABEL_38:
  if (v26 <= 0)
  {
LABEL_44:
    *(a1 + 104) = v26;
    v29 = v22 + v26;
    v30 = *(a1 + 120);
    if (v30 >= 1)
    {
      goto LABEL_45;
    }

LABEL_52:
    *(a1 + 128) = v30;
    v32 = v29 + v30;
    v33 = *(a1 + 144);
    if (v33 < 1)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  if (v26 < 0x80)
  {
    *(a1 + 104) = v26;
    v29 = v22 + 2 + v26;
    v30 = *(a1 + 120);
    if (v30 >= 1)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
  *(a1 + 104) = v26;
  v29 = v38 + 1 + v22 + v26;
  v30 = *(a1 + 120);
  if (v30 < 1)
  {
    goto LABEL_52;
  }

LABEL_45:
  if (v30 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
    *(a1 + 128) = v30;
    v32 = v34 + 1 + v29 + v30;
    v33 = *(a1 + 144);
    if (v33 < 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    *(a1 + 128) = v30;
    v32 = v29 + 2 + v30;
    v33 = *(a1 + 144);
    if (v33 < 1)
    {
LABEL_49:
      v35 = (a1 + 8);
      v36 = *(a1 + 8);
      *(a1 + 152) = v33;
      v37 = (v32 + v33);
      if (!v36)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }
  }

LABEL_53:
  if (v33 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33, a2) + 1 + v32;
    v35 = (a1 + 8);
    v36 = *(a1 + 8);
    *(a1 + 152) = v33;
    v37 = (v39 + v33);
    if (!v36)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v35 = (a1 + 8);
    v36 = *(a1 + 8);
    *(a1 + 152) = v33;
    v37 = (v32 + 2 + v33);
    if (!v36)
    {
      goto LABEL_59;
    }
  }

LABEL_57:
  if (*v36 != v36[1])
  {
    v40 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v35, a2) + v37;
    *(a1 + 156) = v40;
    return v40;
  }

LABEL_59:
  *(a1 + 156) = v37;
  return v37;
}

uint64_t sub_100096430(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100094980(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_100096510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100096524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100096538(uint64_t result, uint64_t a2)
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

uint64_t sub_1000965CC()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB30;
}

void sub_10009665C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100096670(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    v8 = *(a1 + 16);
    if (v6 < v7)
    {
      v9 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v9 = v7;
      }

      if (v9 <= 4)
      {
        v9 = 4;
      }

      *(a1 + 28) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 4 * v5), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 52);
    v13 = v11 + v10;
    v14 = *(a1 + 40);
    if (v12 < v13)
    {
      v15 = 2 * v12;
      if (2 * v12 <= v13)
      {
        v15 = v13;
      }

      if (v15 <= 4)
      {
        v15 = 4;
      }

      *(a1 + 52) = v15;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 4 * v11), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100096854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100096868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009687C(void *a1)
{
  *a1 = off_100437490;
  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100096904(void *a1)
{
  *a1 = off_100437490;
  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096A40(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 14) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100096A5C(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1)
      {
        goto LABEL_14;
      }

      if (v8 == 2)
      {
        v32 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
          {
            return 0;
          }

          v11 = v32;
        }

        else
        {
          v32 = *v10;
          *(this + 1) = v10 + 1;
        }

        v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v11);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v31 = 0;
          v17 = *(this + 1);
          if (v17 >= *(this + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
            {
              return 0;
            }
          }

          else
          {
            v31 = *v17;
            *(this + 1) = v17 + 1;
          }

          v18 = *(a1 + 24);
          v19 = *(a1 + 16);
          if (v18 == *(a1 + 28))
          {
            if (2 * v18 <= v18 + 1)
            {
              v20 = v18 + 1;
            }

            else
            {
              v20 = 2 * v18;
            }

            if (v20 <= 4)
            {
              v20 = 4;
            }

            *(a1 + 28) = v20;
            operator new[]();
          }

          v15 = *(a1 + 16);
          v16 = v31;
          *(a1 + 24) = v18 + 1;
          *(v15 + 4 * v18) = v16;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
        goto LABEL_39;
      }

      if ((TagFallback & 7) != 0)
      {
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

      else
      {
        result = sub_100383134(1, 0xAu, this, (a1 + 16));
        if (!result)
        {
          return result;
        }

LABEL_39:
        v22 = *(this + 1);
        v21 = *(this + 2);
        if (v22 < v21 && *v22 == 18)
        {
          v13 = v22 + 1;
          *(this + 1) = v13;
          v32 = 0;
          if (v13 >= v21)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        }
      }
    }

    if (v8 == 2)
    {
      v13 = *(this + 1);
      v12 = *(this + 2);
      v32 = 0;
      if (v13 >= v12)
      {
        goto LABEL_44;
      }

LABEL_42:
      v23 = *v13;
      if ((v23 & 0x80000000) == 0)
      {
        v32 = *v13;
        *(this + 1) = v13 + 1;
LABEL_46:
        v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v23);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v31 = 0;
          v27 = *(this + 1);
          if (v27 >= *(this + 2) || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
            {
              return 0;
            }
          }

          else
          {
            v31 = *v27;
            *(this + 1) = v27 + 1;
          }

          v28 = *(a1 + 48);
          v29 = *(a1 + 40);
          if (v28 == *(a1 + 52))
          {
            if (2 * v28 <= v28 + 1)
            {
              v30 = v28 + 1;
            }

            else
            {
              v30 = 2 * v28;
            }

            if (v30 <= 4)
            {
              v30 = 4;
            }

            *(a1 + 52) = v30;
            operator new[]();
          }

          v25 = *(a1 + 40);
          v26 = v31;
          *(a1 + 48) = v28 + 1;
          *(v25 + 4 * v28) = v26;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
        continue;
      }

LABEL_44:
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v32))
      {
        return 0;
      }

      v23 = v32;
      goto LABEL_46;
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_14;
    }

    result = sub_100383134(1, 0x12u, this, (a1 + 40));
    if (!result)
    {
      return result;
    }
  }

  while (*(this + 1) != *(this + 2) || !*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_100096E48(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0xAu);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 32));
    if (*(v4 + 24) >= 1)
    {
      v5 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 16) + 4 * v5++));
      }

      while (v5 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 56));
    if (*(v4 + 48) >= 1)
    {
      v6 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 40) + 4 * v6++));
      }

      while (v6 < *(v4 + 48));
    }
  }

  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, this, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100096F58(wireless_diagnostics::google::protobuf::internal::WireFormat *this, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v4 = *(this + 8);
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(a2 + 1) = v4;
      a2 = (a2 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    v5 = 0;
    do
    {
      while (1)
      {
        v6 = *(*(this + 2) + 4 * v5);
        if (v6 <= 0x7F)
        {
          break;
        }

        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2, a3);
        if (++v5 >= *(this + 6))
        {
          goto LABEL_10;
        }
      }

      *a2 = v6;
      a2 = (a2 + 1);
      ++v5;
    }

    while (v5 < *(this + 6));
  }

LABEL_10:
  if (*(this + 12) > 0)
  {
    *a2 = 18;
    v7 = *(this + 14);
    if (v7 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
      if (*(this + 12) < 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(a2 + 1) = v7;
      a2 = (a2 + 2);
      if (*(this + 12) < 1)
      {
        goto LABEL_19;
      }
    }

    v8 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(this + 5) + 4 * v8);
        if (v9 <= 0x7F)
        {
          break;
        }

        a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, a2, a3);
        if (++v8 >= *(this + 12))
        {
          goto LABEL_19;
        }
      }

      *a2 = v9;
      a2 = (a2 + 1);
      ++v8;
    }

    while (v8 < *(this + 12));
  }

LABEL_19:
  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3);
}

uint64_t sub_1000970E0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    LODWORD(v5) = 0;
    goto LABEL_11;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    while (1)
    {
      v7 = *(*(a1 + 16) + 4 * v4);
      if (v7 < 0x80)
      {
        break;
      }

      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      v3 = *(a1 + 24);
      v5 = (v6 + v5);
      if (++v4 >= v3)
      {
        goto LABEL_6;
      }
    }

    v5 = (v5 + 1);
    ++v4;
  }

  while (v4 < v3);
LABEL_6:
  if (v5 <= 0)
  {
LABEL_11:
    *(a1 + 32) = v5;
    v8 = v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

LABEL_21:
    LODWORD(v11) = 0;
    goto LABEL_22;
  }

  if (v5 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    *(a1 + 32) = v5;
    v8 = v17 + 1 + v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  *(a1 + 32) = v5;
  v8 = v5 + 2;
  v9 = *(a1 + 48);
  if (v9 < 1)
  {
    goto LABEL_21;
  }

LABEL_12:
  v10 = 0;
  LODWORD(v11) = 0;
  do
  {
    while (1)
    {
      v13 = *(*(a1 + 40) + 4 * v10);
      if (v13 < 0x80)
      {
        break;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      v9 = *(a1 + 48);
      v11 = (v12 + v11);
      if (++v10 >= v9)
      {
        goto LABEL_16;
      }
    }

    v11 = (v11 + 1);
    ++v10;
  }

  while (v10 < v9);
LABEL_16:
  if (v11 <= 0)
  {
LABEL_22:
    v14 = (a1 + 8);
    v15 = *(a1 + 8);
    *(a1 + 56) = v11;
    v16 = (v8 + v11);
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v11 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1 + v8;
    v14 = (a1 + 8);
    v15 = *(a1 + 8);
    *(a1 + 56) = v11;
    v16 = (v20 + v11);
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v14 = (a1 + 8);
    v15 = *(a1 + 8);
    *(a1 + 56) = v11;
    v16 = (v8 + 2 + v11);
    if (!v15)
    {
      goto LABEL_26;
    }
  }

LABEL_23:
  if (*v15 != v15[1])
  {
    v18 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v14, a2) + v16;
    *(a1 + 60) = v18;
    return v18;
  }

LABEL_26:
  *(a1 + 60) = v16;
  return v16;
}

uint64_t sub_1000972AC(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_100096670(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10009738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1000973A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000973B4(uint64_t result, uint64_t a2)
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

uint64_t sub_100097448()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB40;
}

void sub_1000974D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000974EC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v95);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    v8 = *(a1 + 16);
    if (v6 < v7)
    {
      v9 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v9 = v7;
      }

      if (v9 <= 4)
      {
        v9 = 4;
      }

      *(a1 + 28) = v9;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 4 * v5), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 52);
    v13 = v11 + v10;
    v14 = *(a1 + 40);
    if (v12 < v13)
    {
      v15 = 2 * v12;
      if (2 * v12 <= v13)
      {
        v15 = v13;
      }

      if (v15 <= 4)
      {
        v15 = 4;
      }

      *(a1 + 52) = v15;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 4 * v11), *(a2 + 40), 4 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v16 = *(a2 + 72);
  if (v16)
  {
    v17 = *(a1 + 72);
    v18 = *(a1 + 76);
    v19 = v17 + v16;
    v20 = *(a1 + 64);
    if (v18 < v19)
    {
      v21 = 2 * v18;
      if (2 * v18 <= v19)
      {
        v21 = v19;
      }

      if (v21 <= 4)
      {
        v21 = 4;
      }

      *(a1 + 76) = v21;
      operator new[]();
    }

    memcpy((*(a1 + 64) + 4 * v17), *(a2 + 64), 4 * *(a2 + 72));
    *(a1 + 72) += *(a2 + 72);
  }

  v22 = *(a2 + 96);
  if (v22)
  {
    v23 = *(a1 + 96);
    v24 = *(a1 + 100);
    v25 = v23 + v22;
    v26 = *(a1 + 88);
    if (v24 < v25)
    {
      v27 = 2 * v24;
      if (2 * v24 <= v25)
      {
        v27 = v25;
      }

      if (v27 <= 4)
      {
        v28 = 4;
      }

      else
      {
        v28 = v27;
      }

      *(a1 + 100) = v28;
      operator new[]();
    }

    memcpy((*(a1 + 88) + v23), *(a2 + 88), *(a2 + 96));
    *(a1 + 96) += *(a2 + 96);
  }

  v29 = *(a2 + 120);
  if (v29)
  {
    v30 = *(a1 + 120);
    v31 = *(a1 + 124);
    v32 = v30 + v29;
    v33 = *(a1 + 112);
    if (v31 < v32)
    {
      v34 = 2 * v31;
      if (2 * v31 <= v32)
      {
        v34 = v32;
      }

      if (v34 <= 4)
      {
        v35 = 4;
      }

      else
      {
        v35 = v34;
      }

      *(a1 + 124) = v35;
      operator new[]();
    }

    memcpy((*(a1 + 112) + v30), *(a2 + 112), *(a2 + 120));
    *(a1 + 120) += *(a2 + 120);
  }

  v36 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 136), *(a2 + 144) + *(a1 + 144));
  if (*(a2 + 144) >= 1)
  {
    v37 = 0;
    do
    {
      while (1)
      {
        v41 = *(*(a2 + 136) + 8 * v37);
        v42 = *(a1 + 148);
        v43 = *(a1 + 144);
        if (v43 >= v42)
        {
          break;
        }

        v44 = *(a1 + 136);
        *(a1 + 144) = v43 + 1;
        v36 = std::string::operator=(*(v44 + 8 * v43), v41);
        if (++v37 >= *(a2 + 144))
        {
          goto LABEL_53;
        }
      }

      if (v42 == *(a1 + 152))
      {
        v36 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 136), v42 + 1);
        v42 = *(a1 + 148);
      }

      *(a1 + 148) = v42 + 1;
      v38 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v36);
      v39 = *(a1 + 136);
      v40 = *(a1 + 144);
      *(a1 + 144) = v40 + 1;
      *(v39 + 8 * v40) = v38;
      v36 = std::string::operator=(v38, v41);
      ++v37;
    }

    while (v37 < *(a2 + 144));
  }

LABEL_53:
  v45 = *(a2 + 168);
  if (v45)
  {
    v46 = *(a1 + 168);
    v47 = *(a1 + 172);
    v48 = v46 + v45;
    v49 = *(a1 + 160);
    if (v47 < v48)
    {
      v50 = 2 * v47;
      if (2 * v47 <= v48)
      {
        v50 = v48;
      }

      if (v50 <= 4)
      {
        v50 = 4;
      }

      *(a1 + 172) = v50;
      operator new[]();
    }

    memcpy((*(a1 + 160) + 4 * v46), *(a2 + 160), 4 * *(a2 + 168));
    *(a1 + 168) += *(a2 + 168);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 184), *(a2 + 192) + *(a1 + 192));
  if (*(a2 + 192) >= 1)
  {
    v51 = 0;
    do
    {
      v53 = *(*(a2 + 184) + 8 * v51);
      v54 = *(a1 + 196);
      v55 = *(a1 + 192);
      if (v55 >= v54)
      {
        if (v54 == *(a1 + 200))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 184), v54 + 1);
          v54 = *(a1 + 196);
        }

        *(a1 + 196) = v54 + 1;
        operator new();
      }

      v52 = *(a1 + 184);
      *(a1 + 192) = v55 + 1;
      sub_100096670(*(v52 + 8 * v55), v53);
      ++v51;
    }

    while (v51 < *(a2 + 192));
  }

  v56 = *(a2 + 216);
  if (v56)
  {
    v57 = *(a1 + 216);
    v58 = *(a1 + 220);
    v59 = v57 + v56;
    v60 = *(a1 + 208);
    if (v58 < v59)
    {
      v61 = 2 * v58;
      if (2 * v58 <= v59)
      {
        v61 = v59;
      }

      if (v61 <= 4)
      {
        v62 = 4;
      }

      else
      {
        v62 = v61;
      }

      *(a1 + 220) = v62;
      operator new[]();
    }

    memcpy((*(a1 + 208) + v57), *(a2 + 208), *(a2 + 216));
    *(a1 + 216) += *(a2 + 216);
  }

  v63 = *(a2 + 240);
  if (v63)
  {
    v64 = *(a1 + 240);
    v65 = *(a1 + 244);
    v66 = v64 + v63;
    v67 = *(a1 + 232);
    if (v65 < v66)
    {
      v68 = 2 * v65;
      if (2 * v65 <= v66)
      {
        v68 = v66;
      }

      if (v68 <= 4)
      {
        v68 = 4;
      }

      *(a1 + 244) = v68;
      operator new[]();
    }

    memcpy((*(a1 + 232) + 4 * v64), *(a2 + 232), 4 * *(a2 + 240));
    *(a1 + 240) += *(a2 + 240);
  }

  v69 = *(a2 + 264);
  if (v69)
  {
    v70 = *(a1 + 264);
    v71 = v70 + v69;
    v72 = *(a1 + 268);
    v73 = *(a1 + 256);
    if (v72 < v71)
    {
      v74 = 2 * v72;
      if (2 * v72 <= v71)
      {
        v74 = v71;
      }

      if (v74 <= 4)
      {
        v74 = 4;
      }

      *(a1 + 268) = v74;
      operator new[]();
    }

    memcpy((*(a1 + 256) + 4 * v70), *(a2 + 256), 4 * *(a2 + 264));
    *(a1 + 264) += *(a2 + 264);
  }

  v75 = *(a2 + 288);
  if (v75)
  {
    v76 = *(a1 + 288);
    v77 = v76 + v75;
    v78 = *(a1 + 292);
    v79 = *(a1 + 280);
    if (v78 < v77)
    {
      v80 = 2 * v78;
      if (2 * v78 <= v77)
      {
        v80 = v77;
      }

      if (v80 <= 4)
      {
        v80 = 4;
      }

      *(a1 + 292) = v80;
      operator new[]();
    }

    memcpy((*(a1 + 280) + 4 * v76), *(a2 + 280), 4 * *(a2 + 288));
    *(a1 + 288) += *(a2 + 288);
  }

  v81 = *(a2 + 312);
  if (v81)
  {
    v82 = *(a1 + 312);
    v83 = v82 + v81;
    v84 = *(a1 + 316);
    v85 = *(a1 + 304);
    if (v84 < v83)
    {
      v86 = 2 * v84;
      if (2 * v84 <= v83)
      {
        v86 = v83;
      }

      if (v86 <= 4)
      {
        v87 = 4;
      }

      else
      {
        v87 = v86;
      }

      *(a1 + 316) = v87;
      operator new[]();
    }

    memcpy((*(a1 + 304) + v82), *(a2 + 304), *(a2 + 312));
    *(a1 + 312) += *(a2 + 312);
  }

  v88 = *(a2 + 336);
  if (v88)
  {
    v89 = *(a1 + 336);
    v90 = v89 + v88;
    v91 = *(a1 + 340);
    v92 = *(a1 + 328);
    if (v91 < v90)
    {
      v93 = 2 * v91;
      if (2 * v91 <= v90)
      {
        v93 = v90;
      }

      if (v93 <= 4)
      {
        v93 = 4;
      }

      *(a1 + 340) = v93;
      operator new[]();
    }

    memcpy((*(a1 + 328) + 4 * v89), *(a2 + 328), 4 * *(a2 + 336));
    *(a1 + 336) += *(a2 + 336);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100097EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100097EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100097F20(uint64_t a1)
{
  *a1 = off_100437540;
  if (*(a1 + 328))
  {
    operator delete[]();
  }

  if (*(a1 + 304))
  {
    operator delete[]();
  }

  if (*(a1 + 280))
  {
    operator delete[]();
  }

  if (*(a1 + 256))
  {
    operator delete[]();
  }

  if (*(a1 + 232))
  {
    operator delete[]();
  }

  if (*(a1 + 208))
  {
    operator delete[]();
  }

  v2 = *(a1 + 196);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 184) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 196);
      }
    }
  }

  if (*(a1 + 184))
  {
    operator delete[]();
  }

  if (*(a1 + 160))
  {
    operator delete[]();
  }

  if (*(a1 + 148) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 136) + 8 * v5);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v5;
    }

    while (v5 < *(a1 + 148));
  }

  if (*(a1 + 136))
  {
    operator delete[]();
  }

  if (*(a1 + 112))
  {
    operator delete[]();
  }

  if (*(a1 + 88))
  {
    operator delete[]();
  }

  if (*(a1 + 64))
  {
    operator delete[]();
  }

  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100098124(uint64_t a1)
{
  sub_100097F20(a1);

  operator delete();
}

uint64_t sub_100098230(uint64_t this)
{
  v1 = this;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 96) = 0;
  *(this + 120) = 0;
  if (*(this + 144) >= 1)
  {
    v2 = 0;
    do
    {
      while (1)
      {
        v3 = *(*(this + 136) + 8 * v2);
        if (*(v3 + 23) < 0)
        {
          break;
        }

        *v3 = 0;
        *(v3 + 23) = 0;
        if (++v2 >= *(this + 144))
        {
          goto LABEL_6;
        }
      }

      **v3 = 0;
      *(v3 + 8) = 0;
      ++v2;
    }

    while (v2 < *(this + 144));
  }

LABEL_6:
  *(this + 144) = 0;
  *(this + 168) = 0;
  if (*(this + 192) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 184) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 192));
  }

  v7 = *(v1 + 8);
  v6 = (v1 + 8);
  *(v6 + 46) = 0;
  *(v6 + 52) = 0;
  *(v6 + 58) = 0;
  *(v6 + 64) = 0;
  *(v6 + 70) = 0;
  *(v6 + 76) = 0;
  *(v6 + 82) = 0;
  *(v6 + 86) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v6);
  }

  return this;
}

uint64_t sub_100098358(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
LABEL_2:
  while (2)
  {
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

    v8 = v7 & 7;
    switch(v7 >> 3)
    {
      case 1u:
        if (v8 == 2)
        {
          v183 = 0;
          v31 = *(this + 1);
          if (v31 >= *(this + 2) || (v32 = *v31, (v32 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
            {
              return 0;
            }

            v32 = v183;
          }

          else
          {
            v183 = *v31;
            *(this + 1) = v31 + 1;
          }

          v51 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v32);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            v182 = 0;
            v54 = *(this + 1);
            if (v54 >= *(this + 2) || *v54 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182))
              {
                return 0;
              }
            }

            else
            {
              v182 = *v54;
              *(this + 1) = v54 + 1;
            }

            v55 = *(v5 + 24);
            v56 = *(v5 + 16);
            if (v55 == *(v5 + 28))
            {
              if (2 * v55 <= v55 + 1)
              {
                v57 = v55 + 1;
              }

              else
              {
                v57 = 2 * v55;
              }

              if (v57 <= 4)
              {
                v57 = 4;
              }

              *(v5 + 28) = v57;
              operator new[]();
            }

            v52 = *(v5 + 16);
            v53 = v182;
            *(v5 + 24) = v55 + 1;
            *(v52 + 4 * v55) = v53;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v51);
          goto LABEL_118;
        }

        if ((v7 & 7) != 0)
        {
          goto LABEL_58;
        }

        result = sub_100383134(1, 0xAu, this, (v5 + 16));
        if (!result)
        {
          return result;
        }

LABEL_118:
        v59 = *(this + 1);
        v58 = *(this + 2);
        if (v59 < v58 && *v59 == 18)
        {
          v34 = v59 + 1;
          *(this + 1) = v34;
          v183 = 0;
          if (v34 >= v58)
          {
            goto LABEL_123;
          }

LABEL_121:
          v60 = *v34;
          if ((v60 & 0x80000000) != 0)
          {
LABEL_123:
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
            {
              return 0;
            }

            v60 = v183;
            goto LABEL_125;
          }

          v183 = *v34;
          *(this + 1) = v34 + 1;
LABEL_125:
          v61 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            v182 = 0;
            v64 = *(this + 1);
            if (v64 >= *(this + 2) || *v64 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182))
              {
                return 0;
              }
            }

            else
            {
              v182 = *v64;
              *(this + 1) = v64 + 1;
            }

            v65 = *(v5 + 48);
            v66 = *(v5 + 40);
            if (v65 == *(v5 + 52))
            {
              if (2 * v65 <= v65 + 1)
              {
                v67 = v65 + 1;
              }

              else
              {
                v67 = 2 * v65;
              }

              if (v67 <= 4)
              {
                v67 = 4;
              }

              *(v5 + 52) = v67;
              operator new[]();
            }

            v62 = *(v5 + 40);
            v63 = v182;
            *(v5 + 48) = v65 + 1;
            *(v62 + 4 * v65) = v63;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v61);
LABEL_140:
          v69 = *(this + 1);
          v68 = *(this + 2);
          if (v69 < v68 && *v69 == 26)
          {
            v28 = v69 + 1;
            *(this + 1) = v28;
            v182 = 0;
            if (v28 >= v68)
            {
              goto LABEL_145;
            }

LABEL_143:
            v70 = *v28;
            if ((v70 & 0x80000000) != 0)
            {
LABEL_145:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182))
              {
                return 0;
              }

              v70 = v182;
              goto LABEL_147;
            }

            v182 = *v28;
            *(this + 1) = v28 + 1;
LABEL_147:
            v71 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v70);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v183 = 0;
              v72 = *(this + 1);
              if (v72 >= *(this + 2) || (v73 = *v72, (v73 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
                {
                  return 0;
                }

                v73 = v183;
                v74 = *(v5 + 72);
                v75 = *(v5 + 64);
                if (v74 == *(v5 + 76))
                {
LABEL_156:
                  if (2 * v74 <= v74 + 1)
                  {
                    v76 = v74 + 1;
                  }

                  else
                  {
                    v76 = 2 * v74;
                  }

                  if (v76 <= 4)
                  {
                    v76 = 4;
                  }

                  *(v5 + 76) = v76;
                  operator new[]();
                }
              }

              else
              {
                *(this + 1) = v72 + 1;
                v74 = *(v5 + 72);
                v75 = *(v5 + 64);
                if (v74 == *(v5 + 76))
                {
                  goto LABEL_156;
                }
              }

              *(v5 + 72) = v74 + 1;
              *(v75 + 4 * v74) = v73;
            }

            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v71);
LABEL_163:
            v78 = *(this + 1);
            v77 = *(this + 2);
            if (v78 < v77 && *v78 == 34)
            {
              v30 = v78 + 1;
              *(this + 1) = v30;
              v182 = 0;
              if (v30 >= v77)
              {
                goto LABEL_168;
              }

LABEL_166:
              v79 = *v30;
              if ((v79 & 0x80000000) != 0)
              {
LABEL_168:
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182))
                {
                  return 0;
                }

                v79 = v182;
                goto LABEL_170;
              }

              v182 = *v30;
              *(this + 1) = v30 + 1;
LABEL_170:
              v80 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v79);
              while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
              {
                v183 = 0;
                v81 = *(this + 1);
                if (v81 >= *(this + 2) || (v82 = *v81, v82 < 0))
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
                  {
                    return 0;
                  }

                  v83 = v183 != 0;
                  v84 = *(v5 + 96);
                  v85 = *(v5 + 88);
                  if (v84 == *(v5 + 100))
                  {
LABEL_179:
                    if (2 * v84 <= v84 + 1)
                    {
                      v86 = v84 + 1;
                    }

                    else
                    {
                      v86 = 2 * v84;
                    }

                    if (v86 <= 4)
                    {
                      v87 = 4;
                    }

                    else
                    {
                      v87 = v86;
                    }

                    *(v5 + 100) = v87;
                    operator new[]();
                  }
                }

                else
                {
                  *(this + 1) = v81 + 1;
                  v83 = v82 != 0;
                  v84 = *(v5 + 96);
                  v85 = *(v5 + 88);
                  if (v84 == *(v5 + 100))
                  {
                    goto LABEL_179;
                  }
                }

                *(v5 + 96) = v84 + 1;
                *(v85 + v84) = v83;
              }

              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v80);
LABEL_187:
              v89 = *(this + 1);
              v88 = *(this + 2);
              if (v89 < v88 && *v89 == 42)
              {
                v22 = v89 + 1;
                *(this + 1) = v22;
                v182 = 0;
                if (v22 >= v88)
                {
                  goto LABEL_192;
                }

LABEL_190:
                v90 = *v22;
                if ((v90 & 0x80000000) != 0)
                {
LABEL_192:
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182))
                  {
                    return 0;
                  }

                  v90 = v182;
                  goto LABEL_194;
                }

                v182 = *v22;
                *(this + 1) = v22 + 1;
LABEL_194:
                v91 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v90);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                {
                  v183 = 0;
                  v92 = *(this + 1);
                  if (v92 >= *(this + 2) || (v93 = *v92, v93 < 0))
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
                    {
                      return 0;
                    }

                    v94 = v183 != 0;
                    v95 = *(v5 + 120);
                    v96 = *(v5 + 112);
                    if (v95 == *(v5 + 124))
                    {
LABEL_203:
                      if (2 * v95 <= v95 + 1)
                      {
                        v97 = v95 + 1;
                      }

                      else
                      {
                        v97 = 2 * v95;
                      }

                      if (v97 <= 4)
                      {
                        v98 = 4;
                      }

                      else
                      {
                        v98 = v97;
                      }

                      *(v5 + 124) = v98;
                      operator new[]();
                    }
                  }

                  else
                  {
                    *(this + 1) = v92 + 1;
                    v94 = v93 != 0;
                    v95 = *(v5 + 120);
                    v96 = *(v5 + 112);
                    if (v95 == *(v5 + 124))
                    {
                      goto LABEL_203;
                    }
                  }

                  *(v5 + 120) = v95 + 1;
                  *(v96 + v95) = v94;
                }

                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v91);
LABEL_211:
                v99 = *(this + 1);
                if (v99 < *(this + 2) && *v99 == 50)
                {
                  do
                  {
                    *(this + 1) = v99 + 1;
                    v15 = *(v5 + 148);
                    v16 = *(v5 + 144);
                    if (v16 < v15)
                    {
LABEL_44:
                      v17 = *(v5 + 136);
                      *(v5 + 144) = v16 + 1;
                      v18 = *(v17 + 8 * v16);
                    }

                    else
                    {
LABEL_225:
                      if (v15 == *(v5 + 152))
                      {
                        result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 136), v15 + 1);
                        v15 = *(v5 + 148);
                      }

                      *(v5 + 148) = v15 + 1;
                      v100 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
                      v101 = *(v5 + 136);
                      v102 = *(v5 + 144);
                      *(v5 + 144) = v102 + 1;
                      *(v101 + 8 * v102) = v100;
                    }

                    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                    if (!result)
                    {
                      return result;
                    }

                    v99 = *(this + 1);
                    v103 = *(this + 2);
                    if (v99 >= v103)
                    {
                      goto LABEL_2;
                    }

                    v104 = *v99;
                  }

                  while (v104 == 50);
                  if (v104 == 58)
                  {
                    v37 = v99 + 1;
                    *(this + 1) = v37;
                    v183 = 0;
                    if (v37 >= v103)
                    {
                      goto LABEL_235;
                    }

LABEL_233:
                    v105 = *v37;
                    if ((v105 & 0x80000000) != 0)
                    {
LABEL_235:
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
                      {
                        return 0;
                      }

                      v105 = v183;
                      goto LABEL_237;
                    }

                    v183 = *v37;
                    *(this + 1) = v37 + 1;
LABEL_237:
                    v106 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v105);
                    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                    {
                      v182 = 0;
                      v109 = *(this + 1);
                      if (v109 >= *(this + 2) || *v109 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v182 = *v109;
                        *(this + 1) = v109 + 1;
                      }

                      v110 = *(v5 + 168);
                      v111 = *(v5 + 160);
                      if (v110 == *(v5 + 172))
                      {
                        if (2 * v110 <= v110 + 1)
                        {
                          v112 = v110 + 1;
                        }

                        else
                        {
                          v112 = 2 * v110;
                        }

                        if (v112 <= 4)
                        {
                          v112 = 4;
                        }

                        *(v5 + 172) = v112;
                        operator new[]();
                      }

                      v107 = *(v5 + 160);
                      v108 = v182;
                      *(v5 + 168) = v110 + 1;
                      *(v107 + 4 * v110) = v108;
                    }

                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v106);
LABEL_252:
                    v113 = *(this + 1);
                    if (v113 < *(this + 2) && *v113 == 66)
                    {
                      do
                      {
                        *(this + 1) = v113 + 1;
                        v11 = *(v5 + 196);
                        v12 = *(v5 + 192);
                        if (v12 >= v11)
                        {
LABEL_255:
                          if (v11 == *(v5 + 200))
                          {
                            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 184), v11 + 1);
                            v11 = *(v5 + 196);
                          }

                          *(v5 + 196) = v11 + 1;
                          operator new();
                        }

LABEL_37:
                        v13 = *(v5 + 184);
                        *(v5 + 192) = v12 + 1;
                        v14 = *(v13 + 8 * v12);
                        v183 = 0;
                        v114 = *(this + 1);
                        if (v114 >= *(this + 2) || *v114 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v183 = *v114;
                          *(this + 1) = v114 + 1;
                        }

                        v115 = *(this + 14);
                        v116 = *(this + 15);
                        *(this + 14) = v115 + 1;
                        if (v115 >= v116)
                        {
                          return 0;
                        }

                        v117 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v183);
                        if (!sub_100096A5C(v14, this, v118, v119) || *(this + 36) != 1)
                        {
                          return 0;
                        }

                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v117);
                        v120 = *(this + 14);
                        v121 = __OFSUB__(v120, 1);
                        v122 = v120 - 1;
                        if (v122 < 0 == v121)
                        {
                          *(this + 14) = v122;
                        }

                        v113 = *(this + 1);
                        v123 = *(this + 2);
                        if (v113 >= v123)
                        {
                          goto LABEL_2;
                        }

                        v124 = *v113;
                      }

                      while (v124 == 66);
                      if (v124 == 74)
                      {
                        v39 = v113 + 1;
                        *(this + 1) = v39;
                        v182 = 0;
                        if (v39 >= v123)
                        {
                          goto LABEL_273;
                        }

LABEL_271:
                        v125 = *v39;
                        if ((v125 & 0x80000000) != 0)
                        {
LABEL_273:
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182))
                          {
                            return 0;
                          }

                          v125 = v182;
                          goto LABEL_275;
                        }

                        v182 = *v39;
                        *(this + 1) = v39 + 1;
LABEL_275:
                        v126 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v125);
                        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                        {
                          v183 = 0;
                          v127 = *(this + 1);
                          if (v127 >= *(this + 2) || (v128 = *v127, v128 < 0))
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
                            {
                              return 0;
                            }

                            v129 = v183 != 0;
                            v130 = *(v5 + 216);
                            v131 = *(v5 + 208);
                            if (v130 == *(v5 + 220))
                            {
LABEL_284:
                              if (2 * v130 <= v130 + 1)
                              {
                                v132 = v130 + 1;
                              }

                              else
                              {
                                v132 = 2 * v130;
                              }

                              if (v132 <= 4)
                              {
                                v133 = 4;
                              }

                              else
                              {
                                v133 = v132;
                              }

                              *(v5 + 220) = v133;
                              operator new[]();
                            }
                          }

                          else
                          {
                            *(this + 1) = v127 + 1;
                            v129 = v128 != 0;
                            v130 = *(v5 + 216);
                            v131 = *(v5 + 208);
                            if (v130 == *(v5 + 220))
                            {
                              goto LABEL_284;
                            }
                          }

                          *(v5 + 216) = v130 + 1;
                          *(v131 + v130) = v129;
                        }

                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v126);
LABEL_292:
                        v135 = *(this + 1);
                        v134 = *(this + 2);
                        if (v135 < v134 && *v135 == 82)
                        {
                          v26 = v135 + 1;
                          *(this + 1) = v26;
                          v183 = 0;
                          if (v26 >= v134)
                          {
                            goto LABEL_297;
                          }

LABEL_295:
                          v136 = *v26;
                          if ((v136 & 0x80000000) != 0)
                          {
LABEL_297:
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
                            {
                              return 0;
                            }

                            v136 = v183;
                            goto LABEL_299;
                          }

                          v183 = *v26;
                          *(this + 1) = v26 + 1;
LABEL_299:
                          v137 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v136);
                          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                          {
                            v182 = 0;
                            v140 = *(this + 1);
                            if (v140 >= *(this + 2) || *v140 < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v182 = *v140;
                              *(this + 1) = v140 + 1;
                            }

                            v141 = *(v5 + 240);
                            v142 = *(v5 + 232);
                            if (v141 == *(v5 + 244))
                            {
                              if (2 * v141 <= v141 + 1)
                              {
                                v143 = v141 + 1;
                              }

                              else
                              {
                                v143 = 2 * v141;
                              }

                              if (v143 <= 4)
                              {
                                v143 = 4;
                              }

                              *(v5 + 244) = v143;
                              operator new[]();
                            }

                            v138 = *(v5 + 232);
                            v139 = v182;
                            *(v5 + 240) = v141 + 1;
                            *(v138 + 4 * v141) = v139;
                          }

                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v137);
LABEL_314:
                          v144 = *(this + 1);
                          v19 = *(this + 2);
                          if (v144 < v19 && *v144 == 90)
                          {
                            v20 = v144 + 1;
                            *(this + 1) = v20;
LABEL_317:
                            v182 = 0;
                            if (v20 >= v19 || (v145 = *v20, (v145 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182);
                              if (!result)
                              {
                                return result;
                              }

                              v145 = v182;
                            }

                            else
                            {
                              v182 = *v20;
                              *(this + 1) = v20 + 1;
                            }

                            v146 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v145);
                            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
                            {
LABEL_323:
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v146);
                              goto LABEL_324;
                            }

                            while (2)
                            {
                              v183 = 0;
                              v150 = *(this + 1);
                              if (v150 >= *(this + 2) || (v151 = *v150, (v151 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183);
                                if (!result)
                                {
                                  return result;
                                }

                                v151 = v183;
                                if (v183 <= 2)
                                {
LABEL_338:
                                  v152 = *(v5 + 264);
                                  v153 = *(v5 + 256);
                                  if (v152 == *(v5 + 268))
                                  {
                                    if (2 * v152 <= v152 + 1)
                                    {
                                      v154 = v152 + 1;
                                    }

                                    else
                                    {
                                      v154 = 2 * v152;
                                    }

                                    if (v154 <= 4)
                                    {
                                      v154 = 4;
                                    }

                                    *(v5 + 268) = v154;
                                    operator new[]();
                                  }

                                  v149 = *(v5 + 256);
                                  *(v5 + 264) = v152 + 1;
                                  *(v149 + 4 * v152) = v151;
                                }
                              }

                              else
                              {
                                *(this + 1) = v150 + 1;
                                if (v151 <= 2)
                                {
                                  goto LABEL_338;
                                }
                              }

                              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
                              {
                                goto LABEL_323;
                              }

                              continue;
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

        continue;
      case 2u:
        if (v8 == 2)
        {
          v34 = *(this + 1);
          v33 = *(this + 2);
          v183 = 0;
          if (v34 >= v33)
          {
            goto LABEL_123;
          }

          goto LABEL_121;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_100383134(1, 0x12u, this, (v5 + 40));
          if (!result)
          {
            return result;
          }

          goto LABEL_140;
        }

        goto LABEL_58;
      case 3u:
        if (v8 == 2)
        {
          v28 = *(this + 1);
          v27 = *(this + 2);
          v182 = 0;
          if (v28 >= v27)
          {
            goto LABEL_145;
          }

          goto LABEL_143;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_100383830(1, 0x1Au, this, (v5 + 64));
          if (!result)
          {
            return result;
          }

          goto LABEL_163;
        }

        goto LABEL_58;
      case 4u:
        if (v8 == 2)
        {
          v30 = *(this + 1);
          v29 = *(this + 2);
          v182 = 0;
          if (v30 >= v29)
          {
            goto LABEL_168;
          }

          goto LABEL_166;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_1003835DC(1, 0x22u, this, (v5 + 88));
          if (!result)
          {
            return result;
          }

          goto LABEL_187;
        }

        goto LABEL_58;
      case 5u:
        if (v8 == 2)
        {
          v22 = *(this + 1);
          v21 = *(this + 2);
          v182 = 0;
          if (v22 >= v21)
          {
            goto LABEL_192;
          }

          goto LABEL_190;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_1003835DC(1, 0x2Au, this, (v5 + 112));
          if (!result)
          {
            return result;
          }

          goto LABEL_211;
        }

        goto LABEL_58;
      case 6u:
        if (v8 != 2)
        {
          goto LABEL_58;
        }

        v15 = *(v5 + 148);
        v16 = *(v5 + 144);
        if (v16 < v15)
        {
          goto LABEL_44;
        }

        goto LABEL_225;
      case 7u:
        if (v8 == 2)
        {
          v37 = *(this + 1);
          v38 = *(this + 2);
          v183 = 0;
          if (v37 >= v38)
          {
            goto LABEL_235;
          }

          goto LABEL_233;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_100383134(1, 0x3Au, this, (v5 + 160));
          if (!result)
          {
            return result;
          }

          goto LABEL_252;
        }

        goto LABEL_58;
      case 8u:
        if (v8 != 2)
        {
          goto LABEL_58;
        }

        v11 = *(v5 + 196);
        v12 = *(v5 + 192);
        if (v12 < v11)
        {
          goto LABEL_37;
        }

        goto LABEL_255;
      case 9u:
        if (v8 == 2)
        {
          v39 = *(this + 1);
          v40 = *(this + 2);
          v182 = 0;
          if (v39 >= v40)
          {
            goto LABEL_273;
          }

          goto LABEL_271;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_1003835DC(1, 0x4Au, this, (v5 + 208));
          if (!result)
          {
            return result;
          }

          goto LABEL_292;
        }

        goto LABEL_58;
      case 0xAu:
        if (v8 == 2)
        {
          v26 = *(this + 1);
          v25 = *(this + 2);
          v183 = 0;
          if (v26 >= v25)
          {
            goto LABEL_297;
          }

          goto LABEL_295;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_100383134(1, 0x52u, this, (v5 + 232));
          if (!result)
          {
            return result;
          }

          goto LABEL_314;
        }

        goto LABEL_58;
      case 0xBu:
        if ((v7 & 7) == 0)
        {
          v183 = 0;
          v46 = *(this + 1);
          if (v46 >= *(this + 2) || (v47 = *v46, (v47 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183);
            if (!result)
            {
              return result;
            }

            v47 = v183;
            if (v183 <= 2)
            {
LABEL_94:
              v48 = *(v5 + 264);
              v49 = *(v5 + 256);
              if (v48 == *(v5 + 268))
              {
                if (2 * v48 <= v48 + 1)
                {
                  v50 = v48 + 1;
                }

                else
                {
                  v50 = 2 * v48;
                }

                if (v50 <= 4)
                {
                  v50 = 4;
                }

                *(v5 + 268) = v50;
                operator new[]();
              }

              result = *(v5 + 256);
              *(v5 + 264) = v48 + 1;
              *(result + 4 * v48) = v47;
              goto LABEL_324;
            }
          }

          else
          {
            *(this + 1) = v46 + 1;
            if (v47 <= 2)
            {
              goto LABEL_94;
            }
          }

          result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 11, v47);
LABEL_324:
          v147 = *(this + 1);
          v9 = *(this + 2);
          if (v147 < v9 && *v147 == 98)
          {
            v10 = v147 + 1;
            *(this + 1) = v10;
            goto LABEL_327;
          }

          continue;
        }

        if (v8 == 2)
        {
          v20 = *(this + 1);
          v19 = *(this + 2);
          goto LABEL_317;
        }

LABEL_58:
        if (v8 != 4)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
          if ((result & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xCu:
        if ((v7 & 7) != 0)
        {
          if (v8 == 2)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
LABEL_327:
            v182 = 0;
            if (v10 >= v9 || (v148 = *v10, (v148 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182);
              if (!result)
              {
                return result;
              }

              v148 = v182;
            }

            else
            {
              v182 = *v10;
              *(this + 1) = v10 + 1;
            }

            v155 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v148);
            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
            {
LABEL_348:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v155);
              goto LABEL_349;
            }

            while (1)
            {
              v183 = 0;
              v159 = *(this + 1);
              if (v159 >= *(this + 2) || (v160 = *v159, (v160 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183);
                if (!result)
                {
                  return result;
                }

                v160 = v183;
                if (v183 <= 2)
                {
LABEL_363:
                  v161 = *(v5 + 288);
                  v162 = *(v5 + 280);
                  if (v161 == *(v5 + 292))
                  {
                    if (2 * v161 <= v161 + 1)
                    {
                      v163 = v161 + 1;
                    }

                    else
                    {
                      v163 = 2 * v161;
                    }

                    if (v163 <= 4)
                    {
                      v163 = 4;
                    }

                    *(v5 + 292) = v163;
                    operator new[]();
                  }

                  v158 = *(v5 + 280);
                  *(v5 + 288) = v161 + 1;
                  *(v158 + 4 * v161) = v160;
                }
              }

              else
              {
                *(this + 1) = v159 + 1;
                if (v160 <= 2)
                {
                  goto LABEL_363;
                }
              }

              if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
              {
                goto LABEL_348;
              }
            }
          }

          goto LABEL_58;
        }

        v183 = 0;
        v41 = *(this + 1);
        if (v41 >= *(this + 2) || (v42 = *v41, (v42 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183);
          if (!result)
          {
            return result;
          }

          v42 = v183;
          if (v183 <= 2)
          {
LABEL_84:
            v43 = *(v5 + 288);
            v44 = *(v5 + 280);
            if (v43 == *(v5 + 292))
            {
              if (2 * v43 <= v43 + 1)
              {
                v45 = v43 + 1;
              }

              else
              {
                v45 = 2 * v43;
              }

              if (v45 <= 4)
              {
                v45 = 4;
              }

              *(v5 + 292) = v45;
              operator new[]();
            }

            result = *(v5 + 280);
            *(v5 + 288) = v43 + 1;
            *(result + 4 * v43) = v42;
            goto LABEL_349;
          }
        }

        else
        {
          *(this + 1) = v41 + 1;
          if (v42 <= 2)
          {
            goto LABEL_84;
          }
        }

        result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 12, v42);
LABEL_349:
        v156 = *(this + 1);
        v23 = *(this + 2);
        if (v156 < v23 && *v156 == 106)
        {
          v24 = v156 + 1;
          *(this + 1) = v24;
LABEL_352:
          v182 = 0;
          if (v24 >= v23 || (v157 = *v24, (v157 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182))
            {
              return 0;
            }

            v157 = v182;
          }

          else
          {
            v182 = *v24;
            *(this + 1) = v24 + 1;
          }

          v164 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v157);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            v183 = 0;
            v166 = *(this + 1);
            if (v166 >= *(this + 2) || (v167 = *v166, (v167 & 0x80000000) != 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
              {
                return 0;
              }

              v167 = v183;
            }

            else
            {
              *(this + 1) = v166 + 1;
            }

            v168 = v167 != 0;
            v169 = *(v5 + 312);
            v170 = *(v5 + 304);
            if (v169 == *(v5 + 316))
            {
              if (2 * v169 <= v169 + 1)
              {
                v171 = v169 + 1;
              }

              else
              {
                v171 = 2 * v169;
              }

              if (v171 <= 4)
              {
                v172 = 4;
              }

              else
              {
                v172 = v171;
              }

              *(v5 + 316) = v172;
              operator new[]();
            }

            v165 = *(v5 + 304);
            *(v5 + 312) = v169 + 1;
            *(v165 + v169) = v168;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v164);
          goto LABEL_389;
        }

        continue;
      case 0xDu:
        if (v8 == 2)
        {
          v24 = *(this + 1);
          v23 = *(this + 2);
          goto LABEL_352;
        }

        if ((v7 & 7) != 0)
        {
          goto LABEL_58;
        }

        result = sub_1003835DC(1, 0x6Au, this, (v5 + 304));
        if (!result)
        {
          return result;
        }

LABEL_389:
        v174 = *(this + 1);
        v173 = *(this + 2);
        if (v174 < v173 && *v174 == 114)
        {
          v36 = v174 + 1;
          *(this + 1) = v36;
          v182 = 0;
          if (v36 >= v173)
          {
            goto LABEL_394;
          }

LABEL_392:
          v175 = *v36;
          if ((v175 & 0x80000000) == 0)
          {
            v182 = *v36;
            *(this + 1) = v36 + 1;
            goto LABEL_396;
          }

LABEL_394:
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v182))
          {
            return 0;
          }

          v175 = v182;
LABEL_396:
          v176 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v175);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            v183 = 0;
            v177 = *(this + 1);
            if (v177 >= *(this + 2) || (v178 = *v177, (v178 & 0x80000000) != 0))
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v183))
              {
                return 0;
              }

              v178 = v183;
              v179 = *(v5 + 336);
              v180 = *(v5 + 328);
              if (v179 == *(v5 + 340))
              {
LABEL_405:
                if (2 * v179 <= v179 + 1)
                {
                  v181 = v179 + 1;
                }

                else
                {
                  v181 = 2 * v179;
                }

                if (v181 <= 4)
                {
                  v181 = 4;
                }

                *(v5 + 340) = v181;
                operator new[]();
              }
            }

            else
            {
              *(this + 1) = v177 + 1;
              v179 = *(v5 + 336);
              v180 = *(v5 + 328);
              if (v179 == *(v5 + 340))
              {
                goto LABEL_405;
              }
            }

            *(v5 + 336) = v179 + 1;
            *(v180 + 4 * v179) = -(v178 & 1) ^ (v178 >> 1);
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v176);
LABEL_412:
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }

        continue;
      case 0xEu:
        if (v8 == 2)
        {
          v36 = *(this + 1);
          v35 = *(this + 2);
          v182 = 0;
          if (v36 >= v35)
          {
            goto LABEL_394;
          }

          goto LABEL_392;
        }

        if ((v7 & 7) == 0)
        {
          result = sub_100383374(1, 0x72u, this, (v5 + 328));
          if (!result)
          {
            return result;
          }

          goto LABEL_412;
        }

        goto LABEL_58;
      default:
        goto LABEL_58;
    }
  }
}

uint64_t sub_100099A54(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0xAu);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 32));
    if (*(v5 + 24) >= 1)
    {
      v6 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 16) + 4 * v6++));
      }

      while (v6 < *(v5 + 24));
    }
  }

  if (*(v5 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 56));
    if (*(v5 + 48) >= 1)
    {
      v7 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 40) + 4 * v7++));
      }

      while (v7 < *(v5 + 48));
    }
  }

  if (*(v5 + 72) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x1Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 80));
    if (*(v5 + 72) >= 1)
    {
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(*(v5 + 64) + 4 * v8);
          if ((v9 & 0x80000000) != 0)
          {
            break;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, v9);
          if (++v8 >= *(v5 + 72))
          {
            goto LABEL_15;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(this, v9);
        ++v8;
      }

      while (v8 < *(v5 + 72));
    }
  }

LABEL_15:
  if (*(v5 + 96) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x22u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 104));
    if (*(v5 + 96) >= 1)
    {
      v10 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 88) + v10++));
      }

      while (v10 < *(v5 + 96));
    }
  }

  if (*(v5 + 120) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x2Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 128));
    if (*(v5 + 120) >= 1)
    {
      v11 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 112) + v11++));
      }

      while (v11 < *(v5 + 120));
    }
  }

  if (*(v5 + 144) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(v5 + 136) + 8 * v12);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v12;
    }

    while (v12 < *(v5 + 144));
  }

  if (*(v5 + 168) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x3Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 176));
    if (*(v5 + 168) >= 1)
    {
      v14 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 160) + 4 * v14++));
      }

      while (v14 < *(v5 + 168));
    }
  }

  if (*(v5 + 192) >= 1)
  {
    v15 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(*(v5 + 184) + 8 * v15++), this, a4);
    }

    while (v15 < *(v5 + 192));
  }

  if (*(v5 + 216) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x4Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 224));
    if (*(v5 + 216) >= 1)
    {
      v16 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 208) + v16++));
      }

      while (v16 < *(v5 + 216));
    }
  }

  if (*(v5 + 240) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x52u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 248));
    if (*(v5 + 240) >= 1)
    {
      v17 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 232) + 4 * v17++));
      }

      while (v17 < *(v5 + 240));
    }
  }

  if (*(v5 + 264) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x5Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 272));
    if (*(v5 + 264) >= 1)
    {
      v18 = 0;
      do
      {
        while (1)
        {
          v19 = *(*(v5 + 256) + 4 * v18);
          if ((v19 & 0x80000000) != 0)
          {
            break;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, v19);
          if (++v18 >= *(v5 + 264))
          {
            goto LABEL_47;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(this, v19);
        ++v18;
      }

      while (v18 < *(v5 + 264));
    }
  }

LABEL_47:
  if (*(v5 + 288) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x62u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 296));
    if (*(v5 + 288) >= 1)
    {
      v20 = 0;
      do
      {
        while (1)
        {
          v21 = *(*(v5 + 280) + 4 * v20);
          if ((v21 & 0x80000000) != 0)
          {
            break;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, v21);
          if (++v20 >= *(v5 + 288))
          {
            goto LABEL_53;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(this, v21);
        ++v20;
      }

      while (v20 < *(v5 + 288));
    }
  }

LABEL_53:
  if (*(v5 + 312) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x6Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 320));
    if (*(v5 + 312) >= 1)
    {
      v22 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v5 + 304) + v22++));
      }

      while (v22 < *(v5 + 312));
    }
  }

  if (*(v5 + 336) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x72u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v5 + 344));
    if (*(v5 + 336) >= 1)
    {
      v23 = 0;
      do
      {
        v24 = *(*(v5 + 328) + 4 * v23);
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, (2 * v24) ^ (v24 >> 31));
        ++v23;
      }

      while (v23 < *(v5 + 336));
    }
  }

  v27 = *(v5 + 8);
  v26 = (v5 + 8);
  v25 = v27;
  if (v27 && *v25 != v25[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v26, this, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100099F7C(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v6 = a2 + 1;
    v7 = *(this + 8);
    if (v7 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v6, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v4 + 1) = v7;
      v4 = (v4 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_10;
      }
    }

    v8 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(this + 2) + 4 * v8);
        if (v9 <= 0x7F)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v4, a3);
        if (++v8 >= *(this + 6))
        {
          goto LABEL_10;
        }
      }

      *v4 = v9;
      v4 = (v4 + 1);
      ++v8;
    }

    while (v8 < *(this + 6));
  }

LABEL_10:
  if (*(this + 12) <= 0)
  {
    goto LABEL_19;
  }

  *v4 = 18;
  v10 = *(this + 14);
  if (v10 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v4 + 1, a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(v4 + 1) = v10;
    v4 = (v4 + 2);
    if (*(this + 12) < 1)
    {
      goto LABEL_19;
    }
  }

  v11 = 0;
  do
  {
    while (1)
    {
      v12 = *(*(this + 5) + 4 * v11);
      if (v12 <= 0x7F)
      {
        break;
      }

      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4, a3);
      if (++v11 >= *(this + 12))
      {
        goto LABEL_19;
      }
    }

    *v4 = v12;
    v4 = (v4 + 1);
    ++v11;
  }

  while (v11 < *(this + 12));
LABEL_19:
  if (*(this + 18) <= 0)
  {
    goto LABEL_31;
  }

  *v4 = 26;
  v13 = *(this + 20);
  if (v13 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v4 + 1, a3);
    if (*(this + 18) < 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(v4 + 1) = v13;
    v4 = (v4 + 2);
    if (*(this + 18) < 1)
    {
      goto LABEL_31;
    }
  }

  v14 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v15 = *(*(this + 8) + 4 * v14);
        if ((v15 & 0x80000000) == 0)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v4, a3);
        if (++v14 >= *(this + 18))
        {
          goto LABEL_31;
        }
      }

      if (v15 > 0x7F)
      {
        break;
      }

      *v4 = v15;
      v4 = (v4 + 1);
      if (++v14 >= *(this + 18))
      {
        goto LABEL_31;
      }
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4, a3);
    ++v14;
  }

  while (v14 < *(this + 18));
LABEL_31:
  if (*(this + 24) <= 0)
  {
    goto LABEL_39;
  }

  *v4 = 34;
  v16 = *(this + 26);
  if (v16 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
    if (*(this + 24) < 1)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(v4 + 1) = v16;
    v4 = (v4 + 2);
    if (*(this + 24) < 1)
    {
      goto LABEL_39;
    }
  }

  v17 = 0;
  do
  {
    *(v4 + v17) = *(*(this + 11) + v17);
    ++v17;
  }

  while (v17 < *(this + 24));
  v4 = (v4 + v17);
LABEL_39:
  if (*(this + 30) <= 0)
  {
    goto LABEL_47;
  }

  *v4 = 42;
  v18 = *(this + 32);
  if (v18 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
    if (*(this + 30) < 1)
    {
      goto LABEL_47;
    }
  }

  else
  {
    *(v4 + 1) = v18;
    v4 = (v4 + 2);
    if (*(this + 30) < 1)
    {
      goto LABEL_47;
    }
  }

  v19 = 0;
  do
  {
    *(v4 + v19) = *(*(this + 14) + v19);
    ++v19;
  }

  while (v19 < *(this + 30));
  v4 = (v4 + v19);
LABEL_47:
  if (*(this + 36) >= 1)
  {
    for (i = 0; i < *(this + 36); ++i)
    {
      v25 = *(*(this + 17) + 8 * i);
      *v4 = 50;
      v26 = *(v25 + 23);
      if ((v26 & 0x8000000000000000) != 0)
      {
        v26 = *(v25 + 8);
        if (v26 > 0x7F)
        {
LABEL_61:
          v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v4 + 1, a3);
          goto LABEL_50;
        }
      }

      else if (v26 > 0x7F)
      {
        goto LABEL_61;
      }

      *(v4 + 1) = v26;
      v21 = v4 + 2;
LABEL_50:
      v22 = *(v25 + 23);
      if (v22 >= 0)
      {
        v23 = v25;
      }

      else
      {
        v23 = *v25;
      }

      if (v22 >= 0)
      {
        v24 = *(v25 + 23);
      }

      else
      {
        v24 = *(v25 + 8);
      }

      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v23, v24, v21, a4);
    }
  }

  if (*(this + 42) > 0)
  {
    *v4 = 58;
    v27 = *(this + 44);
    if (v27 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v4 + 1, a3);
      if (*(this + 42) < 1)
      {
        goto LABEL_71;
      }
    }

    else
    {
      *(v4 + 1) = v27;
      v4 = (v4 + 2);
      if (*(this + 42) < 1)
      {
        goto LABEL_71;
      }
    }

    v28 = 0;
    do
    {
      while (1)
      {
        v29 = *(*(this + 20) + 4 * v28);
        if (v29 <= 0x7F)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v4, a3);
        if (++v28 >= *(this + 42))
        {
          goto LABEL_71;
        }
      }

      *v4 = v29;
      v4 = (v4 + 1);
      ++v28;
    }

    while (v28 < *(this + 42));
  }

LABEL_71:
  if (*(this + 48) >= 1)
  {
    v30 = 0;
    do
    {
      v32 = *(*(this + 23) + 8 * v30);
      *v4 = 66;
      v33 = v32[15];
      if (v33 <= 0x7F)
      {
        *(v4 + 1) = v33;
        v31 = (v4 + 2);
      }

      else
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v4 + 1, a3);
      }

      v4 = sub_100096F58(v32, v31, a3);
      ++v30;
    }

    while (v30 < *(this + 48));
  }

  if (*(this + 54) > 0)
  {
    *v4 = 74;
    v34 = *(this + 56);
    if (v34 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v4 + 1, a3);
      if (*(this + 54) < 1)
      {
        goto LABEL_85;
      }
    }

    else
    {
      *(v4 + 1) = v34;
      v4 = (v4 + 2);
      if (*(this + 54) < 1)
      {
        goto LABEL_85;
      }
    }

    v35 = 0;
    do
    {
      *(v4 + v35) = *(*(this + 26) + v35);
      ++v35;
    }

    while (v35 < *(this + 54));
    v4 = (v4 + v35);
  }

LABEL_85:
  if (*(this + 60) <= 0)
  {
    goto LABEL_94;
  }

  *v4 = 82;
  v36 = *(this + 62);
  if (v36 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v4 + 1, a3);
    if (*(this + 60) < 1)
    {
      goto LABEL_94;
    }
  }

  else
  {
    *(v4 + 1) = v36;
    v4 = (v4 + 2);
    if (*(this + 60) < 1)
    {
      goto LABEL_94;
    }
  }

  v37 = 0;
  do
  {
    while (1)
    {
      v38 = *(*(this + 29) + 4 * v37);
      if (v38 <= 0x7F)
      {
        break;
      }

      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v38, v4, a3);
      if (++v37 >= *(this + 60))
      {
        goto LABEL_94;
      }
    }

    *v4 = v38;
    v4 = (v4 + 1);
    ++v37;
  }

  while (v37 < *(this + 60));
LABEL_94:
  if (*(this + 66) <= 0)
  {
    goto LABEL_106;
  }

  *v4 = 90;
  v39 = *(this + 68);
  if (v39 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v39, v4 + 1, a3);
    if (*(this + 66) < 1)
    {
      goto LABEL_106;
    }
  }

  else
  {
    *(v4 + 1) = v39;
    v4 = (v4 + 2);
    if (*(this + 66) < 1)
    {
      goto LABEL_106;
    }
  }

  v40 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v41 = *(*(this + 32) + 4 * v40);
        if ((v41 & 0x80000000) == 0)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v41, v4, a3);
        if (++v40 >= *(this + 66))
        {
          goto LABEL_106;
        }
      }

      if (v41 > 0x7F)
      {
        break;
      }

      *v4 = v41;
      v4 = (v4 + 1);
      if (++v40 >= *(this + 66))
      {
        goto LABEL_106;
      }
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v4, a3);
    ++v40;
  }

  while (v40 < *(this + 66));
LABEL_106:
  if (*(this + 72) <= 0)
  {
    goto LABEL_118;
  }

  *v4 = 98;
  v42 = *(this + 74);
  if (v42 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v42, v4 + 1, a3);
    if (*(this + 72) < 1)
    {
      goto LABEL_118;
    }
  }

  else
  {
    *(v4 + 1) = v42;
    v4 = (v4 + 2);
    if (*(this + 72) < 1)
    {
      goto LABEL_118;
    }
  }

  v43 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v44 = *(*(this + 35) + 4 * v43);
        if ((v44 & 0x80000000) == 0)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v44, v4, a3);
        if (++v43 >= *(this + 72))
        {
          goto LABEL_118;
        }
      }

      if (v44 > 0x7F)
      {
        break;
      }

      *v4 = v44;
      v4 = (v4 + 1);
      if (++v43 >= *(this + 72))
      {
        goto LABEL_118;
      }
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, v4, a3);
    ++v43;
  }

  while (v43 < *(this + 72));
LABEL_118:
  if (*(this + 78) <= 0)
  {
    goto LABEL_126;
  }

  *v4 = 106;
  v45 = *(this + 80);
  if (v45 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v4 + 1, a3);
    if (*(this + 78) < 1)
    {
      goto LABEL_126;
    }
  }

  else
  {
    *(v4 + 1) = v45;
    v4 = (v4 + 2);
    if (*(this + 78) < 1)
    {
      goto LABEL_126;
    }
  }

  v46 = 0;
  do
  {
    *(v4 + v46) = *(*(this + 38) + v46);
    ++v46;
  }

  while (v46 < *(this + 78));
  v4 = (v4 + v46);
LABEL_126:
  if (*(this + 84) > 0)
  {
    *v4 = 114;
    v47 = *(this + 86);
    if (v47 > 0x7F)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v47, v4 + 1, a3);
      if (*(this + 84) < 1)
      {
        goto LABEL_135;
      }
    }

    else
    {
      *(v4 + 1) = v47;
      v4 = (v4 + 2);
      if (*(this + 84) < 1)
      {
        goto LABEL_135;
      }
    }

    v48 = 0;
    do
    {
      while (1)
      {
        v49 = *(*(this + 41) + 4 * v48);
        v50 = ((2 * v49) ^ (v49 >> 31));
        if (v50 <= 0x7F)
        {
          break;
        }

        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v50, v4, a3);
        if (++v48 >= *(this + 84))
        {
          goto LABEL_135;
        }
      }

      *v4 = (2 * v49) ^ (v49 >> 31);
      v4 = (v4 + 1);
      ++v48;
    }

    while (v48 < *(this + 84));
  }

LABEL_135:
  v53 = *(this + 1);
  v52 = (this + 8);
  v51 = v53;
  if (!v53 || *v51 == v51[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v52, v4, a3);
}

uint64_t sub_10009A7E0(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    LODWORD(v5) = 0;
    goto LABEL_11;
  }

  v4 = 0;
  LODWORD(v5) = 0;
  do
  {
    while (1)
    {
      v7 = *(*(a1 + 16) + 4 * v4);
      if (v7 < 0x80)
      {
        break;
      }

      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      v3 = *(a1 + 24);
      v5 = (v6 + v5);
      if (++v4 >= v3)
      {
        goto LABEL_6;
      }
    }

    v5 = (v5 + 1);
    ++v4;
  }

  while (v4 < v3);
LABEL_6:
  if (v5 <= 0)
  {
LABEL_11:
    *(a1 + 32) = v5;
    v8 = v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

LABEL_21:
    LODWORD(v11) = 0;
    goto LABEL_22;
  }

  if (v5 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    *(a1 + 32) = v5;
    v8 = v16 + 1 + v5;
    v9 = *(a1 + 48);
    if (v9 >= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  *(a1 + 32) = v5;
  v8 = v5 + 2;
  v9 = *(a1 + 48);
  if (v9 < 1)
  {
    goto LABEL_21;
  }

LABEL_12:
  v10 = 0;
  LODWORD(v11) = 0;
  do
  {
    while (1)
    {
      v13 = *(*(a1 + 40) + 4 * v10);
      if (v13 < 0x80)
      {
        break;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
      v9 = *(a1 + 48);
      v11 = (v12 + v11);
      if (++v10 >= v9)
      {
        goto LABEL_16;
      }
    }

    v11 = (v11 + 1);
    ++v10;
  }

  while (v10 < v9);
LABEL_16:
  if (v11 <= 0)
  {
LABEL_22:
    *(a1 + 56) = v11;
    v14 = v8 + v11;
    v15 = *(a1 + 72);
    if (v15 >= 1)
    {
      goto LABEL_23;
    }

LABEL_35:
    LODWORD(v18) = 0;
    goto LABEL_36;
  }

  if (v11 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    *(a1 + 56) = v11;
    v14 = v23 + 1 + v8 + v11;
    v15 = *(a1 + 72);
    if (v15 >= 1)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  *(a1 + 56) = v11;
  v14 = v8 + 2 + v11;
  v15 = *(a1 + 72);
  if (v15 < 1)
  {
    goto LABEL_35;
  }

LABEL_23:
  v17 = 0;
  LODWORD(v18) = 0;
  do
  {
    v20 = *(*(a1 + 64) + 4 * v17);
    if ((v20 & 0x80000000) != 0)
    {
      v19 = 10;
    }

    else if (v20 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      v15 = *(a1 + 72);
    }

    else
    {
      v19 = 1;
    }

    v18 = (v19 + v18);
    ++v17;
  }

  while (v17 < v15);
  if (v18 <= 0)
  {
LABEL_36:
    *(a1 + 80) = v18;
    v21 = v14 + v18;
    v22 = *(a1 + 96);
    if (v22 < 1)
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

  if (v18 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
    *(a1 + 80) = v18;
    v21 = v29 + 1 + v14 + v18;
    v22 = *(a1 + 96);
    if (v22 < 1)
    {
      goto LABEL_44;
    }

LABEL_37:
    if (v22 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
      *(a1 + 104) = v22;
      v24 = v26 + 1 + v21 + v22;
      v25 = *(a1 + 120);
      if (v25 >= 1)
      {
        goto LABEL_45;
      }
    }

    else
    {
      *(a1 + 104) = v22;
      v24 = v21 + 2 + v22;
      v25 = *(a1 + 120);
      if (v25 >= 1)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_41;
  }

  *(a1 + 80) = v18;
  v21 = v14 + 2 + v18;
  v22 = *(a1 + 96);
  if (v22 >= 1)
  {
    goto LABEL_37;
  }

LABEL_44:
  *(a1 + 104) = v22;
  v24 = v21 + v22;
  v25 = *(a1 + 120);
  if (v25 >= 1)
  {
LABEL_45:
    if (v25 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    }

    else
    {
      v30 = 2;
    }

    v31 = v30 + v24;
    *(a1 + 128) = v25;
    v27 = *(a1 + 144);
    v28 = v31 + v25 + v27;
    if (v27 < 1)
    {
      goto LABEL_59;
    }

    goto LABEL_49;
  }

LABEL_41:
  *(a1 + 128) = v25;
  v27 = *(a1 + 144);
  v28 = v24 + v25 + v27;
  if (v27 < 1)
  {
    goto LABEL_59;
  }

LABEL_49:
  for (i = 0; i < v27; ++i)
  {
    v35 = *(*(a1 + 136) + 8 * i);
    v34 = *(v35 + 23);
    v36 = v34;
    v37 = *(v35 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v38 = *(v35 + 23);
    }

    else
    {
      v38 = v37;
    }

    if (v38 < 0x80)
    {
      v33 = 1;
    }

    else
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2);
      v34 = *(v35 + 23);
      v37 = *(v35 + 8);
      v27 = *(a1 + 144);
      v36 = *(v35 + 23);
    }

    if (v36 < 0)
    {
      v34 = v37;
    }

    v28 += v33 + v34;
  }

LABEL_59:
  v39 = *(a1 + 168);
  if (v39 < 1)
  {
    LODWORD(v41) = 0;
  }

  else
  {
    v40 = 0;
    LODWORD(v41) = 0;
    do
    {
      while (1)
      {
        v43 = *(*(a1 + 160) + 4 * v40);
        if (v43 < 0x80)
        {
          break;
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2);
        v39 = *(a1 + 168);
        v41 = (v42 + v41);
        if (++v40 >= v39)
        {
          goto LABEL_64;
        }
      }

      v41 = (v41 + 1);
      ++v40;
    }

    while (v40 < v39);
LABEL_64:
    if (v41 > 0)
    {
      if (v41 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2) + 1;
      }

      else
      {
        v44 = 2;
      }

      *(a1 + 176) = v41;
      v47 = *(a1 + 192);
      v46 = v44 + v28 + v41 + v47;
      if (v47 < 1)
      {
        goto LABEL_76;
      }

      goto LABEL_72;
    }
  }

  *(a1 + 176) = v41;
  v45 = *(a1 + 192);
  v46 = v28 + v41 + v45;
  if (v45 < 1)
  {
    goto LABEL_76;
  }

LABEL_72:
  v48 = 0;
  do
  {
    while (1)
    {
      v49 = sub_1000970E0(*(*(a1 + 184) + 8 * v48), a2);
      if (v49 >= 0x80)
      {
        break;
      }

      v46 += v49 + 1;
      if (++v48 >= *(a1 + 192))
      {
        goto LABEL_76;
      }
    }

    v46 += v49 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49, a2);
    ++v48;
  }

  while (v48 < *(a1 + 192));
LABEL_76:
  v50 = *(a1 + 216);
  if (v50 > 0)
  {
    if (v50 >= 0x80)
    {
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(a1 + 216), a2) + 1;
    }

    else
    {
      v51 = 2;
    }

    v46 += v51;
  }

  *(a1 + 224) = v50;
  v52 = v46 + v50;
  v53 = *(a1 + 240);
  if (v53 < 1)
  {
    LODWORD(v55) = 0;
    goto LABEL_91;
  }

  v54 = 0;
  LODWORD(v55) = 0;
  do
  {
    while (1)
    {
      v57 = *(*(a1 + 232) + 4 * v54);
      if (v57 < 0x80)
      {
        break;
      }

      v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57, a2);
      v53 = *(a1 + 240);
      v55 = (v56 + v55);
      if (++v54 >= v53)
      {
        goto LABEL_86;
      }
    }

    v55 = (v55 + 1);
    ++v54;
  }

  while (v54 < v53);
LABEL_86:
  if (v55 <= 0)
  {
LABEL_91:
    *(a1 + 248) = v55;
    v58 = v52 + v55;
    v59 = *(a1 + 264);
    if (v59 >= 1)
    {
      goto LABEL_92;
    }

LABEL_104:
    LODWORD(v61) = 0;
    goto LABEL_105;
  }

  if (v55 >= 0x80)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55, a2);
    *(a1 + 248) = v55;
    v58 = v66 + 1 + v52 + v55;
    v59 = *(a1 + 264);
    if (v59 >= 1)
    {
      goto LABEL_92;
    }

    goto LABEL_104;
  }

  *(a1 + 248) = v55;
  v58 = v52 + 2 + v55;
  v59 = *(a1 + 264);
  if (v59 < 1)
  {
    goto LABEL_104;
  }

LABEL_92:
  v60 = 0;
  LODWORD(v61) = 0;
  do
  {
    v63 = *(*(a1 + 256) + 4 * v60);
    if ((v63 & 0x80000000) != 0)
    {
      v62 = 10;
    }

    else if (v63 >= 0x80)
    {
      v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63, a2);
      v59 = *(a1 + 264);
    }

    else
    {
      v62 = 1;
    }

    v61 = (v62 + v61);
    ++v60;
  }

  while (v60 < v59);
  if (v61 <= 0)
  {
LABEL_105:
    *(a1 + 272) = v61;
    v64 = v58 + v61;
    v65 = *(a1 + 288);
    if (v65 >= 1)
    {
      goto LABEL_106;
    }

LABEL_118:
    LODWORD(v68) = 0;
    goto LABEL_119;
  }

  if (v61 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61, a2);
    *(a1 + 272) = v61;
    v64 = v73 + 1 + v58 + v61;
    v65 = *(a1 + 288);
    if (v65 >= 1)
    {
      goto LABEL_106;
    }

    goto LABEL_118;
  }

  *(a1 + 272) = v61;
  v64 = v58 + 2 + v61;
  v65 = *(a1 + 288);
  if (v65 < 1)
  {
    goto LABEL_118;
  }

LABEL_106:
  v67 = 0;
  LODWORD(v68) = 0;
  do
  {
    v70 = *(*(a1 + 280) + 4 * v67);
    if ((v70 & 0x80000000) != 0)
    {
      v69 = 10;
    }

    else if (v70 >= 0x80)
    {
      v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70, a2);
      v65 = *(a1 + 288);
    }

    else
    {
      v69 = 1;
    }

    v68 = (v69 + v68);
    ++v67;
  }

  while (v67 < v65);
  if (v68 <= 0)
  {
LABEL_119:
    *(a1 + 296) = v68;
    v71 = v64 + v68;
    v72 = *(a1 + 312);
    if (v72 < 1)
    {
      goto LABEL_126;
    }

    goto LABEL_120;
  }

  if (v68 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68, a2);
    *(a1 + 296) = v68;
    v71 = v78 + 1 + v64 + v68;
    v72 = *(a1 + 312);
    if (v72 < 1)
    {
      goto LABEL_126;
    }
  }

  else
  {
    *(a1 + 296) = v68;
    v71 = v64 + 2 + v68;
    v72 = *(a1 + 312);
    if (v72 < 1)
    {
LABEL_126:
      *(a1 + 320) = v72;
      v74 = v71 + v72;
      v75 = *(a1 + 336);
      if (v75 >= 1)
      {
        goto LABEL_127;
      }

LABEL_124:
      LODWORD(v77) = 0;
      goto LABEL_135;
    }
  }

LABEL_120:
  if (v72 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72, a2);
    *(a1 + 320) = v72;
    v74 = v76 + 1 + v71 + v72;
    v75 = *(a1 + 336);
    if (v75 < 1)
    {
      goto LABEL_124;
    }
  }

  else
  {
    *(a1 + 320) = v72;
    v74 = v71 + 2 + v72;
    v75 = *(a1 + 336);
    if (v75 < 1)
    {
      goto LABEL_124;
    }
  }

LABEL_127:
  v79 = 0;
  LODWORD(v77) = 0;
  do
  {
    while (1)
    {
      v81 = *(*(a1 + 328) + 4 * v79);
      v82 = ((2 * v81) ^ (v81 >> 31));
      if (v82 < 0x80)
      {
        break;
      }

      v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82, a2);
      v75 = *(a1 + 336);
      v77 = (v80 + v77);
      if (++v79 >= v75)
      {
        goto LABEL_131;
      }
    }

    v77 = (v77 + 1);
    ++v79;
  }

  while (v79 < v75);
LABEL_131:
  if (v77 <= 0)
  {
LABEL_135:
    v83 = (a1 + 8);
    v84 = *(a1 + 8);
    *(a1 + 344) = v77;
    v85 = (v74 + v77);
    if (!v84)
    {
      goto LABEL_139;
    }

    goto LABEL_136;
  }

  if (v77 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77, a2) + 1 + v74;
    v83 = (a1 + 8);
    v84 = *(a1 + 8);
    *(a1 + 344) = v77;
    v85 = (v88 + v77);
    if (!v84)
    {
      goto LABEL_139;
    }
  }

  else
  {
    v83 = (a1 + 8);
    v84 = *(a1 + 8);
    *(a1 + 344) = v77;
    v85 = (v74 + 2 + v77);
    if (!v84)
    {
      goto LABEL_139;
    }
  }

LABEL_136:
  if (*v84 != v84[1])
  {
    v86 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v83, a2) + v85;
    *(a1 + 348) = v86;
    return v86;
  }

LABEL_139:
  *(a1 + 348) = v85;
  return v85;
}

uint64_t sub_10009B008(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1000974EC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10009B0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009B0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B110(uint64_t result, uint64_t a2)
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

uint64_t sub_10009B1A4()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB50;
}

void sub_10009B234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009B248(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 16) + 8 * v5);
        v10 = *(a1 + 28);
        v11 = *(a1 + 24);
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 16);
        *(a1 + 24) = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v10 == *(a1 + 32))
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v10 + 1);
        v10 = *(a1 + 28);
      }

      *(a1 + 28) = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 24) = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 24));
  }

LABEL_11:
  LOBYTE(v13) = *(a2 + 64);
  if (v13)
  {
    if (*(a2 + 64))
    {
      v14 = *(a2 + 56);
      *(a1 + 64) |= 1u;
      *(a1 + 56) = v14;
      v13 = *(a2 + 64);
    }

    if ((v13 & 4) != 0)
    {
      *(a1 + 64) |= 4u;
      v15 = *(a1 + 40);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 40);
      if (!v16)
      {
        v16 = *(qword_10045DCE8 + 40);
      }

      sub_100094980(v15, v16);
      v13 = *(a2 + 64);
    }

    if ((v13 & 8) != 0)
    {
      *(a1 + 64) |= 8u;
      v17 = *(a1 + 48);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 48);
      if (!v18)
      {
        v18 = *(qword_10045DCE8 + 48);
      }

      sub_1000974EC(v17, v18);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009B54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009B560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009B574(uint64_t a1)
{
  *a1 = off_1004375F0;
  if (qword_10045DCE8 != a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (*(a1 + 28) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 16) + 8 * v4);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v4;
    }

    while (v4 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10009B684(uint64_t a1)
{
  sub_10009B574(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009B75C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    *(a1 + 56) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 4) = 0;
        *(v3 + 10) = 0;
        *(v3 + 16) = 0;
        *(v3 + 22) = 0;
        *(v3 + 28) = 0;
        *(v3 + 34) = 0;
        *(v3 + 38) = 0;
        if (v4)
        {
          v5 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
          a1 = v5;
        }
      }
    }

    if ((*(a1 + 64) & 8) != 0 && *(a1 + 48))
    {
      v6 = a1;
      sub_100098230(*(a1 + 48));
      a1 = v6;
    }
  }

  if (*(a1 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v8 = *(*(a1 + 16) + 8 * v7);
        if (*(v8 + 23) < 0)
        {
          break;
        }

        *v8 = 0;
        *(v8 + 23) = 0;
        if (++v7 >= *(a1 + 24))
        {
          goto LABEL_14;
        }
      }

      **v8 = 0;
      *(v8 + 8) = 0;
      ++v7;
    }

    while (v7 < *(a1 + 24));
  }

LABEL_14:
  v10 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 14) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10009B868(uint64_t result, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
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
      if (v7 >> 3 <= 2)
      {
        break;
      }

      if (v8 == 3)
      {
        if (v9 != 2)
        {
          goto LABEL_26;
        }

        goto LABEL_42;
      }

      if (v8 == 4 && v9 == 2)
      {
        *(v5 + 64) |= 8u;
        v14 = *(v5 + 48);
        if (!v14)
        {
          goto LABEL_56;
        }

        goto LABEL_18;
      }

LABEL_26:
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

    if (v8 != 1)
    {
      break;
    }

    if ((v7 & 7) != 0)
    {
      goto LABEL_26;
    }

    v41 = 0;
    v16 = *(this + 1);
    if (v16 >= *(this + 2) || (v17 = *v16, (v17 & 0x80000000) != 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41);
      if (!result)
      {
        return result;
      }

      v17 = v41;
      if (v41 > 2)
      {
LABEL_31:
        result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 1, v17);
        goto LABEL_32;
      }
    }

    else
    {
      *(this + 1) = v16 + 1;
      if (v17 > 2)
      {
        goto LABEL_31;
      }
    }

    *(v5 + 64) |= 1u;
    *(v5 + 56) = v17;
LABEL_32:
    v18 = *(this + 1);
    if (v18 < *(this + 2) && *v18 == 18)
    {
      do
      {
        *(this + 1) = v18 + 1;
        v10 = *(v5 + 28);
        v11 = *(v5 + 24);
        if (v11 < v10)
        {
          goto LABEL_12;
        }

LABEL_35:
        if (v10 == *(v5 + 32))
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16), v10 + 1);
          v10 = *(v5 + 28);
        }

        *(v5 + 28) = v10 + 1;
        v19 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v20 = *(v5 + 16);
        v21 = *(v5 + 24);
        *(v5 + 24) = v21 + 1;
        *(v20 + 8 * v21) = v19;
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

LABEL_38:
        v18 = *(this + 1);
        if (v18 >= *(this + 2))
        {
          goto LABEL_2;
        }

        v22 = *v18;
      }

      while (v22 == 18);
      if (v22 == 26)
      {
        *(this + 1) = v18 + 1;
LABEL_42:
        *(v5 + 64) |= 4u;
        v23 = *(v5 + 40);
        if (!v23)
        {
          operator new();
        }

        v42 = 0;
        v24 = *(this + 1);
        if (v24 >= *(this + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
          {
            return 0;
          }
        }

        else
        {
          v42 = *v24;
          *(this + 1) = v24 + 1;
        }

        v25 = *(this + 14);
        v26 = *(this + 15);
        *(this + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
        if (!sub_100094FF4(v23, this, v28, v29) || *(this + 36) != 1)
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
          *(this + 1) = v33 + 1;
          *(v5 + 64) |= 8u;
          v14 = *(v5 + 48);
          if (!v14)
          {
LABEL_56:
            operator new();
          }

LABEL_18:
          v43 = 0;
          v15 = *(this + 1);
          if (v15 >= *(this + 2) || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
            {
              return 0;
            }
          }

          else
          {
            v43 = *v15;
            *(this + 1) = v15 + 1;
          }

          v34 = *(this + 14);
          v35 = *(this + 15);
          *(this + 14) = v34 + 1;
          if (v34 >= v35)
          {
            return 0;
          }

          v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
          if (!sub_100098358(v14, this, v37, v38) || *(this + 36) != 1)
          {
            return 0;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
          v39 = *(this + 14);
          v31 = __OFSUB__(v39, 1);
          v40 = v39 - 1;
          if (v40 < 0 == v31)
          {
            *(this + 14) = v40;
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
  }

  if (v8 != 2 || v9 != 2)
  {
    goto LABEL_26;
  }

  v10 = *(v5 + 28);
  v11 = *(v5 + 24);
  if (v11 >= v10)
  {
    goto LABEL_35;
  }

LABEL_12:
  v12 = *(v5 + 16);
  *(v5 + 24) = v11 + 1;
  v13 = *(v12 + 8 * v11);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
  if (result)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_10009BDB0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 64))
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 56), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 16) + 8 * v6);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v6;
    }

    while (v6 < *(v5 + 24));
  }

  v8 = *(v5 + 64);
  if ((v8 & 4) != 0)
  {
    v12 = *(v5 + 40);
    if (v12)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v12, a2, a4);
      if ((*(v5 + 64) & 8) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_10045DCE8 + 40), a2, a4);
      if ((*(v5 + 64) & 8) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    v11 = *(v5 + 8);
    v10 = (v5 + 8);
    v9 = v11;
    if (!v11)
    {
      return result;
    }

    goto LABEL_18;
  }

  if ((v8 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v13 = *(v5 + 48);
  if (v13)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v13, a2, a4);
    v14 = *(v5 + 8);
    v10 = (v5 + 8);
    v9 = v14;
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_10045DCE8 + 48), a2, a4);
    v15 = *(v5 + 8);
    v10 = (v5 + 8);
    v9 = v15;
    if (!v15)
    {
      return result;
    }
  }

LABEL_18:
  if (*v9 != v9[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009BEF4(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((*(this + 64) & 1) == 0)
  {
    result = a2;
    if (*(this + 6) < 1)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v6 = *(this + 14);
  *a2 = 8;
  v8 = a2 + 1;
  if ((v6 & 0x80000000) == 0)
  {
    if (v6 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v8, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *(a2 + 1) = v6;
      result = (a2 + 2);
      if (*(this + 6) < 1)
      {
        goto LABEL_25;
      }
    }

LABEL_11:
    v9 = 0;
    while (1)
    {
      v14 = *(*(this + 2) + 8 * v9);
      *result = 18;
      v15 = *(v14 + 23);
      if ((v15 & 0x8000000000000000) != 0)
      {
        v15 = *(v14 + 8);
        if (v15 > 0x7F)
        {
LABEL_24:
          v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, result + 1, a3);
          goto LABEL_13;
        }
      }

      else if (v15 > 0x7F)
      {
        goto LABEL_24;
      }

      *(result + 1) = v15;
      v10 = result + 2;
LABEL_13:
      v11 = *(v14 + 23);
      if (v11 >= 0)
      {
        v12 = v14;
      }

      else
      {
        v12 = *v14;
      }

      if (v11 >= 0)
      {
        v13 = *(v14 + 23);
      }

      else
      {
        v13 = *(v14 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
      if (++v9 >= *(this + 6))
      {
        goto LABEL_25;
      }
    }
  }

  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, v8, a3);
  if (*(this + 6) >= 1)
  {
    goto LABEL_11;
  }

LABEL_25:
  v16 = *(this + 16);
  if ((v16 & 4) != 0)
  {
    v20 = *(this + 5);
    if (v20)
    {
      *result = 26;
      v21 = result + 1;
      v22 = v20[39];
      if (v22 <= 0x7F)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = *(qword_10045DCE8 + 40);
      *result = 26;
      v21 = result + 1;
      v22 = v20[39];
      if (v22 <= 0x7F)
      {
LABEL_31:
        *(result + 1) = v22;
        result = sub_100095C80(v20, (result + 2), a3);
        if ((*(this + 16) & 8) != 0)
        {
          goto LABEL_35;
        }

LABEL_27:
        v19 = *(this + 1);
        v18 = (this + 8);
        v17 = v19;
        if (!v19)
        {
          return result;
        }

        goto LABEL_41;
      }
    }

    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v22, v21, a3);
    result = sub_100095C80(v20, v23, v24);
    if ((*(this + 16) & 8) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  if ((v16 & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_35:
  v25 = *(this + 6);
  if (v25)
  {
    *result = 34;
    v26 = result + 1;
    v27 = v25[87];
    if (v27 <= 0x7F)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v25 = *(qword_10045DCE8 + 48);
    *result = 34;
    v26 = result + 1;
    v27 = v25[87];
    if (v27 <= 0x7F)
    {
LABEL_37:
      *(result + 1) = v27;
      result = sub_100099F7C(v25, (result + 2), a3, a4);
      v28 = *(this + 1);
      v18 = (this + 8);
      v17 = v28;
      if (!v28)
      {
        return result;
      }

      goto LABEL_41;
    }
  }

  v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v26, a3);
  result = sub_100099F7C(v25, v29, v30, v31);
  v32 = *(this + 1);
  v18 = (this + 8);
  v17 = v32;
  if (!v32)
  {
    return result;
  }

LABEL_41:
  if (*v17 != v17[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, result, a3);
  }

  return result;
}

uint64_t sub_10009C160(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 64);
  if (!v3)
  {
    v5 = *(a1 + 24);
    v6 = v5;
    if (v5 < 1)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 64) & 4) == 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = sub_100096030(v8, a2);
      if (v9 < 0x80)
      {
LABEL_16:
        v10 = 1;
LABEL_19:
        v4 += v9 + v10 + 1;
        v3 = *(a1 + 64);
        goto LABEL_20;
      }
    }

    else
    {
      v9 = sub_100096030(*(qword_10045DCE8 + 40), a2);
      if (v9 < 0x80)
      {
        goto LABEL_16;
      }
    }

    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    goto LABEL_19;
  }

  v7 = *(a1 + 56);
  if ((v7 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 4) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v7 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 64);
      if ((v3 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    v4 = 2;
    if ((v3 & 4) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_20:
  if ((v3 & 8) != 0)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = sub_10009A7E0(v11, a2);
      if (v12 < 0x80)
      {
LABEL_25:
        v13 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = sub_10009A7E0(*(qword_10045DCE8 + 48), a2);
      if (v12 < 0x80)
      {
        goto LABEL_25;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
LABEL_28:
    v5 = *(a1 + 24);
    v6 = (v5 + v4 + v12 + v13 + 1);
    if (v5 < 1)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  v5 = *(a1 + 24);
  v6 = (v5 + v4);
  if (v5 < 1)
  {
    goto LABEL_39;
  }

LABEL_29:
  for (i = 0; i < v5; ++i)
  {
    v17 = *(*(a1 + 16) + 8 * i);
    v16 = *(v17 + 23);
    v18 = v16;
    v19 = *(v17 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v20 = *(v17 + 23);
    }

    else
    {
      v20 = v19;
    }

    if (v20 < 0x80)
    {
      v15 = 1;
    }

    else
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
      v16 = *(v17 + 23);
      v19 = *(v17 + 8);
      v5 = *(a1 + 24);
      v18 = *(v17 + 23);
    }

    if (v18 < 0)
    {
      v16 = v19;
    }

    v6 = (v15 + v6 + v16);
  }

LABEL_39:
  v21 = *(a1 + 8);
  if (v21 && *v21 != v21[1])
  {
    v6 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v6;
  }

  *(a1 + 60) = v6;
  return v6;
}

uint64_t sub_10009C34C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009B248(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10009C42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009C440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009C454(uint64_t result, uint64_t a2)
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

uint64_t sub_10009C4E8()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB70;
}

void sub_10009C578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009C58C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v50);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 16) + 8 * v5);
        v10 = *(a1 + 28);
        v11 = *(a1 + 24);
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 16);
        *(a1 + 24) = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v10 == *(a1 + 32))
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v10 + 1);
        v10 = *(a1 + 28);
      }

      *(a1 + 28) = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 24) = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 24));
  }

LABEL_11:
  v13 = *(a2 + 48);
  if (v13)
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 52);
    v16 = v14 + v13;
    v17 = *(a1 + 40);
    if (v15 < v16)
    {
      v18 = 2 * v15;
      if (2 * v15 <= v16)
      {
        v18 = v16;
      }

      if (v18 <= 4)
      {
        v18 = 4;
      }

      *(a1 + 52) = v18;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 8 * v14), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  v19 = *(a2 + 72);
  if (v19)
  {
    v20 = *(a1 + 72);
    v21 = *(a1 + 76);
    v22 = v20 + v19;
    v23 = *(a1 + 64);
    if (v21 < v22)
    {
      v24 = 2 * v21;
      if (2 * v21 <= v22)
      {
        v24 = v22;
      }

      if (v24 <= 4)
      {
        v24 = 4;
      }

      *(a1 + 76) = v24;
      operator new[]();
    }

    memcpy((*(a1 + 64) + 8 * v20), *(a2 + 64), 8 * *(a2 + 72));
    *(a1 + 72) += *(a2 + 72);
  }

  v25 = *(a2 + 96);
  if (v25)
  {
    v26 = *(a1 + 96);
    v27 = *(a1 + 100);
    v28 = v26 + v25;
    v29 = *(a1 + 88);
    if (v27 < v28)
    {
      v30 = 2 * v27;
      if (2 * v27 <= v28)
      {
        v30 = v28;
      }

      if (v30 <= 4)
      {
        v30 = 4;
      }

      *(a1 + 100) = v30;
      operator new[]();
    }

    memcpy((*(a1 + 88) + 8 * v26), *(a2 + 88), 8 * *(a2 + 96));
    *(a1 + 96) += *(a2 + 96);
  }

  v31 = *(a2 + 120);
  if (v31)
  {
    v32 = *(a1 + 120);
    v33 = *(a1 + 124);
    v34 = v32 + v31;
    v35 = *(a1 + 112);
    if (v33 < v34)
    {
      v36 = 2 * v33;
      if (2 * v33 <= v34)
      {
        v36 = v34;
      }

      if (v36 <= 4)
      {
        v36 = 4;
      }

      *(a1 + 124) = v36;
      operator new[]();
    }

    memcpy((*(a1 + 112) + 8 * v32), *(a2 + 112), 8 * *(a2 + 120));
    *(a1 + 120) += *(a2 + 120);
  }

  v37 = *(a2 + 144);
  if (v37)
  {
    v38 = *(a1 + 144);
    v39 = *(a1 + 148);
    v40 = v38 + v37;
    v41 = *(a1 + 136);
    if (v39 < v40)
    {
      v42 = 2 * v39;
      if (2 * v39 <= v40)
      {
        v42 = v40;
      }

      if (v42 <= 4)
      {
        v42 = 4;
      }

      *(a1 + 148) = v42;
      operator new[]();
    }

    memcpy((*(a1 + 136) + 8 * v38), *(a2 + 136), 8 * *(a2 + 144));
    *(a1 + 144) += *(a2 + 144);
  }

  v43 = *(a2 + 168);
  if (v43)
  {
    v44 = *(a1 + 168);
    v45 = *(a1 + 172);
    v46 = v44 + v43;
    v47 = *(a1 + 160);
    if (v45 < v46)
    {
      v48 = 2 * v45;
      if (2 * v45 <= v46)
      {
        v48 = v46;
      }

      if (v48 <= 4)
      {
        v48 = 4;
      }

      *(a1 + 172) = v48;
      operator new[]();
    }

    memcpy((*(a1 + 160) + 4 * v44), *(a2 + 160), 4 * *(a2 + 168));
    *(a1 + 168) += *(a2 + 168);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009CAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009CAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009CADC(uint64_t a1)
{
  *a1 = off_1004376A0;
  if (*(a1 + 160))
  {
    operator delete[]();
  }

  if (*(a1 + 136))
  {
    operator delete[]();
  }

  if (*(a1 + 112))
  {
    operator delete[]();
  }

  if (*(a1 + 88))
  {
    operator delete[]();
  }

  if (*(a1 + 64))
  {
    operator delete[]();
  }

  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 28) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 16) + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10009CC00(uint64_t a1)
{
  sub_10009CADC(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009CCE8(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    v1 = 0;
    do
    {
      while (1)
      {
        v2 = *(*(a1 + 16) + 8 * v1);
        if (*(v2 + 23) < 0)
        {
          break;
        }

        *v2 = 0;
        *(v2 + 23) = 0;
        if (++v1 >= *(a1 + 24))
        {
          goto LABEL_6;
        }
      }

      **v2 = 0;
      *(v2 + 8) = 0;
      ++v1;
    }

    while (v1 < *(a1 + 24));
  }

LABEL_6:
  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 16) = 0;
  *(result + 22) = 0;
  *(result + 28) = 0;
  *(result + 34) = 0;
  *(result + 40) = 0;
  *(result + 44) = 0;
  if (v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10009CD70(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
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
            if (v7 >> 3 > 3)
            {
              break;
            }

            switch(v8)
            {
              case 1u:
                if (v9 != 2)
                {
                  goto LABEL_47;
                }

                while (1)
                {
                  v14 = *(v5 + 28);
                  v15 = *(v5 + 24);
                  if (v15 >= v14)
                  {
                    if (v14 == *(v5 + 32))
                    {
                      result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16), v14 + 1);
                      v14 = *(v5 + 28);
                    }

                    *(v5 + 28) = v14 + 1;
                    v18 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
                    v19 = *(v5 + 16);
                    v20 = *(v5 + 24);
                    *(v5 + 24) = v20 + 1;
                    *(v19 + 8 * v20) = v18;
                    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                    if (!result)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    v16 = *(v5 + 16);
                    *(v5 + 24) = v15 + 1;
                    v17 = *(v16 + 8 * v15);
                    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                    if (!result)
                    {
                      return result;
                    }
                  }

                  v22 = *(this + 1);
                  v21 = *(this + 2);
                  if (v22 >= v21)
                  {
                    goto LABEL_2;
                  }

                  v23 = *v22;
                  if (v23 != 10)
                  {
                    break;
                  }

                  *(this + 1) = v22 + 1;
                }

                if (v23 == 18)
                {
                  v24 = (v22 + 1);
                  *(this + 1) = v24;
LABEL_53:
                  v80 = 0;
                  if (v24 >= v21 || (v31 = *v24, (v31 & 0x80000000) != 0))
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v80))
                    {
                      return 0;
                    }

                    v31 = v80;
                  }

                  else
                  {
                    v80 = *v24;
                    *(this + 1) = v24 + 1;
                  }

                  v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
                  while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                  {
                    *v81 = 0;
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v81))
                    {
                      return 0;
                    }

                    v35 = *(v5 + 48);
                    v36 = *(v5 + 40);
                    if (v35 == *(v5 + 52))
                    {
                      if (2 * v35 <= v35 + 1)
                      {
                        v37 = v35 + 1;
                      }

                      else
                      {
                        v37 = 2 * v35;
                      }

                      if (v37 <= 4)
                      {
                        v37 = 4;
                      }

                      *(v5 + 52) = v37;
                      operator new[]();
                    }

                    v33 = *(v5 + 40);
                    v34 = *v81;
                    *(v5 + 48) = v35 + 1;
                    *(v33 + 8 * v35) = v34;
                  }

                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
                  goto LABEL_80;
                }

                break;
              case 2u:
                if (v9 != 1)
                {
                  if (v9 != 2)
                  {
                    goto LABEL_47;
                  }

                  v24 = *(this + 1);
                  v21 = *(this + 2);
                  goto LABEL_53;
                }

                result = sub_1000931AC(1, 0x12u, this, (v5 + 40));
                if (!result)
                {
                  return result;
                }

LABEL_80:
                v38 = *(this + 1);
                v12 = *(this + 2);
                if (v38 < v12 && *v38 == 26)
                {
                  v13 = v38 + 1;
                  *(this + 1) = v13;
LABEL_83:
                  v80 = 0;
                  if (v13 >= v12 || (v39 = *v13, (v39 & 0x80000000) != 0))
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v80))
                    {
                      return 0;
                    }

                    v39 = v80;
                  }

                  else
                  {
                    v80 = *v13;
                    *(this + 1) = v13 + 1;
                  }

                  v40 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v39);
                  while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                  {
                    *v81 = 0;
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v81))
                    {
                      return 0;
                    }

                    v42 = *v81;
                    v43 = *(v5 + 72);
                    v44 = *(v5 + 64);
                    if (v43 == *(v5 + 76))
                    {
                      if (2 * v43 <= v43 + 1)
                      {
                        v45 = v43 + 1;
                      }

                      else
                      {
                        v45 = 2 * v43;
                      }

                      if (v45 <= 4)
                      {
                        v45 = 4;
                      }

                      *(v5 + 76) = v45;
                      operator new[]();
                    }

                    v41 = *(v5 + 64);
                    *(v5 + 72) = v43 + 1;
                    *(v41 + 8 * v43) = v42;
                  }

                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v40);
                  goto LABEL_100;
                }

                break;
              case 3u:
                if (v9 != 1)
                {
                  if (v9 != 2)
                  {
                    goto LABEL_47;
                  }

                  v13 = *(this + 1);
                  v12 = *(this + 2);
                  goto LABEL_83;
                }

                result = sub_10009D754(1, 0x1Au, this, (v5 + 64));
                if (!result)
                {
                  return result;
                }

LABEL_100:
                v46 = *(this + 1);
                v25 = *(this + 2);
                if (v46 < v25 && *v46 == 34)
                {
                  v26 = v46 + 1;
                  *(this + 1) = v26;
LABEL_103:
                  v80 = 0;
                  if (v26 >= v25 || (v47 = *v26, (v47 & 0x80000000) != 0))
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v80))
                    {
                      return 0;
                    }

                    v47 = v80;
                  }

                  else
                  {
                    v80 = *v26;
                    *(this + 1) = v26 + 1;
                  }

                  v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v47);
                  while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
                  {
                    *v81 = 0;
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v81))
                    {
                      return 0;
                    }

                    v50 = *v81;
                    v51 = *(v5 + 96);
                    v52 = *(v5 + 88);
                    if (v51 == *(v5 + 100))
                    {
                      if (2 * v51 <= v51 + 1)
                      {
                        v53 = v51 + 1;
                      }

                      else
                      {
                        v53 = 2 * v51;
                      }

                      if (v53 <= 4)
                      {
                        v53 = 4;
                      }

                      *(v5 + 100) = v53;
                      operator new[]();
                    }

                    v49 = *(v5 + 88);
                    *(v5 + 96) = v51 + 1;
                    *(v49 + 8 * v51) = v50;
                  }

                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
                  goto LABEL_120;
                }

                break;
              default:
                goto LABEL_47;
            }
          }

          if (v7 >> 3 <= 5)
          {
            break;
          }

          if (v8 != 6)
          {
            if (v8 == 7)
            {
              if (v9 == 2)
              {
                v30 = *(this + 1);
                v29 = *(this + 2);
                v81[0] = 0;
                if (v30 >= v29)
                {
                  goto LABEL_165;
                }

                goto LABEL_163;
              }

              if ((v7 & 7) == 0)
              {
                result = sub_100383134(1, 0x3Au, this, (v5 + 160));
                if (!result)
                {
                  return result;
                }

                goto LABEL_182;
              }
            }

            goto LABEL_47;
          }

          if (v9 != 1)
          {
            if (v9 == 2)
            {
              v28 = *(this + 1);
              v27 = *(this + 2);
              goto LABEL_143;
            }

            goto LABEL_47;
          }

          result = sub_10009D754(1, 0x32u, this, (v5 + 136));
          if (!result)
          {
            return result;
          }

LABEL_160:
          v71 = *(this + 1);
          v70 = *(this + 2);
          if (v71 < v70 && *v71 == 58)
          {
            v30 = v71 + 1;
            *(this + 1) = v30;
            v81[0] = 0;
            if (v30 >= v70)
            {
              goto LABEL_165;
            }

LABEL_163:
            v72 = *v30;
            if (v72 < 0)
            {
LABEL_165:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v81))
              {
                return 0;
              }

              v72 = v81[0];
              goto LABEL_167;
            }

            v81[0] = *v30;
            *(this + 1) = v30 + 1;
LABEL_167:
            v73 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v72);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v80 = 0;
              v76 = *(this + 1);
              if (v76 >= *(this + 2) || *v76 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v80))
                {
                  return 0;
                }
              }

              else
              {
                v80 = *v76;
                *(this + 1) = v76 + 1;
              }

              v77 = *(v5 + 168);
              v78 = *(v5 + 160);
              if (v77 == *(v5 + 172))
              {
                if (2 * v77 <= v77 + 1)
                {
                  v79 = v77 + 1;
                }

                else
                {
                  v79 = 2 * v77;
                }

                if (v79 <= 4)
                {
                  v79 = 4;
                }

                *(v5 + 172) = v79;
                operator new[]();
              }

              v74 = *(v5 + 160);
              v75 = v80;
              *(v5 + 168) = v77 + 1;
              *(v74 + 4 * v77) = v75;
            }

            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v73);
LABEL_182:
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        if (v8 != 4)
        {
          break;
        }

        if (v9 != 1)
        {
          if (v9 != 2)
          {
            goto LABEL_47;
          }

          v26 = *(this + 1);
          v25 = *(this + 2);
          goto LABEL_103;
        }

        result = sub_10009D754(1, 0x22u, this, (v5 + 88));
        if (!result)
        {
          return result;
        }

LABEL_120:
        v54 = *(this + 1);
        v10 = *(this + 2);
        if (v54 < v10 && *v54 == 42)
        {
          v11 = v54 + 1;
          *(this + 1) = v11;
LABEL_123:
          v80 = 0;
          if (v11 >= v10 || (v55 = *v11, (v55 & 0x80000000) != 0))
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v80))
            {
              return 0;
            }

            v55 = v80;
          }

          else
          {
            v80 = *v11;
            *(this + 1) = v11 + 1;
          }

          v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v55);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
          {
            *v81 = 0;
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v81))
            {
              return 0;
            }

            v58 = *v81;
            v59 = *(v5 + 120);
            v60 = *(v5 + 112);
            if (v59 == *(v5 + 124))
            {
              if (2 * v59 <= v59 + 1)
              {
                v61 = v59 + 1;
              }

              else
              {
                v61 = 2 * v59;
              }

              if (v61 <= 4)
              {
                v61 = 4;
              }

              *(v5 + 124) = v61;
              operator new[]();
            }

            v57 = *(v5 + 112);
            *(v5 + 120) = v59 + 1;
            *(v57 + 8 * v59) = v58;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v56);
          goto LABEL_140;
        }
      }

      if (v8 != 5)
      {
        goto LABEL_47;
      }

      if (v9 != 1)
      {
        break;
      }

      result = sub_10009D754(1, 0x2Au, this, (v5 + 112));
      if (!result)
      {
        return result;
      }

LABEL_140:
      v62 = *(this + 1);
      v27 = *(this + 2);
      if (v62 < v27 && *v62 == 50)
      {
        v28 = v62 + 1;
        *(this + 1) = v28;
LABEL_143:
        v80 = 0;
        if (v28 >= v27 || (v63 = *v28, (v63 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v80))
          {
            return 0;
          }

          v63 = v80;
        }

        else
        {
          v80 = *v28;
          *(this + 1) = v28 + 1;
        }

        v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v63);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          *v81 = 0;
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v81))
          {
            return 0;
          }

          v66 = *v81;
          v67 = *(v5 + 144);
          v68 = *(v5 + 136);
          if (v67 == *(v5 + 148))
          {
            if (2 * v67 <= v67 + 1)
            {
              v69 = v67 + 1;
            }

            else
            {
              v69 = 2 * v67;
            }

            if (v69 <= 4)
            {
              v69 = 4;
            }

            *(v5 + 148) = v69;
            operator new[]();
          }

          v65 = *(v5 + 136);
          *(v5 + 144) = v67 + 1;
          *(v65 + 8 * v67) = v66;
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v64);
        goto LABEL_160;
      }
    }

    if (v9 == 2)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_123;
    }

LABEL_47:
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

uint64_t sub_10009D754(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v31 = 0;
  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v31);
  if (result)
  {
    v9 = v31;
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
    v14 = v10 + 1;
    *(a4 + 2) = v10 + 1;
    *(v13 + 8 * v10) = v9;
    v15 = *(this + 1);
    v16 = *(this + 4) - v15;
    if (v16 >= 1)
    {
      v17 = a1 + 8;
      v18 = *(a4 + 3) - v14;
      v19 = v16 / (a1 + 8);
      v20 = v19 >= v18 ? *(a4 + 3) - v14 : v16 / (a1 + 8);
      if (v20 >= 1)
      {
        if (a2 > 0x7F)
        {
          if (a2 >> 14)
          {
            return result;
          }

          v21 = 0;
          v26 = v10 + 2;
          v27 = v13 + 8 * v14;
          v28 = v19;
          if (v19 >= v18)
          {
            v28 = v18;
          }

          while ((a2 & 0x7F | 0x80) == *v15 && a2 >> 7 == v15[1])
          {
            v29 = *(v15 + 2);
            *(a4 + 2) = v26;
            *(v27 + 8 * v21++) = v29;
            ++v26;
            v15 += 10;
            if (v28 == v21)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v21 = 0;
          v22 = v10 + 2;
          v23 = v13 + 8 * v14;
          v24 = v19;
          if (v19 >= v18)
          {
            v24 = *(a4 + 3) - v14;
          }

          while (*v15 == a2)
          {
            v25 = *(v15 + 1);
            *(a4 + 2) = v22;
            *(v23 + 8 * v21) = v25;
            ++v22;
            ++v21;
            v15 += 9;
            if (v24 == v21)
            {
              goto LABEL_29;
            }
          }
        }

        v20 = v21;
LABEL_29:
        if (v20 * v17 >= 1)
        {
          v30 = result;
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this, v20 * v17);
          return v30;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10009D984(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v4 + 16) + 8 * v5);
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v5;
    }

    while (v5 < *(v4 + 24));
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 56));
    if (*(v4 + 48) >= 1)
    {
      v7 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(this, *(*(v4 + 40) + 8 * v7++));
      }

      while (v7 < *(v4 + 48));
    }
  }

  if (*(v4 + 72) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x1Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 80));
    if (*(v4 + 72) >= 1)
    {
      v8 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(this, *(*(v4 + 64) + 8 * v8++));
      }

      while (v8 < *(v4 + 72));
    }
  }

  if (*(v4 + 96) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x22u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 104));
    if (*(v4 + 96) >= 1)
    {
      v9 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(this, *(*(v4 + 88) + 8 * v9++));
      }

      while (v9 < *(v4 + 96));
    }
  }

  if (*(v4 + 120) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x2Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 128));
    if (*(v4 + 120) >= 1)
    {
      v10 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(this, *(*(v4 + 112) + 8 * v10++));
      }

      while (v10 < *(v4 + 120));
    }
  }

  if (*(v4 + 144) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x32u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 152));
    if (*(v4 + 144) >= 1)
    {
      v11 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(this, *(*(v4 + 136) + 8 * v11++));
      }

      while (v11 < *(v4 + 144));
    }
  }

  if (*(v4 + 168) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, 0x3Au);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(v4 + 176));
    if (*(v4 + 168) >= 1)
    {
      v12 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(this, *(*(v4 + 160) + 4 * v12++));
      }

      while (v12 < *(v4 + 168));
    }
  }

  v15 = *(v4 + 8);
  v14 = (v4 + 8);
  v13 = v15;
  if (v15 && *v13 != v13[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v14, this, a3);
  }

  return result;
}

const wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009DC18(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(a1 + 24) >= 1)
  {
    v5 = 0;
    result = a2;
    while (1)
    {
      v11 = *(*(a1 + 16) + 8 * v5);
      *result = 10;
      v12 = *(v11 + 23);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v12 = *(v11 + 8);
        if (v12 <= 0x7F)
        {
LABEL_15:
          *(result + 1) = v12;
          v7 = result + 2;
          goto LABEL_4;
        }
      }

      else if (v12 <= 0x7F)
      {
        goto LABEL_15;
      }

      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, result + 1, a3);
LABEL_4:
      v8 = *(v11 + 23);
      if (v8 >= 0)
      {
        v9 = v11;
      }

      else
      {
        v9 = *v11;
      }

      if (v8 >= 0)
      {
        v10 = *(v11 + 23);
      }

      else
      {
        v10 = *(v11 + 8);
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v9, v10, v7, a4);
      if (++v5 >= *(a1 + 24))
      {
        goto LABEL_17;
      }
    }
  }

  result = a2;
LABEL_17:
  if (*(a1 + 48) > 0)
  {
    *result = 18;
    v13 = *(a1 + 56);
    if (v13 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(a1 + 56), result + 1, a3);
      if (*(a1 + 48) < 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *(result + 1) = v13;
      result = (result + 2);
      if (*(a1 + 48) < 1)
      {
        goto LABEL_24;
      }
    }

    v14 = 0;
    do
    {
      *result = *(*(a1 + 40) + 8 * v14);
      result = (result + 8);
      ++v14;
    }

    while (v14 < *(a1 + 48));
  }

LABEL_24:
  if (*(a1 + 72) <= 0)
  {
    goto LABEL_31;
  }

  *result = 26;
  v15 = *(a1 + 80);
  if (v15 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(a1 + 80), result + 1, a3);
    if (*(a1 + 72) < 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(result + 1) = v15;
    result = (result + 2);
    if (*(a1 + 72) < 1)
    {
      goto LABEL_31;
    }
  }

  v16 = 0;
  do
  {
    *result = *(*(a1 + 64) + 8 * v16);
    result = (result + 8);
    ++v16;
  }

  while (v16 < *(a1 + 72));
LABEL_31:
  if (*(a1 + 96) <= 0)
  {
    goto LABEL_38;
  }

  *result = 34;
  v17 = *(a1 + 104);
  if (v17 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(a1 + 104), result + 1, a3);
    if (*(a1 + 96) < 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    *(result + 1) = v17;
    result = (result + 2);
    if (*(a1 + 96) < 1)
    {
      goto LABEL_38;
    }
  }

  v18 = 0;
  do
  {
    *result = *(*(a1 + 88) + 8 * v18);
    result = (result + 8);
    ++v18;
  }

  while (v18 < *(a1 + 96));
LABEL_38:
  if (*(a1 + 120) <= 0)
  {
    goto LABEL_45;
  }

  *result = 42;
  v19 = *(a1 + 128);
  if (v19 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(a1 + 128), result + 1, a3);
    if (*(a1 + 120) < 1)
    {
      goto LABEL_45;
    }
  }

  else
  {
    *(result + 1) = v19;
    result = (result + 2);
    if (*(a1 + 120) < 1)
    {
      goto LABEL_45;
    }
  }

  v20 = 0;
  do
  {
    *result = *(*(a1 + 112) + 8 * v20);
    result = (result + 8);
    ++v20;
  }

  while (v20 < *(a1 + 120));
LABEL_45:
  if (*(a1 + 144) <= 0)
  {
    goto LABEL_52;
  }

  *result = 50;
  v21 = *(a1 + 152);
  if (v21 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(a1 + 152), result + 1, a3);
    if (*(a1 + 144) < 1)
    {
      goto LABEL_52;
    }
  }

  else
  {
    *(result + 1) = v21;
    result = (result + 2);
    if (*(a1 + 144) < 1)
    {
      goto LABEL_52;
    }
  }

  v22 = 0;
  do
  {
    *result = *(*(a1 + 136) + 8 * v22);
    result = (result + 8);
    ++v22;
  }

  while (v22 < *(a1 + 144));
LABEL_52:
  if (*(a1 + 168) > 0)
  {
    *result = 58;
    v23 = *(a1 + 176);
    if (v23 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(a1 + 176), result + 1, a3);
      if (*(a1 + 168) < 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      *(result + 1) = v23;
      result = (result + 2);
      if (*(a1 + 168) < 1)
      {
        goto LABEL_61;
      }
    }

    v24 = 0;
    do
    {
      while (1)
      {
        v25 = *(*(a1 + 160) + 4 * v24);
        if (v25 > 0x7F)
        {
          break;
        }

        *result = v25;
        result = (result + 1);
        if (++v24 >= *(a1 + 168))
        {
          goto LABEL_61;
        }
      }

      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(*(a1 + 160) + 4 * v24++), result, a3);
    }

    while (v24 < *(a1 + 168));
  }

LABEL_61:
  v28 = *(a1 + 8);
  v27 = (a1 + 8);
  v26 = v28;
  if (v28 && *v26 != v26[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v27, result, a3);
  }

  return result;
}

uint64_t sub_10009DFDC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    v5 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 24);
    do
    {
      v10 = *(*(a1 + 16) + 8 * v4);
      v7 = *(v10 + 23);
      v9 = v7;
      v8 = *(v10 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v11 = *(v10 + 23);
      }

      else
      {
        v11 = v8;
      }

      if (v11 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
        v7 = *(v10 + 23);
        v8 = *(v10 + 8);
        v3 = *(a1 + 24);
        v9 = *(v10 + 23);
      }

      else
      {
        v6 = 1;
      }

      if (v9 < 0)
      {
        v7 = v8;
      }

      v5 += v6 + v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v12 = *(a1 + 48);
  v13 = 8 * v12;
  if (v12 > 0)
  {
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v12), a2) + 1;
    }

    else
    {
      v14 = 2;
    }

    v5 += v14;
  }

  *(a1 + 56) = v13;
  v15 = v5 + v13;
  v16 = *(a1 + 72);
  v17 = 8 * v16;
  if (v16 >= 1)
  {
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v16), a2) + 1;
    }

    else
    {
      v18 = 2;
    }

    v15 += v18;
  }

  *(a1 + 80) = v17;
  v19 = v15 + v17;
  v20 = *(a1 + 96);
  v21 = 8 * v20;
  if (v20 >= 1)
  {
    if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v20), a2) + 1;
    }

    else
    {
      v22 = 2;
    }

    v19 += v22;
  }

  *(a1 + 104) = v21;
  v23 = v19 + v21;
  v24 = *(a1 + 120);
  v25 = 8 * v24;
  if (v24 >= 1)
  {
    if (v25 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v24), a2) + 1;
    }

    else
    {
      v26 = 2;
    }

    v23 += v26;
  }

  *(a1 + 128) = v25;
  v27 = v23 + v25;
  v28 = *(a1 + 144);
  v29 = 8 * v28;
  if (v28 >= 1)
  {
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v28), a2) + 1;
    }

    else
    {
      v30 = 2;
    }

    v27 += v30;
  }

  *(a1 + 152) = v29;
  v31 = v27 + v29;
  v32 = *(a1 + 168);
  if (v32 < 1)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    v33 = 0;
    LODWORD(v34) = 0;
    do
    {
      while (1)
      {
        v36 = *(*(a1 + 160) + 4 * v33);
        if (v36 < 0x80)
        {
          break;
        }

        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
        v32 = *(a1 + 168);
        v34 = (v35 + v34);
        if (++v33 >= v32)
        {
          goto LABEL_43;
        }
      }

      v34 = (v34 + 1);
      ++v33;
    }

    while (v33 < v32);
LABEL_43:
    if (v34 > 0)
    {
      if (v34 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 1;
      }

      else
      {
        v37 = 2;
      }

      v42 = v37 + v31;
      v38 = (a1 + 8);
      v39 = *(a1 + 8);
      *(a1 + 176) = v34;
      v40 = (v42 + v34);
      if (!v39)
      {
        goto LABEL_48;
      }

      goto LABEL_51;
    }
  }

  v38 = (a1 + 8);
  v39 = *(a1 + 8);
  *(a1 + 176) = v34;
  v40 = (v31 + v34);
  if (!v39)
  {
LABEL_48:
    *(a1 + 180) = v40;
    return v40;
  }

LABEL_51:
  if (*v39 == v39[1])
  {
    goto LABEL_48;
  }

  v43 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v38, a2) + v40;
  *(a1 + 180) = v43;
  return v43;
}

uint64_t sub_10009E274(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10009C58C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10009E354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009E368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009E37C(uint64_t result, uint64_t a2)
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

uint64_t sub_10009E410()
{
  v0 = qword_10045CC18;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10008FE9C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CB88;
}

void sub_10009E4A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009E4B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
    LOBYTE(v4) = *(a2 + 72);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 72);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 72) |= 1u;
    v6 = *(a1 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
    v4 = *(a2 + 72);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v7 = *(a2 + 24);
  *(a1 + 72) |= 2u;
  v8 = *(a1 + 24);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 72);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 64);
  *(a1 + 72) |= 4u;
  *(a1 + 64) = v9;
  v4 = *(a2 + 72);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_20:
  v10 = *(a2 + 32);
  *(a1 + 72) |= 8u;
  v11 = *(a1 + 32);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v4 = *(a2 + 72);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_23:
  v12 = *(a2 + 40);
  *(a1 + 72) |= 0x10u;
  v13 = *(a1 + 40);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 72);
  if ((v4 & 0x20) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_30;
  }

LABEL_26:
  v14 = *(a2 + 48);
  *(a1 + 72) |= 0x20u;
  v15 = *(a1 + 48);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  if ((*(a2 + 72) & 0x40) != 0)
  {
LABEL_30:
    *(a1 + 72) |= 0x40u;
    v16 = *(a1 + 56);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 56);
    if (!v17)
    {
      v17 = *(qword_10045DCF8 + 56);
    }

    sub_10009192C(v16, v17);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10009E7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10009E800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10009E814(void *result)
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

  v7 = result[5];
  if (v7 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v9 = result[6];
  if (v9 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  if (qword_10045DCF8 != result)
  {
    result = result[7];
    if (result)
    {
      v10 = *(*result + 8);

      return v10();
    }
  }

  return result;
}

void sub_10009E9C8(void *a1)
{
  *a1 = off_100437750;
  v2 = (a1 + 1);
  sub_10009E814(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10009EA28(void *a1)
{
  *a1 = off_100437750;
  v2 = (a1 + 1);
  sub_10009E814(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10009EB4C(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    goto LABEL_43;
  }

  if ((*(a1 + 72) & 1) == 0 || (v1 = *(a1 + 16), v1 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_6:
    if ((*(a1 + 72) & 2) == 0)
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
  if ((*(a1 + 72) & 2) == 0)
  {
    goto LABEL_13;
  }

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

LABEL_13:
  *(a1 + 64) = 1;
  if ((*(a1 + 72) & 8) == 0 || (v3 = *(a1 + 32), v3 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_17:
    if ((*(a1 + 72) & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if ((*(v3 + 23) & 0x80000000) == 0)
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    goto LABEL_17;
  }

  **v3 = 0;
  *(v3 + 8) = 0;
  if ((*(a1 + 72) & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v4 = *(a1 + 40);
  if (v4 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

LABEL_24:
  if ((*(a1 + 72) & 0x20) != 0)
  {
    v5 = *(a1 + 48);
    if (v5 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((*(a1 + 72) & 0x40) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_29;
      }

      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

  if ((*(a1 + 72) & 0x40) == 0)
  {
    goto LABEL_43;
  }

LABEL_29:
  v6 = *(a1 + 56);
  if (v6)
  {
    if (*(v6 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        while (1)
        {
          v8 = *(*(v6 + 16) + 8 * v7);
          if (*(v8 + 23) < 0)
          {
            break;
          }

          *v8 = 0;
          *(v8 + 23) = 0;
          if (++v7 >= *(v6 + 24))
          {
            goto LABEL_35;
          }
        }

        **v8 = 0;
        *(v8 + 8) = 0;
        ++v7;
      }

      while (v7 < *(v6 + 24));
    }

LABEL_35:
    *(v6 + 24) = 0;
    if (*(v6 + 48) >= 1)
    {
      v9 = 0;
      do
      {
        while (1)
        {
          v10 = *(*(v6 + 40) + 8 * v9);
          if (*(v10 + 23) < 0)
          {
            break;
          }

          *v10 = 0;
          *(v10 + 23) = 0;
          if (++v9 >= *(v6 + 48))
          {
            goto LABEL_40;
          }
        }

        **v10 = 0;
        *(v10 + 8) = 0;
        ++v9;
      }

      while (v9 < *(v6 + 48));
    }

LABEL_40:
    v12 = *(v6 + 8);
    v11 = (v6 + 8);
    *(v11 + 10) = 0;
    *(v11 + 15) = 0;
    if (v12)
    {
      v13 = a1;
      wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v11);
      a1 = v13;
    }
  }

LABEL_43:
  v15 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 16) = 0;
  if (v15)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}