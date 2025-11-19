void sub_10014DDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10014DE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014DE18(uint64_t a1, uint64_t a2)
{
  *a1 = off_10043E850;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 191) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  sub_10014CD00(a1, a2);
  return a1;
}

void sub_10014DEB8(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void *sub_10014DEE8(void *result)
{
  if (qword_10045E250 != result)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[7];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[8];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[9];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[10];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[11];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[13];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[18];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[20];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[21];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[22];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[25];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[26];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[27];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[29];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[30];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[32];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[33];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[34];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[35];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    result = v1[36];
    if (result)
    {
      v22 = *(*result + 8);

      return v22();
    }
  }

  return result;
}

void sub_10014E2CC(void *a1)
{
  *a1 = off_10043E850;
  v2 = (a1 + 1);
  sub_10014DEE8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10014E32C(void *a1)
{
  *a1 = off_10043E850;
  v2 = (a1 + 1);
  sub_10014DEE8(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10014E3A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_10045E250;
  if (!qword_10045E250)
  {
    sub_1001404F8(0, a2, a3, a4);
    return qword_10045E250;
  }

  return result;
}

uint64_t sub_10014E4A4(uint64_t this)
{
  v1 = this;
  v2 = (this + 300);
  v3 = *(this + 300);
  if (v3)
  {
    *(this + 16) = 0u;
    *(this + 32) = 0u;
    if (v3 < 0)
    {
      this = *(this + 48);
      if (this)
      {
        if (*(this + 32))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
        }

        v4 = *(this + 8);
        this += 8;
        *(this + 24) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v5 = *v2;
  if ((*v2 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v6 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v6)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 1) & 2) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        v7 = *(this + 44);
        if (v7)
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          if ((v7 & 0x10) != 0)
          {
            v8 = *(this + 32);
            if (v8)
            {
              if (*(v8 + 28))
              {
                *(v8 + 16) = 0;
              }

              v10 = *(v8 + 8);
              v9 = (v8 + 8);
              *(v9 + 5) = 0;
              if (v10)
              {
                v11 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
                this = v11;
              }
            }
          }
        }

        v12 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v12)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 1) & 4) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        if (*(this + 48))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 40) = 0;
          *(this + 32) = 0;
        }

        v13 = *(this + 8);
        this += 8;
        *(this + 40) = 0;
        if (v13)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 96) = 0;
    if ((*(v1 + 301) & 0x10) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 29) = 0;
        }

        v14 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v14)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 1) & 0x20) != 0)
    {
      this = *(v1 + 88);
      if (this)
      {
        v15 = *(this + 76);
        if (v15)
        {
          *(this + 56) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
          *(this + 16) = 0;
        }

        if ((v15 & 0xFF00) != 0)
        {
          *(this + 64) = 0;
          *(this + 60) = 0;
        }

        v16 = *(this + 8);
        this += 8;
        *(this + 40) = 0;
        *(this + 68) = 0;
        if (v16)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 1) & 0x40) != 0)
    {
      this = *(v1 + 104);
      if (this)
      {
        if (*(this + 40))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        v17 = *(this + 8);
        this += 8;
        *(this + 32) = 0;
        if (v17)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 112) = 0;
    v5 = *(v1 + 300);
  }

  if ((v5 & 0xFF0000) != 0)
  {
    *(v1 + 100) = 0;
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    if ((v5 & 0x400000) != 0)
    {
      this = *(v1 + 144);
      if (this)
      {
        if (*(this + 24))
        {
          *(this + 16) = 0;
        }

        v18 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        if (v18)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 140) = 0;
    v5 = *(v1 + 300);
  }

  if (HIBYTE(v5))
  {
    *(v1 + 152) = 0;
    if ((v5 & 0x2000000) != 0)
    {
      this = *(v1 + 160);
      if (this)
      {
        if (*(this + 44))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 29) = 0;
        }

        v19 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v19)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 3) & 4) != 0)
    {
      this = *(v1 + 168);
      if (this)
      {
        if (*(this + 56))
        {
          *(this + 48) = 0;
          *(this + 16) = 0u;
          *(this + 32) = 0u;
        }

        v20 = *(this + 8);
        this += 8;
        *(this + 48) = 0;
        if (v20)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v2 + 3) & 8) != 0)
    {
      this = *(v1 + 176);
      if (this)
      {
        if (*(this + 76))
        {
          *(this + 64) = 0;
          *(this + 32) = 0u;
          *(this + 48) = 0u;
          *(this + 16) = 0u;
        }

        v21 = *(this + 8);
        this += 8;
        *(this + 68) = 0;
        if (v21)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 192) = 0;
    *(v1 + 184) = 0;
    *(v1 + 196) = 0;
  }

  if (*(v1 + 304))
  {
    if (*(v1 + 304))
    {
      this = *(v1 + 200);
      if (this)
      {
        v22 = *(this + 44);
        if (v22)
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        if ((v22 & 0xFF00) != 0)
        {
          *(this + 36) = 0;
        }

        v23 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v23)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 194) = 0;
    if ((*(v1 + 304) & 4) != 0)
    {
      this = *(v1 + 208);
      if (this)
      {
        v24 = *(this + 60);
        if (v24)
        {
          *(this + 40) = 0;
          *(this + 36) = 0;
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        if ((v24 & 0xFF00) != 0)
        {
          *(this + 48) = 0;
        }

        v25 = *(this + 8);
        this += 8;
        *(this + 52) = 0;
        if (v25)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 304) & 8) != 0)
    {
      this = *(v1 + 216);
      if (this)
      {
        if (*(this + 36))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
        }

        v26 = *(this + 8);
        this += 8;
        *(this + 28) = 0;
        if (v26)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 224) = 0;
    if ((*(v1 + 304) & 0x20) != 0)
    {
      this = *(v1 + 232);
      if (this)
      {
        v27 = *(this + 44);
        if (v27)
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 32) = 0;
        }

        if ((v27 & 0xFF00) != 0)
        {
          *(this + 36) = 0;
        }

        v28 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v28)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 228) = 0;
    if ((*(v1 + 304) & 0x80) != 0)
    {
      this = *(v1 + 240);
      if (this)
      {
        v29 = *(this + 44);
        if (v29)
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          if ((v29 & 0x10) != 0)
          {
            v30 = *(this + 32);
            if (v30)
            {
              if (*(v30 + 28))
              {
                *(v30 + 16) = 0;
              }

              v32 = *(v30 + 8);
              v31 = (v30 + 8);
              *(v31 + 5) = 0;
              if (v32)
              {
                v33 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v31);
                this = v33;
              }
            }
          }
        }

        v34 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v34)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  v35 = *(v1 + 304);
  if ((v35 & 0xFF00) != 0)
  {
    *(v1 + 248) = 0;
    if ((v35 & 0x400) != 0)
    {
      this = *(v1 + 256);
      if (this)
      {
        if (*(this + 36))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
        }

        v36 = *(this + 8);
        this += 8;
        *(this + 28) = 0;
        if (v36)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 305) & 8) != 0)
    {
      this = *(v1 + 264);
      if (this)
      {
        if (*(this + 60))
        {
          *(this + 48) = 0;
          *(this + 16) = 0u;
          *(this + 32) = 0u;
        }

        v37 = *(this + 8);
        this += 8;
        *(this + 52) = 0;
        if (v37)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 305) & 0x10) != 0)
    {
      this = *(v1 + 272);
      if (this)
      {
        v38 = *(this + 44);
        if (v38)
        {
          *(this + 24) = 0;
          if ((v38 & 4) != 0)
          {
            v39 = *(this + 16);
            if (v39)
            {
              if (*(v39 + 36))
              {
                *(v39 + 16) = 0;
                *(v39 + 24) = 0;
              }

              v41 = *(v39 + 8);
              v40 = (v39 + 8);
              *(v40 + 7) = 0;
              if (v41)
              {
                v42 = this;
                wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v40);
                this = v42;
              }
            }
          }

          *(this + 26) = 0;
          v38 = *(this + 44);
        }

        if ((v38 & 0xFF00) != 0)
        {
          *(this + 36) = 0;
          *(this + 34) = 0;
        }

        v43 = *(this + 8);
        this += 8;
        *(this + 36) = 0;
        if (v43)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 305) & 0x20) != 0)
    {
      this = *(v1 + 280);
      if (this)
      {
        if (*(this + 48))
        {
          *(this + 16) = 0;
          *(this + 24) = 0;
          *(this + 40) = 0;
          *(this + 32) = 0;
        }

        v44 = *(this + 8);
        this += 8;
        *(this + 40) = 0;
        if (v44)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    if ((*(v1 + 305) & 0x40) != 0)
    {
      this = *(v1 + 288);
      if (this)
      {
        if (*(this + 56))
        {
          *(this + 48) = 0;
          *(this + 16) = 0u;
          *(this + 32) = 0u;
        }

        v45 = *(this + 8);
        this += 8;
        *(this + 48) = 0;
        if (v45)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  *v2 = 0;
  v47 = *(v1 + 8);
  v46 = (v1 + 8);
  if (v47)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v46);
  }

  return this;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014EA68(uint64_t a1)
{
  if (*(a1 + 56))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 12) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014EA90(uint64_t a1)
{
  v1 = *(a1 + 60);
  if (v1)
  {
    *(a1 + 40) = 0;
    *(a1 + 36) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 13) = 0;
  if (v3)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014EACC(uint64_t a1)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014EAEC(uint64_t a1)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014EB0C(uint64_t a1)
{
  if (*(a1 + 60))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 13) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014EB34(uint64_t a1)
{
  v2 = *(a1 + 44);
  if (v2)
  {
    *(a1 + 24) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(a1 + 16);
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

    *(a1 + 26) = 0;
    v2 = *(a1 + 44);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 36) = 0;
    *(a1 + 34) = 0;
  }

  v8 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 9) = 0;
  if (v8)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014EBCC(uint64_t a1)
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

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10014EBF4(uint64_t a1)
{
  if (*(a1 + 56))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 12) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_10014EC1C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 < v9)
        {
          v11 = *v10;
          if ((v11 & 0x8000000000000000) == 0)
          {
            *(a1 + 16) = v11;
            v12 = v10 + 1;
            *(this + 1) = v12;
            *(a1 + 300) |= 1u;
            if (v12 < v9)
            {
              goto LABEL_435;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
        *(a1 + 300) |= 1u;
        if (v12 >= v9)
        {
          continue;
        }

LABEL_435:
        if (*v12 != 16)
        {
          continue;
        }

        v51 = v12 + 1;
        *(this + 1) = v51;
        if (v51 >= v9)
        {
LABEL_440:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v215 = *(this + 1);
          v9 = *(this + 2);
          *(a1 + 300) |= 2u;
          if (v215 < v9)
          {
            goto LABEL_442;
          }

          continue;
        }

LABEL_437:
        v214 = *v51;
        if (v214 < 0)
        {
          goto LABEL_440;
        }

        *(a1 + 24) = v214;
        v215 = v51 + 1;
        *(this + 1) = v215;
        *(a1 + 300) |= 2u;
        if (v215 >= v9)
        {
          continue;
        }

LABEL_442:
        if (*v215 != 24)
        {
          continue;
        }

        v40 = v215 + 1;
        *(this + 1) = v40;
        v285[0] = 0;
        if (v40 < v9)
        {
LABEL_444:
          v216 = *v40;
          if ((v216 & 0x80000000) == 0)
          {
            *(this + 1) = v40 + 1;
            if (v216 <= 0xF)
            {
              goto LABEL_446;
            }

            goto LABEL_449;
          }
        }

LABEL_447:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285);
        if (!result)
        {
          return result;
        }

        v216 = v285[0];
        if (v285[0] <= 0xF)
        {
LABEL_446:
          *(a1 + 300) |= 4u;
          *(a1 + 28) = v216;
          goto LABEL_450;
        }

LABEL_449:
        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 3, v216);
LABEL_450:
        v217 = *(this + 1);
        v61 = *(this + 2);
        if (v217 >= v61 || *v217 != 32)
        {
          continue;
        }

        v62 = v217 + 1;
        *(this + 1) = v62;
LABEL_453:
        v285[0] = 0;
        if (v62 >= v61 || (v218 = *v62, (v218 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285);
          if (!result)
          {
            return result;
          }

          v218 = v285[0];
          if (v285[0] <= 3)
          {
LABEL_456:
            *(a1 + 300) |= 8u;
            *(a1 + 32) = v218;
            goto LABEL_460;
          }
        }

        else
        {
          *(this + 1) = v62 + 1;
          if (v218 <= 3)
          {
            goto LABEL_456;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 4, v218);
LABEL_460:
        v219 = *(this + 1);
        v64 = *(this + 2);
        if (v219 >= v64 || *v219 != 40)
        {
          continue;
        }

        v65 = v219 + 1;
        *(this + 1) = v65;
LABEL_463:
        v285[0] = 0;
        if (v65 >= v64 || (v220 = *v65, (v220 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285);
          if (!result)
          {
            return result;
          }

          v220 = v285[0];
          if (v285[0] <= 2)
          {
LABEL_466:
            *(a1 + 300) |= 0x10u;
            *(a1 + 36) = v220;
            goto LABEL_470;
          }
        }

        else
        {
          *(this + 1) = v65 + 1;
          if (v220 <= 2)
          {
            goto LABEL_466;
          }
        }

        wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 5, v220);
LABEL_470:
        v221 = *(this + 1);
        if (v221 >= *(this + 2) || *v221 != 61)
        {
          continue;
        }

        *(this + 1) = v221 + 1;
LABEL_473:
        v285[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v285[0];
        *(a1 + 300) |= 0x20u;
        v222 = *(this + 1);
        if (v222 >= *(this + 2) || *v222 != 69)
        {
          continue;
        }

        *(this + 1) = v222 + 1;
LABEL_477:
        v285[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 44) = v285[0];
        v223 = *(a1 + 300) | 0x40;
        *(a1 + 300) = v223;
        v224 = *(this + 1);
        if (v224 >= *(this + 2) || *v224 != 74)
        {
          continue;
        }

        *(this + 1) = v224 + 1;
        *(a1 + 300) = v223 | 0x80;
        v52 = *(a1 + 48);
        if (!v52)
        {
LABEL_481:
          operator new();
        }

LABEL_482:
        v285[0] = 0;
        v225 = *(this + 1);
        if (v225 >= *(this + 2) || *v225 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
          {
            return 0;
          }
        }

        else
        {
          v285[0] = *v225;
          *(this + 1) = v225 + 1;
        }

        v226 = *(this + 14);
        v227 = *(this + 15);
        *(this + 14) = v226 + 1;
        if (v226 >= v227)
        {
          return 0;
        }

        v228 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
        if (!sub_100146074(v52, this, v229, v230) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v228);
        v231 = *(this + 14);
        v90 = __OFSUB__(v231, 1);
        v232 = v231 - 1;
        if (v232 < 0 == v90)
        {
          *(this + 14) = v232;
        }

        v233 = *(this + 1);
        if (v233 >= *(this + 2) || *v233 != 82)
        {
          continue;
        }

        *(this + 1) = v233 + 1;
        *(a1 + 300) |= 0x100u;
        v71 = *(a1 + 56);
        if (!v71)
        {
LABEL_494:
          operator new();
        }

LABEL_174:
        v285[0] = 0;
        v72 = *(this + 1);
        if (v72 >= *(this + 2) || *v72 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
          {
            return 0;
          }
        }

        else
        {
          v285[0] = *v72;
          *(this + 1) = v72 + 1;
        }

        v234 = *(this + 14);
        v235 = *(this + 15);
        *(this + 14) = v234 + 1;
        if (v234 >= v235)
        {
          return 0;
        }

        v236 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
        if (!sub_100146968(v71, this, v237, v238) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v236);
        v239 = *(this + 14);
        v90 = __OFSUB__(v239, 1);
        v240 = v239 - 1;
        if (v240 < 0 == v90)
        {
          *(this + 14) = v240;
        }

        v241 = *(this + 1);
        if (v241 >= *(this + 2) || *v241 != 90)
        {
          continue;
        }

        *(this + 1) = v241 + 1;
        *(a1 + 300) |= 0x200u;
        v69 = *(a1 + 64);
        if (!v69)
        {
LABEL_506:
          operator new();
        }

LABEL_170:
        v285[0] = 0;
        v70 = *(this + 1);
        if (v70 >= *(this + 2) || *v70 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
          {
            return 0;
          }
        }

        else
        {
          v285[0] = *v70;
          *(this + 1) = v70 + 1;
        }

        v242 = *(this + 14);
        v243 = *(this + 15);
        *(this + 14) = v242 + 1;
        if (v242 >= v243)
        {
          return 0;
        }

        v244 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
        if (!sub_1001477C0(v69, this, v245, v246) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v244);
        v247 = *(this + 14);
        v90 = __OFSUB__(v247, 1);
        v248 = v247 - 1;
        if (v248 < 0 == v90)
        {
          *(this + 14) = v248;
        }

        v249 = *(this + 1);
        if (v249 >= *(this + 2) || *v249 != 98)
        {
          continue;
        }

        *(this + 1) = v249 + 1;
        *(a1 + 300) |= 0x400u;
        v29 = *(a1 + 72);
        if (!v29)
        {
LABEL_518:
          operator new();
        }

LABEL_59:
        v285[0] = 0;
        v30 = *(this + 1);
        if (v30 >= *(this + 2) || *v30 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
          {
            return 0;
          }
        }

        else
        {
          v285[0] = *v30;
          *(this + 1) = v30 + 1;
        }

        v250 = *(this + 14);
        v251 = *(this + 15);
        *(this + 14) = v250 + 1;
        if (v250 >= v251)
        {
          return 0;
        }

        v252 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
        if (!sub_10014532C(v29, this, v253, v254) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v252);
        v255 = *(this + 14);
        v90 = __OFSUB__(v255, 1);
        v256 = v255 - 1;
        if (v256 < 0 == v90)
        {
          *(this + 14) = v256;
        }

        v257 = *(this + 1);
        if (v257 >= *(this + 2) || *v257 != 109)
        {
          continue;
        }

        *(this + 1) = v257 + 1;
LABEL_530:
        v285[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 96) = v285[0];
        v258 = *(a1 + 300) | 0x800;
        *(a1 + 300) = v258;
        v259 = *(this + 1);
        if (v259 >= *(this + 2) || *v259 != 114)
        {
          continue;
        }

        *(this + 1) = v259 + 1;
        *(a1 + 300) = v258 | 0x1000;
        v37 = *(a1 + 80);
        if (!v37)
        {
LABEL_534:
          operator new();
        }

LABEL_535:
        v285[0] = 0;
        v260 = *(this + 1);
        if (v260 >= *(this + 2) || *v260 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
          {
            return 0;
          }
        }

        else
        {
          v285[0] = *v260;
          *(this + 1) = v260 + 1;
        }

        v261 = *(this + 14);
        v262 = *(this + 15);
        *(this + 14) = v261 + 1;
        if (v261 >= v262)
        {
          return 0;
        }

        v263 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
        if (!sub_100148CF4(v37, this, v264, v265) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v263);
        v266 = *(this + 14);
        v90 = __OFSUB__(v266, 1);
        v267 = v266 - 1;
        if (v267 < 0 == v90)
        {
          *(this + 14) = v267;
        }

        v268 = *(this + 1);
        if (v268 >= *(this + 2) || *v268 != 122)
        {
          continue;
        }

        *(this + 1) = v268 + 1;
        *(a1 + 300) |= 0x2000u;
        v24 = *(a1 + 88);
        if (!v24)
        {
LABEL_547:
          operator new();
        }

LABEL_49:
        v285[0] = 0;
        v25 = *(this + 1);
        if (v25 >= *(this + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
          {
            return 0;
          }
        }

        else
        {
          v285[0] = *v25;
          *(this + 1) = v25 + 1;
        }

        v269 = *(this + 14);
        v270 = *(this + 15);
        *(this + 14) = v269 + 1;
        if (v269 >= v270)
        {
          return 0;
        }

        v271 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
        if (!sub_100149A28(v24, this, v272, v273) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v271);
        v274 = *(this + 14);
        v90 = __OFSUB__(v274, 1);
        v275 = v274 - 1;
        if (v275 < 0 == v90)
        {
          *(this + 14) = v275;
        }

        v276 = *(this + 1);
        if (*(this + 4) - v276 <= 1 || *v276 != 130 || v276[1] != 1)
        {
          continue;
        }

        *(this + 1) = v276 + 2;
        *(a1 + 300) |= 0x4000u;
        v54 = *(a1 + 104);
        if (!v54)
        {
LABEL_560:
          operator new();
        }

LABEL_138:
        v285[0] = 0;
        v55 = *(this + 1);
        if (v55 >= *(this + 2) || *v55 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
          {
            return 0;
          }
        }

        else
        {
          v285[0] = *v55;
          *(this + 1) = v55 + 1;
        }

        v277 = *(this + 14);
        v278 = *(this + 15);
        *(this + 14) = v277 + 1;
        if (v277 < v278)
        {
          v279 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
          if (sub_100143A24(v54, this, v280, v281))
          {
            if (*(this + 36) == 1)
            {
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v279);
              v282 = *(this + 14);
              v90 = __OFSUB__(v282, 1);
              v283 = v282 - 1;
              if (v283 < 0 == v90)
              {
                *(this + 14) = v283;
              }

              v284 = *(this + 1);
              if (*(this + 4) - v284 > 1 && *v284 == 137 && v284[1] == 1)
              {
                *(this + 1) = v284 + 2;
                *v285 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v285) & 1) == 0)
                {
                  return 0;
                }

LABEL_142:
                *(a1 + 112) = *v285;
                *(a1 + 300) |= 0x8000u;
                v57 = *(this + 1);
                v56 = *(this + 2);
                if (v56 - v57 >= 2 && *v57 == 144 && v57[1] == 1)
                {
                  v58 = (v57 + 2);
                  *(this + 1) = v58;
                  v285[0] = 0;
                  if (v58 < v56)
                  {
LABEL_188:
                    v76 = *v58;
                    if ((v76 & 0x80000000) == 0)
                    {
                      *(this + 1) = v58 + 1;
                      if (v76 > 1)
                      {
                        goto LABEL_269;
                      }

                      goto LABEL_190;
                    }
                  }

LABEL_267:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285);
                  if (!result)
                  {
                    return result;
                  }

                  v76 = v285[0];
                  if (v285[0] > 1)
                  {
LABEL_269:
                    wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 18, v76);
                    goto LABEL_270;
                  }

LABEL_190:
                  *(a1 + 300) |= 0x10000u;
                  *(a1 + 100) = v76;
LABEL_270:
                  v115 = *(this + 1);
                  if (*(this + 4) - v115 >= 2 && *v115 == 157 && v115[1] == 1)
                  {
                    *(this + 1) = v115 + 2;
                    v285[0] = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
                    {
                      return 0;
                    }

LABEL_178:
                    *(a1 + 120) = v285[0];
                    *(a1 + 300) |= 0x20000u;
                    v73 = *(this + 1);
                    if (*(this + 4) - v73 >= 2 && *v73 == 165 && v73[1] == 1)
                    {
                      *(this + 1) = v73 + 2;
                      v285[0] = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
                      {
                        return 0;
                      }

LABEL_36:
                      *(a1 + 124) = v285[0];
                      *(a1 + 300) |= 0x40000u;
                      v20 = *(this + 1);
                      if (*(this + 4) - v20 >= 2 && *v20 == 173 && v20[1] == 1)
                      {
                        *(this + 1) = v20 + 2;
LABEL_83:
                        v285[0] = 0;
                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
                        {
                          return 0;
                        }

                        *(a1 + 128) = v285[0];
                        *(a1 + 300) |= 0x80000u;
                        v38 = *(this + 1);
                        if (*(this + 4) - v38 >= 2 && *v38 == 181 && v38[1] == 1)
                        {
                          *(this + 1) = v38 + 2;
LABEL_198:
                          v285[0] = 0;
                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
                          {
                            return 0;
                          }

                          *(a1 + 248) = v285[0];
                          *(a1 + 304) |= 0x100u;
                          v78 = *(this + 1);
                          if (*(this + 4) - v78 >= 2 && *v78 == 189 && v78[1] == 1)
                          {
                            *(this + 1) = v78 + 2;
                            v285[0] = 0;
                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
                            {
                              return 0;
                            }

LABEL_42:
                            *(a1 + 136) = v285[0];
                            v21 = *(a1 + 300) | 0x200000;
                            *(a1 + 300) = v21;
                            v22 = *(this + 1);
                            if (*(this + 4) - v22 >= 2 && *v22 == 194 && v22[1] == 1)
                            {
                              *(this + 1) = v22 + 2;
                              *(a1 + 300) = v21 | 0x400000;
                              v23 = *(a1 + 144);
                              if (!v23)
                              {
LABEL_75:
                                operator new();
                              }

LABEL_76:
                              v285[0] = 0;
                              v36 = *(this + 1);
                              if (v36 >= *(this + 2) || *v36 < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v285[0] = *v36;
                                *(this + 1) = v36 + 1;
                              }

                              v104 = *(this + 14);
                              v105 = *(this + 15);
                              *(this + 14) = v104 + 1;
                              if (v104 >= v105)
                              {
                                return 0;
                              }

                              v106 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                              if (!sub_10014ADB4(v23, this, v107, v108) || *(this + 36) != 1)
                              {
                                return 0;
                              }

                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v106);
                              v109 = *(this + 14);
                              v90 = __OFSUB__(v109, 1);
                              v110 = v109 - 1;
                              if (v110 < 0 == v90)
                              {
                                *(this + 14) = v110;
                              }

                              v112 = *(this + 1);
                              v111 = *(this + 2);
                              if (v111 - v112 > 1 && *v112 == 200 && v112[1] == 1)
                              {
                                v28 = (v112 + 2);
                                *(this + 1) = v28;
                                v285[0] = 0;
                                if (v28 < v111)
                                {
LABEL_257:
                                  v113 = *v28;
                                  if ((v113 & 0x80000000) == 0)
                                  {
                                    *(this + 1) = v28 + 1;
                                    if (v113 <= 1)
                                    {
                                      goto LABEL_259;
                                    }

                                    goto LABEL_359;
                                  }
                                }

LABEL_357:
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285);
                                if (!result)
                                {
                                  return result;
                                }

                                v113 = v285[0];
                                if (v285[0] <= 1)
                                {
LABEL_259:
                                  *(a1 + 300) |= 0x800000u;
                                  *(a1 + 140) = v113;
                                  goto LABEL_360;
                                }

LABEL_359:
                                wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((a1 + 8), 25, v113);
LABEL_360:
                                v169 = *(this + 1);
                                if (*(this + 4) - v169 >= 2 && *v169 == 209 && v169[1] == 1)
                                {
                                  *(this + 1) = v169 + 2;
                                  *v285 = 0;
                                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v285) & 1) == 0)
                                  {
                                    return 0;
                                  }

LABEL_110:
                                  *(a1 + 152) = *v285;
                                  v45 = *(a1 + 300) | 0x1000000;
                                  *(a1 + 300) = v45;
                                  v46 = *(this + 1);
                                  if (*(this + 4) - v46 >= 2 && *v46 == 218 && v46[1] == 1)
                                  {
                                    *(this + 1) = v46 + 2;
                                    *(a1 + 300) = v45 | 0x2000000;
                                    v26 = *(a1 + 160);
                                    if (!v26)
                                    {
LABEL_114:
                                      operator new();
                                    }

LABEL_115:
                                    v285[0] = 0;
                                    v47 = *(this + 1);
                                    if (v47 >= *(this + 2) || *v47 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v285[0] = *v47;
                                      *(this + 1) = v47 + 1;
                                    }

                                    v95 = *(this + 14);
                                    v96 = *(this + 15);
                                    *(this + 14) = v95 + 1;
                                    if (v95 >= v96)
                                    {
                                      return 0;
                                    }

                                    v97 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                    if (!sub_10014C3CC(v26, this, v98, v99) || *(this + 36) != 1)
                                    {
                                      return 0;
                                    }

                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v97);
                                    v100 = *(this + 14);
                                    v90 = __OFSUB__(v100, 1);
                                    v101 = v100 - 1;
                                    if (v101 < 0 == v90)
                                    {
                                      *(this + 14) = v101;
                                    }

                                    v102 = *(this + 1);
                                    if (*(this + 4) - v102 > 1 && *v102 == 226 && v102[1] == 1)
                                    {
                                      *(this + 1) = v102 + 2;
                                      *(a1 + 300) |= 0x4000000u;
                                      v80 = *(a1 + 168);
                                      if (!v80)
                                      {
LABEL_209:
                                        operator new();
                                      }

LABEL_244:
                                      v285[0] = 0;
                                      v103 = *(this + 1);
                                      if (v103 >= *(this + 2) || *v103 < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v285[0] = *v103;
                                        *(this + 1) = v103 + 1;
                                      }

                                      v160 = *(this + 14);
                                      v161 = *(this + 15);
                                      *(this + 14) = v160 + 1;
                                      if (v160 >= v161)
                                      {
                                        return 0;
                                      }

                                      v162 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                      if (!sub_100165ACC(v80, this, v163, v164) || *(this + 36) != 1)
                                      {
                                        return 0;
                                      }

                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v162);
                                      v165 = *(this + 14);
                                      v90 = __OFSUB__(v165, 1);
                                      v166 = v165 - 1;
                                      if (v166 < 0 == v90)
                                      {
                                        *(this + 14) = v166;
                                      }

                                      v167 = *(this + 1);
                                      if (*(this + 4) - v167 > 1 && *v167 == 234 && v167[1] == 1)
                                      {
                                        *(this + 1) = v167 + 2;
                                        *(a1 + 300) |= 0x8000000u;
                                        v79 = *(a1 + 176);
                                        if (!v79)
                                        {
LABEL_206:
                                          operator new();
                                        }

LABEL_354:
                                        v285[0] = 0;
                                        v168 = *(this + 1);
                                        if (v168 >= *(this + 2) || *v168 < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          v285[0] = *v168;
                                          *(this + 1) = v168 + 1;
                                        }

                                        v179 = *(this + 14);
                                        v180 = *(this + 15);
                                        *(this + 14) = v179 + 1;
                                        if (v179 >= v180)
                                        {
                                          return 0;
                                        }

                                        v181 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                        if (!sub_10014B5CC(v79, this, v182, v183) || *(this + 36) != 1)
                                        {
                                          return 0;
                                        }

                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v181);
                                        v184 = *(this + 14);
                                        v90 = __OFSUB__(v184, 1);
                                        v185 = v184 - 1;
                                        if (v185 < 0 == v90)
                                        {
                                          *(this + 14) = v185;
                                        }

                                        v186 = *(this + 1);
                                        v33 = *(this + 2);
                                        if (v33 - v186 > 1 && *v186 == 240 && v186[1] == 1)
                                        {
                                          v34 = (v186 + 2);
                                          *(this + 1) = v34;
                                          v285[0] = 0;
                                          if (v34 < v33)
                                          {
LABEL_388:
                                            v187 = *v34;
                                            if ((v187 & 0x80000000) == 0)
                                            {
                                              v188 = (v34 + 1);
                                              *(this + 1) = v188;
                                              goto LABEL_405;
                                            }
                                          }

LABEL_403:
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v187 = v285[0];
                                          v188 = *(this + 1);
                                          v33 = *(this + 2);
LABEL_405:
                                          *(a1 + 192) = v187 != 0;
                                          *(a1 + 300) |= 0x10000000u;
                                          if (v33 - v188 >= 2 && *v188 == 249 && v188[1] == 1)
                                          {
                                            *(this + 1) = v188 + 2;
                                            *v285 = 0;
                                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v285) & 1) == 0)
                                            {
                                              return 0;
                                            }

LABEL_93:
                                            *(a1 + 184) = *v285;
                                            *(a1 + 300) |= 0x20000000u;
                                            v42 = *(this + 1);
                                            v41 = *(this + 2);
                                            if (v41 - v42 >= 2 && *v42 == 128 && v42[1] == 2)
                                            {
                                              v43 = (v42 + 2);
                                              *(this + 1) = v43;
                                              v285[0] = 0;
                                              if (v43 >= v41)
                                              {
                                                goto LABEL_260;
                                              }

LABEL_149:
                                              v59 = *v43;
                                              if ((v59 & 0x80000000) != 0)
                                              {
LABEL_260:
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v59 = v285[0];
                                                v60 = *(this + 1);
                                                v41 = *(this + 2);
                                                goto LABEL_262;
                                              }

                                              v60 = (v43 + 1);
                                              *(this + 1) = v60;
LABEL_262:
                                              *(a1 + 193) = v59 != 0;
                                              *(a1 + 300) |= 0x40000000u;
                                              if (v41 - v60 >= 2 && *v60 == 141 && v60[1] == 2)
                                              {
                                                *(this + 1) = v60 + 2;
                                                v285[0] = 0;
                                                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
                                                {
                                                  return 0;
                                                }

LABEL_100:
                                                *(a1 + 196) = v285[0];
                                                *(a1 + 300) |= 0x80000000;
                                                v44 = *(this + 1);
                                                if (*(this + 4) - v44 >= 2 && *v44 == 146 && v44[1] == 2)
                                                {
                                                  *(this + 1) = v44 + 2;
LABEL_217:
                                                  *(a1 + 304) |= 1u;
                                                  v82 = *(a1 + 200);
                                                  if (!v82)
                                                  {
                                                    operator new();
                                                  }

                                                  v285[0] = 0;
                                                  v83 = *(this + 1);
                                                  if (v83 >= *(this + 2) || *v83 < 0)
                                                  {
                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                                    {
                                                      return 0;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v285[0] = *v83;
                                                    *(this + 1) = v83 + 1;
                                                  }

                                                  v84 = *(this + 14);
                                                  v85 = *(this + 15);
                                                  *(this + 14) = v84 + 1;
                                                  if (v84 >= v85)
                                                  {
                                                    return 0;
                                                  }

                                                  v86 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                                  if (!sub_100144428(v82, this, v87, v88) || *(this + 36) != 1)
                                                  {
                                                    return 0;
                                                  }

                                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v86);
                                                  v89 = *(this + 14);
                                                  v90 = __OFSUB__(v89, 1);
                                                  v91 = v89 - 1;
                                                  if (v91 < 0 == v90)
                                                  {
                                                    *(this + 14) = v91;
                                                  }

                                                  v92 = *(this + 1);
                                                  v31 = *(this + 2);
                                                  if (v31 - v92 > 1 && *v92 == 152 && v92[1] == 2)
                                                  {
                                                    v32 = (v92 + 2);
                                                    *(this + 1) = v32;
                                                    v285[0] = 0;
                                                    if (v32 >= v31)
                                                    {
                                                      goto LABEL_310;
                                                    }

LABEL_232:
                                                    v93 = *v32;
                                                    if ((v93 & 0x80000000) != 0)
                                                    {
LABEL_310:
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v93 = v285[0];
                                                      v94 = *(this + 1);
                                                      v31 = *(this + 2);
                                                      goto LABEL_312;
                                                    }

                                                    v94 = (v32 + 1);
                                                    *(this + 1) = v94;
LABEL_312:
                                                    *(a1 + 194) = v93 != 0;
                                                    v141 = *(a1 + 304) | 2;
                                                    *(a1 + 304) = v141;
                                                    if (v31 - v94 >= 2 && *v94 == 162 && v94[1] == 2)
                                                    {
                                                      *(this + 1) = v94 + 2;
                                                      *(a1 + 304) = v141 | 4;
                                                      v74 = *(a1 + 208);
                                                      if (!v74)
                                                      {
LABEL_316:
                                                        operator new();
                                                      }

LABEL_317:
                                                      v285[0] = 0;
                                                      v142 = *(this + 1);
                                                      if (v142 >= *(this + 2) || *v142 < 0)
                                                      {
                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v285[0] = *v142;
                                                        *(this + 1) = v142 + 1;
                                                      }

                                                      v143 = *(this + 14);
                                                      v144 = *(this + 15);
                                                      *(this + 14) = v143 + 1;
                                                      if (v143 >= v144)
                                                      {
                                                        return 0;
                                                      }

                                                      v145 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                                      if (!sub_100155394(v74, this, v146, v147) || *(this + 36) != 1)
                                                      {
                                                        return 0;
                                                      }

                                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v145);
                                                      v148 = *(this + 14);
                                                      v90 = __OFSUB__(v148, 1);
                                                      v149 = v148 - 1;
                                                      if (v149 < 0 == v90)
                                                      {
                                                        *(this + 14) = v149;
                                                      }

                                                      v150 = *(this + 1);
                                                      if (*(this + 4) - v150 > 1 && *v150 == 170 && v150[1] == 2)
                                                      {
                                                        *(this + 1) = v150 + 2;
                                                        *(a1 + 304) |= 8u;
                                                        v81 = *(a1 + 216);
                                                        if (!v81)
                                                        {
LABEL_212:
                                                          operator new();
                                                        }

LABEL_330:
                                                        v285[0] = 0;
                                                        v151 = *(this + 1);
                                                        if (v151 >= *(this + 2) || *v151 < 0)
                                                        {
                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                                          {
                                                            return 0;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v285[0] = *v151;
                                                          *(this + 1) = v151 + 1;
                                                        }

                                                        v152 = *(this + 14);
                                                        v153 = *(this + 15);
                                                        *(this + 14) = v152 + 1;
                                                        if (v152 >= v153)
                                                        {
                                                          return 0;
                                                        }

                                                        v154 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                                        if (!sub_10015610C(v81, this, v155, v156) || *(this + 36) != 1)
                                                        {
                                                          return 0;
                                                        }

                                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v154);
                                                        v157 = *(this + 14);
                                                        v90 = __OFSUB__(v157, 1);
                                                        v158 = v157 - 1;
                                                        if (v158 < 0 == v90)
                                                        {
                                                          *(this + 14) = v158;
                                                        }

                                                        v159 = *(this + 1);
                                                        if (*(this + 4) - v159 > 1 && *v159 == 181 && v159[1] == 2)
                                                        {
                                                          *(this + 1) = v159 + 2;
                                                          v285[0] = 0;
                                                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
                                                          {
                                                            return 0;
                                                          }

LABEL_27:
                                                          *(a1 + 132) = v285[0];
                                                          *(a1 + 300) |= 0x100000u;
                                                          v18 = *(this + 1);
                                                          if (*(this + 4) - v18 >= 2 && *v18 == 189 && v18[1] == 2)
                                                          {
                                                            *(this + 1) = v18 + 2;
LABEL_159:
                                                            v285[0] = 0;
                                                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
                                                            {
                                                              return 0;
                                                            }

                                                            *(a1 + 224) = v285[0];
                                                            v66 = *(a1 + 304) | 0x10;
                                                            *(a1 + 304) = v66;
                                                            v67 = *(this + 1);
                                                            if (*(this + 4) - v67 >= 2 && *v67 == 194 && v67[1] == 2)
                                                            {
                                                              *(this + 1) = v67 + 2;
                                                              *(a1 + 304) = v66 | 0x20;
                                                              v17 = *(a1 + 232);
                                                              if (!v17)
                                                              {
LABEL_164:
                                                                operator new();
                                                              }

LABEL_165:
                                                              v285[0] = 0;
                                                              v68 = *(this + 1);
                                                              if (v68 >= *(this + 2) || *v68 < 0)
                                                              {
                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v285[0] = *v68;
                                                                *(this + 1) = v68 + 1;
                                                              }

                                                              v116 = *(this + 14);
                                                              v117 = *(this + 15);
                                                              *(this + 14) = v116 + 1;
                                                              if (v116 >= v117)
                                                              {
                                                                return 0;
                                                              }

                                                              v118 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                                              if (!sub_100144428(v17, this, v119, v120) || *(this + 36) != 1)
                                                              {
                                                                return 0;
                                                              }

                                                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v118);
                                                              v121 = *(this + 14);
                                                              v90 = __OFSUB__(v121, 1);
                                                              v122 = v121 - 1;
                                                              if (v122 < 0 == v90)
                                                              {
                                                                *(this + 14) = v122;
                                                              }

                                                              v123 = *(this + 1);
                                                              if (*(this + 4) - v123 > 1 && *v123 == 205 && v123[1] == 2)
                                                              {
                                                                *(this + 1) = v123 + 2;
                                                                v285[0] = 0;
                                                                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
                                                                {
                                                                  return 0;
                                                                }

LABEL_17:
                                                                *(a1 + 228) = v285[0];
                                                                v14 = *(a1 + 304) | 0x40;
                                                                *(a1 + 304) = v14;
                                                                v15 = *(this + 1);
                                                                if (*(this + 4) - v15 >= 2 && *v15 == 210 && v15[1] == 2)
                                                                {
                                                                  *(this + 1) = v15 + 2;
                                                                  *(a1 + 304) = v14 | 0x80;
                                                                  v16 = *(a1 + 240);
                                                                  if (!v16)
                                                                  {
LABEL_69:
                                                                    operator new();
                                                                  }

LABEL_70:
                                                                  v285[0] = 0;
                                                                  v35 = *(this + 1);
                                                                  if (v35 >= *(this + 2) || *v35 < 0)
                                                                  {
                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v285[0] = *v35;
                                                                    *(this + 1) = v35 + 1;
                                                                  }

                                                                  v124 = *(this + 14);
                                                                  v125 = *(this + 15);
                                                                  *(this + 14) = v124 + 1;
                                                                  if (v124 >= v125)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  v126 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                                                  if (!sub_1001477C0(v16, this, v127, v128) || *(this + 36) != 1)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v126);
                                                                  v129 = *(this + 14);
                                                                  v90 = __OFSUB__(v129, 1);
                                                                  v130 = v129 - 1;
                                                                  if (v130 < 0 == v90)
                                                                  {
                                                                    *(this + 14) = v130;
                                                                  }

                                                                  v131 = *(this + 1);
                                                                  if (*(this + 4) - v131 > 1 && *v131 == 221 && v131[1] == 2)
                                                                  {
                                                                    *(this + 1) = v131 + 2;
                                                                    v285[0] = 0;
                                                                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285) & 1) == 0)
                                                                    {
                                                                      return 0;
                                                                    }

LABEL_120:
                                                                    *(a1 + 252) = v285[0];
                                                                    v48 = *(a1 + 304) | 0x200;
                                                                    *(a1 + 304) = v48;
                                                                    v49 = *(this + 1);
                                                                    if (*(this + 4) - v49 >= 2 && *v49 == 226 && v49[1] == 2)
                                                                    {
                                                                      *(this + 1) = v49 + 2;
                                                                      *(a1 + 304) = v48 | 0x400;
                                                                      v50 = *(a1 + 256);
                                                                      if (!v50)
                                                                      {
LABEL_193:
                                                                        operator new();
                                                                      }

LABEL_194:
                                                                      v285[0] = 0;
                                                                      v77 = *(this + 1);
                                                                      if (v77 >= *(this + 2) || *v77 < 0)
                                                                      {
                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                                                        {
                                                                          return 0;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v285[0] = *v77;
                                                                        *(this + 1) = v77 + 1;
                                                                      }

                                                                      v132 = *(this + 14);
                                                                      v133 = *(this + 15);
                                                                      *(this + 14) = v132 + 1;
                                                                      if (v132 >= v133)
                                                                      {
                                                                        return 0;
                                                                      }

                                                                      v134 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                                                      if (!sub_1001664A8(v50, this, v135, v136) || *(this + 36) != 1)
                                                                      {
                                                                        return 0;
                                                                      }

                                                                      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v134);
                                                                      v137 = *(this + 14);
                                                                      v90 = __OFSUB__(v137, 1);
                                                                      v138 = v137 - 1;
                                                                      if (v138 < 0 == v90)
                                                                      {
                                                                        *(this + 14) = v138;
                                                                      }

                                                                      v139 = *(this + 1);
                                                                      if (*(this + 4) - v139 > 1 && *v139 == 234 && v139[1] == 2)
                                                                      {
                                                                        *(this + 1) = v139 + 2;
                                                                        *(a1 + 304) |= 0x800u;
                                                                        v13 = *(a1 + 264);
                                                                        if (!v13)
                                                                        {
LABEL_14:
                                                                          operator new();
                                                                        }

LABEL_307:
                                                                        v285[0] = 0;
                                                                        v140 = *(this + 1);
                                                                        if (v140 >= *(this + 2) || *v140 < 0)
                                                                        {
                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v285[0] = *v140;
                                                                          *(this + 1) = v140 + 1;
                                                                        }

                                                                        v170 = *(this + 14);
                                                                        v171 = *(this + 15);
                                                                        *(this + 14) = v170 + 1;
                                                                        if (v170 >= v171)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        v172 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                                                        if (!sub_100168018(v13, this, v173, v174) || *(this + 36) != 1)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v172);
                                                                        v175 = *(this + 14);
                                                                        v90 = __OFSUB__(v175, 1);
                                                                        v176 = v175 - 1;
                                                                        if (v176 < 0 == v90)
                                                                        {
                                                                          *(this + 14) = v176;
                                                                        }

                                                                        v177 = *(this + 1);
                                                                        if (*(this + 4) - v177 > 1 && *v177 == 242 && v177[1] == 2)
                                                                        {
                                                                          *(this + 1) = v177 + 2;
                                                                          *(a1 + 304) |= 0x1000u;
                                                                          v19 = *(a1 + 272);
                                                                          if (!v19)
                                                                          {
LABEL_33:
                                                                            operator new();
                                                                          }

LABEL_375:
                                                                          v285[0] = 0;
                                                                          v178 = *(this + 1);
                                                                          if (v178 >= *(this + 2) || *v178 < 0)
                                                                          {
                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                                                            {
                                                                              return 0;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v285[0] = *v178;
                                                                            *(this + 1) = v178 + 1;
                                                                          }

                                                                          v189 = *(this + 14);
                                                                          v190 = *(this + 15);
                                                                          *(this + 14) = v189 + 1;
                                                                          if (v189 >= v190)
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          v191 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                                                          if (!sub_100169644(v19, this, v192, v193) || *(this + 36) != 1)
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v191);
                                                                          v194 = *(this + 14);
                                                                          v90 = __OFSUB__(v194, 1);
                                                                          v195 = v194 - 1;
                                                                          if (v195 < 0 == v90)
                                                                          {
                                                                            *(this + 14) = v195;
                                                                          }

                                                                          v196 = *(this + 1);
                                                                          if (*(this + 4) - v196 > 1 && *v196 == 250 && v196[1] == 2)
                                                                          {
                                                                            *(this + 1) = v196 + 2;
                                                                            *(a1 + 304) |= 0x2000u;
                                                                            v53 = *(a1 + 280);
                                                                            if (!v53)
                                                                            {
LABEL_135:
                                                                              operator new();
                                                                            }

LABEL_400:
                                                                            v285[0] = 0;
                                                                            v197 = *(this + 1);
                                                                            if (v197 >= *(this + 2) || *v197 < 0)
                                                                            {
                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                                                              {
                                                                                return 0;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v285[0] = *v197;
                                                                              *(this + 1) = v197 + 1;
                                                                            }

                                                                            v198 = *(this + 14);
                                                                            v199 = *(this + 15);
                                                                            *(this + 14) = v198 + 1;
                                                                            if (v198 >= v199)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            v200 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                                                            if (!sub_100166C38(v53, this, v201, v202) || *(this + 36) != 1)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v200);
                                                                            v203 = *(this + 14);
                                                                            v90 = __OFSUB__(v203, 1);
                                                                            v204 = v203 - 1;
                                                                            if (v204 < 0 == v90)
                                                                            {
                                                                              *(this + 14) = v204;
                                                                            }

                                                                            v205 = *(this + 1);
                                                                            if (*(this + 4) - v205 > 1 && *v205 == 130 && v205[1] == 3)
                                                                            {
                                                                              *(this + 1) = v205 + 2;
                                                                              *(a1 + 304) |= 0x4000u;
                                                                              v63 = *(a1 + 288);
                                                                              if (!v63)
                                                                              {
LABEL_155:
                                                                                operator new();
                                                                              }

LABEL_420:
                                                                              v285[0] = 0;
                                                                              v206 = *(this + 1);
                                                                              if (v206 >= *(this + 2) || *v206 < 0)
                                                                              {
                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v285))
                                                                                {
                                                                                  return 0;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v285[0] = *v206;
                                                                                *(this + 1) = v206 + 1;
                                                                              }

                                                                              v207 = *(this + 14);
                                                                              v208 = *(this + 15);
                                                                              *(this + 14) = v207 + 1;
                                                                              if (v207 >= v208)
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              v209 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v285[0]);
                                                                              if (!sub_10016758C(v63, this, v210, v211) || *(this + 36) != 1)
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v209);
                                                                              v212 = *(this + 14);
                                                                              v90 = __OFSUB__(v212, 1);
                                                                              v213 = v212 - 1;
                                                                              if (v213 < 0 == v90)
                                                                              {
                                                                                *(this + 14) = v213;
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
                        }
                      }
                    }
                  }
                }
              }

              continue;
            }
          }
        }

        return 0;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v51 = *(this + 1);
        v9 = *(this + 2);
        if (v51 >= v9)
        {
          goto LABEL_440;
        }

        goto LABEL_437;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v40 = *(this + 1);
        v39 = *(this + 2);
        v285[0] = 0;
        if (v40 >= v39)
        {
          goto LABEL_447;
        }

        goto LABEL_444;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v62 = *(this + 1);
        v61 = *(this + 2);
        goto LABEL_453;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v65 = *(this + 1);
        v64 = *(this + 2);
        goto LABEL_463;
      case 7u:
        if (v8 == 5)
        {
          goto LABEL_473;
        }

        goto LABEL_214;
      case 8u:
        if (v8 == 5)
        {
          goto LABEL_477;
        }

        goto LABEL_214;
      case 9u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x80u;
        v52 = *(a1 + 48);
        if (!v52)
        {
          goto LABEL_481;
        }

        goto LABEL_482;
      case 0xAu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x100u;
        v71 = *(a1 + 56);
        if (v71)
        {
          goto LABEL_174;
        }

        goto LABEL_494;
      case 0xBu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x200u;
        v69 = *(a1 + 64);
        if (v69)
        {
          goto LABEL_170;
        }

        goto LABEL_506;
      case 0xCu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x400u;
        v29 = *(a1 + 72);
        if (v29)
        {
          goto LABEL_59;
        }

        goto LABEL_518;
      case 0xDu:
        if (v8 == 5)
        {
          goto LABEL_530;
        }

        goto LABEL_214;
      case 0xEu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x1000u;
        v37 = *(a1 + 80);
        if (!v37)
        {
          goto LABEL_534;
        }

        goto LABEL_535;
      case 0xFu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x2000u;
        v24 = *(a1 + 88);
        if (v24)
        {
          goto LABEL_49;
        }

        goto LABEL_547;
      case 0x10u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x4000u;
        v54 = *(a1 + 104);
        if (v54)
        {
          goto LABEL_138;
        }

        goto LABEL_560;
      case 0x11u:
        if (v8 != 1)
        {
          goto LABEL_214;
        }

        *v285 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v285))
        {
          goto LABEL_142;
        }

        return 0;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v58 = *(this + 1);
        v75 = *(this + 2);
        v285[0] = 0;
        if (v58 < v75)
        {
          goto LABEL_188;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v285[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285))
        {
          goto LABEL_178;
        }

        return 0;
      case 0x14u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v285[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285))
        {
          goto LABEL_36;
        }

        return 0;
      case 0x15u:
        if (v8 == 5)
        {
          goto LABEL_83;
        }

        goto LABEL_214;
      case 0x16u:
        if (v8 == 5)
        {
          goto LABEL_198;
        }

        goto LABEL_214;
      case 0x17u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v285[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285))
        {
          goto LABEL_42;
        }

        return 0;
      case 0x18u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x400000u;
        v23 = *(a1 + 144);
        if (!v23)
        {
          goto LABEL_75;
        }

        goto LABEL_76;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v28 = *(this + 1);
        v27 = *(this + 2);
        v285[0] = 0;
        if (v28 >= v27)
        {
          goto LABEL_357;
        }

        goto LABEL_257;
      case 0x1Au:
        if (v8 != 1)
        {
          goto LABEL_214;
        }

        *v285 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v285))
        {
          goto LABEL_110;
        }

        return 0;
      case 0x1Bu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x2000000u;
        v26 = *(a1 + 160);
        if (!v26)
        {
          goto LABEL_114;
        }

        goto LABEL_115;
      case 0x1Cu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x4000000u;
        v80 = *(a1 + 168);
        if (!v80)
        {
          goto LABEL_209;
        }

        goto LABEL_244;
      case 0x1Du:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 300) |= 0x8000000u;
        v79 = *(a1 + 176);
        if (!v79)
        {
          goto LABEL_206;
        }

        goto LABEL_354;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v34 = *(this + 1);
        v33 = *(this + 2);
        v285[0] = 0;
        if (v34 >= v33)
        {
          goto LABEL_403;
        }

        goto LABEL_388;
      case 0x1Fu:
        if (v8 != 1)
        {
          goto LABEL_214;
        }

        *v285 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v285))
        {
          goto LABEL_93;
        }

        return 0;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v43 = *(this + 1);
        v41 = *(this + 2);
        v285[0] = 0;
        if (v43 < v41)
        {
          goto LABEL_149;
        }

        goto LABEL_260;
      case 0x21u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v285[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285))
        {
          goto LABEL_100;
        }

        return 0;
      case 0x22u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        goto LABEL_217;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_214;
        }

        v32 = *(this + 1);
        v31 = *(this + 2);
        v285[0] = 0;
        if (v32 >= v31)
        {
          goto LABEL_310;
        }

        goto LABEL_232;
      case 0x24u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 4u;
        v74 = *(a1 + 208);
        if (!v74)
        {
          goto LABEL_316;
        }

        goto LABEL_317;
      case 0x25u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 8u;
        v81 = *(a1 + 216);
        if (!v81)
        {
          goto LABEL_212;
        }

        goto LABEL_330;
      case 0x26u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v285[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285))
        {
          goto LABEL_27;
        }

        return 0;
      case 0x27u:
        if (v8 == 5)
        {
          goto LABEL_159;
        }

        goto LABEL_214;
      case 0x28u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x20u;
        v17 = *(a1 + 232);
        if (!v17)
        {
          goto LABEL_164;
        }

        goto LABEL_165;
      case 0x29u:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v285[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285))
        {
          goto LABEL_17;
        }

        return 0;
      case 0x2Au:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x80u;
        v16 = *(a1 + 240);
        if (!v16)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      case 0x2Bu:
        if (v8 != 5)
        {
          goto LABEL_214;
        }

        v285[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v285))
        {
          goto LABEL_120;
        }

        return 0;
      case 0x2Cu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x400u;
        v50 = *(a1 + 256);
        if (!v50)
        {
          goto LABEL_193;
        }

        goto LABEL_194;
      case 0x2Du:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x800u;
        v13 = *(a1 + 264);
        if (!v13)
        {
          goto LABEL_14;
        }

        goto LABEL_307;
      case 0x2Eu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x1000u;
        v19 = *(a1 + 272);
        if (!v19)
        {
          goto LABEL_33;
        }

        goto LABEL_375;
      case 0x2Fu:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x2000u;
        v53 = *(a1 + 280);
        if (!v53)
        {
          goto LABEL_135;
        }

        goto LABEL_400;
      case 0x30u:
        if (v8 != 2)
        {
          goto LABEL_214;
        }

        *(a1 + 304) |= 0x4000u;
        v63 = *(a1 + 288);
        if (!v63)
        {
          goto LABEL_155;
        }

        goto LABEL_420;
      default:
