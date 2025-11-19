void sub_1002E6384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E6398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E63C8(uint64_t a1)
{
  *a1 = off_100447AF0;
  sub_1002E650C(a1);
  v2 = *(a1 + 124);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 112) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 124);
      }
    }
  }

  if (*(a1 + 112))
  {
    operator delete[]();
  }

  v5 = *(a1 + 92);
  if (v5 >= 1)
  {
    for (j = 0; j < v5; ++j)
    {
      v7 = *(*(a1 + 80) + 8 * j);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v5 = *(a1 + 92);
      }
    }
  }

  if (*(a1 + 80))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_1002E650C(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_100471C88 != result)
  {
    v4 = result[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[9];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[20];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    result = v1[21];
    if (result)
    {
      v10 = *(*result + 8);

      return v10();
    }
  }

  return result;
}

void sub_1002E66CC(uint64_t a1)
{
  sub_1002E63C8(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E67EC(wireless_diagnostics::google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (!*(this + 200))
  {
    goto LABEL_27;
  }

  if ((*(this + 200) & 1) == 0 || (v2 = *(this + 2), v2 == &wireless_diagnostics::google::protobuf::internal::kEmptyString))
  {
LABEL_6:
    *(this + 14) = 0;
    *(this + 3) = 0;
    v3 = *(this + 50);
    if ((v3 & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_6;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  *(this + 14) = 0;
  *(this + 3) = 0;
  v3 = *(this + 50);
  if ((v3 & 8) != 0)
  {
LABEL_7:
    this = *(this + 4);
    if (this)
    {
      this = sub_1002EB134(this);
      v3 = *(v1 + 50);
    }
  }

LABEL_9:
  if ((v3 & 0x10) != 0)
  {
    this = *(v1 + 5);
    if (this)
    {
      this = sub_1002D32D4(this);
      v3 = *(v1 + 50);
    }
  }

  if ((v3 & 0x20) != 0)
  {
    this = *(v1 + 6);
    if (this)
    {
      this = sub_1002ED1C8(this);
      v3 = *(v1 + 50);
    }
  }

  if ((v3 & 0x40) != 0)
  {
    this = *(v1 + 8);
    if (this)
    {
      if (*(this + 44))
      {
        *(this + 2) = 0;
        *(this + 3) = 0;
        *(this + 4) = 0;
      }

      v4 = *(this + 1);
      this = (this + 8);
      *(this + 9) = 0;
      if (v4)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

  if ((*(v1 + 200) & 0x80) != 0)
  {
    this = *(v1 + 9);
    if (this)
    {
      if (*(this + 44))
      {
        *(this + 2) = 0;
        *(this + 3) = 0;
        *(this + 4) = 0;
      }

      v5 = *(this + 1);
      this = (this + 8);
      *(this + 9) = 0;
      if (v5)
      {
        this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
      }
    }
  }

LABEL_27:
  v6 = *(v1 + 50);
  if ((v6 & 0x1FE00) != 0)
  {
    *(v1 + 13) = 0;
    *(v1 + 15) = 2;
    *(v1 + 17) = 0x100000001;
    *(v1 + 18) = 0;
    *(v1 + 19) = 0;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    if ((v6 & 0x10000) != 0)
    {
      this = *(v1 + 20);
      if (this)
      {
        this = sub_1002D3FDC(this);
        v6 = *(v1 + 50);
      }
    }

    if ((v6 & 0x20000) != 0)
    {
      this = *(v1 + 21);
      if (this)
      {
        this = sub_1002D3FDC(this);
      }
    }

    *(v1 + 22) = 0;
    *(v1 + 23) = 0;
    *(v1 + 192) = 0;
  }

  if (*(v1 + 22) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v1 + 10) + 8 * v7);
      this = (*(*v8 + 32))(v8);
      ++v7;
    }

    while (v7 < *(v1 + 22));
  }

  *(v1 + 22) = 0;
  if (*(v1 + 30) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(v1 + 14) + 8 * v9);
      this = (*(*v10 + 32))(v10);
      ++v9;
    }

    while (v9 < *(v1 + 30));
  }

  v12 = *(v1 + 1);
  v11 = (v1 + 8);
  *(v11 + 28) = 0;
  *(v11 + 48) = 0;
  if (v12)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v11);
  }

  return this;
}

uint64_t sub_1002E6A24(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 < *(this + 2))
    {
      TagFallback = *v6;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
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
    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 1u;
        if (*(a1 + 16) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 >= v10 || *v11 != 16)
        {
          continue;
        }

        v12 = v11 + 1;
        *(this + 1) = v12;
LABEL_47:
        v141[0] = 0;
        if (v12 >= v10 || (v32 = *v12, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v33 = *(this + 1);
          v10 = *(this + 2);
          *(a1 + 56) = v141[0];
          *(a1 + 200) |= 2u;
          if (v33 >= v10)
          {
            continue;
          }
        }

        else
        {
          v33 = v12 + 1;
          *(this + 1) = v33;
          *(a1 + 56) = v32;
          *(a1 + 200) |= 2u;
          if (v33 >= v10)
          {
            continue;
          }
        }

        if (*v33 != 24)
        {
          continue;
        }

        v26 = v33 + 1;
        *(this + 1) = v26;
        *v141 = 0;
        if (v26 >= v10)
        {
          goto LABEL_91;
        }

LABEL_88:
        v43 = *v26;
        if (v43 < 0)
        {
LABEL_91:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v44 = *(this + 1);
          v46 = *(this + 2);
          *(a1 + 24) = *v141;
          v45 = *(a1 + 200) | 4;
          *(a1 + 200) = v45;
          if (v44 >= v46)
          {
            continue;
          }
        }

        else
        {
          v44 = v26 + 1;
          *(this + 1) = v44;
          *(a1 + 24) = v43;
          v45 = *(a1 + 200) | 4;
          *(a1 + 200) = v45;
          if (v44 >= v10)
          {
            continue;
          }
        }

        if (*v44 != 34)
        {
          continue;
        }

        *(this + 1) = v44 + 1;
        *(a1 + 200) = v45 | 8;
        v27 = *(a1 + 32);
        if (!v27)
        {
LABEL_95:
          operator new();
        }

LABEL_96:
        v141[0] = 0;
        v47 = *(this + 1);
        if (v47 >= *(this + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v47;
          *(this + 1) = v47 + 1;
        }

        v48 = *(this + 14);
        v49 = *(this + 15);
        *(this + 14) = v48 + 1;
        if (v48 >= v49)
        {
          return 0;
        }

        v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002EB154(v27, this, v51, v52) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
        v53 = *(this + 14);
        v54 = __OFSUB__(v53, 1);
        v55 = v53 - 1;
        if (v55 < 0 == v54)
        {
          *(this + 14) = v55;
        }

        v56 = *(this + 1);
        if (v56 >= *(this + 2) || *v56 != 42)
        {
          continue;
        }

        *(this + 1) = v56 + 1;
        *(a1 + 200) |= 0x10u;
        v19 = *(a1 + 40);
        if (!v19)
        {
LABEL_108:
          operator new();
        }

LABEL_25:
        v141[0] = 0;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v20;
          *(this + 1) = v20 + 1;
        }

        v57 = *(this + 14);
        v58 = *(this + 15);
        *(this + 14) = v57 + 1;
        if (v57 >= v58)
        {
          return 0;
        }

        v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002D32FC(v19, this, v60, v61) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
        v62 = *(this + 14);
        v54 = __OFSUB__(v62, 1);
        v63 = v62 - 1;
        if (v63 < 0 == v54)
        {
          *(this + 14) = v63;
        }

        v64 = *(this + 1);
        if (v64 >= *(this + 2) || *v64 != 50)
        {
          continue;
        }

        *(this + 1) = v64 + 1;
        *(a1 + 200) |= 0x20u;
        v35 = *(a1 + 48);
        if (!v35)
        {
LABEL_120:
          operator new();
        }

LABEL_62:
        v141[0] = 0;
        v36 = *(this + 1);
        if (v36 >= *(this + 2) || *v36 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v36;
          *(this + 1) = v36 + 1;
        }

        v65 = *(this + 14);
        v66 = *(this + 15);
        *(this + 14) = v65 + 1;
        if (v65 >= v66)
        {
          return 0;
        }

        v67 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002ED284(v35, this, v68, v69) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v67);
        v70 = *(this + 14);
        v54 = __OFSUB__(v70, 1);
        v71 = v70 - 1;
        if (v71 < 0 == v54)
        {
          *(this + 14) = v71;
        }

        v72 = *(this + 1);
        if (v72 >= *(this + 2) || *v72 != 58)
        {
          continue;
        }

        *(this + 1) = v72 + 1;
        *(a1 + 200) |= 0x40u;
        v37 = *(a1 + 64);
        if (!v37)
        {
LABEL_132:
          operator new();
        }

LABEL_69:
        v141[0] = 0;
        v38 = *(this + 1);
        if (v38 >= *(this + 2) || *v38 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v38;
          *(this + 1) = v38 + 1;
        }

        v73 = *(this + 14);
        v74 = *(this + 15);
        *(this + 14) = v73 + 1;
        if (v73 >= v74)
        {
          return 0;
        }

        v75 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002E55B0(v37, this, v76, v77) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v75);
        v78 = *(this + 14);
        v54 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v54)
        {
          *(this + 14) = v79;
        }

        v80 = *(this + 1);
        if (v80 >= *(this + 2) || *v80 != 66)
        {
          continue;
        }

        do
        {
          *(this + 1) = v80 + 1;
          v28 = *(a1 + 92);
          v29 = *(a1 + 88);
          if (v29 >= v28)
          {
LABEL_144:
            if (v28 == *(a1 + 96))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80), v28 + 1);
              v28 = *(a1 + 92);
            }

            *(a1 + 92) = v28 + 1;
            operator new();
          }

LABEL_44:
          v30 = *(a1 + 80);
          *(a1 + 88) = v29 + 1;
          v31 = *(v30 + 8 * v29);
          v141[0] = 0;
          v81 = *(this + 1);
          if (v81 >= *(this + 2) || *v81 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
            {
              return 0;
            }
          }

          else
          {
            v141[0] = *v81;
            *(this + 1) = v81 + 1;
          }

          v82 = *(this + 14);
          v83 = *(this + 15);
          *(this + 14) = v82 + 1;
          if (v82 >= v83)
          {
            return 0;
          }

          v84 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
          if (!sub_1002E39A0(v31, this, v85, v86) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v84);
          v87 = *(this + 14);
          v54 = __OFSUB__(v87, 1);
          v88 = v87 - 1;
          if (v88 < 0 == v54)
          {
            *(this + 14) = v88;
          }

          v80 = *(this + 1);
          if (v80 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v89 = *v80;
        }

        while (v89 == 66);
        if (v89 != 73)
        {
          continue;
        }

        *(this + 1) = v80 + 1;
        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

LABEL_160:
        *(a1 + 104) = *v141;
        v90 = *(a1 + 200) | 0x200;
        *(a1 + 200) = v90;
        v91 = *(this + 1);
        if (v91 >= *(this + 2) || *v91 != 82)
        {
          continue;
        }

        *(this + 1) = v91 + 1;
        *(a1 + 200) = v90 | 0x80;
        v25 = *(a1 + 72);
        if (!v25)
        {
LABEL_163:
          operator new();
        }

LABEL_164:
        v141[0] = 0;
        v92 = *(this + 1);
        if (v92 >= *(this + 2) || *v92 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v92;
          *(this + 1) = v92 + 1;
        }

        v93 = *(this + 14);
        v94 = *(this + 15);
        *(this + 14) = v93 + 1;
        if (v93 >= v94)
        {
          return 0;
        }

        v95 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002E55B0(v25, this, v96, v97) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v95);
        v98 = *(this + 14);
        v54 = __OFSUB__(v98, 1);
        v99 = v98 - 1;
        if (v99 < 0 == v54)
        {
          *(this + 14) = v99;
        }

        v101 = *(this + 1);
        v100 = *(this + 2);
        if (v101 >= v100 || *v101 != 88)
        {
          continue;
        }

        v42 = v101 + 1;
        *(this + 1) = v42;
        v141[0] = 0;
        if (v42 >= v100)
        {
          goto LABEL_179;
        }

LABEL_176:
        v102 = *v42;
        if (v102 < 0)
        {
LABEL_179:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v102 = v141[0];
          if (v141[0] - 1 < 5)
          {
LABEL_182:
            *(a1 + 200) |= 0x400u;
            *(a1 + 60) = v102;
            v103 = *(this + 1);
            v17 = *(this + 2);
            if (v103 >= v17)
            {
              continue;
            }

            goto LABEL_183;
          }
        }

        else
        {
          *(this + 1) = v42 + 1;
          if ((v102 - 1) < 5)
          {
            goto LABEL_182;
          }
        }

        if (v102 == 101)
        {
          goto LABEL_182;
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 11, v102);
        v103 = *(this + 1);
        v17 = *(this + 2);
        if (v103 >= v17)
        {
          continue;
        }

LABEL_183:
        if (*v103 != 96)
        {
          continue;
        }

        v18 = v103 + 1;
        *(this + 1) = v18;
LABEL_185:
        v141[0] = 0;
        if (v18 >= v17 || (v104 = *v18, v104 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v104 = v141[0];
          if (v141[0] - 1 <= 1)
          {
LABEL_188:
            *(a1 + 200) |= 0x800u;
            *(a1 + 136) = v104;
            goto LABEL_192;
          }
        }

        else
        {
          *(this + 1) = v18 + 1;
          if ((v104 - 1) <= 1)
          {
            goto LABEL_188;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 12, v104);
LABEL_192:
        v105 = *(this + 1);
        if (v105 >= *(this + 2) || *v105 != 106)
        {
          continue;
        }

        do
        {
          *(this + 1) = v105 + 1;
          v21 = *(a1 + 124);
          v22 = *(a1 + 120);
          if (v22 >= v21)
          {
LABEL_198:
            if (v21 == *(a1 + 128))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112), v21 + 1);
              v21 = *(a1 + 124);
            }

            *(a1 + 124) = v21 + 1;
            operator new();
          }

LABEL_29:
          v23 = *(a1 + 112);
          *(a1 + 120) = v22 + 1;
          v24 = *(v23 + 8 * v22);
          v141[0] = 0;
          v106 = *(this + 1);
          if (v106 >= *(this + 2) || *v106 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
            {
              return 0;
            }
          }

          else
          {
            v141[0] = *v106;
            *(this + 1) = v106 + 1;
          }

          v107 = *(this + 14);
          v108 = *(this + 15);
          *(this + 14) = v107 + 1;
          if (v107 >= v108)
          {
            return 0;
          }

          v109 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
          if (!sub_1002E478C(v24, this, v110, v111) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v109);
          v112 = *(this + 14);
          v54 = __OFSUB__(v112, 1);
          v113 = v112 - 1;
          if (v113 < 0 == v54)
          {
            *(this + 14) = v113;
          }

          v105 = *(this + 1);
          if (v105 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v114 = *v105;
        }

        while (v114 == 106);
        if (v114 != 113)
        {
          continue;
        }

        *(this + 1) = v105 + 1;
        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

LABEL_214:
        *(a1 + 144) = *v141;
        *(a1 + 200) |= 0x2000u;
        v116 = *(this + 1);
        v115 = *(this + 2);
        if (v116 >= v115 || *v116 != 120)
        {
          continue;
        }

        v16 = v116 + 1;
        *(this + 1) = v16;
        v141[0] = 0;
        if (v16 >= v115)
        {
          goto LABEL_220;
        }

LABEL_217:
        v117 = *v16;
        if (v117 < 0)
        {
LABEL_220:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v117 = v141[0];
          if (v141[0] - 1 <= 1)
          {
LABEL_219:
            *(a1 + 200) |= 0x4000u;
            *(a1 + 140) = v117;
            goto LABEL_223;
          }
        }

        else
        {
          *(this + 1) = v16 + 1;
          if ((v117 - 1) <= 1)
          {
            goto LABEL_219;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 15, v117);
LABEL_223:
        v118 = *(this + 1);
        if (*(this + 4) - v118 < 2 || *v118 != 129 || v118[1] != 1)
        {
          continue;
        }

        *(this + 1) = v118 + 2;
        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

LABEL_227:
        *(a1 + 152) = *v141;
        v119 = *(a1 + 200) | 0x8000;
        *(a1 + 200) = v119;
        v120 = *(this + 1);
        if (*(this + 4) - v120 < 2 || *v120 != 138 || v120[1] != 1)
        {
          continue;
        }

        *(this + 1) = v120 + 2;
        *(a1 + 200) = v119 | 0x10000;
        v13 = *(a1 + 160);
        if (!v13)
        {
LABEL_231:
          operator new();
        }

LABEL_16:
        v141[0] = 0;
        v14 = *(this + 1);
        if (v14 >= *(this + 2) || *v14 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v14;
          *(this + 1) = v14 + 1;
        }

        v121 = *(this + 14);
        v122 = *(this + 15);
        *(this + 14) = v121 + 1;
        if (v121 >= v122)
        {
          return 0;
        }

        v123 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002D4004(v13, this, v124, v125) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v123);
        v126 = *(this + 14);
        v54 = __OFSUB__(v126, 1);
        v127 = v126 - 1;
        if (v127 < 0 == v54)
        {
          *(this + 14) = v127;
        }

        v128 = *(this + 1);
        if (*(this + 4) - v128 <= 1 || *v128 != 146 || v128[1] != 1)
        {
          continue;
        }

        *(this + 1) = v128 + 2;
        *(a1 + 200) |= 0x20000u;
        v34 = *(a1 + 168);
        if (!v34)
        {
LABEL_53:
          operator new();
        }

LABEL_244:
        v141[0] = 0;
        v129 = *(this + 1);
        if (v129 >= *(this + 2) || *v129 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141))
          {
            return 0;
          }
        }

        else
        {
          v141[0] = *v129;
          *(this + 1) = v129 + 1;
        }

        v130 = *(this + 14);
        v131 = *(this + 15);
        *(this + 14) = v130 + 1;
        if (v130 >= v131)
        {
          return 0;
        }

        v132 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v141[0]);
        if (!sub_1002D4004(v34, this, v133, v134) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v132);
        v135 = *(this + 14);
        v54 = __OFSUB__(v135, 1);
        v136 = v135 - 1;
        if (v136 < 0 == v54)
        {
          *(this + 14) = v136;
        }

        v137 = *(this + 1);
        v39 = *(this + 2);
        if (v39 - v137 <= 1 || *v137 != 152 || v137[1] != 1)
        {
          continue;
        }

        v40 = (v137 + 2);
        *(this + 1) = v40;
        v141[0] = 0;
        if (v40 >= v39)
        {
          goto LABEL_259;
        }