LABEL_214:
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

uint64_t sub_10015152C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 300);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 16), a2, a4);
    v6 = *(v5 + 300);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 28), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_61:
    v14 = *(v5 + 56);
    if (v14)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, v14, a2, a4);
      v6 = *(v5 + 300);
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xA, *(qword_10045E250 + 56), a2, a4);
      v6 = *(v5 + 300);
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_65;
      }
    }

LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_69:
    v16 = *(v5 + 72);
    if (v16)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xC, v16, a2, a4);
      v6 = *(v5 + 300);
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xC, *(qword_10045E250 + 72), a2, a4);
      v6 = *(v5 + 300);
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_73;
      }
    }

LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_74:
    v17 = *(v5 + 80);
    if (v17)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xE, v17, a2, a4);
      v6 = *(v5 + 300);
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xE, *(qword_10045E250 + 80), a2, a4);
      v6 = *(v5 + 300);
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_78;
      }
    }

LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_82:
    v19 = *(v5 + 104);
    if (v19)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x10, v19, a2, a4);
      v6 = *(v5 + 300);
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x10, *(qword_10045E250 + 104), a2, a4);
      v6 = *(v5 + 300);
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_86;
      }
    }

LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_87;
  }

LABEL_57:
  v13 = *(v5 + 48);
  if (v13)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, v13, a2, a4);
    v6 = *(v5 + 300);
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(9, *(qword_10045E250 + 48), a2, a4);
    v6 = *(v5 + 300);
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_61;
    }
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_11;
  }

LABEL_65:
  v15 = *(v5 + 64);
  if (v15)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xB, v15, a2, a4);
    v6 = *(v5 + 300);
    if ((v6 & 0x400) != 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xB, *(qword_10045E250 + 64), a2, a4);
    v6 = *(v5 + 300);
    if ((v6 & 0x400) != 0)
    {
      goto LABEL_69;
    }
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_13;
  }

LABEL_73:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 96), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_74;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_15;
  }

LABEL_78:
  v18 = *(v5 + 88);
  if (v18)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xF, v18, a2, a4);
    v6 = *(v5 + 300);
    if ((v6 & 0x4000) != 0)
    {
      goto LABEL_82;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0xF, *(qword_10045E250 + 88), a2, a4);
    v6 = *(v5 + 300);
    if ((v6 & 0x4000) != 0)
    {
      goto LABEL_82;
    }
  }

LABEL_16:
  if ((v6 & 0x8000) == 0)
  {
    goto LABEL_17;
  }

LABEL_86:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 112), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 100), a2, a4);
  v6 = *(v5 + 300);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x13, a2, *(v5 + 120), a3);
  v6 = *(v5 + 300);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x14, a2, *(v5 + 124), a3);
  if ((*(v5 + 300) & 0x80000) == 0)
  {
LABEL_21:
    if ((*(v5 + 305) & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x15, a2, *(v5 + 128), a3);
  if ((*(v5 + 305) & 1) == 0)
  {
LABEL_22:
    v7 = *(v5 + 300);
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x16, a2, *(v5 + 248), a3);
  v7 = *(v5 + 300);
  if ((v7 & 0x200000) == 0)
  {
LABEL_23:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_93:
    v20 = *(v5 + 144);
    if (v20)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x18, v20, a2, a4);
      v7 = *(v5 + 300);
      if ((v7 & 0x800000) != 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x18, *(qword_10045E250 + 144), a2, a4);
      v7 = *(v5 + 300);
      if ((v7 & 0x800000) != 0)
      {
        goto LABEL_97;
      }
    }

LABEL_25:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_98;
  }