LABEL_257:
        v138 = *v40;
        if ((v138 & 0x80000000) != 0)
        {
LABEL_259:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v141);
          if (!result)
          {
            return result;
          }

          v138 = v141[0];
          v139 = *(this + 1);
          v39 = *(this + 2);
        }

        else
        {
          v139 = (v40 + 1);
          *(this + 1) = v139;
        }

        *(a1 + 192) = v138 != 0;
        *(a1 + 200) |= 0x40000u;
        if (v39 - v139 >= 2 && *v139 == 161 && v139[1] == 1)
        {
          *(this + 1) = v139 + 2;
LABEL_265:
          *v141 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 176) = *v141;
          *(a1 + 200) |= 0x80000u;
          v140 = *(this + 1);
          if (*(this + 4) - v140 >= 2 && *v140 == 169 && v140[1] == 1)
          {
            *(this + 1) = v140 + 2;
            *v141 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
            {
              return 0;
            }

LABEL_56:
            *(a1 + 184) = *v141;
            *(a1 + 200) |= 0x100000u;
            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_47;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v26 = *(this + 1);
        v10 = *(this + 2);
        *v141 = 0;
        if (v26 >= v10)
        {
          goto LABEL_91;
        }

        goto LABEL_88;
      case 4u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 8u;
        v27 = *(a1 + 32);
        if (!v27)
        {
          goto LABEL_95;
        }

        goto LABEL_96;
      case 5u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x10u;
        v19 = *(a1 + 40);
        if (v19)
        {
          goto LABEL_25;
        }

        goto LABEL_108;
      case 6u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x20u;
        v35 = *(a1 + 48);
        if (v35)
        {
          goto LABEL_62;
        }

        goto LABEL_120;
      case 7u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x40u;
        v37 = *(a1 + 64);
        if (v37)
        {
          goto LABEL_69;
        }

        goto LABEL_132;
      case 8u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        v28 = *(a1 + 92);
        v29 = *(a1 + 88);
        if (v29 < v28)
        {
          goto LABEL_44;
        }

        goto LABEL_144;
      case 9u:
        if (v8 != 1)
        {
          goto LABEL_81;
        }

        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_160;
      case 0xAu:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x80u;
        v25 = *(a1 + 72);
        if (!v25)
        {
          goto LABEL_163;
        }

        goto LABEL_164;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v42 = *(this + 1);
        v41 = *(this + 2);
        v141[0] = 0;
        if (v42 >= v41)
        {
          goto LABEL_179;
        }

        goto LABEL_176;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        goto LABEL_185;
      case 0xDu:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        v21 = *(a1 + 124);
        v22 = *(a1 + 120);
        if (v22 < v21)
        {
          goto LABEL_29;
        }

        goto LABEL_198;
      case 0xEu:
        if (v8 != 1)
        {
          goto LABEL_81;
        }

        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_214;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        v141[0] = 0;
        if (v16 >= v15)
        {
          goto LABEL_220;
        }

        goto LABEL_217;
      case 0x10u:
        if (v8 != 1)
        {
          goto LABEL_81;
        }

        *v141 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_227;
      case 0x11u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x10000u;
        v13 = *(a1 + 160);
        if (v13)
        {
          goto LABEL_16;
        }

        goto LABEL_231;
      case 0x12u:
        if (v8 != 2)
        {
          goto LABEL_81;
        }

        *(a1 + 200) |= 0x20000u;
        v34 = *(a1 + 168);
        if (!v34)
        {
          goto LABEL_53;
        }

        goto LABEL_244;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_81;
        }

        v40 = *(this + 1);
        v39 = *(this + 2);
        v141[0] = 0;
        if (v40 >= v39)
        {
          goto LABEL_259;
        }

        goto LABEL_257;
      case 0x14u:
        if (v8 != 1)
        {
          goto LABEL_81;
        }

        goto LABEL_265;
      case 0x15u:
        if (v8 != 1)
        {
          goto LABEL_81;
        }

        *v141 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v141))
        {
          goto LABEL_56;
        }

        return 0;
      default:
LABEL_81:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_1002E7D3C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 200);
  if (v6)
  {
    v7 = *(result + 16);
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 200);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 56), a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v8 = *(v5 + 32);
    if (v8)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, v8, a2, a4);
      v6 = *(v5 + 200);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(qword_100471C88 + 32), a2, a4);
      v6 = *(v5 + 200);
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    v10 = *(v5 + 48);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, v10, a2, a4);
      if ((*(v5 + 200) & 0x40) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(6, *(qword_100471C88 + 48), a2, a4);
      if ((*(v5 + 200) & 0x40) != 0)
      {
        goto LABEL_25;
      }
    }

LABEL_8:
    if (*(v5 + 88) < 1)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 200);
  if ((v6 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  v9 = *(v5 + 40);
  if (v9)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, v9, a2, a4);
    v6 = *(v5 + 200);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(5, *(qword_100471C88 + 40), a2, a4);
    v6 = *(v5 + 200);
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v11 = *(v5 + 64);
  if (!v11)
  {
    v11 = *(qword_100471C88 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(7, v11, a2, a4);
  if (*(v5 + 88) >= 1)
  {
LABEL_28:
    v12 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(8, *(*(v5 + 80) + 8 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 88));
  }

LABEL_30:
  v13 = *(v5 + 200);
  if ((v13 & 0x200) == 0)
  {
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:
    v14 = *(v5 + 72);
    if (v14)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v14, a2, a4);
      v13 = *(v5 + 200);
      if ((v13 & 0x400) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, *(qword_100471C88 + 72), a2, a4);
      v13 = *(v5 + 200);
      if ((v13 & 0x400) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_33:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 104), a3);
  v13 = *(v5 + 200);
  if ((v13 & 0x80) != 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  if ((v13 & 0x400) == 0)
  {
    goto LABEL_33;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 60), a2, a4);
  if ((*(v5 + 200) & 0x800) == 0)
  {
LABEL_34:
    if (*(v5 + 120) < 1)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 136), a2, a4);
  if (*(v5 + 120) < 1)
  {
    goto LABEL_45;
  }

LABEL_43:
  v15 = 0;
  do
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xD, *(*(v5 + 112) + 8 * v15++), a2, a4);
  }

  while (v15 < *(v5 + 120));
LABEL_45:
  v16 = *(v5 + 200);
  if ((v16 & 0x2000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 144), a3);
    v16 = *(v5 + 200);
    if ((v16 & 0x4000) == 0)
    {
LABEL_47:
      if ((v16 & 0x8000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_57;
    }
  }

  else if ((v16 & 0x4000) == 0)
  {
    goto LABEL_47;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 140), a2, a4);
  v16 = *(v5 + 200);
  if ((v16 & 0x8000) == 0)
  {
LABEL_48:
    if ((v16 & 0x10000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x10, a2, *(v5 + 152), a3);
  v16 = *(v5 + 200);
  if ((v16 & 0x10000) == 0)
  {
LABEL_49:
    if ((v16 & 0x20000) == 0)
    {
      goto LABEL_50;
    }

LABEL_62:
    v21 = *(v5 + 168);
    if (v21)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x12, v21, a2, a4);
      v16 = *(v5 + 200);
      if ((v16 & 0x40000) != 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x12, *(qword_100471C88 + 168), a2, a4);
      v16 = *(v5 + 200);
      if ((v16 & 0x40000) != 0)
      {
        goto LABEL_66;
      }
    }

LABEL_51:
    if ((v16 & 0x80000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

LABEL_58:
  v20 = *(v5 + 160);
  if (v20)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x11, v20, a2, a4);
    v16 = *(v5 + 200);
    if ((v16 & 0x20000) != 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x11, *(qword_100471C88 + 160), a2, a4);
    v16 = *(v5 + 200);
    if ((v16 & 0x20000) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_50:
  if ((v16 & 0x40000) == 0)
  {
    goto LABEL_51;
  }

LABEL_66:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x13, *(v5 + 192), a2, a4);
  v16 = *(v5 + 200);
  if ((v16 & 0x80000) == 0)
  {
LABEL_52:
    if ((v16 & 0x100000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 176), a3);
  if ((*(v5 + 200) & 0x100000) == 0)
  {
LABEL_53:
    v19 = *(v5 + 8);
    v18 = (v5 + 8);
    v17 = v19;
    if (!v19)
    {
      return result;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 184), a3);
  v22 = *(v5 + 8);
  v18 = (v5 + 8);
  v17 = v22;
  if (!v22)
  {
    return result;
  }

LABEL_69:
  if (*v17 != v17[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v18, a2, a3);
  }

  return result;
}

_BYTE *sub_1002E8140(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = *(this + 50);
  if ((v5 & 1) == 0)
  {
    result = a2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
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
    a2[1] = v10;
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
  if ((*(this + 50) & 2) == 0)
  {
LABEL_21:
    v17 = *(this + 50);
    if ((v17 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_16:
  v15 = *(this + 14);
  *result = 16;
  v16 = (result + 1);
  if ((v15 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v15, v16, a3);
    goto LABEL_21;
  }

  if (v15 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v16, a3);
    v17 = *(this + 50);
    if ((v17 & 4) == 0)
    {
LABEL_22:
      if ((v17 & 8) == 0)
      {
        goto LABEL_23;
      }

LABEL_30:
      v19 = *(this + 4);
      if (v19)
      {
        *result = 34;
        v20 = result + 1;
        v21 = *(v19 + 32);
        if (v21 <= 0x7F)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v19 = *(qword_100471C88 + 32);
        *result = 34;
        v20 = result + 1;
        v21 = *(v19 + 32);
        if (v21 <= 0x7F)
        {
LABEL_32:
          result[1] = v21;
          result = sub_1002EB368(v19, (result + 2), a3);
          v17 = *(this + 50);
          if ((v17 & 0x10) != 0)
          {
            goto LABEL_36;
          }

LABEL_24:
          if ((v17 & 0x20) == 0)
          {
            goto LABEL_25;
          }

LABEL_42:
          v29 = *(this + 6);
          if (v29)
          {
            *result = 50;
            v30 = result + 1;
            v31 = v29[8];
            if (v31 <= 0x7F)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v29 = *(qword_100471C88 + 48);
            *result = 50;
            v30 = result + 1;
            v31 = v29[8];
            if (v31 <= 0x7F)
            {
LABEL_44:
              result[1] = v31;
              result = sub_1002ED6B0(v29, (result + 2), a3);
              if ((*(this + 50) & 0x40) != 0)
              {
                goto LABEL_48;
              }

LABEL_26:
              if (*(this + 22) < 1)
              {
                goto LABEL_59;
              }

              goto LABEL_54;
            }
          }

          v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v30, a3);
          result = sub_1002ED6B0(v29, v32, v33);
          if ((*(this + 50) & 0x40) != 0)
          {
            goto LABEL_48;
          }

          goto LABEL_26;
        }
      }

      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v20, a3);
      result = sub_1002EB368(v19, v22, v23);
      v17 = *(this + 50);
      if ((v17 & 0x10) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }
  }

  else
  {
    result[1] = v15;
    result += 2;
    v17 = *(this + 50);
    if ((v17 & 4) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_29:
  v18 = *(this + 3);
  *result = 24;
  result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v18, (result + 1), a3);
  v17 = *(this + 50);
  if ((v17 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  if ((v17 & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_36:
  v24 = *(this + 5);
  if (v24)
  {
    *result = 42;
    v25 = result + 1;
    v26 = *(v24 + 64);
    if (v26 <= 0x7F)
    {
      goto LABEL_38;
    }

LABEL_41:
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v25, a3);
    result = sub_1002D3734(v24, v27, v28);
    v17 = *(this + 50);
    if ((v17 & 0x20) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  v24 = *(qword_100471C88 + 40);
  *result = 42;
  v25 = result + 1;
  v26 = *(v24 + 64);
  if (v26 > 0x7F)
  {
    goto LABEL_41;
  }

LABEL_38:
  result[1] = v26;
  result = sub_1002D3734(v24, (result + 2), a3);
  v17 = *(this + 50);
  if ((v17 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_25:
  if ((v17 & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_48:
  v34 = *(this + 8);
  if (v34)
  {
    *result = 58;
    v35 = result + 1;
    v36 = *(v34 + 40);
    if (v36 <= 0x7F)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v34 = *(qword_100471C88 + 64);
    *result = 58;
    v35 = result + 1;
    v36 = *(v34 + 40);
    if (v36 <= 0x7F)
    {
LABEL_50:
      result[1] = v36;
      result = sub_1002E583C(v34, (result + 2), a3);
      if (*(this + 22) < 1)
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }
  }

  v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v35, a3);
  result = sub_1002E583C(v34, v37, v38);
  if (*(this + 22) < 1)
  {
    goto LABEL_59;
  }

LABEL_54:
  v39 = 0;
  do
  {
    v41 = *(*(this + 10) + 8 * v39);
    *result = 66;
    v42 = *(v41 + 18);
    if (v42 <= 0x7F)
    {
      result[1] = v42;
      v40 = result + 2;
    }

    else
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v41 + 18), result + 1, a3);
    }

    result = sub_1002E3EB4(v41, v40, a3);
    ++v39;
  }

  while (v39 < *(this + 22));
LABEL_59:
  v43 = *(this + 50);
  if ((v43 & 0x200) != 0)
  {
    v48 = *(this + 13);
    *result = 73;
    *(result + 1) = v48;
    result += 9;
    v43 = *(this + 50);
    if ((v43 & 0x80) == 0)
    {
LABEL_61:
      if ((v43 & 0x400) == 0)
      {
        goto LABEL_62;
      }

LABEL_76:
      v54 = *(this + 15);
      *result = 88;
      v55 = (result + 1);
      if ((v54 & 0x80000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v54, v55, a3);
        if ((*(this + 201) & 8) != 0)
        {
          goto LABEL_83;
        }
      }

      else if (v54 > 0x7F)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v54, v55, a3);
        if ((*(this + 201) & 8) != 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        result[1] = v54;
        result += 2;
        if ((*(this + 201) & 8) != 0)
        {
          goto LABEL_83;
        }
      }

LABEL_63:
      if (*(this + 30) < 1)
      {
        goto LABEL_90;
      }

      goto LABEL_64;
    }
  }

  else if ((v43 & 0x80) == 0)
  {
    goto LABEL_61;
  }

  v49 = *(this + 9);
  if (v49)
  {
    *result = 82;
    v50 = result + 1;
    v51 = *(v49 + 40);
    if (v51 <= 0x7F)
    {
      goto LABEL_72;
    }

LABEL_75:
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v50, a3);
    result = sub_1002E583C(v49, v52, v53);
    if ((*(this + 50) & 0x400) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_62;
  }

  v49 = *(qword_100471C88 + 72);
  *result = 82;
  v50 = result + 1;
  v51 = *(v49 + 40);
  if (v51 > 0x7F)
  {
    goto LABEL_75;
  }

LABEL_72:
  result[1] = v51;
  result = sub_1002E583C(v49, (result + 2), a3);
  if ((*(this + 50) & 0x400) != 0)
  {
    goto LABEL_76;
  }

LABEL_62:
  if ((*(this + 201) & 8) == 0)
  {
    goto LABEL_63;
  }

LABEL_83:
  v56 = *(this + 34);
  *result = 96;
  v57 = (result + 1);
  if ((v56 & 0x80000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v56, v57, a3);
    if (*(this + 30) < 1)
    {
      goto LABEL_90;
    }
  }

  else if (v56 > 0x7F)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v56, v57, a3);
    if (*(this + 30) < 1)
    {
      goto LABEL_90;
    }
  }

  else
  {
    result[1] = v56;
    result += 2;
    if (*(this + 30) < 1)
    {
      goto LABEL_90;
    }
  }

LABEL_64:
  v44 = 0;
  do
  {
    v46 = *(*(this + 14) + 8 * v44);
    *result = 106;
    v47 = *(v46 + 12);
    if (v47 <= 0x7F)
    {
      result[1] = v47;
      v45 = (result + 2);
    }

    else
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(*(v46 + 12), result + 1, a3);
    }

    result = sub_1002E4BF4(v46, v45, a3);
    ++v44;
  }

  while (v44 < *(this + 30));
LABEL_90:
  v58 = *(this + 50);
  if ((v58 & 0x2000) == 0)
  {
    if ((v58 & 0x4000) == 0)
    {
      goto LABEL_92;
    }

LABEL_101:
    v64 = *(this + 35);
    *result = 120;
    v65 = (result + 1);
    if ((v64 & 0x80000000) != 0)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v64, v65, a3);
      v59 = *(this + 50);
      if ((v59 & 0x8000) != 0)
      {
        goto LABEL_108;
      }
    }

    else if (v64 > 0x7F)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v64, v65, a3);
      v59 = *(this + 50);
      if ((v59 & 0x8000) != 0)
      {
        goto LABEL_108;
      }
    }

    else
    {
      result[1] = v64;
      result += 2;
      v59 = *(this + 50);
      if ((v59 & 0x8000) != 0)
      {
        goto LABEL_108;
      }
    }

LABEL_93:
    if ((v59 & 0x10000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_109;
  }

  v63 = *(this + 18);
  *result = 113;
  *(result + 1) = v63;
  result += 9;
  if ((*(this + 50) & 0x4000) != 0)
  {
    goto LABEL_101;
  }

LABEL_92:
  v59 = *(this + 50);
  if ((v59 & 0x8000) == 0)
  {
    goto LABEL_93;
  }

LABEL_108:
  v66 = *(this + 19);
  *result = 385;
  *(result + 2) = v66;
  result += 10;
  v59 = *(this + 50);
  if ((v59 & 0x10000) == 0)
  {
LABEL_94:
    if ((v59 & 0x20000) == 0)
    {
      goto LABEL_95;
    }

LABEL_115:
    v72 = *(this + 21);
    if (v72)
    {
      *result = 402;
      v73 = result + 2;
      v74 = *(v72 + 48);
      if (v74 <= 0x7F)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v72 = *(qword_100471C88 + 168);
      *result = 402;
      v73 = result + 2;
      v74 = *(v72 + 48);
      if (v74 <= 0x7F)
      {
LABEL_117:
        result[2] = v74;
        result = sub_1002D4338(v72, (result + 3), a3);
        v59 = *(this + 50);
        if ((v59 & 0x40000) != 0)
        {
          goto LABEL_121;
        }

LABEL_96:
        if ((v59 & 0x80000) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_122;
      }
    }

    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v74, v73, a3);
    result = sub_1002D4338(v72, v75, v76);
    v59 = *(this + 50);
    if ((v59 & 0x40000) != 0)
    {
      goto LABEL_121;
    }

    goto LABEL_96;
  }

LABEL_109:
  v67 = *(this + 20);
  if (v67)
  {
    *result = 394;
    v68 = result + 2;
    v69 = *(v67 + 48);
    if (v69 <= 0x7F)
    {
      goto LABEL_111;
    }

LABEL_114:
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v69, v68, a3);
    result = sub_1002D4338(v67, v70, v71);
    v59 = *(this + 50);
    if ((v59 & 0x20000) != 0)
    {
      goto LABEL_115;
    }

    goto LABEL_95;
  }

  v67 = *(qword_100471C88 + 160);
  *result = 394;
  v68 = result + 2;
  v69 = *(v67 + 48);
  if (v69 > 0x7F)
  {
    goto LABEL_114;
  }

LABEL_111:
  result[2] = v69;
  result = sub_1002D4338(v67, (result + 3), a3);
  v59 = *(this + 50);
  if ((v59 & 0x20000) != 0)
  {
    goto LABEL_115;
  }

LABEL_95:
  if ((v59 & 0x40000) == 0)
  {
    goto LABEL_96;
  }

LABEL_121:
  v77 = *(this + 192);
  *result = 408;
  result[2] = v77;
  result += 3;
  v59 = *(this + 50);
  if ((v59 & 0x80000) == 0)
  {
LABEL_97:
    if ((v59 & 0x100000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_123;
  }

LABEL_122:
  v78 = *(this + 22);
  *result = 417;
  *(result + 2) = v78;
  result += 10;
  if ((*(this + 50) & 0x100000) == 0)
  {
LABEL_98:
    v62 = *(this + 1);
    v61 = (this + 8);
    v60 = v62;
    if (!v62)
    {
      return result;
    }

    goto LABEL_124;
  }

LABEL_123:
  v79 = *(this + 23);
  *result = 425;
  *(result + 2) = v79;
  result += 10;
  v80 = *(this + 1);
  v61 = (this + 8);
  v60 = v80;
  if (!v80)
  {
    return result;
  }

LABEL_124:
  if (*v60 != v60[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v61, result, a3);
  }

  return result;
}

uint64_t sub_1002E89E4(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 200);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x1FE00) != 0)
    {
      goto LABEL_88;
    }

    goto LABEL_31;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
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

  if (v7 < 0x80)
  {
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v5 + 8);
    }

    v4 = v6 + 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_18:
    v10 = *(a1 + 56);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 200);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
    goto LABEL_24;
  }

  v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  v9 = *(v5 + 23);
  v3 = *(a1 + 200);
  if (*(v5 + 23) < 0)
  {
    v9 = *(v5 + 8);
  }

  v4 = v8 + 1 + v9;
  if ((v3 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_24:
  if ((v3 & 4) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    v3 = *(a1 + 200);
    if ((v3 & 8) == 0)
    {
LABEL_26:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_27;
      }

LABEL_41:
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = sub_1002D396C(v16, a2);
        if (v17 < 0x80)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v17 = sub_1002D396C(*(qword_100471C88 + 40), a2);
        if (v17 < 0x80)
        {
LABEL_43:
          v4 += v17 + 2;
          v3 = *(a1 + 200);
          if ((v3 & 0x20) != 0)
          {
            goto LABEL_47;
          }

LABEL_28:
          if ((v3 & 0x40) == 0)
          {
            goto LABEL_29;
          }

LABEL_53:
          v20 = *(a1 + 64);
          if (v20)
          {
            v21 = *(v20 + 44);
            if (*(v20 + 44))
            {
              goto LABEL_55;
            }
          }

          else
          {
            v20 = *(qword_100471C88 + 64);
            v21 = *(v20 + 44);
            if (*(v20 + 44))
            {
LABEL_55:
              v22 = (v21 << 31 >> 31) & 9;
              if ((v21 & 2) != 0)
              {
                v22 += 9;
              }

              if ((v21 & 4) != 0)
              {
                v23 = v22 + 9;
              }

              else
              {
                v23 = v22;
              }

              v24 = (v20 + 8);
              v25 = *(v20 + 8);
              if (!v25)
              {
                goto LABEL_68;
              }

              goto LABEL_64;
            }
          }

          v23 = 0;
          v24 = (v20 + 8);
          v25 = *(v20 + 8);
          if (!v25)
          {
            goto LABEL_68;
          }

LABEL_64:
          if (*v25 != v25[1])
          {
            v26 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v24, a2) + v23);
            *(v20 + 40) = v26;
            if (v26 >= 0x80)
            {
              v4 += v26 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 1;
              v3 = *(a1 + 200);
              if ((v3 & 0x80) != 0)
              {
                goto LABEL_71;
              }
            }

            else
            {
              v4 += v26 + 2;
              v3 = *(a1 + 200);
              if ((v3 & 0x80) != 0)
              {
                goto LABEL_71;
              }
            }

            goto LABEL_30;
          }

LABEL_68:
          *(v20 + 40) = v23;
          v4 += v23 + 2;
          v3 = *(a1 + 200);
          if ((v3 & 0x80) != 0)
          {
            goto LABEL_71;
          }

LABEL_30:
          if ((v3 & 0x1FE00) == 0)
          {
            goto LABEL_31;
          }

LABEL_88:
          if ((v3 & 0x200) != 0)
          {
            v34 = v4 + 9;
          }

          else
          {
            v34 = v4;
          }

          if ((v3 & 0x400) == 0)
          {
            if ((v3 & 0x800) == 0)
            {
              goto LABEL_93;
            }

LABEL_108:
            v37 = *(a1 + 136);
            if ((v37 & 0x80000000) != 0)
            {
              v34 += 11;
              if ((v3 & 0x2000) != 0)
              {
                v34 += 9;
              }

              if ((v3 & 0x4000) != 0)
              {
                goto LABEL_121;
              }
            }

            else if (v37 >= 0x80)
            {
              v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2);
              v3 = *(a1 + 200);
              v34 += v38 + 1;
              if ((v3 & 0x2000) != 0)
              {
                v34 += 9;
              }

              if ((v3 & 0x4000) != 0)
              {
                goto LABEL_121;
              }
            }

            else
            {
              v34 += 2;
              if ((v3 & 0x2000) != 0)
              {
                v34 += 9;
              }

              if ((v3 & 0x4000) != 0)
              {
                goto LABEL_121;
              }
            }

LABEL_96:
            if ((v3 & 0x8000) != 0)
            {
              v4 = v34 + 10;
            }

            else
            {
              v4 = v34;
            }

            if ((v3 & 0xFF0000) != 0)
            {
              goto LABEL_130;
            }

            goto LABEL_32;
          }

          v35 = *(a1 + 60);
          if ((v35 & 0x80000000) != 0)
          {
            v34 += 11;
            if ((v3 & 0x800) != 0)
            {
              goto LABEL_108;
            }
          }

          else if (v35 >= 0x80)
          {
            v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
            v3 = *(a1 + 200);
            v34 += v36 + 1;
            if ((v3 & 0x800) != 0)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v34 += 2;
            if ((v3 & 0x800) != 0)
            {
              goto LABEL_108;
            }
          }

LABEL_93:
          if ((v3 & 0x2000) != 0)
          {
            v34 += 9;
          }

          if ((v3 & 0x4000) == 0)
          {
            goto LABEL_96;
          }

LABEL_121:
          v39 = *(a1 + 140);
          if ((v39 & 0x80000000) != 0)
          {
            v40 = 11;
          }

          else if (v39 >= 0x80)
          {
            v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39, a2) + 1;
            v3 = *(a1 + 200);
          }

          else
          {
            v40 = 2;
          }

          v41 = v40 + v34;
          if ((v3 & 0x8000) != 0)
          {
            v4 = v41 + 10;
          }

          else
          {
            v4 = v41;
          }

          if ((v3 & 0xFF0000) != 0)
          {
            goto LABEL_130;
          }