LABEL_92:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x17, a2, *(v5 + 136), a3);
  v7 = *(v5 + 300);
  if ((v7 & 0x400000) != 0)
  {
    goto LABEL_93;
  }

LABEL_24:
  if ((v7 & 0x800000) == 0)
  {
    goto LABEL_25;
  }

LABEL_97:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x19, *(v5 + 140), a2, a4);
  v7 = *(v5 + 300);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_99:
    v21 = *(v5 + 160);
    if (v21)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1B, v21, a2, a4);
      v7 = *(v5 + 300);
      if ((v7 & 0x4000000) != 0)
      {
        goto LABEL_103;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1B, *(qword_10045E250 + 160), a2, a4);
      v7 = *(v5 + 300);
      if ((v7 & 0x4000000) != 0)
      {
        goto LABEL_103;
      }
    }

LABEL_28:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_107:
    v23 = *(v5 + 176);
    if (v23)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1D, v23, a2, a4);
      v7 = *(v5 + 300);
      if ((v7 & 0x10000000) != 0)
      {
        goto LABEL_111;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1D, *(qword_10045E250 + 176), a2, a4);
      v7 = *(v5 + 300);
      if ((v7 & 0x10000000) != 0)
      {
        goto LABEL_111;
      }
    }

LABEL_30:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_112;
  }

LABEL_98:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 152), a3);
  v7 = *(v5 + 300);
  if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_99;
  }

LABEL_27:
  if ((v7 & 0x4000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_103:
  v22 = *(v5 + 168);
  if (v22)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1C, v22, a2, a4);
    v7 = *(v5 + 300);
    if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_107;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x1C, *(qword_10045E250 + 168), a2, a4);
    v7 = *(v5 + 300);
    if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_107;
    }
  }

LABEL_29:
  if ((v7 & 0x10000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_111:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1E, *(v5 + 192), a2, a4);
  v7 = *(v5 + 300);
  if ((v7 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1F, a2, *(v5 + 184), a3);
  v7 = *(v5 + 300);
  if ((v7 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x20, *(v5 + 193), a2, a4);
  if ((*(v5 + 300) & 0x80000000) == 0)
  {
LABEL_33:
    v8 = *(v5 + 304);
    if ((v8 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_115:
    v24 = *(v5 + 200);
    if (v24)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x22, v24, a2, a4);
      v8 = *(v5 + 304);
      if ((v8 & 2) != 0)
      {
        goto LABEL_119;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x22, *(qword_10045E250 + 200), a2, a4);
      v8 = *(v5 + 304);
      if ((v8 & 2) != 0)
      {
        goto LABEL_119;
      }
    }

LABEL_35:
    if ((v8 & 4) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_120;
  }

LABEL_114:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x21, a2, *(v5 + 196), a3);
  v8 = *(v5 + 304);
  if (v8)
  {
    goto LABEL_115;
  }

LABEL_34:
  if ((v8 & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_119:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x23, *(v5 + 194), a2, a4);
  v8 = *(v5 + 304);
  if ((v8 & 4) == 0)
  {
LABEL_36:
    if ((v8 & 8) == 0)
    {
      goto LABEL_37;
    }

LABEL_124:
    v26 = *(v5 + 216);
    if (v26)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x25, v26, a2, a4);
      if ((*(v5 + 302) & 0x10) != 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x25, *(qword_10045E250 + 216), a2, a4);
      if ((*(v5 + 302) & 0x10) != 0)
      {
        goto LABEL_128;
      }
    }

LABEL_38:
    v9 = *(v5 + 304);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_129;
  }

LABEL_120:
  v25 = *(v5 + 208);
  if (v25)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x24, v25, a2, a4);
    if ((*(v5 + 304) & 8) != 0)
    {
      goto LABEL_124;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x24, *(qword_10045E250 + 208), a2, a4);
    if ((*(v5 + 304) & 8) != 0)
    {
      goto LABEL_124;
    }
  }

LABEL_37:
  if ((*(v5 + 302) & 0x10) == 0)
  {
    goto LABEL_38;
  }

LABEL_128:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x26, a2, *(v5 + 132), a3);
  v9 = *(v5 + 304);
  if ((v9 & 0x10) == 0)
  {
LABEL_39:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_40;
    }

LABEL_130:
    v27 = *(v5 + 232);
    if (v27)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x28, v27, a2, a4);
      v9 = *(v5 + 304);
      if ((v9 & 0x40) != 0)
      {
        goto LABEL_134;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x28, *(qword_10045E250 + 232), a2, a4);
      v9 = *(v5 + 304);
      if ((v9 & 0x40) != 0)
      {
        goto LABEL_134;
      }
    }

LABEL_41:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_42;
    }

LABEL_135:
    v28 = *(v5 + 240);
    if (v28)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2A, v28, a2, a4);
      v9 = *(v5 + 304);
      if ((v9 & 0x200) != 0)
      {
        goto LABEL_139;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2A, *(qword_10045E250 + 240), a2, a4);
      v9 = *(v5 + 304);
      if ((v9 & 0x200) != 0)
      {
        goto LABEL_139;
      }
    }

LABEL_43:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_140;
  }

LABEL_129:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x27, a2, *(v5 + 224), a3);
  v9 = *(v5 + 304);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_130;
  }

LABEL_40:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_134:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x29, a2, *(v5 + 228), a3);
  v9 = *(v5 + 304);
  if ((v9 & 0x80) != 0)
  {
    goto LABEL_135;
  }

LABEL_42:
  if ((v9 & 0x200) == 0)
  {
    goto LABEL_43;
  }

LABEL_139:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2B, a2, *(v5 + 252), a3);
  v9 = *(v5 + 304);
  if ((v9 & 0x400) == 0)
  {
LABEL_44:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_45;
    }

LABEL_144:
    v30 = *(v5 + 264);
    if (v30)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2D, v30, a2, a4);
      v9 = *(v5 + 304);
      if ((v9 & 0x1000) != 0)
      {
        goto LABEL_148;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2D, *(qword_10045E250 + 264), a2, a4);
      v9 = *(v5 + 304);
      if ((v9 & 0x1000) != 0)
      {
        goto LABEL_148;
      }
    }

LABEL_46:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

LABEL_152:
    v32 = *(v5 + 280);
    if (v32)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2F, v32, a2, a4);
      if ((*(v5 + 304) & 0x4000) != 0)
      {
        goto LABEL_156;
      }
    }

    else
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2F, *(qword_10045E250 + 280), a2, a4);
      if ((*(v5 + 304) & 0x4000) != 0)
      {
        goto LABEL_156;
      }
    }

LABEL_48:
    v12 = *(v5 + 8);
    v11 = (v5 + 8);
    v10 = v12;
    if (!v12)
    {
      return result;
    }

    goto LABEL_160;
  }

LABEL_140:
  v29 = *(v5 + 256);
  if (v29)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2C, v29, a2, a4);
    v9 = *(v5 + 304);
    if ((v9 & 0x800) != 0)
    {
      goto LABEL_144;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2C, *(qword_10045E250 + 256), a2, a4);
    v9 = *(v5 + 304);
    if ((v9 & 0x800) != 0)
    {
      goto LABEL_144;
    }
  }

LABEL_45:
  if ((v9 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

LABEL_148:
  v31 = *(v5 + 272);
  if (v31)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2E, v31, a2, a4);
    v9 = *(v5 + 304);
    if ((v9 & 0x2000) != 0)
    {
      goto LABEL_152;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x2E, *(qword_10045E250 + 272), a2, a4);
    v9 = *(v5 + 304);
    if ((v9 & 0x2000) != 0)
    {
      goto LABEL_152;
    }
  }

LABEL_47:
  if ((v9 & 0x4000) == 0)
  {
    goto LABEL_48;
  }

LABEL_156:
  v33 = *(v5 + 288);
  if (v33)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x30, v33, a2, a4);
    v34 = *(v5 + 8);
    v11 = (v5 + 8);
    v10 = v34;
    if (!v34)
    {
      return result;
    }
  }

  else
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(0x30, *(qword_10045E250 + 288), a2, a4);
    v35 = *(v5 + 8);
    v11 = (v5 + 8);
    v10 = v35;
    if (!v35)
    {
      return result;
    }
  }

LABEL_160:
  if (*v10 != v10[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100151E10(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 75);
  if (v5)
  {
    v7 = *(this + 2);
    *a2 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v7, a2 + 1, a3);
    if ((*(this + 75) & 2) == 0)
    {
LABEL_3:
      if ((*(this + 300) & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v9 = *(this + 7);
      *v3 = 24;
      v10 = v3 + 1;
      if ((v9 & 0x80000000) != 0)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v9, v10, a3);
        if ((*(this + 300) & 8) != 0)
        {
          goto LABEL_22;
        }
      }

      else if (v9 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v10, a3);
        if ((*(this + 300) & 8) != 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *(v3 + 1) = v9;
        v3 = (v3 + 2);
        if ((*(this + 300) & 8) != 0)
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      if ((*(this + 300) & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_29:
      v13 = *(this + 9);
      *v3 = 40;
      v14 = v3 + 1;
      if ((v13 & 0x80000000) != 0)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v13, v14, a3);
        v6 = *(this + 75);
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_36;
        }
      }

      else if (v13 > 0x7F)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v13, v14, a3);
        v6 = *(this + 75);
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        *(v3 + 1) = v13;
        v3 = (v3 + 2);
        v6 = *(this + 75);
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_36;
        }
      }

LABEL_7:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_8;
      }

LABEL_37:
      v16 = *(this + 11);
      *v3 = 69;
      *(v3 + 1) = v16;
      v3 = (v3 + 5);
      if ((*(this + 75) & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 6);
  *v3 = 16;
  if (v8 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v3 + 1, a3);
    if ((*(this + 300) & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(v3 + 1) = v8;
    v3 = (v3 + 2);
    if ((*(this + 300) & 4) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((*(this + 300) & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v11 = *(this + 8);
  *v3 = 32;
  v12 = v3 + 1;
  if ((v11 & 0x80000000) != 0)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
    if ((*(this + 300) & 0x10) != 0)
    {
      goto LABEL_29;
    }
  }

  else if (v11 > 0x7F)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
    if ((*(this + 300) & 0x10) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *(v3 + 1) = v11;
    v3 = (v3 + 2);
    if ((*(this + 300) & 0x10) != 0)
    {
      goto LABEL_29;
    }
  }

LABEL_6:
  v6 = *(this + 75);
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_36:
  v15 = *(this + 10);
  *v3 = 61;
  *(v3 + 1) = v15;
  v3 = (v3 + 5);
  v6 = *(this + 75);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_37;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_53;
  }

LABEL_38:
  v17 = *(this + 6);
  if (v17)
  {
    *v3 = 74;
    v18 = v3 + 1;
    v19 = v17[7];
    if (v19 <= 0x7F)
    {
      goto LABEL_40;
    }

LABEL_43:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v19, v18, a3);
    v20 = v17[8];
    if ((v20 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v17 = *(qword_10045E250 + 48);
  *v3 = 74;
  v18 = v3 + 1;
  v19 = v17[7];
  if (v19 > 0x7F)
  {
    goto LABEL_43;
  }

LABEL_40:
  *(v3 + 1) = v19;
  v3 = (v3 + 2);
  v20 = v17[8];
  if (v20)
  {
LABEL_44:
    v21 = v17[4];
    *v3 = 13;
    *(v3 + 1) = v21;
    v3 = (v3 + 5);
    v20 = v17[8];
  }

LABEL_45:
  if ((v20 & 2) != 0)
  {
    v25 = v17[5];
    *v3 = 21;
    *(v3 + 1) = v25;
    v3 = (v3 + 5);
    if ((v17[8] & 4) == 0)
    {
LABEL_47:
      v24 = *(v17 + 1);
      v23 = (v17 + 2);
      v22 = v24;
      if (!v24)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }
  }

  else if ((v20 & 4) == 0)
  {
    goto LABEL_47;
  }

  v26 = v17[6];
  *v3 = 29;
  *(v3 + 1) = v26;
  v3 = (v3 + 5);
  v27 = *(v17 + 1);
  v23 = (v17 + 2);
  v22 = v27;
  if (!v27)
  {
    goto LABEL_53;
  }

LABEL_51:
  if (*v22 != v22[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v23, v3, a3);
  }

LABEL_53:
  v28 = *(this + 75);
  if ((v28 & 0x100) != 0)
  {
    v29 = *(this + 7);
    if (v29)
    {
      *v3 = 82;
      v30 = v3 + 1;
      v31 = v29[10];
      if (v31 <= 0x7F)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v29 = *(qword_10045E250 + 56);
      *v3 = 82;
      v30 = v3 + 1;
      v31 = v29[10];
      if (v31 <= 0x7F)
      {
LABEL_63:
        *(v3 + 1) = v31;
        v3 = sub_100146E1C(v29, v3 + 2, a3);
        v28 = *(this + 75);
        if ((v28 & 0x200) != 0)
        {
          goto LABEL_67;
        }

LABEL_55:
        if ((v28 & 0x400) == 0)
        {
          goto LABEL_56;
        }

LABEL_73:
        v39 = *(this + 9);
        if (v39)
        {
          *v3 = 98;
          v40 = v3 + 1;
          v41 = v39[11];
          if (v41 <= 0x7F)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v39 = *(qword_10045E250 + 72);
          *v3 = 98;
          v40 = v3 + 1;
          v41 = v39[11];
          if (v41 <= 0x7F)
          {
LABEL_75:
            *(v3 + 1) = v41;
            v3 = sub_100145860(v39, v3 + 2, a3);
            v28 = *(this + 75);
            if ((v28 & 0x800) != 0)
            {
              goto LABEL_79;
            }

LABEL_57:
            if ((v28 & 0x1000) == 0)
            {
              goto LABEL_58;
            }

LABEL_80:
            v45 = *(this + 10);
            if (v45)
            {
              *v3 = 114;
              v46 = v3 + 1;
              v47 = *(v45 + 40);
              if (v47 <= 0x7F)
              {
                goto LABEL_82;
              }
            }

            else
            {
              v45 = *(qword_10045E250 + 80);
              *v3 = 114;
              v46 = v3 + 1;
              v47 = *(v45 + 40);
              if (v47 <= 0x7F)
              {
LABEL_82:
                *(v3 + 1) = v47;
                v3 = sub_100149148(v45, v3 + 2, a3);
                v28 = *(this + 75);
                if ((v28 & 0x2000) != 0)
                {
                  goto LABEL_86;
                }

LABEL_59:
                if ((v28 & 0x4000) == 0)
                {
                  goto LABEL_107;
                }

                goto LABEL_92;
              }
            }

            v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v47, v46, a3);
            v3 = sub_100149148(v45, v48, v49);
            v28 = *(this + 75);
            if ((v28 & 0x2000) != 0)
            {
              goto LABEL_86;
            }

            goto LABEL_59;
          }
        }

        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v41, v40, a3);
        v3 = sub_100145860(v39, v42, v43);
        v28 = *(this + 75);
        if ((v28 & 0x800) != 0)
        {
          goto LABEL_79;
        }

        goto LABEL_57;
      }
    }

    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v30, a3);
    v3 = sub_100146E1C(v29, v32, v33);
    v28 = *(this + 75);
    if ((v28 & 0x200) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_55;
  }

  if ((v28 & 0x200) == 0)
  {
    goto LABEL_55;
  }

LABEL_67:
  v34 = *(this + 8);
  if (v34)
  {
    *v3 = 90;
    v35 = v3 + 1;
    v36 = *(v34 + 40);
    if (v36 <= 0x7F)
    {
      goto LABEL_69;
    }

LABEL_72:
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v36, v35, a3);
    v3 = sub_100147CBC(v34, v37, v38);
    v28 = *(this + 75);
    if ((v28 & 0x400) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_56;
  }

  v34 = *(qword_10045E250 + 64);
  *v3 = 90;
  v35 = v3 + 1;
  v36 = *(v34 + 40);
  if (v36 > 0x7F)
  {
    goto LABEL_72;
  }

LABEL_69:
  *(v3 + 1) = v36;
  v3 = sub_100147CBC(v34, v3 + 2, a3);
  v28 = *(this + 75);
  if ((v28 & 0x400) != 0)
  {
    goto LABEL_73;
  }

LABEL_56:
  if ((v28 & 0x800) == 0)
  {
    goto LABEL_57;
  }

LABEL_79:
  v44 = *(this + 24);
  *v3 = 109;
  *(v3 + 1) = v44;
  v3 = (v3 + 5);
  v28 = *(this + 75);
  if ((v28 & 0x1000) != 0)
  {
    goto LABEL_80;
  }

LABEL_58:
  if ((v28 & 0x2000) == 0)
  {
    goto LABEL_59;
  }

LABEL_86:
  v50 = *(this + 11);
  if (v50)
  {
    *v3 = 122;
    v51 = v3 + 1;
    v52 = v50[18];
    if (v52 <= 0x7F)
    {
      goto LABEL_88;
    }

LABEL_91:
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v52, v51, a3);
    v3 = sub_10014A310(v50, v53, v54);
    if ((*(this + 75) & 0x4000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_92;
  }

  v50 = *(qword_10045E250 + 88);
  *v3 = 122;
  v51 = v3 + 1;
  v52 = v50[18];
  if (v52 > 0x7F)
  {
    goto LABEL_91;
  }

LABEL_88:
  *(v3 + 1) = v52;
  v3 = sub_10014A310(v50, (v3 + 2), a3);
  if ((*(this + 75) & 0x4000) == 0)
  {
    goto LABEL_107;
  }

LABEL_92:
  v55 = *(this + 13);
  if (v55)
  {
    *v3 = 386;
    v56 = v3 + 2;
    v57 = *(v55 + 36);
    if (v57 <= 0x7F)
    {
      goto LABEL_94;
    }

LABEL_97:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v57, v56, a3);
    v58 = *(v55 + 40);
    if ((v58 & 1) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  v55 = *(qword_10045E250 + 104);
  *v3 = 386;
  v56 = v3 + 2;
  v57 = *(v55 + 36);
  if (v57 > 0x7F)
  {
    goto LABEL_97;
  }

LABEL_94:
  *(v3 + 2) = v57;
  v3 = (v3 + 3);
  v58 = *(v55 + 40);
  if (v58)
  {
LABEL_98:
    v59 = *(v55 + 16);
    *v3 = 8;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v59, v3 + 1, a3);
    v58 = *(v55 + 40);
  }

LABEL_99:
  if ((v58 & 2) != 0)
  {
    v63 = *(v55 + 24);
    *v3 = 16;
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v63, v3 + 1, a3);
    if ((*(v55 + 40) & 4) == 0)
    {
LABEL_101:
      v62 = *(v55 + 8);
      v61 = (v55 + 8);
      v60 = v62;
      if (!v62)
      {
        goto LABEL_107;
      }

      goto LABEL_105;
    }
  }

  else if ((v58 & 4) == 0)
  {
    goto LABEL_101;
  }

  v64 = *(v55 + 32);
  *v3 = 29;
  *(v3 + 1) = v64;
  v3 = (v3 + 5);
  v65 = *(v55 + 8);
  v61 = (v55 + 8);
  v60 = v65;
  if (!v65)
  {
    goto LABEL_107;
  }

LABEL_105:
  if (*v60 != v60[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v61, v3, a3);
  }

LABEL_107:
  v66 = *(this + 75);
  if ((v66 & 0x8000) == 0)
  {
    if ((v66 & 0x10000) == 0)
    {
      goto LABEL_109;
    }

LABEL_117:
    v70 = *(this + 25);
    *v3 = 400;
    v71 = v3 + 2;
    if ((v70 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v70, v71, a3);
      v67 = *(this + 75);
      if ((v67 & 0x20000) != 0)
      {
        goto LABEL_124;
      }
    }

    else if (v70 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v70, v71, a3);
      v67 = *(this + 75);
      if ((v67 & 0x20000) != 0)
      {
        goto LABEL_124;
      }
    }

    else
    {
      *(v3 + 2) = v70;
      v3 = (v3 + 3);
      v67 = *(this + 75);
      if ((v67 & 0x20000) != 0)
      {
        goto LABEL_124;
      }
    }

LABEL_110:
    if ((v67 & 0x40000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_125;
  }

  v69 = *(this + 14);
  *v3 = 393;
  *(v3 + 2) = v69;
  v3 = (v3 + 10);
  if ((*(this + 75) & 0x10000) != 0)
  {
    goto LABEL_117;
  }

LABEL_109:
  v67 = *(this + 75);
  if ((v67 & 0x20000) == 0)
  {
    goto LABEL_110;
  }

LABEL_124:
  v72 = *(this + 30);
  *v3 = 413;
  *(v3 + 2) = v72;
  v3 = (v3 + 6);
  v67 = *(this + 75);
  if ((v67 & 0x40000) == 0)
  {
LABEL_111:
    if ((v67 & 0x80000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

LABEL_125:
  v73 = *(this + 31);
  *v3 = 421;
  *(v3 + 2) = v73;
  v3 = (v3 + 6);
  if ((*(this + 75) & 0x80000) == 0)
  {
LABEL_112:
    if ((*(this + 305) & 1) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_127;
  }

LABEL_126:
  v74 = *(this + 32);
  *v3 = 429;
  *(v3 + 2) = v74;
  v3 = (v3 + 6);
  if ((*(this + 305) & 1) == 0)
  {
LABEL_113:
    v68 = *(this + 75);
    if ((v68 & 0x200000) == 0)
    {
      goto LABEL_114;
    }

LABEL_128:
    v76 = *(this + 34);
    *v3 = 445;
    *(v3 + 2) = v76;
    v3 = (v3 + 6);
    if ((*(this + 75) & 0x400000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_129;
  }

LABEL_127:
  v75 = *(this + 62);
  *v3 = 437;
  *(v3 + 2) = v75;
  v3 = (v3 + 6);
  v68 = *(this + 75);
  if ((v68 & 0x200000) != 0)
  {
    goto LABEL_128;
  }

LABEL_114:
  if ((v68 & 0x400000) == 0)
  {
    goto LABEL_139;
  }

LABEL_129:
  v77 = *(this + 18);
  if (v77)
  {
    *v3 = 450;
    v78 = v3 + 2;
    v79 = *(v77 + 20);
    if (v79 <= 0x7F)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v77 = *(qword_10045E250 + 144);
    *v3 = 450;
    v78 = v3 + 2;
    v79 = *(v77 + 20);
    if (v79 <= 0x7F)
    {
LABEL_131:
      *(v3 + 2) = v79;
      v3 = (v3 + 3);
      if ((*(v77 + 24) & 1) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_135;
    }
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v79, v78, a3);
  if (*(v77 + 24))
  {
LABEL_135:
    v80 = *(v77 + 16);
    *v3 = 13;
    *(v3 + 1) = v80;
    v3 = (v3 + 5);
  }

LABEL_136:
  v83 = *(v77 + 8);
  v82 = (v77 + 8);
  v81 = v83;
  if (v83 && *v81 != v81[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v82, v3, a3);
  }

LABEL_139:
  if ((*(this + 302) & 0x80) != 0)
  {
    v87 = *(this + 35);
    *v3 = 456;
    v88 = v3 + 2;
    if ((v87 & 0x80000000) != 0)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v87, v88, a3);
      v84 = *(this + 75);
      if ((v84 & 0x1000000) != 0)
      {
        goto LABEL_167;
      }
    }

    else if (v87 > 0x7F)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v87, v88, a3);
      v84 = *(this + 75);
      if ((v84 & 0x1000000) != 0)
      {
        goto LABEL_167;
      }
    }

    else
    {
      *(v3 + 2) = v87;
      v3 = (v3 + 3);
      v84 = *(this + 75);
      if ((v84 & 0x1000000) != 0)
      {
        goto LABEL_167;
      }
    }

LABEL_141:
    if ((v84 & 0x2000000) == 0)
    {
      goto LABEL_142;
    }

LABEL_168:
    v90 = *(this + 20);
    if (v90)
    {
      *v3 = 474;
      v91 = v3 + 2;
      v92 = *(v90 + 40);
      if (v92 <= 0x7F)
      {
        goto LABEL_170;
      }
    }

    else
    {
      v90 = *(qword_10045E250 + 160);
      *v3 = 474;
      v91 = v3 + 2;
      v92 = *(v90 + 40);
      if (v92 <= 0x7F)
      {
LABEL_170:
        *(v3 + 2) = v92;
        v3 = sub_10014C838(v90, v3 + 3, a3);
        v84 = *(this + 75);
        if ((v84 & 0x4000000) != 0)
        {
          goto LABEL_174;
        }

LABEL_143:
        if ((v84 & 0x8000000) == 0)
        {
          goto LABEL_144;
        }

LABEL_180:
        v100 = *(this + 22);
        if (v100)
        {
          *v3 = 490;
          v101 = v3 + 2;
          v102 = *(v100 + 72);
          if (v102 <= 0x7F)
          {
            goto LABEL_182;
          }
        }

        else
        {
          v100 = *(qword_10045E250 + 176);
          *v3 = 490;
          v101 = v3 + 2;
          v102 = *(v100 + 72);
          if (v102 <= 0x7F)
          {
LABEL_182:
            *(v3 + 2) = v102;
            v3 = sub_10014BAAC(v100, v3 + 3, a3);
            v84 = *(this + 75);
            if ((v84 & 0x10000000) != 0)
            {
              goto LABEL_186;
            }

LABEL_145:
            if ((v84 & 0x20000000) == 0)
            {
              goto LABEL_146;
            }

            goto LABEL_187;
          }
        }

        v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v102, v101, a3);
        v3 = sub_10014BAAC(v100, v103, v104);
        v84 = *(this + 75);
        if ((v84 & 0x10000000) != 0)
        {
          goto LABEL_186;
        }

        goto LABEL_145;
      }
    }

    v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v92, v91, a3);
    v3 = sub_10014C838(v90, v93, v94);
    v84 = *(this + 75);
    if ((v84 & 0x4000000) != 0)
    {
      goto LABEL_174;
    }

    goto LABEL_143;
  }

  v84 = *(this + 75);
  if ((v84 & 0x1000000) == 0)
  {
    goto LABEL_141;
  }

LABEL_167:
  v89 = *(this + 19);
  *v3 = 465;
  *(v3 + 2) = v89;
  v3 = (v3 + 10);
  v84 = *(this + 75);
  if ((v84 & 0x2000000) != 0)
  {
    goto LABEL_168;
  }

LABEL_142:
  if ((v84 & 0x4000000) == 0)
  {
    goto LABEL_143;
  }

LABEL_174:
  v95 = *(this + 21);
  if (v95)
  {
    *v3 = 482;
    v96 = v3 + 2;
    v97 = *(v95 + 52);
    if (v97 <= 0x7F)
    {
      goto LABEL_176;
    }

LABEL_179:
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v97, v96, a3);
    v3 = sub_100165EBC(v95, v98, v99);
    v84 = *(this + 75);
    if ((v84 & 0x8000000) != 0)
    {
      goto LABEL_180;
    }

    goto LABEL_144;
  }

  v95 = *(qword_10045E250 + 168);
  *v3 = 482;
  v96 = v3 + 2;
  v97 = *(v95 + 52);
  if (v97 > 0x7F)
  {
    goto LABEL_179;
  }

LABEL_176:
  *(v3 + 2) = v97;
  v3 = sub_100165EBC(v95, v3 + 3, a3);
  v84 = *(this + 75);
  if ((v84 & 0x8000000) != 0)
  {
    goto LABEL_180;
  }

LABEL_144:
  if ((v84 & 0x10000000) == 0)
  {
    goto LABEL_145;
  }

LABEL_186:
  v105 = *(this + 192);
  *v3 = 496;
  *(v3 + 2) = v105;
  v3 = (v3 + 3);
  v84 = *(this + 75);
  if ((v84 & 0x20000000) == 0)
  {
LABEL_146:
    if ((v84 & 0x40000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_188;
  }

LABEL_187:
  v106 = *(this + 23);
  *v3 = 505;
  *(v3 + 2) = v106;
  v3 = (v3 + 10);
  v84 = *(this + 75);
  if ((v84 & 0x40000000) == 0)
  {
LABEL_147:
    if ((v84 & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_189;
  }

LABEL_188:
  v107 = *(this + 193);
  *v3 = 640;
  *(v3 + 2) = v107;
  v3 = (v3 + 3);
  if ((*(this + 75) & 0x80000000) == 0)
  {
LABEL_148:
    v85 = *(this + 76);
    if ((v85 & 1) == 0)
    {
      goto LABEL_149;
    }

LABEL_190:
    v109 = *(this + 25);
    if (v109)
    {
      *v3 = 658;
      v110 = v3 + 2;
      v111 = *(v109 + 40);
      if (v111 <= 0x7F)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v109 = *(qword_10045E250 + 200);
      *v3 = 658;
      v110 = v3 + 2;
      v111 = *(v109 + 40);
      if (v111 <= 0x7F)
      {
LABEL_192:
        *(v3 + 2) = v111;
        v3 = sub_100144A9C(v109, v3 + 3, a3);
        v85 = *(this + 76);
        if ((v85 & 2) != 0)
        {
          goto LABEL_196;
        }

LABEL_150:
        if ((v85 & 4) == 0)
        {
          goto LABEL_151;
        }

        goto LABEL_197;
      }
    }

    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v111, v110, a3);
    v3 = sub_100144A9C(v109, v112, v113);
    v85 = *(this + 76);
    if ((v85 & 2) != 0)
    {
      goto LABEL_196;
    }

    goto LABEL_150;
  }

LABEL_189:
  v108 = *(this + 49);
  *v3 = 653;
  *(v3 + 2) = v108;
  v3 = (v3 + 6);
  v85 = *(this + 76);
  if (v85)
  {
    goto LABEL_190;
  }

LABEL_149:
  if ((v85 & 2) == 0)
  {
    goto LABEL_150;
  }

LABEL_196:
  v114 = *(this + 194);
  *v3 = 664;
  *(v3 + 2) = v114;
  v3 = (v3 + 3);
  v85 = *(this + 76);
  if ((v85 & 4) == 0)
  {
LABEL_151:
    if ((v85 & 8) == 0)
    {
      goto LABEL_152;
    }

LABEL_203:
    v120 = *(this + 27);
    if (v120)
    {
      *v3 = 682;
      v121 = v3 + 2;
      v122 = v120[8];
      if (v122 <= 0x7F)
      {
        goto LABEL_205;
      }
    }

    else
    {
      v120 = *(qword_10045E250 + 216);
      *v3 = 682;
      v121 = v3 + 2;
      v122 = v120[8];
      if (v122 <= 0x7F)
      {
LABEL_205:
        *(v3 + 2) = v122;
        v3 = sub_100156488(v120, v3 + 3, a3);
        if ((*(this + 302) & 0x10) != 0)
        {
          goto LABEL_209;
        }

LABEL_153:
        v86 = *(this + 76);
        if ((v86 & 0x10) == 0)
        {
          goto LABEL_154;
        }

        goto LABEL_210;
      }
    }

    v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v122, v121, a3);
    v3 = sub_100156488(v120, v123, v124);
    if ((*(this + 302) & 0x10) != 0)
    {
      goto LABEL_209;
    }

    goto LABEL_153;
  }

LABEL_197:
  v115 = *(this + 26);
  if (v115)
  {
    *v3 = 674;
    v116 = v3 + 2;
    v117 = *(v115 + 56);
    if (v117 <= 0x7F)
    {
      goto LABEL_199;
    }

LABEL_202:
    v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v117, v116, a3);
    v3 = sub_100155A5C(v115, v118, v119);
    if ((*(this + 76) & 8) != 0)
    {
      goto LABEL_203;
    }

    goto LABEL_152;
  }

  v115 = *(qword_10045E250 + 208);
  *v3 = 674;
  v116 = v3 + 2;
  v117 = *(v115 + 56);
  if (v117 > 0x7F)
  {
    goto LABEL_202;
  }

LABEL_199:
  *(v3 + 2) = v117;
  v3 = sub_100155A5C(v115, v3 + 3, a3);
  if ((*(this + 76) & 8) != 0)
  {
    goto LABEL_203;
  }

LABEL_152:
  if ((*(this + 302) & 0x10) == 0)
  {
    goto LABEL_153;
  }

LABEL_209:
  v125 = *(this + 33);
  *v3 = 693;
  *(v3 + 2) = v125;
  v3 = (v3 + 6);
  v86 = *(this + 76);
  if ((v86 & 0x10) == 0)
  {
LABEL_154:
    if ((v86 & 0x20) == 0)
    {
      goto LABEL_155;
    }

LABEL_211:
    v127 = *(this + 29);
    if (v127)
    {
      *v3 = 706;
      v128 = v3 + 2;
      v129 = *(v127 + 40);
      if (v129 <= 0x7F)
      {
        goto LABEL_213;
      }
    }

    else
    {
      v127 = *(qword_10045E250 + 232);
      *v3 = 706;
      v128 = v3 + 2;
      v129 = *(v127 + 40);
      if (v129 <= 0x7F)
      {
LABEL_213:
        *(v3 + 2) = v129;
        v3 = sub_100144A9C(v127, v3 + 3, a3);
        v86 = *(this + 76);
        if ((v86 & 0x40) != 0)
        {
          goto LABEL_217;
        }

LABEL_156:
        if ((v86 & 0x80) == 0)
        {
          goto LABEL_157;
        }

        goto LABEL_218;
      }
    }

    v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v129, v128, a3);
    v3 = sub_100144A9C(v127, v130, v131);
    v86 = *(this + 76);
    if ((v86 & 0x40) != 0)
    {
      goto LABEL_217;
    }

    goto LABEL_156;
  }

LABEL_210:
  v126 = *(this + 56);
  *v3 = 701;
  *(v3 + 2) = v126;
  v3 = (v3 + 6);
  v86 = *(this + 76);
  if ((v86 & 0x20) != 0)
  {
    goto LABEL_211;
  }

LABEL_155:
  if ((v86 & 0x40) == 0)
  {
    goto LABEL_156;
  }

LABEL_217:
  v132 = *(this + 57);
  *v3 = 717;
  *(v3 + 2) = v132;
  v3 = (v3 + 6);
  v86 = *(this + 76);
  if ((v86 & 0x80) == 0)
  {
LABEL_157:
    if ((v86 & 0x200) == 0)
    {
      goto LABEL_158;
    }

LABEL_224:
    v138 = *(this + 63);
    *v3 = 733;
    *(v3 + 2) = v138;
    v3 = (v3 + 6);
    if ((*(this + 76) & 0x400) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_225;
  }

LABEL_218:
  v133 = *(this + 30);
  if (v133)
  {
    *v3 = 722;
    v134 = v3 + 2;
    v135 = *(v133 + 40);
    if (v135 <= 0x7F)
    {
      goto LABEL_220;
    }

LABEL_223:
    v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v135, v134, a3);
    v3 = sub_100147CBC(v133, v136, v137);
    v86 = *(this + 76);
    if ((v86 & 0x200) != 0)
    {
      goto LABEL_224;
    }

    goto LABEL_158;
  }

  v133 = *(qword_10045E250 + 240);
  *v3 = 722;
  v134 = v3 + 2;
  v135 = *(v133 + 40);
  if (v135 > 0x7F)
  {
    goto LABEL_223;
  }

LABEL_220:
  *(v3 + 2) = v135;
  v3 = sub_100147CBC(v133, v3 + 3, a3);
  v86 = *(this + 76);
  if ((v86 & 0x200) != 0)
  {
    goto LABEL_224;
  }

LABEL_158:
  if ((v86 & 0x400) == 0)
  {
    goto LABEL_238;
  }

LABEL_225:
  v139 = *(this + 32);
  if (v139)
  {
    *v3 = 738;
    v140 = v3 + 2;
    v141 = *(v139 + 32);
    if (v141 <= 0x7F)
    {
      goto LABEL_227;
    }

LABEL_230:
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v141, v140, a3);
    v142 = *(v139 + 36);
    if ((v142 & 1) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_231;
  }

  v139 = *(qword_10045E250 + 256);
  *v3 = 738;
  v140 = v3 + 2;
  v141 = *(v139 + 32);
  if (v141 > 0x7F)
  {
    goto LABEL_230;
  }

LABEL_227:
  *(v3 + 2) = v141;
  v3 = (v3 + 3);
  v142 = *(v139 + 36);
  if (v142)
  {
LABEL_231:
    v143 = *(v139 + 16);
    *v3 = 9;
    *(v3 + 1) = v143;
    v3 = (v3 + 9);
    v142 = *(v139 + 36);
  }

LABEL_232:
  if ((v142 & 2) != 0)
  {
    v147 = *(v139 + 24);
    *v3 = 17;
    *(v3 + 1) = v147;
    v3 = (v3 + 9);
    v148 = *(v139 + 8);
    v145 = (v139 + 8);
    v144 = v148;
    if (!v148)
    {
      goto LABEL_238;
    }
  }

  else
  {
    v146 = *(v139 + 8);
    v145 = (v139 + 8);
    v144 = v146;
    if (!v146)
    {
      goto LABEL_238;
    }
  }

  if (*v144 != v144[1])
  {
    v3 = wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v145, v3, a3);
  }

LABEL_238:
  v149 = *(this + 76);
  if ((v149 & 0x800) != 0)
  {
    v153 = *(this + 33);
    if (v153)
    {
      *v3 = 746;
      v154 = v3 + 2;
      v155 = v153[14];
      if (v155 <= 0x7F)
      {
        goto LABEL_246;
      }
    }

    else
    {
      v153 = *(qword_10045E250 + 264);
      *v3 = 746;
      v154 = v3 + 2;
      v155 = v153[14];
      if (v155 <= 0x7F)
      {
LABEL_246:
        *(v3 + 2) = v155;
        v3 = sub_100168474(v153, (v3 + 3), a3);
        v149 = *(this + 76);
        if ((v149 & 0x1000) != 0)
        {
          goto LABEL_250;
        }

LABEL_240:
        if ((v149 & 0x2000) == 0)
        {
          goto LABEL_241;
        }

LABEL_256:
        v163 = *(this + 35);
        if (v163)
        {
          *v3 = 762;
          v164 = v3 + 2;
          v165 = *(v163 + 44);
          if (v165 <= 0x7F)
          {
            goto LABEL_258;
          }
        }

        else
        {
          v163 = *(qword_10045E250 + 280);
          *v3 = 762;
          v164 = v3 + 2;
          v165 = *(v163 + 44);
          if (v165 <= 0x7F)
          {
LABEL_258:
            *(v3 + 2) = v165;
            v3 = sub_100166F84(v163, v3 + 3, a3);
            if ((*(this + 76) & 0x4000) != 0)
            {
              goto LABEL_262;
            }

LABEL_242:
            v152 = *(this + 1);
            v151 = (this + 8);
            v150 = v152;
            if (!v152)
            {
              return v3;
            }

            goto LABEL_268;
          }
        }

        v166 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v165, v164, a3);
        v3 = sub_100166F84(v163, v166, v167);
        if ((*(this + 76) & 0x4000) != 0)
        {
          goto LABEL_262;
        }

        goto LABEL_242;
      }
    }

    v156 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v155, v154, a3);
    v3 = sub_100168474(v153, v156, v157);
    v149 = *(this + 76);
    if ((v149 & 0x1000) != 0)
    {
      goto LABEL_250;
    }

    goto LABEL_240;
  }

  if ((v149 & 0x1000) == 0)
  {
    goto LABEL_240;
  }

LABEL_250:
  v158 = *(this + 34);
  if (v158)
  {
    *v3 = 754;
    v159 = v3 + 2;
    v160 = *(v158 + 40);
    if (v160 <= 0x7F)
    {
      goto LABEL_252;
    }

LABEL_255:
    v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v160, v159, a3);
    v3 = sub_100169EC4(v158, v161, v162);
    v149 = *(this + 76);
    if ((v149 & 0x2000) != 0)
    {
      goto LABEL_256;
    }

    goto LABEL_241;
  }

  v158 = *(qword_10045E250 + 272);
  *v3 = 754;
  v159 = v3 + 2;
  v160 = *(v158 + 40);
  if (v160 > 0x7F)
  {
    goto LABEL_255;
  }

LABEL_252:
  *(v3 + 2) = v160;
  v3 = sub_100169EC4(v158, v3 + 3, a3);
  v149 = *(this + 76);
  if ((v149 & 0x2000) != 0)
  {
    goto LABEL_256;
  }

LABEL_241:
  if ((v149 & 0x4000) == 0)
  {
    goto LABEL_242;
  }

LABEL_262:
  v168 = *(this + 36);
  if (v168)
  {
    *v3 = 898;
    v169 = v3 + 2;
    v170 = *(v168 + 52);
    if (v170 <= 0x7F)
    {
      goto LABEL_264;
    }
  }

  else
  {
    v168 = *(qword_10045E250 + 288);
    *v3 = 898;
    v169 = v3 + 2;
    v170 = *(v168 + 52);
    if (v170 <= 0x7F)
    {
LABEL_264:
      *(v3 + 2) = v170;
      v3 = sub_100167A00(v168, v3 + 3, a3);
      v171 = *(this + 1);
      v151 = (this + 8);
      v150 = v171;
      if (!v171)
      {
        return v3;
      }

      goto LABEL_268;
    }
  }

  v172 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v170, v169, a3);
  v3 = sub_100167A00(v168, v172, v173);
  v174 = *(this + 1);
  v151 = (this + 8);
  v150 = v174;
  if (!v174)
  {
    return v3;
  }