LABEL_32:
          v12 = *(a1 + 88);
          v13 = v12 + v4;
          if (v12 < 1)
          {
            goto LABEL_170;
          }

          goto LABEL_152;
        }
      }

      v4 += v17 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(a1 + 200);
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_47;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = sub_1002EB440(v14, a2);
    if (v15 < 0x80)
    {
      goto LABEL_37;
    }

LABEL_40:
    v4 += v15 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(a1 + 200);
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_27;
  }

  v15 = sub_1002EB440(*(qword_100471C88 + 32), a2);
  if (v15 >= 0x80)
  {
    goto LABEL_40;
  }

LABEL_37:
  v4 += v15 + 2;
  v3 = *(a1 + 200);
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_41;
  }

LABEL_27:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_47:
  v18 = *(a1 + 48);
  if (v18)
  {
    v19 = sub_1002ED824(v18, a2);
    if (v19 < 0x80)
    {
      goto LABEL_49;
    }

LABEL_52:
    v4 += v19 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    v3 = *(a1 + 200);
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_29;
  }

  v19 = sub_1002ED824(*(qword_100471C88 + 48), a2);
  if (v19 >= 0x80)
  {
    goto LABEL_52;
  }

LABEL_49:
  v4 += v19 + 2;
  v3 = *(a1 + 200);
  if ((v3 & 0x40) != 0)
  {
    goto LABEL_53;
  }

LABEL_29:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_30;
  }

LABEL_71:
  v27 = *(a1 + 72);
  if (v27)
  {
    v28 = *(v27 + 44);
    if (*(v27 + 44))
    {
      goto LABEL_73;
    }
  }

  else
  {
    v27 = *(qword_100471C88 + 72);
    v28 = *(v27 + 44);
    if (*(v27 + 44))
    {
LABEL_73:
      v29 = (v28 << 31 >> 31) & 9;
      if ((v28 & 2) != 0)
      {
        v29 += 9;
      }

      if ((v28 & 4) != 0)
      {
        LODWORD(v30) = v29 + 9;
      }

      else
      {
        LODWORD(v30) = v29;
      }

      v31 = (v27 + 8);
      v32 = *(v27 + 8);
      if (!v32)
      {
        goto LABEL_85;
      }

      goto LABEL_82;
    }
  }

  LODWORD(v30) = 0;
  v31 = (v27 + 8);
  v32 = *(v27 + 8);
  if (!v32)
  {
LABEL_85:
    *(v27 + 40) = v30;
    v33 = 1;
    goto LABEL_87;
  }

LABEL_82:
  if (*v32 == v32[1])
  {
    goto LABEL_85;
  }

  v30 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v31, a2) + v30);
  *(v27 + 40) = v30;
  if (v30 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
  }

  else
  {
    v33 = 1;
  }

LABEL_87:
  v4 += v30 + v33 + 1;
  v3 = *(a1 + 200);
  if ((v3 & 0x1FE00) != 0)
  {
    goto LABEL_88;
  }

LABEL_31:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_32;
  }

LABEL_130:
  if ((v3 & 0x10000) == 0)
  {
    goto LABEL_137;
  }

  v42 = *(a1 + 160);
  if (!v42)
  {
    v43 = sub_1002D44C0(*(qword_100471C88 + 160), a2);
    if (v43 < 0x80)
    {
      goto LABEL_133;
    }

LABEL_135:
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2);
    goto LABEL_136;
  }

  v43 = sub_1002D44C0(v42, a2);
  if (v43 >= 0x80)
  {
    goto LABEL_135;
  }

LABEL_133:
  v44 = 1;
LABEL_136:
  v4 += v43 + v44 + 2;
  v3 = *(a1 + 200);
LABEL_137:
  if ((v3 & 0x20000) == 0)
  {
    goto LABEL_144;
  }

  v45 = *(a1 + 168);
  if (!v45)
  {
    v46 = sub_1002D44C0(*(qword_100471C88 + 168), a2);
    if (v46 < 0x80)
    {
      goto LABEL_140;
    }

LABEL_142:
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46, a2);
    goto LABEL_143;
  }

  v46 = sub_1002D44C0(v45, a2);
  if (v46 >= 0x80)
  {
    goto LABEL_142;
  }

LABEL_140:
  v47 = 1;
LABEL_143:
  v4 += v46 + v47 + 2;
  v3 = *(a1 + 200);
LABEL_144:
  v48 = v4 + 3;
  if ((v3 & 0x40000) == 0)
  {
    v48 = v4;
  }

  if ((v3 & 0x80000) != 0)
  {
    v48 += 10;
  }

  if ((v3 & 0x100000) != 0)
  {
    v49 = v48 + 10;
  }

  else
  {
    v49 = v48;
  }

  v50 = *(a1 + 88);
  v13 = v50 + v49;
  if (v50 >= 1)
  {
LABEL_152:
    v51 = 0;
    do
    {
      v53 = *(*(a1 + 80) + 8 * v51);
      v54 = (*(v53 + 76) << 29 >> 31) & 9;
      v55 = *(v53 + 24);
      v56 = 8 * v55;
      if (v55 >= 1)
      {
        if (v56 >= 0x80)
        {
          v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v55), a2) + 1;
        }

        else
        {
          v57 = 2;
        }

        v54 += v57;
      }

      *(v53 + 32) = v56;
      v58 = v54 + v56;
      v59 = *(v53 + 48);
      v60 = 8 * v59;
      if (v59 >= 1)
      {
        if (v60 >= 0x80)
        {
          v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v59), a2) + 1;
        }

        else
        {
          v61 = 2;
        }

        v58 += v61;
      }

      v62 = *(v53 + 8);
      *(v53 + 56) = v60;
      v63 = (v58 + v60);
      if (v62 && *v62 != v62[1])
      {
        v63 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v53 + 8), a2) + v63);
      }

      *(v53 + 72) = v63;
      if (v63 < 0x80)
      {
        v52 = 1;
      }

      else
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63, a2);
      }

      v13 += v63 + v52;
      ++v51;
    }

    while (v51 < *(a1 + 88));
  }

LABEL_170:
  v64 = *(a1 + 120);
  v65 = (v64 + v13);
  if (v64 >= 1)
  {
    v66 = 0;
    do
    {
      v68 = sub_1002E4D4C(*(*(a1 + 112) + 8 * v66), a2);
      v69 = v68;
      if (v68 < 0x80)
      {
        v67 = 1;
      }

      else
      {
        v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68, a2);
      }

      v65 = (v69 + v65 + v67);
      ++v66;
    }

    while (v66 < *(a1 + 120));
  }

  v70 = *(a1 + 8);
  if (v70 && *v70 != v70[1])
  {
    v65 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v65;
  }

  *(a1 + 196) = v65;
  return v65;
}

uint64_t sub_1002E9188(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002E5C2C(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002E9268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E927C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E9290(uint64_t result, uint64_t a2)
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

uint64_t sub_1002E931C(uint64_t a1)
{
  if ((~*(a1 + 200) & 0x7D) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    result = (*(*v2 + 40))(v2);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = (*(**(qword_100471C88 + 32) + 40))(*(qword_100471C88 + 32));
    if (!result)
    {
      return result;
    }
  }

  v4 = *(a1 + 200);
  if ((v4 & 0x10) != 0)
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v5 = *(qword_100471C88 + 40);
    }

    result = (*(*v5 + 40))(v5);
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 200);
  }

  if ((v4 & 0x20) != 0)
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      v6 = *(qword_100471C88 + 48);
    }

    result = (*(*v6 + 40))(v6);
    if (!result)
    {
      return result;
    }

    v4 = *(a1 + 200);
  }

  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x80) == 0)
    {
      return 1;
    }

    v8 = *(a1 + 72);
    if (!v8)
    {
      v8 = *(qword_100471C88 + 72);
    }

    result = (*(*v8 + 40))(v8);
    if (result)
    {
      return 1;
    }

    return result;
  }

  v7 = *(a1 + 64);
  if (!v7)
  {
    v7 = *(qword_100471C88 + 64);
  }

  result = (*(*v7 + 40))(v7);
  if (result)
  {
    v4 = *(a1 + 200);
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002E94E0()
{
  v0 = qword_10045D418;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002E298C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D3D8;
}

void sub_1002E9570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E9584(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 40);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 40);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_100471C90 + 16);
    }

    sub_1002ECE08(v5, v6);
    v4 = *(a2 + 40);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    *(a1 + 40) |= 2u;
    v8 = *(a1 + 24);
    if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 40);
  }

  if ((v4 & 4) != 0)
  {
    v9 = *(a2 + 32);
    *(a1 + 40) |= 4u;
    *(a1 + 32) = v9;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002E9710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002E9724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002E9738(uint64_t a1, uint64_t a2)
{
  *a1 = off_100447BA0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  sub_1002E9584(a1, a2);
  return a1;
}

void sub_1002E97B8(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1002E97E8(void *a1)
{
  *a1 = off_100447BA0;
  v2 = a1[3];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_100471C90 != a1)
  {
    v4 = a1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002E98BC(void *a1)
{
  *a1 = off_100447BA0;
  v2 = a1[3];
  if (v2 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (qword_100471C90 != a1)
  {
    v4 = a1[2];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1002E99AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_100471C90;
  if (!qword_100471C90)
  {
    sub_1002E2D40(0, a2, a3, a4);
    return qword_100471C90;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E9A88(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 40);
  if (v2)
  {
    if ((*(a1 + 40) & 1) != 0 && *(a1 + 16))
    {
      v3 = a1;
      sub_1002ED1C8(*(a1 + 16));
      a1 = v3;
      v2 = *(v3 + 40);
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 24);
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
    }

    *(a1 + 32) = 1;
    v1 = vars8;
  }

  v6 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 8) = 0;
  if (v6)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002E9B2C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_24;
            }

            v15 = *(this + 1);
            v16 = *(this + 2);
            v27 = 0;
            if (v15 >= v16)
            {
              goto LABEL_32;
            }

LABEL_28:
            v17 = *v15;
            if (v17 < 0)
            {
              goto LABEL_32;
            }

            *(this + 1) = v15 + 1;
            if ((v17 - 1) > 1)
            {
              goto LABEL_34;
            }

LABEL_30:
            *(a1 + 40) |= 4u;
            *(a1 + 32) = v17;
            if (*(this + 1) == *(this + 2))
            {
              goto LABEL_35;
            }
          }

          if (v8 == 2)
          {
            break;
          }

          if (v8 != 1 || v9 != 2)
          {
            goto LABEL_24;
          }

          *(a1 + 40) |= 1u;
          v10 = *(a1 + 16);
          if (!v10)
          {
            operator new();
          }

          v28 = 0;
          v11 = *(this + 1);
          if (v11 >= *(this + 2) || *v11 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
            {
              return 0;
            }
          }

          else
          {
            v28 = *v11;
            *(this + 1) = v11 + 1;
          }

          v18 = *(this + 14);
          v19 = *(this + 15);
          *(this + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28);
          if (!sub_1002ED284(v10, this, v21, v22) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v20);
          v23 = *(this + 14);
          v24 = __OFSUB__(v23, 1);
          v25 = v23 - 1;
          if (v25 < 0 == v24)
          {
            *(this + 14) = v25;
          }

          v26 = *(this + 1);
          if (v26 < *(this + 2) && *v26 == 18)
          {
            *(this + 1) = v26 + 1;
            *(a1 + 40) |= 2u;
            if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
LABEL_17:
              operator new();
            }

            goto LABEL_18;
          }
        }

        if (v9 == 2)
        {
          break;
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

      *(a1 + 40) |= 2u;
      if (*(a1 + 24) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        goto LABEL_17;
      }

LABEL_18:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v14 = *(this + 1);
      v13 = *(this + 2);
      if (v14 < v13 && *v14 == 24)
      {
        v15 = v14 + 1;
        *(this + 1) = v15;
        v27 = 0;
        if (v15 < v13)
        {
          goto LABEL_28;
        }

LABEL_32:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27);
        if (!result)
        {
          return result;
        }

        v17 = v27;
        if (v27 - 1 <= 1)
        {
          goto LABEL_30;
        }

LABEL_34:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v17);
        if (*(this + 1) == *(this + 2))
        {
          break;
        }
      }
    }