LABEL_268:
  if (*v150 == v150[1])
  {
    return v3;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v151, v3, a3);
}

uint64_t sub_10015321C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 300);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_57;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 300);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v6 = *(a1 + 24);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 300);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 28);
    if ((v8 & 0x80000000) != 0)
    {
      v4 += 11;
      if ((v3 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2);
      v3 = *(a1 + 300);
      v4 += v9 + 1;
      if ((v3 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 += 2;
      if ((v3 & 8) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_13:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }

LABEL_29:
    v12 = *(a1 + 36);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
      v3 = *(a1 + 300);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
    goto LABEL_35;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  v10 = *(a1 + 32);
  if ((v10 & 0x80000000) != 0)
  {
    v4 += 11;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  if (v10 < 0x80)
  {
    v4 += 2;
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
  v3 = *(a1 + 300);
  v4 += v11 + 1;
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_35:
  v14 = v4 + 5;
  if ((v3 & 0x20) == 0)
  {
    v14 = v4;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = v14 + 5;
  }

  else
  {
    v5 = v14;
  }

  if ((v3 & 0x80) != 0)
  {
    v15 = *(a1 + 48);
    if (!v15)
    {
      v15 = *(qword_10045E250 + 48);
    }

    v16 = *(v15 + 32);
    v17 = (v16 << 31 >> 31) & 5;
    if ((v16 & 2) != 0)
    {
      v17 += 5;
    }

    if ((v16 & 4) != 0)
    {
      v17 += 5;
    }

    if (*(v15 + 32))
    {
      LODWORD(v18) = v17;
    }

    else
    {
      LODWORD(v18) = 0;
    }

    v19 = *(v15 + 8);
    if (!v19 || *v19 == v19[1])
    {
      *(v15 + 28) = v18;
      v20 = 1;
    }

    else
    {
      v18 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v15 + 8), a2) + v18);
      *(v15 + 28) = v18;
      if (v18 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
      }

      else
      {
        v20 = 1;
      }
    }

    v5 = (v5 + v18 + v20 + 1);
    v3 = *(a1 + 300);
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_139;
  }

  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_60;
    }

LABEL_74:
    v24 = *(a1 + 64);
    if (v24)
    {
      v25 = sub_100147F04(v24, a2);
      if (v25 < 0x80)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v25 = sub_100147F04(*(qword_10045E250 + 64), a2);
      if (v25 < 0x80)
      {
LABEL_76:
        LODWORD(v5) = v5 + v25 + 2;
        v3 = *(a1 + 300);
        if ((v3 & 0x400) != 0)
        {
          goto LABEL_80;
        }

LABEL_61:
        if ((v3 & 0x800) != 0)
        {
          v21 = v5 + 5;
        }

        else
        {
          v21 = v5;
        }

        if ((v3 & 0x1000) == 0)
        {
          goto LABEL_65;
        }

LABEL_89:
        v30 = *(a1 + 80);
        if (v30)
        {
          v31 = v30[11];
          if (v31)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v30 = *(qword_10045E250 + 80);
          v31 = v30[11];
          if (v31)
          {
LABEL_91:
            v32 = ((v31 << 31) >> 31) & 5;
            if ((v31 & 2) != 0)
            {
              v32 += 5;
            }

            if ((v31 & 4) != 0)
            {
              v32 += 5;
            }

            if ((v31 & 8) != 0)
            {
              v32 += 5;
            }

            if ((v31 & 0x10) != 0)
            {
              v32 += 5;
            }

            v33 = v32 + ((v31 >> 4) & 2);
            v34 = (v30 + 2);
            v35 = *(v30 + 1);
            if (!v35)
            {
              goto LABEL_107;
            }

            goto LABEL_103;
          }
        }

        v33 = 0;
        v34 = (v30 + 2);
        v35 = *(v30 + 1);
        if (!v35)
        {
          goto LABEL_107;
        }

LABEL_103:
        if (*v35 != v35[1])
        {
          v36 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v34, a2) + v33);
          v30[10] = v36;
          if (v36 >= 0x80)
          {
            v21 += v36 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 1;
            v3 = *(a1 + 300);
            if ((v3 & 0x2000) != 0)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v21 += v36 + 1 + 1;
            v3 = *(a1 + 300);
            if ((v3 & 0x2000) != 0)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_66;
        }

LABEL_107:
        v30[10] = v33;
        v21 += v33 + 1 + 1;
        v3 = *(a1 + 300);
        if ((v3 & 0x2000) != 0)
        {
          goto LABEL_110;
        }

LABEL_66:
        if ((v3 & 0x4000) == 0)
        {
          goto LABEL_136;
        }

LABEL_116:
        v39 = *(a1 + 104);
        if (v39)
        {
          LOBYTE(v40) = *(v39 + 40);
          if (v40)
          {
            goto LABEL_118;
          }
        }

        else
        {
          v39 = *(qword_10045E250 + 104);
          LOBYTE(v40) = *(v39 + 40);
          if (v40)
          {
LABEL_118:
            if (v40)
            {
              LODWORD(v41) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v39 + 16), a2) + 1;
              v40 = *(v39 + 40);
              if ((v40 & 2) == 0)
              {
                goto LABEL_126;
              }
            }

            else
            {
              LODWORD(v41) = 0;
              if ((v40 & 2) == 0)
              {
LABEL_126:
                if ((v40 & 4) != 0)
                {
                  v41 = (v41 + 5);
                }

                else
                {
                  v41 = v41;
                }

                v42 = (v39 + 8);
                v43 = *(v39 + 8);
                if (v43)
                {
LABEL_130:
                  if (*v43 != v43[1])
                  {
                    v41 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v42, a2) + v41;
                  }
                }

LABEL_132:
                *(v39 + 36) = v41;
                if (v41 >= 0x80)
                {
                  v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41, a2);
                }

                else
                {
                  v44 = 1;
                }

                v21 += v41 + v44 + 2;
                v3 = *(a1 + 300);
                goto LABEL_136;
              }
            }

            LODWORD(v41) = v41 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v39 + 24), a2) + 1;
            v40 = *(v39 + 40);
            goto LABEL_126;
          }
        }

        v41 = 0;
        v42 = (v39 + 8);
        v43 = *(v39 + 8);
        if (v43)
        {
          goto LABEL_130;
        }

        goto LABEL_132;
      }
    }

    LODWORD(v5) = v5 + v25 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = *(a1 + 300);
    if ((v3 & 0x400) != 0)
    {
      goto LABEL_80;
    }

    goto LABEL_61;
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    v23 = sub_100147020(v22, a2);
    if (v23 < 0x80)
    {
      goto LABEL_70;
    }

LABEL_73:
    LODWORD(v5) = v5 + v23 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
    v3 = *(a1 + 300);
    if ((v3 & 0x200) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_60;
  }

  v23 = sub_100147020(*(qword_10045E250 + 56), a2);
  if (v23 >= 0x80)
  {
    goto LABEL_73;
  }

LABEL_70:
  LODWORD(v5) = v5 + v23 + 2;
  v3 = *(a1 + 300);
  if ((v3 & 0x200) != 0)
  {
    goto LABEL_74;
  }

LABEL_60:
  if ((v3 & 0x400) == 0)
  {
    goto LABEL_61;
  }

LABEL_80:
  v26 = *(a1 + 72);
  if (v26)
  {
    v27 = sub_100145A78(v26, a2);
    if (v27 < 0x80)
    {
LABEL_82:
      v28 = 1;
      goto LABEL_85;
    }
  }

  else
  {
    v27 = sub_100145A78(*(qword_10045E250 + 72), a2);
    if (v27 < 0x80)
    {
      goto LABEL_82;
    }
  }

  v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
LABEL_85:
  v29 = v5 + v27 + v28 + 1;
  v3 = *(a1 + 300);
  if ((v3 & 0x800) != 0)
  {
    v21 = v29 + 5;
  }

  else
  {
    v21 = v29;
  }

  if ((v3 & 0x1000) != 0)
  {
    goto LABEL_89;
  }

LABEL_65:
  if ((v3 & 0x2000) == 0)
  {
    goto LABEL_66;
  }

LABEL_110:
  v37 = *(a1 + 88);
  if (v37)
  {
    v38 = sub_10014A6A4(v37, a2);
    if (v38 < 0x80)
    {
      goto LABEL_112;
    }

LABEL_115:
    v21 += v38 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 1;
    v3 = *(a1 + 300);
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_116;
  }

  v38 = sub_10014A6A4(*(qword_10045E250 + 88), a2);
  if (v38 >= 0x80)
  {
    goto LABEL_115;
  }

LABEL_112:
  v21 += v38 + 2;
  v3 = *(a1 + 300);
  if ((v3 & 0x4000) != 0)
  {
    goto LABEL_116;
  }

LABEL_136:
  if ((v3 & 0x8000) != 0)
  {
    v5 = v21 + 10;
  }

  else
  {
    v5 = v21;
  }