LABEL_35:
    ;
  }

  while (!*(this + 11) && *(this + 6) != *(this + 10));
  *(this + 8) = 0;
  result = 1;
  *(this + 36) = 1;
  return result;
}

uint64_t sub_1002E9E68(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 40);
      if ((v6 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_100471C90 + 16), a2, a4);
      v6 = *(v5 + 40);
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
  v11 = *(v5 + 24);
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 40) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
  v12 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v12;
  if (!v12)
  {
    return result;
  }

LABEL_12:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002E9F48(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v10 = *(this + 2);
    if (v10)
    {
      *a2 = 10;
      v11 = a2 + 1;
      v12 = v10[8];
      if (v12 <= 0x7F)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = *(qword_100471C90 + 16);
      *a2 = 10;
      v11 = a2 + 1;
      v12 = v10[8];
      if (v12 <= 0x7F)
      {
LABEL_8:
        *(v4 + 1) = v12;
        v4 = sub_1002ED6B0(v10, (v4 + 2), a3);
        v6 = *(this + 10);
        if ((v6 & 2) != 0)
        {
          goto LABEL_12;
        }

LABEL_3:
        if ((v6 & 4) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v11, a3);
    v4 = sub_1002ED6B0(v10, v13, v14);
    v6 = *(this + 10);
    if ((v6 & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_12:
  v15 = *(this + 3);
  *v4 = 18;
  v16 = *(v15 + 23);
  if ((v16 & 0x8000000000000000) != 0)
  {
    v16 = *(v15 + 8);
    if (v16 <= 0x7F)
    {
      goto LABEL_14;
    }
  }

  else if (v16 <= 0x7F)
  {
LABEL_14:
    *(v4 + 1) = v16;
    v17 = v4 + 2;
    goto LABEL_17;
  }

  v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, v4 + 1, a3);
LABEL_17:
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

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v19, v20, v17, a4);
  if ((*(this + 10) & 4) == 0)
  {
LABEL_4:
    v9 = *(this + 1);
    v8 = (this + 8);
    v7 = v9;
    if (!v9)
    {
      return v4;
    }

    goto LABEL_31;
  }

LABEL_24:
  v21 = *(this + 8);
  *v4 = 24;
  v22 = v4 + 1;
  if ((v21 & 0x80000000) != 0)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v21, v22, a3);
    v24 = *(this + 1);
    v8 = (this + 8);
    v7 = v24;
    if (!v24)
    {
      return v4;
    }
  }

  else if (v21 > 0x7F)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v22, a3);
    v25 = *(this + 1);
    v8 = (this + 8);
    v7 = v25;
    if (!v25)
    {
      return v4;
    }
  }

  else
  {
    *(v4 + 1) = v21;
    v4 = (v4 + 2);
    v23 = *(this + 1);
    v8 = (this + 8);
    v7 = v23;
    if (!v23)
    {
      return v4;
    }
  }

LABEL_31:
  if (*v7 == v7[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, v4, a3);
}

uint64_t sub_1002EA0FC(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_1002ED824(v7, a2);
    if (v8 < 0x80)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = sub_1002ED824(*(qword_100471C90 + 16), a2);
    if (v8 < 0x80)
    {
LABEL_9:
      v4 = (v8 + 2);
      v3 = *(a1 + 40);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }
  }

  v4 = v8 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
  v3 = *(a1 + 40);
  if ((v3 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v9 = *(a1 + 24);
  v10 = *(v9 + 23);
  v11 = v10;
  v12 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2);
    v10 = *(v9 + 23);
    v12 = *(v9 + 8);
    v3 = *(a1 + 40);
    v11 = *(v9 + 23);
  }

  else
  {
    v14 = 1;
  }

  if (v11 < 0)
  {
    v10 = v12;
  }

  v4 = (v4 + v14 + v10 + 1);
LABEL_22:
  if ((v3 & 4) != 0)
  {
    v16 = *(a1 + 32);
    if ((v16 & 0x80000000) != 0)
    {
      v4 = (v4 + 11);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    else if (v16 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1 + v4;
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4 = (v4 + 2);
      v5 = (a1 + 8);
      v6 = *(a1 + 8);
      if (!v6)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
LABEL_24:
      *(a1 + 36) = v4;
      return v4;
    }
  }

LABEL_32:
  if (*v6 == v6[1])
  {
    goto LABEL_24;
  }

  v17 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 36) = v17;
  return v17;
}

uint64_t sub_1002EA2A4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002E9584(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002EA384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EA398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EA3AC(uint64_t result, uint64_t a2)
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

uint64_t sub_1002EA438(uint64_t a1)
{
  if ((~*(a1 + 40) & 3) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return (*(**(qword_100471C90 + 16) + 40))();
  }
}

uint64_t sub_1002EA4AC()
{
  v0 = qword_10045D418;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002E298C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D3E8;
}

void sub_1002EA53C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1002EA57C()
{
  v0 = sub_1002EA8A0();
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v0);
  operator new();
}

void sub_1002EA838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EA84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EA860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002EA8A0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045D420 & 1) == 0)
  {
    byte_10045D420 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/coordinates.pb.cc", a4);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile("\n\x1Eprotobuf/gen/coordinates.proto\x12\x11proto.coordinates\n\x06LatLon\x12\v\n\x03lat\x18\x01 \x02(\x01\x12\v\n\x03lon\x18\x02 \x02(\x01#\n\vUniversal2d\x12\t\n\x01x\x18\x01 \x02(\x01\x12\t\n\x01y\x18\x02 \x02(\x01\x84\x02\n\x1EHomogeneousOrthonormalMatrix2d\x12P\n(universalLocationOfCoordinateFrameOrigin\x18\x01 \x02(\v2\x1E.proto.coordinates.Universal2d\x122\n*universalLengthOfCoordinateFrameUnitVector\x18\x02 \x02(\x01\x12)\n!localCoordinateFrameIsRightHanded\x18\x03 \x02(\b\x121\n&universalOrientationOfCoordinateFrameX\x18\x04 \x02(\x01:\x010~\n\x1ABoundedCellCoordinateFrame\x12\f\n\x04rows\x18\x01 \x02(\r\x12\f\n\x04cols\x18\x02 \x02(\r\x12D\n\ttransform\x18\x03 \x02(\v21.proto.coordinates.HomogeneousOrthonormalMatrix2dB'\n%com.apple.indoor.proto.javacommon.api", 0x22C, v4);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_1002EAB18()
{
  if (qword_100471C98)
  {
    (*(*qword_100471C98 + 8))(qword_100471C98);
  }

  if (qword_10045D438)
  {
    (*(*qword_10045D438 + 8))(qword_10045D438);
  }

  if (qword_100471CA0)
  {
    (*(*qword_100471CA0 + 8))(qword_100471CA0);
  }

  if (qword_10045D448)
  {
    (*(*qword_10045D448 + 8))(qword_10045D448);
  }

  if (qword_100471CA8)
  {
    (*(*qword_100471CA8 + 8))(qword_100471CA8);
  }

  if (qword_10045D458)
  {
    (*(*qword_10045D458 + 8))(qword_10045D458);
  }

  if (qword_100471CB0)
  {
    (*(*qword_100471CB0 + 8))(qword_100471CB0);
  }

  result = qword_10045D468;
  if (qword_10045D468)
  {
    v1 = *(*qword_10045D468 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_1002EACC0()
{
  v0 = qword_10045D470;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v5[1] = sub_1002EA57C;
    v6 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v5);
  }

  if (!qword_100471C98)
  {
    (sub_1002EA8A0)();
  }

  v1 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471CA0)
  {
    sub_1002EA8A0(v1);
  }

  v2 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471CA8)
  {
    sub_1002EA8A0(v2);
  }

  v3 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471CB0)
  {
    sub_1002EA8A0(v3);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1002EADEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1002EAE00(void *a1)
{
  *a1 = off_100447CC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

void *sub_1002EAE60(void *a1)
{
  *a1 = off_100447ED8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1002EAEC0(uint64_t a1, uint64_t a2)
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

void sub_1002EAF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EAF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EAFA8(uint64_t a1)
{
  *a1 = off_100447CC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002EAFFC(uint64_t a1)
{
  *a1 = off_100447CC8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1002EB06C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_100471C98;
  if (!qword_100471C98)
  {
    sub_1002EA8A0(0, a2, a3, a4);
    return qword_100471C98;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002EB134(uint64_t a1)
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

uint64_t sub_1002EB154(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_1002EB2CC(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_1002EB368(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_1002EB440(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_1002EB4A8(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002EAEC0(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002EB588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EB59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EB5B0(uint64_t result, uint64_t a2)
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

uint64_t sub_1002EB650()
{
  v0 = qword_10045D470;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002EA57C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D430;
}

void sub_1002EB6E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EB6F4(uint64_t a1, uint64_t a2)
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

void sub_1002EB7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EB7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EB7DC(uint64_t a1)
{
  *a1 = off_100447D78;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_1002EB830(uint64_t a1)
{
  *a1 = off_100447D78;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002EB92C(uint64_t a1)
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

uint64_t sub_1002EB94C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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

uint64_t sub_1002EBAC4(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_1002EBB60(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_1002EBC38(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
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

uint64_t sub_1002EBCA0(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002EB6F4(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002EBD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EBD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EBDA8(uint64_t result, uint64_t a2)
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

uint64_t sub_1002EBE48()
{
  v0 = qword_10045D470;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002EA57C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D440;
}

void sub_1002EBED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EBEEC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    LOBYTE(v4) = *(a2 + 48);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 48);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if (v4)
  {
    *(a1 + 48) |= 1u;
    v5 = *(a1 + 16);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 16);
    if (!v6)
    {
      v6 = *(qword_100471CA8 + 16);
    }

    sub_1002EB6F4(v5, v6);
    v4 = *(a2 + 48);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = *(a2 + 40);
    *(a1 + 48) |= 4u;
    *(a1 + 40) = v10;
    if ((*(a2 + 48) & 8) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_13;
  }

  v9 = *(a2 + 24);
  *(a1 + 48) |= 2u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((v4 & 8) != 0)
  {
LABEL_13:
    v7 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v7;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002EC08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EC0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EC0B4(void *a1)
{
  *a1 = off_100447E28;
  if (qword_100471CA8 != a1)
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

void sub_1002EC148(void *a1)
{
  *a1 = off_100447E28;
  if (qword_100471CA8 != a1)
  {
    v2 = a1[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002EC28C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 48))
    {
      v2 = *(a1 + 16);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        v4 = *(v2 + 8);
        v3 = (v2 + 8);
        *(v3 + 7) = 0;
        if (v4)
        {
          v5 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v3);
          a1 = v5;
          v1 = vars8;
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 10) = 0;
  if (v7)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002EC30C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v12 = *(this + 2);
            v27[0] = 0;
            if (v13 >= v12)
            {
              goto LABEL_43;
            }

            goto LABEL_41;
          }
        }

        else if (v8 == 4 && v9 == 1)
        {
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_48;
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

      if (v8 == 1)
      {
        break;
      }

      if (v8 != 2 || v9 != 1)
      {
        goto LABEL_24;
      }

      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      *(a1 + 24) = *v27;
      *(a1 + 48) |= 2u;
      v23 = *(this + 1);
      v12 = *(this + 2);
      if (v23 < v12 && *v23 == 24)
      {
        v13 = v23 + 1;
        *(this + 1) = v13;
        v27[0] = 0;
        if (v13 >= v12)
        {
          goto LABEL_43;
        }

LABEL_41:
        v24 = *v13;
        if ((v24 & 0x80000000) != 0)
        {
LABEL_43:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27);
          if (!result)
          {
            return result;
          }

          v24 = v27[0];
          v25 = *(this + 1);
          v12 = *(this + 2);
          goto LABEL_45;
        }

        v25 = v13 + 1;
        *(this + 1) = v25;
LABEL_45:
        *(a1 + 40) = v24 != 0;
        *(a1 + 48) |= 4u;
        if (v25 < v12 && *v25 == 33)
        {
          *(this + 1) = v25 + 1;
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
          {
            return 0;
          }

LABEL_48:
          *(a1 + 32) = *v27;
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
    }

    if (v9 != 2)
    {
      goto LABEL_24;
    }

    *(a1 + 48) |= 1u;
    v10 = *(a1 + 16);
    if (!v10)
    {
      operator new();
    }

    v27[0] = 0;
    v11 = *(this + 1);
    if (v11 >= *(this + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27))
      {
        return 0;
      }
    }

    else
    {
      v27[0] = *v11;
      *(this + 1) = v11 + 1;
    }

    v14 = *(this + 14);
    v15 = *(this + 15);
    *(this + 14) = v14 + 1;
    if (v14 >= v15)
    {
      return 0;
    }

    v16 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27[0]);
    if (!sub_1002EB94C(v10, this, v17, v18) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v16);
    v19 = *(this + 14);
    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v21 < 0 == v20)
    {
      *(this + 14) = v21;
    }

    v22 = *(this + 1);
    if (v22 < *(this + 2) && *v22 == 17)
    {
      *(this + 1) = v22 + 1;
      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v27) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_38;
    }
  }
}

uint64_t sub_1002EC6A4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    v10 = *(result + 16);
    if (v10)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v10, a2, a4);
      v6 = *(v5 + 48);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(qword_100471CA8 + 16), a2, a4);
      v6 = *(v5 + 48);
      if ((v6 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
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
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 40), a2, a4);
  if ((*(v5 + 48) & 8) == 0)
  {
LABEL_5:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v11 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_14:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_1002EC7A0(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    goto LABEL_15;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *a2 = 10;
    v4 = a2 + 1;
    v5 = *(v3 + 32);
    if (v5 <= 0x7F)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = *(qword_100471CA8 + 16);
    *a2 = 10;
    v4 = a2 + 1;
    v5 = *(v3 + 32);
    if (v5 <= 0x7F)
    {
LABEL_4:
      a2[1] = v5;
      a2 += 2;
      v6 = *(v3 + 36);
      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v7 = a1;
  a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, v4, a3);
  a1 = v7;
  v6 = *(v3 + 36);
  if (v6)
  {
LABEL_8:
    v8 = *(v3 + 16);
    *a2 = 9;
    *(a2 + 1) = v8;
    a2 += 9;
    v6 = *(v3 + 36);
  }

LABEL_9:
  if ((v6 & 2) != 0)
  {
    v12 = *(v3 + 24);
    *a2 = 17;
    *(a2 + 1) = v12;
    a2 += 9;
    v13 = *(v3 + 8);
    v10 = (v3 + 8);
    v9 = v13;
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = *(v3 + 8);
    v10 = (v3 + 8);
    v9 = v11;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  if (*v9 != v9[1])
  {
    v14 = a1;
    a2 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
    a1 = v14;
  }

LABEL_15:
  v15 = *(a1 + 48);
  if ((v15 & 2) != 0)
  {
    v19 = *(a1 + 24);
    *a2 = 17;
    *(a2 + 1) = v19;
    a2 += 9;
    v15 = *(a1 + 48);
    if ((v15 & 4) == 0)
    {
LABEL_17:
      if ((v15 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v15 & 4) == 0)
  {
    goto LABEL_17;
  }

  v20 = *(a1 + 40);
  *a2 = 24;
  a2[1] = v20;
  a2 += 2;
  if ((*(a1 + 48) & 8) == 0)
  {
LABEL_18:
    v18 = *(a1 + 8);
    v16 = (a1 + 8);
    v17 = v18;
    if (!v18)
    {
      return a2;
    }

    goto LABEL_23;
  }

LABEL_22:
  v21 = *(a1 + 32);
  *a2 = 33;
  *(a2 + 1) = v21;
  a2 += 9;
  v22 = *(a1 + 8);
  v16 = (a1 + 8);
  v17 = v22;
  if (!v22)
  {
    return a2;
  }

LABEL_23:
  if (*v17 == v17[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, a2, a3);
}

uint64_t sub_1002ECA1C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    if (v3)
    {
      v9 = *(a1 + 16);
      if (!v9)
      {
        v9 = *(qword_100471CA8 + 16);
      }

      v10 = *(v9 + 36);
      v11 = (v10 << 31 >> 31) & 9;
      if ((v10 & 2) != 0)
      {
        v11 += 9;
      }

      if (*(v9 + 36))
      {
        LODWORD(v12) = v11;
      }

      else
      {
        LODWORD(v12) = 0;
      }

      v13 = *(v9 + 8);
      if (!v13 || *v13 == v13[1])
      {
        *(v9 + 32) = v12;
        v14 = 1;
      }

      else
      {
        v12 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v9 + 8), a2) + v12);
        *(v9 + 32) = v12;
        if (v12 >= 0x80)
        {
          v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
        }

        else
        {
          v14 = 1;
        }
      }

      v4 = v12 + v14 + 1;
      v3 = *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    v15 = v4 + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v5 = v15 + 9;
    }

    else
    {
      v5 = v15;
    }

    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 8);
    v7 = *(a1 + 8);
    if (!v7)
    {
LABEL_5:
      *(a1 + 44) = v5;
      return v5;
    }
  }

  if (*v7 == v7[1])
  {
    goto LABEL_5;
  }

  v16 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v6, a2) + v5;
  *(a1 + 44) = v16;
  return v16;
}

uint64_t sub_1002ECB5C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002EBEEC(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002ECC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002ECC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002ECC64(uint64_t result, uint64_t a2)
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

uint64_t sub_1002ECCF0(uint64_t a1)
{
  if ((~*(a1 + 48) & 0xF) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return (*(**(qword_100471CA8 + 16) + 40))();
  }
}

uint64_t sub_1002ECD64()
{
  v0 = qword_10045D470;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002EA57C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D450;
}

void sub_1002ECDF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002ECE08(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  else
  {
    LOBYTE(v4) = *(a2 + 36);
    if (!v4)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v6 = *(a2 + 20);
    *(a1 + 36) |= 2u;
    *(a1 + 20) = v6;
    if ((*(a2 + 36) & 4) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_11;
  }

  v5 = *(a2 + 16);
  *(a1 + 36) |= 1u;
  *(a1 + 16) = v5;
  v4 = *(a2 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v4 & 4) == 0)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

LABEL_11:
  *(a1 + 36) |= 4u;
  v7 = *(a1 + 24);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 24);
  if (!v8)
  {
    v8 = *(qword_100471CB0 + 24);
  }

  sub_1002EBEEC(v7, v8);
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1002ECF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002ECFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002ECFBC(void *a1)
{
  *a1 = off_100447ED8;
  if (qword_100471CB0 != a1)
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

void sub_1002ED050(void *a1)
{
  *a1 = off_100447ED8;
  if (qword_100471CB0 != a1)
  {
    v2 = a1[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_1002ED100(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_100471CB0;
  if (!qword_100471CB0)
  {
    sub_1002EA8A0(0, a2, a3, a4);
    return qword_100471CB0;
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002ED1C8(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (v1)
  {
    *(a1 + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        if (*(v2 + 48))
        {
          if (*(v2 + 48))
          {
            v3 = *(v2 + 16);
            if (v3)
            {
              if (*(v3 + 36))
              {
                *(v3 + 16) = 0;
                *(v3 + 24) = 0;
              }

              v5 = *(v3 + 8);
              v4 = (v3 + 8);
              *(v4 + 7) = 0;
              if (v5)
              {
                v6 = a1;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v4);
                a1 = v6;
              }
            }
          }

          *(v2 + 24) = 0;
          *(v2 + 32) = 0;
          *(v2 + 40) = 0;
        }

        v8 = *(v2 + 8);
        v7 = (v2 + 8);
        *(v7 + 10) = 0;
        if (v8)
        {
          v9 = a1;
          wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v7);
          a1 = v9;
        }
      }
    }
  }

  v11 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 7) = 0;
  if (v11)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1002ED284(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    do
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
            if (TagFallback >> 3 != 3)
            {
              break;
            }

            if (v9 == 2)
            {
              *(a1 + 36) |= 4u;
              v15 = *(a1 + 24);
              if (!v15)
              {
                goto LABEL_34;
              }

              goto LABEL_35;
            }

LABEL_18:
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

          if (v8 != 1 || (TagFallback & 7) != 0)
          {
            goto LABEL_18;
          }

          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v13 = *(this + 1);
            v10 = *(this + 2);
            *(a1 + 36) |= 1u;
            if (v13 < v10)
            {
              goto LABEL_25;
            }
          }

          else
          {
            *(a1 + 16) = v12;
            v13 = v11 + 1;
            *(this + 1) = v13;
            *(a1 + 36) |= 1u;
            if (v13 < v10)
            {
LABEL_25:
              if (*v13 == 16)
              {
                v14 = v13 + 1;
                *(this + 1) = v14;
                if (v14 >= v10)
                {
                  goto LABEL_30;
                }

LABEL_27:
                v17 = *v14;
                if (v17 < 0)
                {
                  goto LABEL_30;
                }

                *(a1 + 20) = v17;
                v18 = v14 + 1;
                *(this + 1) = v18;
                v19 = *(a1 + 36) | 2;
                *(a1 + 36) = v19;
                if (v18 < v10)
                {
                  goto LABEL_32;
                }
              }
            }
          }
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        if (v14 < v10)
        {
          goto LABEL_27;
        }

LABEL_30:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v18 = *(this + 1);
        v20 = *(this + 2);
        v19 = *(a1 + 36) | 2;
        *(a1 + 36) = v19;
      }

      while (v18 >= v20);
LABEL_32:
      ;
    }

    while (*v18 != 26);
    *(this + 1) = v18 + 1;
    *(a1 + 36) = v19 | 4;
    v15 = *(a1 + 24);
    if (!v15)
    {
LABEL_34:
      operator new();
    }

LABEL_35:
    v30 = 0;
    v21 = *(this + 1);
    if (v21 >= *(this + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
      {
        return 0;
      }
    }

    else
    {
      v30 = *v21;
      *(this + 1) = v21 + 1;
    }

    v22 = *(this + 14);
    v23 = *(this + 15);
    *(this + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v30);
    if (!sub_1002EC30C(v15, this, v25, v26) || *(this + 36) != 1)
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

uint64_t sub_1002ED5D0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 20), a2, a4);
  if ((*(v5 + 36) & 4) == 0)
  {
LABEL_4:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_8:
  v10 = *(v5 + 24);
  if (v10)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, v10, a2, a4);
    v11 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v11;
    if (!v11)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(qword_100471CB0 + 24), a2, a4);
    v12 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v12;
    if (!v12)
    {
      return result;
    }
  }

LABEL_12:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1002ED6B0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if ((*(this + 36) & 1) == 0)
  {
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = *(this + 5);
    *v3 = 16;
    if (v10 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v3 + 1, a3);
      if ((*(this + 36) & 4) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(v3 + 1) = v10;
      v3 = (v3 + 2);
      if ((*(this + 36) & 4) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_4:
    v7 = *(this + 1);
    v6 = (this + 8);
    v5 = v7;
    if (!v7)
    {
      return v3;
    }

    goto LABEL_20;
  }

  v8 = *(this + 4);
  *a2 = 8;
  v9 = a2 + 1;
  if (v8 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v9, a3);
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(v3 + 1) = v8;
    v3 = (v3 + 2);
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_3:
  if ((*(this + 36) & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v11 = *(this + 3);
  if (v11)
  {
    *v3 = 26;
    v12 = v3 + 1;
    v13 = *(v11 + 44);
    if (v13 <= 0x7F)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = *(qword_100471CB0 + 24);
    *v3 = 26;
    v12 = v3 + 1;
    v13 = *(v11 + 44);
    if (v13 <= 0x7F)
    {
LABEL_16:
      *(v3 + 1) = v13;
      v3 = sub_1002EC7A0(v11, v3 + 2, a3);
      v14 = *(this + 1);
      v6 = (this + 8);
      v5 = v14;
      if (!v14)
      {
        return v3;
      }

      goto LABEL_20;
    }
  }

  v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v12, a3);
  v3 = sub_1002EC7A0(v11, v15, v16);
  v17 = *(this + 1);
  v6 = (this + 8);
  v5 = v17;
  if (!v17)
  {
    return v3;
  }

LABEL_20:
  if (*v5 == v5[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v6, v3, a3);
}

uint64_t sub_1002ED824(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if (*(a1 + 36))
  {
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v8 = *(a1 + 20);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    v3 = *(a1 + 36);
  }

  else
  {
    v9 = 2;
  }

  v4 = (v9 + v4);
LABEL_15:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = sub_1002ECA1C(v11, a2);
      if (v12 < 0x80)
      {
LABEL_20:
        v13 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v12 = sub_1002ECA1C(*(qword_100471CB0 + 24), a2);
      if (v12 < 0x80)
      {
        goto LABEL_20;
      }
    }

    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
LABEL_23:
    v4 = (v4 + v12 + v13 + 1);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_17:
    *(a1 + 32) = v4;
    return v4;
  }

LABEL_24:
  if (*v6 == v6[1])
  {
    goto LABEL_17;
  }

  v14 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2) + v4;
  *(a1 + 32) = v14;
  return v14;
}

uint64_t sub_1002ED964(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_1002ECE08(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_1002EDA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1002EDA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002EDA6C(uint64_t result, uint64_t a2)
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

uint64_t sub_1002EDAF8(uint64_t a1)
{
  if ((~*(a1 + 36) & 7) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return (*(**(qword_100471CB0 + 24) + 40))();
  }
}

uint64_t sub_1002EDB6C()
{
  v0 = qword_10045D470;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_1002EA57C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D460;
}

void sub_1002EDBFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_1002EDCF4(_Unwind_Exception *a1)
{
  sub_1002EE65C(v2, *(v1 + 40));
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1002EDD38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100447FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002EDDB4(uint64_t a1)
{
  *a1 = off_100448038;
  sub_1002EE65C(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_1002EDE00(uint64_t a1)
{
  *a1 = off_100448038;
  sub_1002EE65C(a1 + 8, *(a1 + 16));

  operator delete();
}

uint64_t sub_1002EDE6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (a1 + 16);
  v3 = 1;
  if (v1 != (a1 + 16))
  {
    do
    {
      v5 = (*(*v1[5] + 16))(v1[5]);
      v6 = v1[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v3 = v3 & v5;
      v1 = v7;
    }

    while (v7 != v2);
  }

  return v3;
}

uint64_t sub_1002EDF10(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = (result + 16);
  if (v2 != (result + 16))
  {
    do
    {
      result = (*(*v2[5] + 24))(v2[5], a2);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t sub_1002EDFB4(uint64_t result, float a2)
{
  v2 = *(result + 8);
  v3 = (result + 16);
  if (v2 != (result + 16))
  {
    do
    {
      result = (*(*v2[5] + 32))(v2[5], a2);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

WifiScannerSettings *sub_1002EE058(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSMutableArray arrayWithCapacity:a1[3]];
  v7 = a1[1];
  v8 = a1 + 2;
  if (v7 == a1 + 2)
  {
    v9 = 0;
    v11 = 0.0;
    v10 = 1;
  }

  else
  {
    v9 = 0;
    LODWORD(v10) = 1;
    v11 = 0.0;
    do
    {
      v12 = (*(*v7[5] + 40))(v7[5], a2, v5);
      v13 = [v12 channels];
      [v6 addObjectsFromArray:v13];

      [v12 dutyCycle];
      if (v14 > v11)
      {
        [v12 dutyCycle];
        v11 = v15;
      }

      if (v9 < [v12 dwell])
      {
        v9 = [v12 dwell];
      }

      v16 = [v12 lowPriorityScan];

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v19 = *v18 == v7;
          v7 = v18;
        }

        while (!v19);
      }

      v10 = v16 & v10;
      v7 = v18;
    }

    while (v18 != v8);
  }

  v20 = [WifiScannerSettings alloc];
  *&v21 = v11;
  v22 = [(WifiScannerSettings *)v20 initWithChannels:v6 dwell:v9 scanType:2 includingOffChannelResults:0 atDutyCycle:v10 asLowPriority:v21];

  return v22;
}

void sub_1002EE2A0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_18;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = a1 + 1;
  *(v7 + 16) = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v27 = v10[1];
        if (!v27)
        {
          break;
        }

        do
        {
          v10 = v27;
          v27 = *v27;
        }

        while (v27);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      *(v9 + 32) = *(v14 + 32);
      v16 = v14[5];
      v15 = v14[6];
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v9[6];
      v9[5] = v16;
      v9[6] = v15;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v21 = v9;
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        v9 = v21;
        v18 = *v8;
        v19 = (v5 + 8);
        v20 = (v5 + 8);
        if (*v8)
        {
LABEL_27:
          if (v9[4])
          {
            do
            {
              v19 = v18;
              v18 = v18[1];
            }

            while (v18);
LABEL_29:
            v20 = v19 + 1;
          }

          else
          {
            do
            {
              while (1)
              {
                v19 = v18;
                if (*(v18 + 32) == 1)
                {
                  break;
                }

                v18 = v18[1];
                if (!v18)
                {
                  goto LABEL_29;
                }
              }

              v18 = *v18;
              v20 = v19;
            }

            while (*v19);
          }
        }
      }

      else
      {
        v18 = *v8;
        v19 = (v5 + 8);
        v20 = (v5 + 8);
        if (*v8)
        {
          goto LABEL_27;
        }
      }

      *v9 = 0;
      v9[1] = 0;
      v9[2] = v19;
      *v20 = v9;
      v22 = **v5;
      if (v22)
      {
        *v5 = v22;
      }

      sub_10002764C(*(v5 + 8), v9);
      ++*(v5 + 16);
      if (v12)
      {
        v10 = v12[2];
        if (v10)
        {
          v25 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v26 = v10[1];
              if (!v26)
              {
                break;
              }

              do
              {
                v10 = v26;
                v26 = *v26;
              }

              while (v26);
            }
          }

          else
          {
            for (v10[1] = 0; v25; v25 = v10[1])
            {
              do
              {
                v10 = v25;
                v25 = *v25;
              }

              while (v25);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v23 = v14[1];
      if (v23)
      {
        do
        {
          a2 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          a2 = v14[2];
          v24 = *a2 == v14;
          v14 = a2;
        }

        while (!v24);
      }

      if (v12)
      {
        v9 = v12;
        v14 = a2;
        if (a2 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  v12 = v9;
LABEL_13:
  sub_1002EE65C(v5, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v5;
    v9 = v10;
LABEL_17:
    sub_1002EE65C(a1, v9);
  }

LABEL_18:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_1002EE65C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002EE65C(a1, *a2);
    sub_1002EE65C(a1, a2[1]);
    v4 = a2[6];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void sub_1002EE718()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002EE788()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002EE7F8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002EE840(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004480A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1002EE894(void *a1)
{
  *a1 = off_1004480F0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  operator delete();
}

WifiScannerSettings *sub_1002EE940(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v5 == v6)
  {
    v10 = *(a1 + 72);
    if (v10 == *(a1 + 32))
    {
      v10 = *(a1 + 24);
    }

    v7 = *v10;
    *(a1 + 72) = v10 + 1;
    v11 = atomic_load((a1 + 16));
    v8 = *&v11;
    v9 = *(a1 + 8);
  }

  else
  {
    v7 = *(v6 - 4);
    *(a1 + 56) = v6 - 4;
    v8 = 0.5;
    v9 = 110;
  }

  v12 = [WifiScannerSettings alloc];
  v13 = [NSNumber numberWithInt:v7];
  v19 = v13;
  v14 = [NSArray arrayWithObjects:&v19 count:1];
  if (v5 == v6)
  {
    v16 = atomic_load((a1 + 80));
  }

  else
  {
    v16 = 1;
  }

  *&v15 = v8;
  v17 = [(WifiScannerSettings *)v12 initWithChannels:v14 dwell:v9 scanType:2 includingOffChannelResults:0 atDutyCycle:v16 & 1 asLowPriority:v15];

  return v17;
}

void sub_1002EEAE0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002EEB50()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002EEBC0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002EF2A8(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1002EF2EC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002EF4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, objc_super a12)
{
  a12.super_class = WifiScannerThread;
  [(_Unwind_Exception *)&a12 dealloc];
  _Unwind_Resume(a1);
}

id sub_1002EF4F4()
{
  if (qword_10045B050 == -1)
  {
    v1 = qword_10045B058;
  }

  else
  {
    sub_100386CCC();
    v1 = qword_10045B058;
  }

  return v1;
}

intptr_t sub_1002EF914(uint64_t a1)
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      return dispatch_semaphore_signal(*(a1 + 32));
    }

    goto LABEL_3;
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Runloop has started, allowing init to continue", v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1002EFF18(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    if (qword_10045B050 == -1)
    {
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100386CCC();
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
LABEL_5:
        [*(a1 + 32) onQueueTeardown];
        if (qword_10045B050 == -1)
        {
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
LABEL_8:
            **(a1 + 40) = 1;
            return;
          }
        }

        else
        {
          sub_100386CE0();
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
          {
            goto LABEL_8;
          }
        }

        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Wi-Fi callbacks unregistered.", v5, 2u);
        goto LABEL_8;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Unregistering all Wi-Fi callbacks.", buf, 2u);
    goto LABEL_5;
  }

  if (qword_10045B050 == -1)
  {
    v4 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
LABEL_12:
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Wi-Fi thread already shut-down", v7, 2u);
    }
  }

  else
  {
    sub_100386CCC();
    v4 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }
  }
}

id sub_1002F00C4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void sub_1002F0550(uint64_t a1)
{
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100386CCC();
  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Freeing old WiFi manager", buf, 2u);
  }

LABEL_4:
  CFRelease(*(a1 + 40));
  if (qword_10045B050 != -1)
  {
    sub_100386CE0();
    v3 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_6:
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Stopping the WiFi runloop", v4, 2u);
  }

LABEL_7:
  [*(a1 + 32) setStopExpected];
  CFRunLoopStop(*(a1 + 48));
  CFRelease(*(a1 + 56));
}

void sub_1002F0890(uint64_t a1, void *a2)
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "wifid restarted. refcon %p", &buf, 0xCu);
  }

  v8 = a2;
  v4 = v8;
  v5 = v4;
  if (v4)
  {
    v6 = v4[3];
    if (v6)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3321888768;
      v10 = sub_1002F3E14;
      v11 = &unk_1004482B8;
      v12 = v4;
      v13 = &v8;
      v7 = v6;
      dispatch_sync(v7, &buf);
    }
  }
}

void sub_1002F09F0(uint64_t a1, void *a2, void *a3)
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "wifi device attached. refcon %p", &buf, 0xCu);
  }

  v10[0] = a3;
  v10[1] = a2;
  v6 = v10[0];
  v7 = v6;
  if (v6)
  {
    v8 = v6[3];
    if (v8)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3321888768;
      v12 = sub_1002F3EB0;
      v13 = &unk_1004482E8;
      v14 = v6;
      v15 = v10;
      v9 = v8;
      dispatch_sync(v9, &buf);
    }
  }
}

void *sub_1002F0DDC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_1002F1060(uint64_t a1, int a2)
{
  if (*(a1 + 8))
  {
    *(a1 + 64) = a2;
    v4 = *(a1 + 56) - std::chrono::steady_clock::now().__d_.__rep_;
    v5 = [*(a1 + 24) estimatedScanTime];
    v6 = (v4 + 1000000 * v5) & ~((v4 + 1000000 * v5) >> 63);
    if (a2 == 82)
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CCC();
      }

      v7 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      *v19 = 134217984;
      *&v19[4] = v6 / 0xF4240;
      v8 = "Wifi is powered off - cancellation will be handled in %lld ms";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 12;
    }

    else
    {
      if (qword_10045B050 != -1)
      {
        sub_100386CCC();
      }

      v13 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *v19 = 67109376;
      *&v19[4] = a2;
      *&v19[8] = 2048;
      *&v19[10] = v6 / 0xF4240;
      v8 = "Cancelling pending scan due to wifi error %d.  Cancellation will be handled in %lld ms";
      v9 = v13;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 18;
    }

    _os_log_impl(&_mh_execute_header, v9, v10, v8, v19, v11);
LABEL_16:
    v14 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    v16 = (a1 + 40);
    v15 = *(a1 + 40);
    *v19 = _NSConcreteStackBlock;
    *&v19[8] = 3321888768;
    *&v19[16] = sub_1002F3F4C;
    v20 = &unk_100448318;
    v21 = a1;
    v17 = objc_retainBlock(v19);
    dispatch_source_set_event_handler(v15, v17);

    v18 = dispatch_time(0, v6);
    dispatch_source_set_timer(*v16, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
    return;
  }

  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v12 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    *v19 = 67109120;
    *&v19[4] = a2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Ignoring request to invalidate scan with error: %d. Already invalidated", v19, 8u);
  }
}

void sub_1002F12F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002F1598(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        v7 = *(a1 + 32);
        WiFiDeviceClientRegisterScanUpdateCallback();
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

id sub_1002F16CC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_1002F179C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(v1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        WiFiDeviceClientRegisterScanUpdateCallback();
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

id sub_1002F18C0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

id sub_1002F19F0(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 112));
  v3 = v1;
  if (v1)
  {
    sub_1000474A4(v5, "");
    sub_1001F2AF4("Only 1 scan allowed at a time: ", &v7);
    sub_100181374(&v3, &v8);
    sub_1000E661C(v5, &v7, 2);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v5[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v7.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  return [*(a1 + 32) onQueueInitiateScan:*(a1 + 40) initiated:{*(a1 + 48), 0}];
}

void sub_1002F1B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_1002F1B6C(void *a1, id *a2)
{
  a1[4] = a2[4];
  a1[5] = a2[5];
  result = objc_retainBlock(a2[6]);
  a1[6] = result;
  return result;
}

void sub_1002F1BB4(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_1002F1EA8(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000D2D54((v13 + 32));
  sub_1002F4E7C(va);

  _Unwind_Resume(a1);
}

void sub_1002F1EE8(uint64_t a1, unint64_t a2)
{
  v4 = [*(*(a1 + 32) + 48) objectAtIndexedSubscript:a2];

  v5 = objc_autoreleasePoolPush();
  os_activity_scope_enter(*(a1 + 40), &state);
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 initiateScanOnDevice:v4 withSettings:*(a1 + 48) deviceNumber:a2];
    v7 = **(a1 + 56);
    if (a2 < (*(*(a1 + 56) + 8) - v7) >> 3)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1000BFF58();
  }

  v9 = 0;
  v7 = **(a1 + 56);
  if (a2 >= (*(*(a1 + 56) + 8) - v7) >> 3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v8 = *(v7 + 8 * a2);
  *(v7 + 8 * a2) = v9;
  if (v8)
  {
    sub_1002F42F8(v8);
    operator delete();
  }

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v5);
}

void sub_1002F1FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002F2C2C(va);
  _Unwind_Resume(a1);
}

id sub_1002F2010(void *a1, uint64_t a2)
{
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  result = *(a2 + 48);
  v5 = *(a2 + 56);
  a1[6] = result;
  a1[7] = v5;
  return result;
}

void sub_1002F205C(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_1002F27EC(uint64_t a1, CFTypeRef cf, int a3, id *a4)
{
  if (!cf)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v5 = a1;
  v6 = a3;
  v7 = a4;
  v8 = CFGetTypeID(cf);
  if (v8 == CFArrayGetTypeID())
  {
    a4 = v7;
    a3 = v6;
    a1 = v5;
    v9 = cf;
LABEL_5:

    sub_1002F45D4(a1, v9, a3, a4);
    return;
  }

  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v10 = qword_10045B058;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = CFGetTypeID(cf);
    v12 = CFCopyTypeIDDescription(v11);
    v13 = 136315138;
    CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "We expect that networkScan is of type CFArray, but it's not. Memory smasher? Got %s", &v13, 0xCu);
  }
}

void sub_1002F2980(uint64_t a1, CFTypeRef cf, int a3, id *a4)
{
  if (cf)
  {
    v5 = a1;
    v6 = a4;
    v7 = a3;
    v8 = CFGetTypeID(cf);
    TypeID = CFArrayGetTypeID();
    a3 = v7;
    a4 = v6;
    v10 = TypeID;
    a1 = v5;
    if (v8 != v10)
    {
      v11 = sub_1002EF4F4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = CFGetTypeID(cf);
        v13 = CFCopyTypeIDDescription(v12);
        *buf = 68289795;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2082;
        CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
        v28 = 2082;
        v29 = "assert";
        v30 = 2081;
        v31 = "networkScan == __null || CFGetTypeID(networkScan) == CFArrayGetTypeID()";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:We expect that networkScan is of type CFArray, but it's not. Memory smasher?, networkScanType:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v14 = sub_1002EF4F4();
      if (os_signpost_enabled(v14))
      {
        v15 = CFGetTypeID(cf);
        v16 = CFCopyTypeIDDescription(v15);
        v17 = CFStringGetCStringPtr(v16, 0x8000100u);
        *buf = 68289795;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2082;
        CStringPtr = v17;
        v28 = 2082;
        v29 = "assert";
        v30 = 2081;
        v31 = "networkScan == __null || CFGetTypeID(networkScan) == CFArrayGetTypeID()";
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "We expect that networkScan is of type CFArray, but it's not. Memory smasher?", "{msg%{public}.0s:We expect that networkScan is of type CFArray, but it's not. Memory smasher?, networkScanType:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v18 = sub_1002EF4F4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = CFGetTypeID(cf);
        v20 = CFCopyTypeIDDescription(v19);
        v21 = CFStringGetCStringPtr(v20, 0x8000100u);
        sub_100386FC8(v21, buf, v18);
      }

      abort_report_np();
      __break(1u);
    }
  }

  sub_1002F45D4(a1, cf, a3, a4);
}

id **sub_1002F2C2C(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1002F42F8(v2);
    operator delete();
  }

  return a1;
}

void sub_1002F3A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002F3DD0(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1002F3E14(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = objc_autoreleasePoolPush();
    [**(a1 + 40) onQueueHandlerServerRestart];

    objc_autoreleasePoolPop(v2);
  }
}

id sub_1002F3E74(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

void sub_1002F3EB0(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = objc_autoreleasePoolPush();
    [**(a1 + 40) onQueueHandleDeviceAttached:*(*(a1 + 40) + 8)];

    objc_autoreleasePoolPop(v2);
  }
}

id sub_1002F3F10(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1002F3F4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  return (*(*(v1 + 48) + 16))();
}

void sub_1002F3F78(uint64_t a1, uint64_t a2, CFTypeRef cf, int a4, void *a5)
{
  if (cf && (v10 = CFGetTypeID(cf), v10 != CFArrayGetTypeID()))
  {
    v13 = CFGetTypeID(cf);
    v14 = CFCopyTypeIDDescription(v13);
    if (qword_10045B050 != -1)
    {
      sub_100386CCC();
    }

    v15 = qword_10045B058;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = CFStringGetCStringPtr(v14, 0x8000100u);
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "We expect that networkScanResults is of type CFArray, but it's not. Memory smasher? Got %s", buf, 0xCu);
    }

    CFRelease(v14);
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100386CCC();
    }

    v11 = qword_10045B058;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (cf)
      {
        Count = CFArrayGetCount(cf);
      }

      else
      {
        Count = -1;
      }

      *buf = 134218496;
      *&buf[4] = Count;
      *&buf[12] = 1024;
      *&buf[14] = a4;
      *&buf[18] = 2048;
      *&buf[20] = a5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Got cached scan from framework: %ld APs, errcode %d, refcon %p", buf, 0x1Cu);
    }

    v20 = a1;
    v21 = a5;
    v22 = a2;
    v23 = cf;
    v24 = a4;
    v16 = v21;
    v17 = v16;
    if (v16)
    {
      v18 = v16[3];
      if (v18)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3321888768;
        *&buf[16] = sub_1002F420C;
        *&buf[24] = &unk_100448348;
        v26 = v16;
        v27 = &v20;
        v19 = v18;
        dispatch_sync(v19, buf);
      }
    }
  }
}