LABEL_139:
  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v45 = *(a1 + 100);
      if ((v45 & 0x80000000) != 0)
      {
        v46 = 12;
      }

      else if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45, a2) + 2;
        v3 = *(a1 + 300);
      }

      else
      {
        v46 = 3;
      }

      LODWORD(v5) = v46 + v5;
    }

    v47 = v5 + 6;
    if ((v3 & 0x20000) == 0)
    {
      v47 = v5;
    }

    if ((v3 & 0x40000) != 0)
    {
      v47 += 6;
    }

    if ((v3 & 0x80000) != 0)
    {
      v47 += 6;
    }

    if ((v3 & 0x100000) != 0)
    {
      v47 += 6;
    }

    if ((v3 & 0x200000) != 0)
    {
      v5 = v47 + 6;
    }

    else
    {
      v5 = v47;
    }

    if ((v3 & 0x400000) != 0)
    {
      v48 = *(a1 + 144);
      if (!v48)
      {
        v48 = *(qword_10045E250 + 144);
      }

      v49 = *(v48 + 8);
      LODWORD(v50) = (*(v48 + 24) << 31 >> 31) & 5;
      if (!v49 || *v49 == v49[1])
      {
        *(v48 + 20) = v50;
        v51 = 1;
      }

      else
      {
        v50 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v48 + 8), a2) + v50);
        *(v48 + 20) = v50;
        if (v50 >= 0x80)
        {
          v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
        }

        else
        {
          v51 = 1;
        }
      }

      v5 = (v5 + v50 + v51 + 2);
      v3 = *(a1 + 300);
    }

    if ((v3 & 0x800000) != 0)
    {
      v52 = *(a1 + 140);
      if ((v52 & 0x80000000) != 0)
      {
        v53 = 12;
      }

      else if (v52 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2) + 2;
        v3 = *(a1 + 300);
      }

      else
      {
        v53 = 3;
      }

      v5 = (v53 + v5);
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v54 = v5 + 10;
    }

    else
    {
      v54 = v5;
    }

    if ((v3 & 0x2000000) == 0)
    {
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_181;
      }

LABEL_207:
      v64 = *(a1 + 168);
      if (v64)
      {
        v65 = v64[14];
        if (v65)
        {
          goto LABEL_209;
        }
      }

      else
      {
        v64 = *(qword_10045E250 + 168);
        v65 = v64[14];
        if (v65)
        {
LABEL_209:
          v66 = ((v65 << 31) >> 31) & 9;
          if ((v65 & 2) != 0)
          {
            v66 += 9;
          }

          if ((v65 & 4) != 0)
          {
            v66 += 9;
          }

          if ((v65 & 8) != 0)
          {
            v66 += 9;
          }

          v67 = v66 + ((v65 >> 3) & 2);
          v68 = (v64 + 2);
          v69 = *(v64 + 1);
          if (!v69)
          {
            goto LABEL_223;
          }

          goto LABEL_219;
        }
      }

      v67 = 0;
      v68 = (v64 + 2);
      v69 = *(v64 + 1);
      if (!v69)
      {
        goto LABEL_223;
      }

LABEL_219:
      if (*v69 != v69[1])
      {
        v70 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v68, a2) + v67);
        v64[13] = v70;
        if (v70 >= 0x80)
        {
          v54 += v70 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70, a2) + 2;
          v3 = *(a1 + 300);
          if ((v3 & 0x8000000) == 0)
          {
LABEL_251:
            v78 = v54 + 3;
            if ((v3 & 0x10000000) == 0)
            {
              v78 = v54;
            }

            if ((v3 & 0x20000000) != 0)
            {
              v78 += 10;
            }

            if ((v3 & 0x40000000) != 0)
            {
              v78 += 3;
            }

            if (v3 >= 0)
            {
              v5 = v78;
            }

            else
            {
              v5 = v78 + 6;
            }

            goto LABEL_260;
          }
        }

        else
        {
          v54 += v70 + 1 + 2;
          v3 = *(a1 + 300);
          if ((v3 & 0x8000000) == 0)
          {
            goto LABEL_251;
          }
        }

LABEL_226:
        v71 = *(a1 + 176);
        if (v71)
        {
          v72 = *(v71 + 76);
          if (*(v71 + 76))
          {
            goto LABEL_228;
          }
        }

        else
        {
          v71 = *(qword_10045E250 + 176);
          v72 = *(v71 + 76);
          if (*(v71 + 76))
          {
LABEL_228:
            v73 = (v72 << 31 >> 31) & 9;
            if ((v72 & 2) != 0)
            {
              v73 += 9;
            }

            if ((v72 & 4) != 0)
            {
              v73 += 9;
            }

            if ((v72 & 8) != 0)
            {
              v73 += 9;
            }

            if ((v72 & 0x10) != 0)
            {
              v73 += 9;
            }

            if ((v72 & 0x20) != 0)
            {
              v73 += 9;
            }

            if ((v72 & 0x40) != 0)
            {
              LODWORD(v74) = v73 + 9;
            }

            else
            {
              LODWORD(v74) = v73;
            }

            v75 = (v71 + 8);
            v76 = *(v71 + 8);
            if (!v76)
            {
              goto LABEL_248;
            }

LABEL_245:
            if (*v76 != v76[1])
            {
              v74 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v75, a2) + v74);
              *(v71 + 72) = v74;
              if (v74 >= 0x80)
              {
                v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74, a2);
              }

              else
              {
                v77 = 1;
              }

              goto LABEL_250;
            }

LABEL_248:
            *(v71 + 72) = v74;
            v77 = 1;
LABEL_250:
            v54 += v74 + v77 + 2;
            v3 = *(a1 + 300);
            goto LABEL_251;
          }
        }

        LODWORD(v74) = 0;
        v75 = (v71 + 8);
        v76 = *(v71 + 8);
        if (!v76)
        {
          goto LABEL_248;
        }

        goto LABEL_245;
      }

LABEL_223:
      v64[13] = v67;
      v54 += v67 + 1 + 2;
      v3 = *(a1 + 300);
      if ((v3 & 0x8000000) == 0)
      {
        goto LABEL_251;
      }

      goto LABEL_226;
    }

    v55 = *(a1 + 160);
    if (v55)
    {
      v56 = v55[11];
      if (v56)
      {
        goto LABEL_185;
      }
    }

    else
    {
      v55 = *(qword_10045E250 + 160);
      v56 = v55[11];
      if (v56)
      {
LABEL_185:
        if ((v56 & 2) != 0)
        {
          v57 = (((v56 << 31) >> 31) & 5) + 5;
        }

        else
        {
          v57 = ((v56 << 31) >> 31) & 5;
        }

        if ((v56 & 4) != 0)
        {
          v58 = v55[6];
          if (v58 >= 0x80)
          {
            v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58, a2) + 1;
            v56 = v55[11];
          }

          else
          {
            v59 = 2;
          }

          v57 += v59;
        }

        v63 = v57 + 5;
        if ((v56 & 8) == 0)
        {
          v63 = v57;
        }

        if ((v56 & 0x10) != 0)
        {
          v63 += 5;
        }

        v60 = (v63 + ((v56 >> 4) & 2));
        v61 = (v55 + 2);
        v62 = *(v55 + 1);
        if (!v62)
        {
LABEL_203:
          v55[10] = v60;
          if (v60 >= 0x80)
          {
            v54 += v60 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60, a2) + 2;
            v3 = *(a1 + 300);
            if ((v3 & 0x4000000) != 0)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v54 += v60 + 3;
            v3 = *(a1 + 300);
            if ((v3 & 0x4000000) != 0)
            {
              goto LABEL_207;
            }
          }

LABEL_181:
          if ((v3 & 0x8000000) == 0)
          {
            goto LABEL_251;
          }

          goto LABEL_226;
        }

LABEL_201:
        if (*v62 != v62[1])
        {
          v60 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v61, a2) + v60);
        }

        goto LABEL_203;
      }
    }

    v60 = 0;
    v61 = (v55 + 2);
    v62 = *(v55 + 1);
    if (!v62)
    {
      goto LABEL_203;
    }

    goto LABEL_201;
  }

LABEL_260:
  v79 = *(a1 + 304);
  if (!v79)
  {
    goto LABEL_274;
  }

  if ((v79 & 1) == 0)
  {
    if ((v79 & 2) != 0)
    {
      v80 = v5 + 3;
    }

    else
    {
      v80 = v5;
    }

    if ((v79 & 4) == 0)
    {
      goto LABEL_266;
    }

LABEL_305:
    v90 = *(a1 + 208);
    if (v90)
    {
      v91 = sub_100155CA4(v90, a2);
      if (v91 < 0x80)
      {
        goto LABEL_307;
      }
    }

    else
    {
      v91 = sub_100155CA4(*(qword_10045E250 + 208), a2);
      if (v91 < 0x80)
      {
LABEL_307:
        v80 += v91 + 3;
        v79 = *(a1 + 304);
        if ((v79 & 8) != 0)
        {
          goto LABEL_311;
        }

LABEL_267:
        if ((v79 & 0x10) != 0)
        {
          v80 += 6;
        }

        if ((v79 & 0x20) == 0)
        {
          goto LABEL_270;
        }

        goto LABEL_319;
      }
    }

    v80 += v91 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91, a2) + 2;
    v79 = *(a1 + 304);
    if ((v79 & 8) != 0)
    {
      goto LABEL_311;
    }

    goto LABEL_267;
  }

  v81 = *(a1 + 200);
  if (v81)
  {
    v82 = v81[11];
    if (v82)
    {
      goto LABEL_278;
    }

LABEL_292:
    if ((v82 & 0x100) != 0)
    {
      LODWORD(v85) = 5;
    }

    else
    {
      LODWORD(v85) = 0;
    }

    v86 = (v81 + 2);
    v87 = *(v81 + 1);
    if (!v87)
    {
      goto LABEL_299;
    }

    goto LABEL_296;
  }

  v81 = *(qword_10045E250 + 200);
  v82 = v81[11];
  if (!v82)
  {
    goto LABEL_292;
  }

LABEL_278:
  v83 = 2 * (v82 & 1) + (v82 & 2);
  if ((v82 & 4) != 0)
  {
    v83 += 5;
  }

  if ((v82 & 8) != 0)
  {
    v83 += 5;
  }

  if ((v82 & 0x10) != 0)
  {
    v83 += 5;
  }

  v84 = ((v82 >> 5) & 2) + ((v82 >> 4) & 2) + v83;
  if ((v82 & 0x80) != 0)
  {
    v84 += 5;
  }

  if ((v82 & 0x100) != 0)
  {
    LODWORD(v85) = v84 + 5;
  }

  else
  {
    LODWORD(v85) = v84;
  }

  v86 = (v81 + 2);
  v87 = *(v81 + 1);
  if (!v87)
  {
    goto LABEL_299;
  }

LABEL_296:
  if (*v87 != v87[1])
  {
    v85 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v86, a2) + v85);
    v81[10] = v85;
    if (v85 >= 0x80)
    {
      v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85, a2);
    }

    else
    {
      v88 = 1;
    }

    goto LABEL_301;
  }

LABEL_299:
  v81[10] = v85;
  v88 = 1;
LABEL_301:
  v89 = v5 + v88 + v85 + 2;
  v79 = *(a1 + 304);
  if ((v79 & 2) != 0)
  {
    v80 = v89 + 3;
  }

  else
  {
    v80 = v89;
  }

  if ((v79 & 4) != 0)
  {
    goto LABEL_305;
  }

LABEL_266:
  if ((v79 & 8) == 0)
  {
    goto LABEL_267;
  }

LABEL_311:
  v92 = *(a1 + 216);
  if (v92)
  {
    v93 = sub_100156600(v92, a2);
    if (v93 < 0x80)
    {
LABEL_313:
      v94 = 1;
      goto LABEL_316;
    }
  }

  else
  {
    v93 = sub_100156600(*(qword_10045E250 + 216), a2);
    if (v93 < 0x80)
    {
      goto LABEL_313;
    }
  }

  v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93, a2);
LABEL_316:
  v80 += v93 + v94 + 2;
  v79 = *(a1 + 304);
  if ((v79 & 0x10) != 0)
  {
    v80 += 6;
  }

  if ((v79 & 0x20) == 0)
  {
LABEL_270:
    if ((v79 & 0x40) != 0)
    {
      v5 = v80 + 6;
    }

    else
    {
      v5 = v80;
    }

    if ((v79 & 0x80) == 0)
    {
      goto LABEL_274;
    }

LABEL_348:
    v104 = *(a1 + 240);
    if (v104)
    {
      v105 = sub_100147F04(v104, a2);
      if (v105 < 0x80)
      {
LABEL_350:
        v106 = 1;
        goto LABEL_353;
      }
    }

    else
    {
      v105 = sub_100147F04(*(qword_10045E250 + 240), a2);
      if (v105 < 0x80)
      {
        goto LABEL_350;
      }
    }

    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105, a2);
LABEL_353:
    v5 = (v5 + v105 + v106 + 2);
    v79 = *(a1 + 304);
    if ((v79 & 0xFF00) == 0)
    {
      goto LABEL_364;
    }

LABEL_354:
    v107 = v5 + 6;
    if ((v79 & 0x100) == 0)
    {
      v107 = v5;
    }

    if ((v79 & 0x200) != 0)
    {
      v5 = v107 + 6;
    }

    else
    {
      v5 = v107;
    }

    if ((v79 & 0x400) == 0)
    {
      if ((v79 & 0x800) == 0)
      {
        goto LABEL_361;
      }

LABEL_381:
      v117 = *(a1 + 264);
      if (v117)
      {
        v118 = sub_100168574(v117, a2);
        if (v118 < 0x80)
        {
          goto LABEL_383;
        }
      }

      else
      {
        v118 = sub_100168574(*(qword_10045E250 + 264), a2);
        if (v118 < 0x80)
        {
LABEL_383:
          v5 = (v5 + v118 + 3);
          v79 = *(a1 + 304);
          if ((v79 & 0x1000) != 0)
          {
            goto LABEL_387;
          }

LABEL_362:
          if ((v79 & 0x2000) == 0)
          {
            goto LABEL_363;
          }

LABEL_393:
          v121 = *(a1 + 280);
          if (!v121)
          {
            v121 = *(qword_10045E250 + 280);
          }

          v122 = *(v121 + 48);
          v123 = (v122 << 31 >> 31) & 9 | v122 & 2;
          if ((v122 & 4) != 0)
          {
            v123 += 9;
          }

          if ((v122 & 8) != 0)
          {
            v123 += 9;
          }

          if (*(v121 + 48))
          {
            v124 = v123;
          }

          else
          {
            v124 = 0;
          }

          v125 = *(v121 + 8);
          if (!v125 || *v125 == v125[1])
          {
            *(v121 + 44) = v124;
            v5 = (v5 + v124 + 1 + 2);
            if ((*(a1 + 304) & 0x4000) == 0)
            {
              goto LABEL_364;
            }
          }

          else
          {
            v126 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v121 + 8), a2) + v124);
            *(v121 + 44) = v126;
            if (v126 >= 0x80)
            {
              v5 = v5 + v126 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126, a2) + 2;
              if ((*(a1 + 304) & 0x4000) == 0)
              {
                goto LABEL_364;
              }
            }

            else
            {
              v5 = (v5 + v126 + 1 + 2);
              if ((*(a1 + 304) & 0x4000) == 0)
              {
                goto LABEL_364;
              }
            }
          }

LABEL_410:
          v127 = *(a1 + 288);
          if (v127)
          {
            v128 = v127[14];
            if (v128)
            {
              goto LABEL_412;
            }
          }

          else
          {
            v127 = *(qword_10045E250 + 288);
            v128 = v127[14];
            if (v128)
            {
LABEL_412:
              v129 = ((v128 << 31) >> 31) & 9 | v128 & 2;
              if ((v128 & 4) != 0)
              {
                v129 += 9;
              }

              if ((v128 & 8) != 0)
              {
                v129 += 9;
              }

              if ((v128 & 0x10) != 0)
              {
                v129 += 9;
              }

              LODWORD(v130) = v129 + ((v128 >> 4) & 2);
              v131 = (v127 + 2);
              v132 = *(v127 + 1);
              if (!v132)
              {
                goto LABEL_425;
              }

LABEL_422:
              if (*v132 != v132[1])
              {
                v130 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v131, a2) + v130);
                v127[13] = v130;
                if (v130 >= 0x80)
                {
                  v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130, a2);
                }

                else
                {
                  v133 = 1;
                }

LABEL_427:
                v5 = (v5 + v130 + v133 + 2);
                v108 = (a1 + 8);
                v109 = *(a1 + 8);
                if (!v109)
                {
                  goto LABEL_365;
                }

                goto LABEL_428;
              }

LABEL_425:
              v127[13] = v130;
              v133 = 1;
              goto LABEL_427;
            }
          }

          LODWORD(v130) = 0;
          v131 = (v127 + 2);
          v132 = *(v127 + 1);
          if (!v132)
          {
            goto LABEL_425;
          }

          goto LABEL_422;
        }
      }

      v5 = v5 + v118 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118, a2) + 2;
      v79 = *(a1 + 304);
      if ((v79 & 0x1000) != 0)
      {
        goto LABEL_387;
      }

      goto LABEL_362;
    }

    v111 = *(a1 + 256);
    if (!v111)
    {
      v111 = *(qword_10045E250 + 256);
    }

    v112 = *(v111 + 36);
    v113 = (v112 << 31 >> 31) & 9;
    if ((v112 & 2) != 0)
    {
      v113 += 9;
    }

    if (*(v111 + 36))
    {
      v114 = v113;
    }

    else
    {
      v114 = 0;
    }

    v115 = *(v111 + 8);
    if (!v115 || *v115 == v115[1])
    {
      *(v111 + 32) = v114;
      v5 = (v5 + v114 + 1 + 2);
      v79 = *(a1 + 304);
      if ((v79 & 0x800) != 0)
      {
        goto LABEL_381;
      }
    }

    else
    {
      v116 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((v111 + 8), a2) + v114);
      *(v111 + 32) = v116;
      if (v116 >= 0x80)
      {
        v5 = v5 + v116 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116, a2) + 2;
        v79 = *(a1 + 304);
        if ((v79 & 0x800) != 0)
        {
          goto LABEL_381;
        }
      }

      else
      {
        v5 = (v5 + v116 + 1 + 2);
        v79 = *(a1 + 304);
        if ((v79 & 0x800) != 0)
        {
          goto LABEL_381;
        }
      }
    }

LABEL_361:
    if ((v79 & 0x1000) == 0)
    {
      goto LABEL_362;
    }