void sub_1002F420C(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = [WifiScannerCommonDarwin dictionaryToScanSettings:*(v3 + 16)];
    [*(v3 + 8) onQueueHandleScanFor:*v3 withResults:*(v3 + 24) forScan:0 withSettings:v4 withRequest:*(v3 + 16) withError:*(v3 + 32)];

    objc_autoreleasePoolPop(v2);
  }
}

id sub_1002F42BC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

id *sub_1002F42F8(id *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(a1[5], &stru_100448378);
    dispatch_source_cancel(a1[5]);
    v3 = a1[5];
  }

  else
  {
    v3 = 0;
  }

  objc_destroyWeak(a1 + 2);
  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
    v5 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      return a1;
    }

    goto LABEL_8;
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_8:
    v6 = *a1;
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Pending scan information destroyed: %p", &v8, 0xCu);
  }

  return a1;
}

void sub_1002F4440(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10000D388(a1);
}

dispatch_source_t *sub_1002F444C(dispatch_source_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(*a1, &stru_100448378);
    dispatch_source_cancel(*a1);
  }

  else
  {
  }

  return a1;
}

const void **sub_1002F44C4(const void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_1002F44FC(uint64_t *a1)
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      return a1;
    }

    goto LABEL_3;
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    v3 = *a1;
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Pending scan information destroyed: %p", &v5, 0xCu);
  }

  return a1;
}

void sub_1002F45D4(uint64_t a1, const __CFArray *a2, int a3, id *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      Count = CFArrayGetCount(a2);
    }

    else
    {
      Count = -1;
    }

    *buf = 134218496;
    *&buf[4] = Count;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 2048;
    *&buf[20] = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got scan result from framework: %ld APs, errcode %d, refcon %p", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(a4 + 2);
  v12 = a4[3];
  v13 = a4[4];
  if (!v12)
  {
    sub_1000474A4(block, "");
    sub_10017ED90("Lost track of wifi settings for request", buf);
    sub_1000E661C(block, buf, 1);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(block[0]);
    }

    sub_10003F5D0(__p);
  }

  if (!v13)
  {
    sub_1000474A4(block, "");
    sub_10017ED90("Lost track of wifi settings for request", buf);
    sub_1000E661C(block, buf, 1);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(block[0]);
    }

    sub_10003F5D0(__p);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = v16;
  v29 = [v16 UTF8String];
  if ((isKindOfClass & 1) == 0)
  {
    sub_1000474A4(block, "");
    sub_1002F4BD4("We expect that settingsDictionary is of type NSDictionary, but it's not. Memory smasher? Got ", buf);
    sub_1002C60F8(&v29, &buf[24]);
    sub_1000E661C(block, buf, 2);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(*&buf[24]);
      if ((buf[23] & 0x80000000) == 0)
      {
LABEL_28:
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

LABEL_36:
        operator delete(block[0]);
LABEL_29:
        sub_10003F5D0(__p);
      }
    }

    else if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    operator delete(*buf);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = v20;
  v29 = [v20 UTF8String];
  if ((v18 & 1) == 0)
  {
    sub_1000474A4(block, "");
    sub_1001E926C("We expect that settings is of type WifiScannerSettings, but it's not. Memory smasher? Got ", buf);
    sub_1002C60F8(&v29, &buf[24]);
    sub_1000E661C(block, buf, 2);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(*&buf[24]);
      if ((buf[23] & 0x80000000) == 0)
      {
LABEL_32:
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

LABEL_39:
        operator delete(block[0]);
LABEL_33:
        sub_10003F5D0(__p);
      }
    }

    else if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    operator delete(*buf);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  v22 = WeakRetained;
  *buf = v22;
  *&buf[8] = a1;
  *&buf[16] = a4;
  v23 = v12;
  *&buf[24] = v23;
  v24 = v13;
  v37 = v24;
  v38 = a2;
  v39 = a3;
  v25 = v22;
  v26 = v25;
  if (v25)
  {
    v27 = v25[3];
    if (v27)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      v32 = sub_1002F4C24;
      v33 = &unk_100448398;
      v34 = v25;
      v35 = buf;
      v28 = v27;
      dispatch_sync(v28, block);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_1002F4ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *sub_1002F4BD4@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002F4C08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F4C24(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    [*v3 onQueueHandleScanFor:*(v3 + 8) withResults:*(v3 + 40) forScan:*(v3 + 16) withSettings:*(v3 + 24) withRequest:*(v3 + 32) withError:*(v3 + 48)];

    objc_autoreleasePoolPop(v2);
  }
}

id sub_1002F4C90(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1002F4CCC(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_10000FC84();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = 8 * v3 - (v10 - *a1);
  *(8 * v3) = v8;
  v12 = v10 - v9;
  if (v10 != v9)
  {
    v13 = v12 - 8;
    v14 = v9;
    v15 = v11;
    if ((v12 - 8) < 0x98)
    {
      goto LABEL_30;
    }

    v16 = v9 >= v2 + (v13 & 0xFFFFFFFFFFFFFFF8) - v12 + 8 || v11 >= v9 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8;
    v14 = v9;
    v15 = v11;
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = v12 >> 3;
    v18 = (v13 >> 3) + 1;
    v19 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    v14 = &v9[v19];
    v15 = (v11 + v19 * 8);
    v20 = (-8 * v17 + 8 * v3 + 16);
    v21 = (v9 + 2);
    v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23 = *(v21 - 1);
      v24 = *v21;
      *(v21 - 1) = 0uLL;
      *v21 = 0uLL;
      *(v20 - 1) = v23;
      *v20 = v24;
      v20 += 2;
      v21 += 2;
      v22 -= 4;
    }

    while (v22);
    if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      do
      {
        v25 = *v14;
        *v14++ = 0;
        *v15++ = v25;
      }

      while (v14 != v10);
    }

    do
    {
      v26 = *v9++;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = 8 * v3 + 8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 8 * v3 + 8;
}

void *sub_1002F4E7C(void *a1)
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
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          sub_1002F42F8(v5);
          operator delete();
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

void sub_1002F4F04(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_10000FC84();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1002F5058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_1002F5150(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100387050(v1);
  __cxa_rethrow();
}

void sub_1002F5178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010C670();
  v8.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v9 = *(a2 + 56);
  v10 = v7 - v8.__d_.__rep_;
  WeakRetained = objc_loadWeakRetained((a2 + 16));
  [WeakRetained onQueueScanTimedOut:a2 withReason:a3 errorCode:a4 forScanInitiated:v10 + v9];
}

id *sub_1002F5218(id *a1, const void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  *a1 = a1;
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v15 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    v16 = *a1;
    LODWORD(v22) = 134217984;
    *(&v22 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Pending scan information created: %p", &v22, 0xCu);
  }

  a1[1] = CFRetain(a2);
  objc_initWeak(a1 + 2, v11);
  a1[3] = [v12 copy];
  a1[4] = v13;
  a1[5] = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11[3]);
  a1[6] = [v14 copy];
  v17.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v18 = a1[5];
  a1[7] = v17.__d_.__rep_;
  *(a1 + 16) = 0;
  *&v22 = _NSConcreteStackBlock;
  *(&v22 + 1) = 3321888768;
  v23 = sub_1002F549C;
  v24 = &unk_1004483F8;
  rep = v17.__d_.__rep_;
  v19 = objc_retainBlock(&v22);
  dispatch_source_set_event_handler(v18, v19);

  v20 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(a1[5], v20, 0x6FC23AC00uLL, 0);
  dispatch_resume(a1[5]);

  return a1;
}

void sub_1002F5434(_Unwind_Exception *a1)
{
  sub_1002F444C(v5);

  objc_destroyWeak((v2 + 16));
  sub_1002F44C4((v2 + 8));
  sub_1002F44FC(v2);

  _Unwind_Resume(a1);
}

void sub_1002F54A4(void *a1)
{
  if (qword_10045B050 != -1)
  {
    sub_100386CCC();
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    v4 = (std::chrono::steady_clock::now().__d_.__rep_ - *a1) / 1000000000;
    v5 = 134218240;
    v6 = 30;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Timeout from Wi-Fi framework, shouldn't take longer than %lld seconds. Last scan was %lld seconds ago", &v5, 0x16u);
  }
}

std::string *sub_1002F55B0@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002F55E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1002F5600@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1002F5634(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F5650()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002F56C0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002F5730()
{
  v0 = objc_autoreleasePoolPush();
  qword_10045D480 = kWiFiDeviceScanRequestClientPid;
  qword_10045D488 = kWiFiDeviceScanRequestReceiptTimestamp;

  objc_autoreleasePoolPop(v0);
}

void sub_1002F5AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

WifiScanResult *__cdecl sub_1002F6580(id a1, id a2)
{
  v2 = a2;
  Property = WiFiNetworkGetProperty();
  v4 = WiFiNetworkGetProperty();
  v5 = WiFiNetworkGetProperty();
  v6 = WiFiNetworkGetProperty();
  v7 = WiFiNetworkGetProperty();
  v8 = WiFiNetworkGetProperty();
  IsAdHoc = WiFiNetworkIsAdHoc();
  IsCaptive = WiFiNetworkIsCaptive();
  v11 = WiFiNetworkGetProperty();
  LOBYTE(v15) = WiFiNetworkIsApplePersonalHotspot() != 0;
  BYTE1(v14) = IsCaptive != 0;
  LOBYTE(v14) = IsAdHoc != 0;
  v12 = [WifiScannerCommonDarwin scanResultWithAge:Property bssid:v4 ssid:v5 channel:v6 rssi:v7 flags:v8 adHoc:v14 captive:v11 mode:v15 personalHotspot:?];

  return v12;
}

void sub_1002F68BC(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1002F6900()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002F6970()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002F69E0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002F6B3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onQueueTick];
}

void sub_1002F6C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = DispatchMonotonicTimer;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_1002F6E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F7044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F7260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F74AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F751C(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

void sub_1002F7560()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002F75D0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1002F7640()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1002F7688(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004484E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F76DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[4];
      if (v6)
      {
        v2[5] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_1002F7748(uint64_t a1)
{
  sub_10000ACB4(a1);

  operator delete();
}

WifiScannerSettings *sub_1002F779C(uint64_t a1, uint64_t a2, void *a3)
{
  v287 = a3;
  v294 = a2;
  v296 = a1;
  if (a2 || [v287 count])
  {
    v293 = v287;
    *v301 = 0u;
    v302 = 0u;
    v303 = 0u;
    v304 = 0u;
    obj = *(a1 + 56);
    v5 = [obj countByEnumeratingWithState:v301 objects:v308 count:16];
    if (!v5)
    {
      goto LABEL_66;
    }

    v6 = (a1 + 16);
    v291 = *v302;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v302 != v291)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(v301[1] + i) intValue];
        v9 = sub_10000AA28(v8);
        v10 = *(a1 + 24);
        if (!v10)
        {
          goto LABEL_30;
        }

        v11 = vcnt_s8(v10);
        v11.i16[0] = vaddlv_u8(v11);
        if (v11.u32[0] > 1uLL)
        {
          v12 = v9;
          if (v10 <= v9)
          {
            v12 = v9 % v10;
          }
        }

        else
        {
          v12 = (v10 - 1) & v9;
        }

        v13 = *(*v6 + 8 * v12);
        if (!v13 || (v14 = *v13) == 0)
        {
LABEL_30:
          operator new();
        }

        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v16 = v14[1];
            if (v16 == v9)
            {
              if (*(v14 + 4) == v9)
              {
                goto LABEL_31;
              }
            }

            else if ((v16 & (v10 - 1)) != v12)
            {
              goto LABEL_30;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_30;
            }
          }
        }

        while (1)
        {
          v15 = v14[1];
          if (v15 == v9)
          {
            break;
          }

          if (v15 >= v10)
          {
            v15 %= v10;
          }

          if (v15 != v12)
          {
            goto LABEL_30;
          }

LABEL_20:
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_30;
          }
        }

        if (*(v14 + 4) != v9)
        {
          goto LABEL_20;
        }

LABEL_31:
        v299 = 0u;
        v300 = 0u;
        *v297 = 0u;
        v298 = 0u;
        v17 = v293;
        v18 = 0;
        v19 = [v17 countByEnumeratingWithState:v297 objects:__p count:16];
        if (v19)
        {
          v20 = *v298;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v298 != v20)
              {
                objc_enumerationMutation(v17);
              }

              if ([*(v297[1] + j) channel] == v8)
              {
                ++v18;
              }
            }

            v19 = [v17 countByEnumeratingWithState:v297 objects:__p count:16];
          }

          while (v19);
        }

        v23 = v14[5];
        v22 = v14[6];
        if (v23 < v22)
        {
          *v23 = v294;
          *(v23 + 8) = v18;
          v24 = v23 + 16;
          goto LABEL_53;
        }

        v25 = v14[4];
        v26 = v23 - v25;
        v27 = (v23 - v25) >> 4;
        v28 = v27 + 1;
        if ((v27 + 1) >> 60)
        {
LABEL_419:
          sub_10000FC84();
        }

        v29 = v22 - v25;
        if (v29 >> 3 > v28)
        {
          v28 = v29 >> 3;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF0)
        {
          v30 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          if (!(v30 >> 60))
          {
            operator new();
          }

          sub_10000D444();
        }

        v31 = 16 * v27;
        *v31 = v294;
        *(v31 + 8) = v18;
        v24 = 16 * v27 + 16;
        memcpy(0, v25, v26);
        v14[4] = 0;
        v14[5] = v24;
        v14[6] = 0;
        if (v25)
        {
          operator delete(v25);
        }