LABEL_387:
    v119 = *(a1 + 272);
    if (v119)
    {
      v120 = sub_10016A0D0(v119, a2);
      if (v120 < 0x80)
      {
        goto LABEL_389;
      }
    }

    else
    {
      v120 = sub_10016A0D0(*(qword_10045E250 + 272), a2);
      if (v120 < 0x80)
      {
LABEL_389:
        v5 = (v5 + v120 + 3);
        v79 = *(a1 + 304);
        if ((v79 & 0x2000) != 0)
        {
          goto LABEL_393;
        }

LABEL_363:
        if ((v79 & 0x4000) == 0)
        {
          goto LABEL_364;
        }

        goto LABEL_410;
      }
    }

    v5 = v5 + v120 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120, a2) + 2;
    v79 = *(a1 + 304);
    if ((v79 & 0x2000) != 0)
    {
      goto LABEL_393;
    }

    goto LABEL_363;
  }

LABEL_319:
  v95 = *(a1 + 232);
  if (v95)
  {
    v96 = v95[11];
    if (v96)
    {
      goto LABEL_321;
    }

LABEL_335:
    if ((v96 & 0x100) != 0)
    {
      LODWORD(v99) = 5;
    }

    else
    {
      LODWORD(v99) = 0;
    }

    v100 = (v95 + 2);
    v101 = *(v95 + 1);
    if (!v101)
    {
      goto LABEL_342;
    }

    goto LABEL_339;
  }

  v95 = *(qword_10045E250 + 232);
  v96 = v95[11];
  if (!v96)
  {
    goto LABEL_335;
  }

LABEL_321:
  v97 = 2 * (v96 & 1) + (v96 & 2);
  if ((v96 & 4) != 0)
  {
    v97 += 5;
  }

  if ((v96 & 8) != 0)
  {
    v97 += 5;
  }

  if ((v96 & 0x10) != 0)
  {
    v97 += 5;
  }

  v98 = ((v96 >> 5) & 2) + ((v96 >> 4) & 2) + v97;
  if ((v96 & 0x80) != 0)
  {
    v98 += 5;
  }

  if ((v96 & 0x100) != 0)
  {
    LODWORD(v99) = v98 + 5;
  }

  else
  {
    LODWORD(v99) = v98;
  }

  v100 = (v95 + 2);
  v101 = *(v95 + 1);
  if (!v101)
  {
    goto LABEL_342;
  }

LABEL_339:
  if (*v101 != v101[1])
  {
    v99 = (wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v100, a2) + v99);
    v95[10] = v99;
    if (v99 >= 0x80)
    {
      v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99, a2);
    }

    else
    {
      v102 = 1;
    }

    goto LABEL_344;
  }

LABEL_342:
  v95[10] = v99;
  v102 = 1;
LABEL_344:
  v103 = v80 + v102 + v99 + 2;
  v79 = *(a1 + 304);
  if ((v79 & 0x40) != 0)
  {
    v5 = v103 + 6;
  }

  else
  {
    v5 = v103;
  }

  if ((v79 & 0x80) != 0)
  {
    goto LABEL_348;
  }

LABEL_274:
  if ((v79 & 0xFF00) != 0)
  {
    goto LABEL_354;
  }

LABEL_364:
  v108 = (a1 + 8);
  v109 = *(a1 + 8);
  if (!v109)
  {
LABEL_365:
    *(a1 + 296) = v5;
    return v5;
  }

LABEL_428:
  if (*v109 == v109[1])
  {
    goto LABEL_365;
  }

  v134 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v108, a2) + v5;
  *(a1 + 296) = v134;
  return v134;
}

uint64_t sub_10015439C(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
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
    return sub_10014CD00(a1, v5);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_10015447C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100154490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001544A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 56))
  {
    v7 = *(a2 + 16);
    *(a1 + 56) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 56);
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

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 56) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 56);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(a2 + 40);
    *(a1 + 56) |= 8u;
    *(a1 + 40) = v10;
    if ((*(a2 + 56) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_9;
  }

LABEL_13:
  v9 = *(a2 + 32);
  *(a1 + 56) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 56);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v4 & 0x10) != 0)
  {
LABEL_9:
    v5 = *(a2 + 48);
    *(a1 + 56) |= 0x10u;
    *(a1 + 48) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001545CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001545E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001545F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
    a2 = v3;
    a1 = v2;
  }

  v4 = *(a2 + 60);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 32);
    *(a1 + 60) |= 1u;
    *(a1 + 32) = v9;
    v4 = *(a2 + 60);
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

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 16);
  *(a1 + 60) |= 2u;
  *(a1 + 16) = v10;
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 20);
  *(a1 + 60) |= 4u;
  *(a1 + 20) = v11;
  v4 = *(a2 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 24);
  *(a1 + 60) |= 8u;
  *(a1 + 24) = v12;
  v4 = *(a2 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v14 = *(a2 + 33);
    *(a1 + 60) |= 0x20u;
    *(a1 + 33) = v14;
    v4 = *(a2 + 60);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v13 = *(a2 + 36);
  *(a1 + 60) |= 0x10u;
  *(a1 + 36) = v13;
  v4 = *(a2 + 60);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v15 = *(a2 + 40);
  *(a1 + 60) |= 0x40u;
  *(a1 + 40) = v15;
  v4 = *(a2 + 60);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 44);
    *(a1 + 60) |= 0x80u;
    *(a1 + 44) = v5;
    v4 = *(a2 + 60);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 48);
      *(a1 + 60) |= 0x100u;
      *(a1 + 48) = v6;
      v4 = *(a2 + 60);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 52);
      *(a1 + 60) |= 0x200u;
      *(a1 + 52) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1001547C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001547D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001547E8(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
  }

  if (*(a2 + 36))
  {
    v7 = *(a2 + 16);
    a1[9] |= 1u;
    a1[4] = v7;
    v4 = *(a2 + 36);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      a1[9] |= 4u;
      a1[6] = v9;
      if ((*(a2 + 36) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 36) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 20);
  a1[9] |= 2u;
  a1[5] = v8;
  v4 = *(a2 + 36);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 28);
    a1[9] |= 8u;
    a1[7] = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 2), (a2 + 8));
}

void sub_1001548F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100154904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100154918(uint64_t a1, uint64_t a2)
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

void sub_1001549D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1001549EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100154A00(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
    a2 = v3;
    a1 = v2;
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
    *(a1 + 16) = v7;
    v4 = *(a2 + 60);
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

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 60) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = *(a2 + 40);
    *(a1 + 60) |= 8u;
    *(a1 + 40) = v10;
    if ((*(a2 + 60) & 0x10) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_9;
  }

LABEL_13:
  v9 = *(a2 + 32);
  *(a1 + 60) |= 4u;
  *(a1 + 32) = v9;
  v4 = *(a2 + 60);
  if ((v4 & 8) != 0)
  {
    goto LABEL_14;
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

void sub_100154B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100154B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100154B50(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
    v4 = *(a2 + 44);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = *(a2 + 44);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (v4)
  {
    v9 = *(a2 + 24);
    *(a1 + 44) |= 1u;
    *(a1 + 24) = v9;
    v4 = *(a2 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_7:
      if ((v4 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_22:
      *(a1 + 44) |= 4u;
      v11 = *(a1 + 16);
      if (!v11)
      {
        operator new();
      }

      v12 = *(a2 + 16);
      if (v12)
      {
        sub_1001688BC(v11, v12);
        v4 = *(a2 + 44);
        if ((v4 & 8) != 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1001688BC(v11, *(qword_10045E318 + 16));
        v4 = *(a2 + 44);
        if ((v4 & 8) != 0)
        {
          goto LABEL_28;
        }
      }

LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(a2 + 25);
  *(a1 + 44) |= 2u;
  *(a1 + 25) = v10;
  v4 = *(a2 + 44);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  v13 = *(a2 + 26);
  *(a1 + 44) |= 8u;
  *(a1 + 26) = v13;
  v4 = *(a2 + 44);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a2 + 27);
  *(a1 + 44) |= 0x10u;
  *(a1 + 27) = v14;
  v4 = *(a2 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a2 + 28);
  *(a1 + 44) |= 0x20u;
  *(a1 + 28) = v15;
  v4 = *(a2 + 44);
  if ((v4 & 0x40) == 0)
  {
LABEL_12:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_31:
  v16 = *(a2 + 32);
  *(a1 + 44) |= 0x40u;
  *(a1 + 32) = v16;
  v4 = *(a2 + 44);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v5 = *(a2 + 33);
    *(a1 + 44) |= 0x80u;
    *(a1 + 33) = v5;
    v4 = *(a2 + 44);
  }

LABEL_14:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 36);
      *(a1 + 44) |= 0x100u;
      *(a1 + 36) = v6;
      v4 = *(a2 + 44);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 34);
      *(a1 + 44) |= 0x200u;
      *(a1 + 34) = v7;
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100154DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100154DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100154DF0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 48);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 48))
  {
    v7 = *(a2 + 16);
    *(a1 + 48) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 24);
      *(a1 + 48) |= 4u;
      *(a1 + 24) = v9;
      if ((*(a2 + 48) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 48) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 40);
  *(a1 + 48) |= 2u;
  *(a1 + 40) = v8;
  v4 = *(a2 + 48);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 32);
    *(a1 + 48) |= 8u;
    *(a1 + 32) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100154EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100154F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100154F20(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    v2 = a1;
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
    a2 = v3;
    a1 = v2;
  }

  LOBYTE(v4) = *(a2 + 56);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 56))
  {
    v7 = *(a2 + 16);
    *(a1 + 56) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 56);
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

  else if ((*(a2 + 56) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 48);
  *(a1 + 56) |= 2u;
  *(a1 + 48) = v8;
  v4 = *(a2 + 56);
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
  v9 = *(a2 + 24);
  *(a1 + 56) |= 4u;
  *(a1 + 24) = v9;
  v4 = *(a2 + 56);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 40);
    *(a1 + 56) |= 0x10u;
    *(a1 + 40) = v11;
    if ((*(a2 + 56) & 0x20) == 0)
    {
      return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
    }

    goto LABEL_10;
  }

LABEL_15:
  v10 = *(a2 + 32);
  *(a1 + 56) |= 8u;
  *(a1 + 32) = v10;
  v4 = *(a2 + 56);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v4 & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 49);
    *(a1 + 56) |= 0x20u;
    *(a1 + 49) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100155068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10015507C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100155090(uint64_t result, uint64_t a2)
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

uint64_t sub_10015511C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();

    return sub_10014CD00(v4, a2);
  }

  return result;
}

uint64_t sub_100155190()
{
  v0 = qword_10045D0B0;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10013F188;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045CEB8;
}

void sub_100155220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_100155234(uint64_t a1)
{
  *a1 = off_10043E900;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100155288(uint64_t a1)
{
  *a1 = off_10043E900;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_100155394(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
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
                goto LABEL_48;
              }

              v26[0] = 0;
              v11 = *(this + 1);
              v10 = *(this + 2);
              if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
                if (!result)
                {
                  return result;
                }

                v12 = v26[0];
                v13 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                v13 = v11 + 1;
                *(this + 1) = v13;
              }

              *(a1 + 32) = v12 != 0;
              *(a1 + 60) |= 1u;
              if (v13 < v10 && *v13 == 21)
              {
                *(this + 1) = v13 + 1;
                v26[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_56;
              }
            }

            else
            {
              if (v8 != 2 || v9 != 5)
              {
                goto LABEL_48;
              }

              v26[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

LABEL_56:
              *(a1 + 16) = v26[0];
              *(a1 + 60) |= 2u;
              v17 = *(this + 1);
              if (v17 < *(this + 2) && *v17 == 29)
              {
                *(this + 1) = v17 + 1;
                v26[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
                {
                  return 0;
                }

LABEL_59:
                *(a1 + 20) = v26[0];
                *(a1 + 60) |= 4u;
                v18 = *(this + 1);
                if (v18 < *(this + 2) && *v18 == 33)
                {
                  *(this + 1) = v18 + 1;
                  *v26 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_62;
                }
              }
            }
          }

          else
          {
            if (v8 == 3)
            {
              if (v9 != 5)
              {
                goto LABEL_48;
              }

              v26[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_59;
            }

            if (v8 == 4)
            {
              if (v9 != 1)
              {
                goto LABEL_48;
              }

              *v26 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

LABEL_62:
              *(a1 + 24) = *v26;
              *(a1 + 60) |= 8u;
              v19 = *(this + 1);
              if (v19 < *(this + 2) && *v19 == 45)
              {
                *(this + 1) = v19 + 1;
                v26[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_65;
              }
            }

            else
            {
              if (v8 != 5 || v9 != 5)
              {
                goto LABEL_48;
              }

              v26[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

LABEL_65:
              *(a1 + 36) = v26[0];
              *(a1 + 60) |= 0x10u;
              v20 = *(this + 1);
              v14 = *(this + 2);
              if (v20 < v14 && *v20 == 48)
              {
                v15 = v20 + 1;
                *(this + 1) = v15;
                v26[0] = 0;
                if (v15 >= v14)
                {
                  goto LABEL_70;
                }

LABEL_68:
                v21 = *v15;
                if ((v21 & 0x80000000) != 0)
                {
LABEL_70:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v26);
                  if (!result)
                  {
                    return result;
                  }

                  v21 = v26[0];
                  v22 = *(this + 1);
                  v14 = *(this + 2);
                  goto LABEL_72;
                }

                v22 = v15 + 1;
                *(this + 1) = v22;
LABEL_72:
                *(a1 + 33) = v21 != 0;
                *(a1 + 60) |= 0x20u;
                if (v22 < v14 && *v22 == 61)
                {
                  *(this + 1) = v22 + 1;
                  v26[0] = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_75;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 7)
        {
          break;
        }

        if (v8 == 8)
        {
          if (v9 != 5)
          {
            goto LABEL_48;
          }

          v26[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

LABEL_78:
          *(a1 + 44) = v26[0];
          *(a1 + 60) |= 0x80u;
          v24 = *(this + 1);
          if (v24 < *(this + 2) && *v24 == 77)
          {
            *(this + 1) = v24 + 1;
            goto LABEL_81;
          }
        }

        else
        {
          if (v8 != 9)
          {
            if (v8 == 10 && v9 == 5)
            {
              v26[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_85;
            }

            goto LABEL_48;
          }

          if (v9 != 5)
          {
            goto LABEL_48;
          }

LABEL_81:
          v26[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 48) = v26[0];
          *(a1 + 60) |= 0x100u;
          v25 = *(this + 1);
          if (v25 < *(this + 2) && *v25 == 85)
          {
            *(this + 1) = v25 + 1;
            v26[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
            {
              return 0;
            }

LABEL_85:
            *(a1 + 52) = v26[0];
            *(a1 + 60) |= 0x200u;
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

      if (v8 == 6)
      {
        break;
      }

      if (v8 != 7 || v9 != 5)
      {
        goto LABEL_48;
      }

      v26[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
      {
        return 0;
      }

LABEL_75:
      *(a1 + 40) = v26[0];
      *(a1 + 60) |= 0x40u;
      v23 = *(this + 1);
      if (v23 < *(this + 2) && *v23 == 69)
      {
        *(this + 1) = v23 + 1;
        v26[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v26) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_78;
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v15 = *(this + 1);
      v14 = *(this + 2);
      v26[0] = 0;
      if (v15 >= v14)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }

LABEL_48:
    if (v9 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) != 0);
  return 0;
}

uint64_t sub_1001558E0(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 32), a2, a4);
    v6 = *(v5 + 60);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 36), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 33), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
  if ((*(v5 + 60) & 0x200) == 0)
  {
LABEL_11:
    v9 = *(v5 + 8);
    v8 = (v5 + 8);
    v7 = v9;
    if (!v9)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 52), a3);
  v10 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v10;
  if (!v10)
  {
    return result;
  }

LABEL_23:
  if (*v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

uint64_t sub_100155A5C(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v3 = *(a1 + 60);
  if (v3)
  {
    v7 = *(a1 + 32);
    *a2 = 8;
    a2[1] = v7;
    a2 += 2;
    v3 = *(a1 + 60);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
  v3 = *(a1 + 60);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = *(a1 + 20);
  *a2 = 29;
  *(a2 + 1) = v9;
  a2 += 5;
  v3 = *(a1 + 60);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = *(a1 + 24);
  *a2 = 33;
  *(a2 + 1) = v10;
  a2 += 9;
  v3 = *(a1 + 60);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = *(a1 + 36);
  *a2 = 45;
  *(a2 + 1) = v11;
  a2 += 5;
  v3 = *(a1 + 60);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = *(a1 + 33);
  *a2 = 48;
  a2[1] = v12;
  a2 += 2;
  v3 = *(a1 + 60);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = *(a1 + 40);
  *a2 = 61;
  *(a2 + 1) = v13;
  a2 += 5;
  v3 = *(a1 + 60);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = *(a1 + 44);
  *a2 = 69;
  *(a2 + 1) = v14;
  a2 += 5;
  v3 = *(a1 + 60);
  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v16 = *(a1 + 52);
    *a2 = 85;
    *(a2 + 1) = v16;
    a2 += 5;
    v17 = *(a1 + 8);
    v4 = (a1 + 8);
    v5 = v17;
    if (!v17)
    {
      return a2;
    }

    goto LABEL_23;
  }

LABEL_21:
  v15 = *(a1 + 48);
  *a2 = 77;
  *(a2 + 1) = v15;
  a2 += 5;
  if ((*(a1 + 60) & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    return a2;
  }

LABEL_23:
  if (*v5 != v5[1])
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v4, a2, a3);
  }

  return a2;
}

uint64_t sub_100155CA4(_DWORD *a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = a1[15];
  if (v3)
  {
    v4 = 2 * (v3 & 1);
    if ((v3 & 2) != 0)
    {
      v4 = (2 * (v3 & 1)) | 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    v5 = v4 + ((v3 >> 4) & 2);
    if ((v3 & 0x40) != 0)
    {
      v5 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 += 5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + 5;
  if ((v3 & 0x100) == 0)
  {
    v6 = v5;
  }

  if ((v3 & 0x200) != 0)
  {
    v6 += 5;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = (a1 + 2);
  v9 = *(a1 + 1);
  if (v9 && *v9 != v9[1])
  {
    v7 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v8, a2) + v7;
  }

  a1[14] = v7;
  return v7;
}