LABEL_53:
        a1 = v296;
        v14[5] = v24;
        v32 = v14[4];
        if (v24 - v32 == 16)
        {
          *(v14 + 14) = 1;
        }

        else if (v24 != v32)
        {
          v33 = 0;
          v34 = ((v24 - v32) >> 4) - 1;
          if ((v24 - v32) >> 4 != 1)
          {
            v35 = *(v32 + 16 * v34);
            v36 = v14[3];
            v37 = v14[4];
            while (1)
            {
              v38 = *v37;
              v37 += 2;
              if (v36 >= v35 - v38)
              {
                break;
              }

              ++v33;
              *(v14 + 14) = 2;
              if (v34 == v33)
              {
                goto LABEL_61;
              }
            }
          }

          if (v33 == v34)
          {
LABEL_61:
            *(v14 + 14) = 1;
            v33 = ((v24 - v32) >> 4) - 1;
          }

          if (v33)
          {
            if ((v33 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_419;
          }
        }

        v14[8] = v294;
      }

      v5 = [obj countByEnumeratingWithState:v301 objects:v308 count:16];
      if (!v5)
      {
LABEL_66:

        a1 = v296;
        break;
      }
    }
  }

  if (*(a1 + 8))
  {
    v39 = [WifiScannerSettings alloc];
    v40 = v296;
    v41 = *(v296 + 128);
    *v308 = 0u;
    *v309 = 0u;
    v310 = 1065353216;
    v311 = v41;
    v42 = *(v296 + 8);
    if (!v42)
    {
      sub_1000474A4(v301, "");
      sub_1001EDF78("Cannot pickChannels in UNINITALIZED state ", __p);
      sub_1000E661C(v301, __p, 1);
      if (SBYTE7(v307) < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE7(v302) < 0)
      {
        operator delete(v301[0]);
      }

      sub_10003F5D0(v297);
    }

    if (v42 == 1)
    {
      v43 = *(v296 + 88);
      v44 = (v43 - *(v296 + 80)) >> 2 >= v41 - v309[1] ? v41 - v309[1] : (v43 - *(v296 + 80)) >> 2;
      if (v44)
      {
        do
        {
          LODWORD(v305) = *(v43 - 4);
          sub_1002F9648(v308, &v305);
          if (v309[1] > v311)
          {
            sub_1000474A4(v301, "");
            sub_10023FC08("Selected channels cannot exceed channelsPerScanCount", __p);
            sub_1000E661C(v301, __p, 1);
            if (SBYTE7(v307) < 0)
            {
              operator delete(__p[0]);
            }

            if (SBYTE7(v302) < 0)
            {
              operator delete(v301[0]);
            }

            sub_10003F5D0(v297);
          }

          v43 = *(v296 + 88) - 4;
          *(v296 + 88) = v43;
          --v44;
        }

        while (v44);
        v41 = v311;
        v40 = v296;
      }
    }

    v53 = v309[1];
    if (v309[1] >= v41)
    {
      v78 = sub_1002F95A0(v308);
      v80 = v309[0];
      if (!v309[0])
      {
        goto LABEL_124;
      }

      goto LABEL_123;
    }

    v292 = v39;
    v54 = *(v40 + 32);
    if (v54)
    {
      v55 = 0;
      while (1)
      {
        v56 = sub_1000E0718(*(v54 + 4));
        if (!v308[1])
        {
          goto LABEL_109;
        }

        v57 = vcnt_s8(v308[1]);
        v57.i16[0] = vaddlv_u8(v57);
        if (v57.u32[0] > 1uLL)
        {
          v58 = v56;
          if (v308[1] <= v56)
          {
            v58 = v56 % v308[1];
          }
        }

        else
        {
          v58 = (v308[1] - 1) & v56;
        }

        v59 = *(v308[0] + v58);
        if (!v59 || (v60 = *v59) == 0)
        {
LABEL_109:
          v63 = v54[4];
          v64 = v54[5];
          if (v63 != v64)
          {
            v65 = v64 - v63 - 16;
            if (v65 >= 0x80)
            {
              v68 = (v65 >> 4) + 1;
              v69 = v68 & 7;
              if ((v68 & 7) == 0)
              {
                v69 = 8;
              }

              v70 = v68 - v69;
              v67 = v63 + 16 * v70;
              v71 = (v63 + 72);
              v72 = 0uLL;
              v73 = 0uLL;
              do
              {
                v74 = v71 - 16;
                v75 = vld4q_f32(v74);
                v76 = vld4q_f32(v71);
                v72 = vaddq_s32(v75, v72);
                v73 = vaddq_s32(v76, v73);
                v71 += 32;
                v70 -= 8;
              }

              while (v70);
              v66 = vaddvq_s32(vaddq_s32(v73, v72));
            }

            else
            {
              v66 = 0;
              v67 = v54[4];
            }

            do
            {
              v66 += *(v67 + 8);
              v67 += 16;
            }

            while (v67 != v64);
          }

          v77 = *(v54 + 4);
          operator new();
        }

        if (v57.u32[0] < 2uLL)
        {
          while (1)
          {
            v62 = v60[1];
            if (v62 == v56)
            {
              if (*(v60 + 4) == v56)
              {
                goto LABEL_120;
              }
            }

            else if ((v62 & (v308[1] - 1)) != v58)
            {
              goto LABEL_109;
            }

            v60 = *v60;
            if (!v60)
            {
              goto LABEL_109;
            }
          }
        }

        while (1)
        {
          v61 = v60[1];
          if (v61 == v56)
          {
            break;
          }

          if (v61 >= v308[1])
          {
            v61 %= v308[1];
          }

          if (v61 != v58)
          {
            goto LABEL_109;
          }

LABEL_99:
          v60 = *v60;
          if (!v60)
          {
            goto LABEL_109;
          }
        }

        if (*(v60 + 4) != v56)
        {
          goto LABEL_99;
        }

LABEL_120:
        v54 = *v54;
        if (!v54)
        {
          v53 = v309[1];
          v41 = v311;
          goto LABEL_147;
        }
      }
    }

    v55 = 0;
LABEL_147:
    v97 = v41 - v53;
    if (v97)
    {
      LODWORD(v97) = 0;
    }

    v301[0] = v40;
    v295 = 32 * v97;
    if (!v295)
    {
      goto LABEL_150;
    }

    v101 = 0;
    while (1)
    {
      v102 = (v55 - v101) >> 5;
      if (v102 < 2)
      {
        goto LABEL_150;
      }

      if (v102 == 3)
      {
        sub_1002F997C(v101, (v101 + 32), v55 - 4, v301);
        goto LABEL_150;
      }

      if (v102 == 2)
      {
        break;
      }

      if (v102 <= 7)
      {
        if (v55 - 4 == v101)
        {
          goto LABEL_150;
        }

LABEL_385:
        if (v101 == v55)
        {
          goto LABEL_384;
        }

        v260 = (v101 + 32);
        if ((v101 + 32) == v55)
        {
          goto LABEL_384;
        }

        v261 = *(v296 + 144);
        v262 = 1000000 * *(v296 + 136) + 50000000;
        v263 = 1000000 * v261;
        v264 = v261 * 1000000.0;
        v265 = v101;
        while (1)
        {
          v266 = *v260;
          v267 = *v260 + v262;
          v268 = *v265;
          v269 = *v265 + v262;
          if (v267 < v263 && v269 < v263)
          {
            v271 = v267 / v264;
            if (*(v296 + 152))
            {
              v272 = v271 * (1.0 - exp(-v260[1]));
              v273 = v269 / v264 * (1.0 - exp(-v265[1]));
              v274 = v272 == v273;
              if (v272 <= v273)
              {
                goto LABEL_401;
              }
            }

            else
            {
              v275 = v269 / v264;
              v274 = v271 == v275;
              if (v271 <= v275)
              {
LABEL_401:
                if (!v274)
                {
                  goto LABEL_389;
                }

LABEL_403:
                if (*(v265 + 6) <= *(v260 + 6))
                {
                  goto LABEL_389;
                }
              }
            }
          }

          else if (*&v268 >= *&v266)
          {
            if (*&v266 != *&v268)
            {
              goto LABEL_389;
            }

            goto LABEL_403;
          }

          v265 = v260;
LABEL_389:
          v260 += 4;
          if (v260 == v55)
          {
            if (v265 != v101)
            {
              v276 = *(v101 + 16);
              *__p = *v101;
              v307 = v276;
              v277 = *(v265 + 1);
              *v101 = *v265;
              *(v101 + 16) = v277;
              v278 = v307;
              *v265 = *__p;
              *(v265 + 1) = v278;
            }

LABEL_384:
            v101 += 32;
            if (v101 != v55 - 4)
            {
              goto LABEL_385;
            }

LABEL_150:
            v98 = sub_1002F95A0(v308);
            v39 = v292;
            if (v295)
            {
              for (k = 0; k != v295; k += 32)
              {
                v100 = [NSNumber numberWithInt:sub_1000E0718(*(k + 24))];
                [v98 addObject:v100];
              }
            }

            v78 = v98;

            v40 = v296;
            v80 = v309[0];
            if (!v309[0])
            {
LABEL_124:
              v82 = v308[0];
              v308[0] = 0;
              if (v82)
              {
                operator delete(v82);
              }

              v83 = *(v40 + 64);
              v84 = atomic_load((v40 + 72));
              LODWORD(v79) = v84;
              LOBYTE(v84) = atomic_load((v40 + 104));
              v85 = [(WifiScannerSettings *)v39 initWithChannels:v78 dwell:v83 scanType:2 includingOffChannelResults:0 atDutyCycle:v84 & 1 asLowPriority:v79];

              goto LABEL_137;
            }

            do
            {
LABEL_123:
              v81 = *v80;
              operator delete(v80);
              v80 = v81;
            }

            while (v81);
            goto LABEL_124;
          }
        }
      }

      v103 = v101 + 32 * ((v55 - v101) >> 6);
      v104 = (v55 - 4);
      v105 = sub_1002F997C(v101, v103, v55 - 4, v301);
      v106 = *(v296 + 144);
      v107 = *v101;
      v108 = 1000000 * *(v296 + 136) + 50000000;
      v109 = v108 + *v101;
      v110 = 1000000 * v106;
      v111 = *v103;
      v112 = *v103 + v108;
      if (v109 < 1000000 * v106 && v112 < v110)
      {
        v114 = v106 * 1000000.0;
        v115 = v109 / v114;
        if (*(v296 + 152))
        {
          v285 = *(v296 + 144);
          v286 = v108 + *v101;
          v116 = v115 * (1.0 - exp(-*(v101 + 8)));
          v117 = exp(-*(v103 + 8));
          v106 = v285;
          v109 = v286;
          v118 = v112 / v114 * (1.0 - v117);
          v119 = v116 == v118;
          if (v116 > v118)
          {
            goto LABEL_185;
          }
        }

        else
        {
          v120 = v112 / v114;
          v119 = v115 == v120;
          if (v115 > v120)
          {
            goto LABEL_185;
          }
        }

        if (v119)
        {
LABEL_173:
          if (*(v103 + 24) > *(v101 + 24))
          {
            goto LABEL_185;
          }
        }
      }

      else
      {
        if (*&v111 < *&v107)
        {
          goto LABEL_185;
        }

        if (*&v107 == *&v111)
        {
          goto LABEL_173;
        }
      }

      v121 = (v55 - 8);
      if (v101 == v55 - 8)
      {
LABEL_251:
        v173 = v101 + 32;
        v174 = *v104;
        if (v109 >= v110 || (v175 = v174 + v108, v174 + v108 >= v110))
        {
          if (v174 < *&v107)
          {
            goto LABEL_325;
          }

          if (*&v107 == v174)
          {
            goto LABEL_308;
          }

          goto LABEL_309;
        }

        v176 = v106 * 1000000.0;
        v177 = v109 / v176;
        if (*(v296 + 152))
        {
          v178 = v109;
          v179 = v106;
          v177 = v177 * (1.0 - exp(-*(v101 + 8)));
          v180 = exp(-*(v55 - 3));
          v106 = v179;
          v109 = v178;
          v181 = v175 / v176 * (1.0 - v180);
        }

        else
        {
          v181 = v175 / v176;
        }

        if (v177 <= v181)
        {
          if (v177 == v181)
          {
LABEL_308:
            if (*(v55 - 2) > *(v101 + 24))
            {
              goto LABEL_325;
            }
          }

LABEL_309:
          if (v173 == v104)
          {
            goto LABEL_150;
          }

          v214 = v106 * 1000000.0;
          v215 = v109 / v214;
          while (2)
          {
            v216 = *v173;
            if (v109 >= v110 || (v217 = v216 + v108, v216 + v108 >= v110))
            {
              if (v216 < *&v107)
              {
                goto LABEL_324;
              }

              if (*&v107 == v216)
              {
                goto LABEL_311;
              }
            }

            else
            {
              if (*(v296 + 152))
              {
                v218 = v109;
                v219 = v215 * (1.0 - exp(-*(v101 + 8)));
                v220 = exp(-*(v173 + 8));
                v109 = v218;
                v221 = v217 / v214 * (1.0 - v220);
              }

              else
              {
                v221 = v217 / v214;
                v219 = v215;
              }

              if (v219 > v221)
              {
LABEL_324:
                v222 = *(v173 + 16);
                *__p = *v173;
                v307 = v222;
                v223 = *(v55 - 1);
                *v173 = *v104;
                *(v173 + 16) = v223;
                v173 += 32;
                v224 = v307;
                *v104 = *__p;
                *(v55 - 1) = v224;
                break;
              }

              if (v219 != v221)
              {
                goto LABEL_312;
              }

LABEL_311:
              if (*(v173 + 24) > *(v101 + 24))
              {
                goto LABEL_324;
              }
            }

LABEL_312:
            v173 += 32;
            if (v173 == v104)
            {
              goto LABEL_150;
            }

            continue;
          }
        }

LABEL_325:
        if (v173 == v104)
        {
          goto LABEL_150;
        }

        v225 = v296;
        while (1)
        {
          v226 = *(v225 + 144);
          v227 = *v101;
          v228 = 1000000 * *(v225 + 136) + 50000000;
          v229 = v228 + *v101;
          v230 = 1000000 * v226;
          v231 = v226 * 1000000.0;
          v232 = v229 / v231;
          if (v229 < 1000000 * v226)
          {
            while (1)
            {
              v234 = *v173;
              v235 = *v173 + v228;
              if (v235 >= v230)
              {
                if (v234 < *&v227)
                {
                  v225 = v296;
                  if (v229 < v230)
                  {
                    goto LABEL_361;
                  }

                  goto LABEL_349;
                }

                if (*&v227 == v234 && *(v173 + 24) > *(v101 + 24))
                {
                  v225 = v296;
                  if (v229 < v230)
                  {
                    goto LABEL_361;
                  }

                  goto LABEL_349;
                }
              }

              else
              {
                if (*(v296 + 152))
                {
                  v236 = v232 * (1.0 - exp(-*(v101 + 8)));
                  v237 = v235 / v231 * (1.0 - exp(-*(v173 + 8)));
                  v238 = v236 == v237;
                  if (v236 > v237)
                  {
                    goto LABEL_353;
                  }
                }

                else
                {
                  v239 = v235 / v231;
                  v238 = v232 == v239;
                  if (v232 > v239)
                  {
LABEL_353:
                    v225 = v296;
                    if (v229 < v230)
                    {
                      goto LABEL_361;
                    }

                    goto LABEL_349;
                  }
                }

                if (v238 && *(v173 + 24) > *(v101 + 24))
                {
                  v225 = v296;
                  if (v229 < v230)
                  {
                    goto LABEL_361;
                  }

                  goto LABEL_349;
                }
              }

              v173 += 32;
            }
          }

          v233 = *v173;
          if (*v173 >= *&v227)
          {
            do
            {
              if (*&v227 == v233 && *(v173 + 24) > *(v101 + 24))
              {
                break;
              }

              v240 = *(v173 + 32);
              v173 += 32;
              v233 = v240;
            }

            while (v240 >= *&v227);
            if (v229 < v230)
            {
              break;
            }
          }

          do
          {
            do
            {
LABEL_349:
              v242 = *(v104 - 32);
              v104 -= 32;
              v241 = v242;
            }

            while (v242 < *&v227);
          }

          while (*&v227 == v241 && *(v104 + 24) > *(v101 + 24));
LABEL_369:
          if (v173 >= v104)
          {
            if (v173 > v295)
            {
              goto LABEL_150;
            }

            goto LABEL_372;
          }

          v250 = *(v173 + 16);
          *__p = *v173;
          v307 = v250;
          v251 = *(v104 + 16);
          *v173 = *v104;
          *(v173 + 16) = v251;
          v173 += 32;
          v252 = v307;
          *v104 = *__p;
          *(v104 + 16) = v252;
        }

        while (1)
        {
LABEL_361:
          v244 = *(v104 - 32);
          v104 -= 32;
          v243 = v244;
          v245 = v244 + v228;
          if (v244 + v228 >= v230)
          {
            if (v243 < *&v227)
            {
              continue;
            }

            if (*&v227 != v243)
            {
              goto LABEL_369;
            }
          }

          else
          {
            if (*(v225 + 152))
            {
              v246 = v232 * (1.0 - exp(-*(v101 + 8)));
              v247 = v245 / v231 * (1.0 - exp(-*(v104 + 8)));
              v248 = v246 == v247;
              if (v246 > v247)
              {
                continue;
              }
            }

            else
            {
              v249 = v245 / v231;
              v248 = v232 == v249;
              if (v232 > v249)
              {
                continue;
              }
            }

            if (!v248)
            {
              goto LABEL_369;
            }
          }

          if (*(v104 + 24) <= *(v101 + 24))
          {
            goto LABEL_369;
          }
        }
      }

      if (*&v111 + v108 < v110)
      {
        v122 = v106 * 1000000.0;
        v123 = (*&v111 + v108) / v122;
        v288 = v108;
        obja = v110;
        while (1)
        {
          v157 = *v121;
          v158 = *v121 + v108;
          if (v158 >= v110)
          {
            if (*&v111 < v157)
            {
              goto LABEL_181;
            }

            if (v157 == *&v111)
            {
              goto LABEL_231;
            }
          }

          else
          {
            v159 = v158 / v122;
            if (*(v296 + 152))
            {
              v160 = v107;
              v161 = v109;
              v162 = v106;
              v159 = v159 * (1.0 - exp(-*(v121 + 8)));
              v163 = exp(-*(v103 + 8));
              v106 = v162;
              v109 = v161;
              v107 = v160;
              v108 = v288;
              v110 = obja;
              v164 = v123 * (1.0 - v163);
            }

            else
            {
              v164 = v123;
            }

            if (v159 > v164)
            {
              goto LABEL_181;
            }

            if (v159 == v164)
            {
LABEL_231:
              if (*(v103 + 24) > *(v121 + 24))
              {
                goto LABEL_181;
              }
            }
          }

          v121 -= 32;
          if (v121 == v101)
          {
            goto LABEL_251;
          }
        }
      }

      while (*&v111 >= *v121 && (*v121 != *&v111 || *(v103 + 24) <= *(v121 + 24)))
      {
        v121 -= 32;
        if (v121 == v101)
        {
          goto LABEL_251;
        }
      }

LABEL_181:
      v124 = *(v101 + 16);
      *__p = *v101;
      v307 = v124;
      v125 = *(v121 + 16);
      *v101 = *v121;
      *(v101 + 16) = v125;
      v126 = v307;
      *v121 = *__p;
      *(v121 + 16) = v126;
      if (v105)
      {
        v105 = 2;
      }

      else
      {
        v105 = 1;
      }

      v104 = v121;
LABEL_185:
      v127 = v296;
      v128 = 32;
      if (v101 + 32 < v104)
      {
        while (1)
        {
          v129 = *(v127 + 144);
          v130 = 1000000 * *(v127 + 136) + 50000000;
          v131 = 1000000 * v129;
          v132 = *v103;
          v133 = *v103 + v130;
          v134 = v129 * 1000000.0;
          v135 = v133 / v134;
          v136 = v133 < 1000000 * v129;
          if (v133 < 1000000 * v129)
          {
            while (1)
            {
              v146 = *(v101 + v128);
              if (v146 + v130 >= v131)
              {
                if (*&v132 < v146)
                {
                  goto LABEL_210;
                }

                if (v146 != *&v132)
                {
                  goto LABEL_192;
                }
              }

              else
              {
                v147 = (v146 + v130) / v134;
                if (*(v296 + 152))
                {
                  v148 = v147 * (1.0 - exp(-*(v101 + v128 + 8)));
                  v149 = v135 * (1.0 - exp(-*(v103 + 8)));
                  v150 = v148 == v149;
                  if (v148 > v149)
                  {
                    goto LABEL_210;
                  }
                }

                else
                {
                  v150 = v147 == v135;
                  if (v147 > v135)
                  {
                    goto LABEL_210;
                  }
                }

                if (!v150)
                {
                  goto LABEL_192;
                }
              }

              if (*(v103 + 24) <= *(v101 + v128 + 24))
              {
                goto LABEL_192;
              }

LABEL_210:
              v128 += 32;
            }
          }

          while (1)
          {
            v137 = *(v101 + v128);
            if (*&v132 >= v137 && (v137 != *&v132 || *(v103 + 24) <= *(v101 + v128 + 24)))
            {
              break;
            }

            v128 += 32;
          }

LABEL_192:
          if (v136)
          {
            break;
          }

          v152 = *(v104 - 32);
          v104 -= 32;
          v151 = v152;
          v127 = v296;
          if (*&v132 >= v152)
          {
            do
            {
              if (v151 == *&v132 && *(v103 + 24) > *(v104 + 24))
              {
                break;
              }

              v153 = *(v104 - 32);
              v104 -= 32;
              v151 = v153;
            }

            while (*&v132 >= v153);
          }

LABEL_227:
          v145 = (v101 + v128);
          if (v101 + v128 >= v104)
          {
            goto LABEL_243;
          }

LABEL_228:
          v154 = v145[1];
          *__p = *v145;
          v307 = v154;
          v155 = *(v104 + 16);
          *v145 = *v104;
          v145[1] = v155;
          v156 = v307;
          *v104 = *__p;
          *(v104 + 16) = v156;
          ++v105;
          if (v103 == v145)
          {
            v103 = v104;
          }

          v128 += 32;
        }

        do
        {
          while (1)
          {
            v139 = *(v104 - 32);
            v104 -= 32;
            v138 = v139;
            v140 = v139 + v130;
            if (v139 + v130 < v131)
            {
              break;
            }

            if (*&v132 < v138)
            {
              v127 = v296;
              goto LABEL_227;
            }

            if (v138 == *&v132 && *(v103 + 24) > *(v104 + 24))
            {
              goto LABEL_205;
            }
          }

          v141 = v140 / v134;
          if (*(v296 + 152))
          {
            v142 = v141 * (1.0 - exp(-*(v104 + 8)));
            v143 = v135 * (1.0 - exp(-*(v103 + 8)));
            v144 = v142 == v143;
            if (v142 > v143)
            {
              break;
            }
          }

          else
          {
            v144 = v141 == v135;
            if (v141 > v135)
            {
              break;
            }
          }
        }

        while (!v144 || *(v103 + 24) <= *(v104 + 24));
LABEL_205:
        v127 = v296;
        v145 = (v101 + v128);
        if (v101 + v128 < v104)
        {
          goto LABEL_228;
        }
      }

LABEL_243:
      v165 = v101 + v128;
      if (v101 + v128 != v103)
      {
        v166 = *(v127 + 144);
        v167 = *v103;
        v168 = 1000000 * *(v127 + 136) + 50000000;
        v169 = v168 + *v103;
        v170 = *v165;
        v171 = *v165 + v168;
        if (v169 < 1000000 * v166 && v171 < 1000000 * v166)
        {
          v182 = v166 * 1000000.0;
          v183 = v169 / v182;
          if (*(v127 + 152))
          {
            v183 = v183 * (1.0 - exp(-*(v103 + 8)));
            v184 = v171 / v182 * (1.0 - exp(-*(v165 + 8)));
          }

          else
          {
            v184 = v171 / v182;
          }

          if (v183 <= v184)
          {
            if (v183 != v184)
            {
              goto LABEL_265;
            }

LABEL_263:
            if (*(v165 + 24) <= *(v103 + 24))
            {
              goto LABEL_265;
            }
          }

LABEL_264:
          v185 = *(v165 + 16);
          *__p = *v165;
          v307 = v185;
          v186 = *(v103 + 16);
          *v165 = *v103;
          *(v165 + 16) = v186;
          v187 = v307;
          *v103 = *__p;
          *(v103 + 16) = v187;
          ++v105;
          goto LABEL_265;
        }

        if (v170 < *&v167)
        {
          goto LABEL_264;
        }

        if (*&v167 == v170)
        {
          goto LABEL_263;
        }
      }

LABEL_265:
      if (v165 == v295)
      {
        goto LABEL_150;
      }

      if (!v105)
      {
        if (v165 > v295)
        {
          v188 = v128 - 32;
          if (!v188)
          {
            goto LABEL_150;
          }

          v189 = *(v296 + 144);
          v190 = 1000000 * *(v296 + 136) + 50000000;
          v191 = 1000000 * v189;
          v192 = v189 * 1000000.0;
          v194 = (v101 + 56);
          v193 = *v101;
          while (2)
          {
            v195 = *(v194 - 3);
            v196 = *&v193 + v190;
            if (*&v195 + v190 < v191 && v196 < v191)
            {
              v198 = (*&v195 + v190) / v192;
              if (*(v296 + 152))
              {
                v198 = v198 * (1.0 - exp(-*(v194 - 2)));
                v199 = v196 / v192 * (1.0 - exp(-*(v194 - 6)));
              }

              else
              {
                v199 = v196 / v192;
              }

              if (v198 > v199)
              {
                goto LABEL_267;
              }

              if (v198 != v199)
              {
                goto LABEL_274;
              }
            }

            else
            {
              if (*&v193 < *&v195)
              {
                goto LABEL_267;
              }

              if (*&v195 != *&v193)
              {
                goto LABEL_274;
              }
            }

            if (*(v194 - 8) > *v194)
            {
              goto LABEL_267;
            }

LABEL_274:
            v194 += 4;
            v193 = v195;
            v188 -= 32;
            if (!v188)
            {
              goto LABEL_150;
            }

            continue;
          }
        }

        if ((v165 + 32) == v55)
        {
          goto LABEL_150;
        }

        v200 = *(v296 + 144);
        v201 = 1000000 * *(v296 + 136) + 50000000;
        v202 = 1000000 * v200;
        v203 = v200 * 1000000.0;
        v204 = (v101 + v128);
        v207 = *v204;
        v206 = v204 + 7;
        v205 = v207;
        while (2)
        {
          v209 = *(v206 - 3);
          v210 = v205 + v201;
          if (v209 + v201 < v202 && v210 < v202)
          {
            v212 = (v209 + v201) / v203;
            if (*(v296 + 152))
            {
              v212 = v212 * (1.0 - exp(-*(v206 - 2)));
              v213 = v210 / v203 * (1.0 - exp(-*(v206 - 6)));
            }

            else
            {
              v213 = v210 / v203;
            }

            if (v212 > v213)
            {
              break;
            }

            if (v212 != v213)
            {
              goto LABEL_291;
            }
          }

          else
          {
            if (v205 < v209)
            {
              break;
            }

            if (v209 != v205)
            {
              goto LABEL_291;
            }
          }

          if (*(v206 - 8) > *v206)
          {
            break;
          }

LABEL_291:
          v208 = (v206 + 2);
          v206 += 8;
          v205 = v209;
          if (v208 == v55)
          {
            goto LABEL_150;
          }

          continue;
        }
      }

LABEL_267:
      if (v165 <= v295)
      {
        v173 = v165 + 32;
      }

      else
      {
        v55 = v165;
        v173 = v101;
      }

LABEL_372:
      v101 = v173;
      if (v55 == v295)
      {
        goto LABEL_150;
      }
    }

    v254 = v55 - 4;
    v253 = *(v55 - 4);
    v255 = *(v296 + 144);
    v256 = 1000000 * *(v296 + 136) + 50000000;
    v257 = *v101;
    v258 = *v101 + v256;
    if (v256 + v253 < 1000000 * v255 && v258 < 1000000 * v255)
    {
      v279 = v255 * 1000000.0;
      v280 = (v256 + v253) / v279;
      if (*(v296 + 152))
      {
        v280 = v280 * (1.0 - exp(-*(v55 - 3)));
        v281 = v258 / v279 * (1.0 - exp(-*(v101 + 8)));
      }

      else
      {
        v281 = v258 / v279;
      }

      if (v280 <= v281)
      {
        if (v280 != v281)
        {
          goto LABEL_150;
        }

LABEL_412:
        if (*(v101 + 24) <= *(v55 - 2))
        {
          goto LABEL_150;
        }
      }
    }

    else if (*&v257 >= v253)
    {
      if (v253 != *&v257)
      {
        goto LABEL_150;
      }

      goto LABEL_412;
    }

    v282 = *(v101 + 16);
    *__p = *v101;
    v307 = v282;
    v283 = *(v55 - 1);
    *v101 = *v254;
    *(v101 + 16) = v283;
    v284 = v307;
    *v254 = *__p;
    *(v55 - 1) = v284;
    goto LABEL_150;
  }

  v45 = (*(**(a1 + 112) + 40))(*(a1 + 112), v294, v287);
  m = v296;
  v48 = *(v296 + 80);
  v47 = *(v296 + 88);
  if (v48 != v47)
  {
    while (1)
    {
      v49 = *v48;
      v50 = [(WifiScannerSettings *)v45 channels];
      v51 = [NSNumber numberWithInt:v49];
      v52 = [v50 containsObject:v51];

      if (v52)
      {
        break;
      }

      if (++v48 == v47)
      {
        v48 = v47;
LABEL_133:
        m = v296;
        goto LABEL_134;
      }
    }

    if (v48 == v47)
    {
      goto LABEL_133;
    }

    v86 = v48 + 1;
    for (m = v296; v86 != v47; ++v86)
    {
      v87 = *v86;
      v88 = [(WifiScannerSettings *)v45 channels];
      v89 = [NSNumber numberWithInt:v87];
      v90 = [v88 containsObject:v89];

      if ((v90 & 1) == 0)
      {
        *v48++ = *v86;
      }

      m = v296;
    }
  }

LABEL_134:
  if (v48 != *(m + 88))
  {
    *(v296 + 88) = v48;
  }

  v85 = v45;
LABEL_137:
  v91 = [(WifiScannerSettings *)v85 channels];
  v92 = [v91 copy];
  v93 = *(v296 + 56);
  *(v296 + 56) = v92;

  v94 = *(v296 + 8);
  if (v94)
  {
    if (v94 != 1)
    {
      goto LABEL_145;
    }

    goto LABEL_139;
  }

  if (!(*(**(v296 + 112) + 16))(*(v296 + 112)))
  {
    if (*(v296 + 8) != 1)
    {
      goto LABEL_145;
    }

LABEL_139:
    if (*(v296 + 80) == *(v296 + 88))
    {
      goto LABEL_143;
    }

    goto LABEL_145;
  }

  *(v296 + 8) = 1;
  if (*(v296 + 80) == *(v296 + 88))
  {
LABEL_143:
    *(v296 + 8) = 2;
  }

LABEL_145:
  v95 = v85;

  return v85;
}