void sub_100057108(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> brightness set %@ failed", &v2, 0xCu);
}

void sub_1000571E8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> IOMFB Failure: 0x%x", v2, 8u);
}

void sub_100057448(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> Invalid detail string length (%llu) for detail string: %@", &v3, 0x16u);
}

void sub_100057590(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> Invalid haptic gain value: %f", &v2, 0xCu);
}

void sub_100057790(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100013B28();
  sub_1000461C0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100057810()
{
  sub_10004622C();
  if (sub_100031C94())
  {
    sub_100046208();
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_100046244();
}

void sub_1000578AC(uint64_t a1, uint64_t *a2)
{
  if (sub_100031C94())
  {
    v3 = *a2;
    sub_100046208();
    sub_100033F24();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  sub_100046244();
}

void sub_100057960()
{
  sub_100046214();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000579D0(uint64_t *a1)
{
  v6 = *a1;
  sub_10000E76C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100057A48(uint64_t *a1)
{
  v6 = *a1;
  sub_10000E76C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100057AC0()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100057B30()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057B6C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057BA8()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057BE4()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057C20(const char *a1)
{
  NSStringFromSelector(a1);
  sub_100013B28();
  sub_100031750();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100057CA0()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100057CFC()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057D38(void *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100057D9C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057DD8(void *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100057E3C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057E78()
{
  sub_100046214();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100057EE8(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100057F4C(_BYTE *a1)
{
  if (byte_1000AB2F8 == 1)
  {
    v2 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "<Notice> LTS nvramDataValid: NVRAM DATA does not exist", v3, 2u);
    }
  }

  *a1 = 0;
}

void sub_100057FD0()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100058040()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005807C()
{
  sub_10004622C();
  if (sub_100031C94())
  {
    sub_100046208();
    sub_100033F24();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  *v0 = 0;
}

void sub_10005811C(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  *a1 = 0;
}

void sub_1000581C0(uint64_t a1, uint64_t a2, void *a3)
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100046270();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  *a3 = a2;
}

void sub_100058274(const __CFData *a1)
{
  CFDataGetLength(a1);
  sub_100013B28();
  sub_100031750();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100058304()
{
  sub_10004622C();
  if (sub_100031C94())
  {
    sub_100046208();
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_100046244();
}

void sub_1000583A0()
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_100046244();
}

void sub_100058440(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000584A4(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100058508()
{
  sub_10004622C();
  if (sub_100031C94())
  {
    sub_100046208();
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_100046244();
}

void sub_1000585A4(void *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100058608()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100058644()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100058700(void *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100058764()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000587A0(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100058804()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100058840()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_10005889C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000588D8()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100058934()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100058990()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_1000589EC()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100058A48()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100058AA4()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100058B00(uint64_t a1)
{
  v1 = *(*a1 + 12);
  sub_100046220();
  sub_10000E76C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100058B78(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100058BDC(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100058C40(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100058CA4()
{
  sub_100046280();
  if (sub_100031760())
  {
    sub_100046208();
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }
}

void sub_100058D4C()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100058DA8()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100058E04()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100058E60()
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    sub_100046260();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100058EC0()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100058F1C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100058F58()
{
  sub_100046214();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100058FC8()
{
  sub_100046214();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100059038()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100059074()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_1000590D0(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100059134(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100059198(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000591FC(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100059260(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000592C4(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100059328(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_10005938C()
{
  sub_100046298();
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100046238();
    sub_100046270();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  }

  *v0 = v1 & 1;
}

void sub_10005944C(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000594B0(_BYTE *a1)
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100059514()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100059550()
{
  sub_100046298();
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100046238();
    sub_100046270();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  }

  *v0 = v1 & 1;
}

void sub_100059610()
{
  sub_100046280();
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    sub_100046208();
    sub_100046260();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }
}

void sub_1000596BC()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100059718()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_100059774()
{
  if (byte_1000AB2F8 == 1 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    sub_100046260();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_1000597EC()
{
  sub_100046214();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005985C()
{
  sub_100031C64();
  sub_1000461C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_1000598D0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (sub_100031C94())
  {
    sub_100046238();
    sub_100033F24();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
  }

  *a3 = 0;
}

void sub_100059984()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_1000599E0()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100059A1C()
{
  sub_100046214();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100059A8C(unsigned int *a1)
{
  v1 = *a1;
  sub_100046220();
  sub_10000E76C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100059B00(unsigned int *a1)
{
  v1 = *a1;
  sub_100046220();
  sub_100046238();
  sub_1000461C0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x14u);
}

void sub_100059B88()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100059BC4()
{
  sub_100046280();
  if (sub_100031760())
  {
    sub_100046250();
    sub_1000461D0();
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void sub_100059C64()
{
  sub_10004622C();
  if (sub_100031C94())
  {
    v2 = *(v1 + 8);
    sub_100046220();
    sub_100033F24();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  *v0 = 0;
}

void sub_100059D08()
{
  sub_10004622C();
  if (sub_100031C94())
  {
    v2 = *(v1 + 8);
    sub_100046220();
    sub_100033F24();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  *v0 = 0;
}

void sub_100059DAC(uint64_t a1)
{
  if (sub_100031760())
  {
    v2 = *(a1 + 8);
    sub_100046220();
    sub_100031750();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }
}

void sub_100059E44(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_100046220();
  sub_100046238();
  sub_1000461C0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100059EC0()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100059EFC()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100059F38()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100059F74()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100059FB0()
{
  sub_100046214();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005A020()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A05C()
{
  if (sub_100031C94())
  {
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  sub_100046244();
}

void sub_10005A110()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A14C()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_10005A1A8()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A1E4()
{
  if (sub_100031760())
  {
    sub_100031750();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void sub_10005A240()
{
  sub_100031C64();
  sub_1000461C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10005A2B4()
{
  sub_10004622C();
  if (sub_100031C94())
  {
    sub_100046208();
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10004628C();
}

void sub_10005A350()
{
  sub_10004622C();
  if (sub_100031C94())
  {
    sub_100046208();
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10004628C();
}

void sub_10005A3EC()
{
  sub_10004622C();
  if (sub_100031C94())
  {
    sub_100046208();
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10004628C();
}

void sub_10005A488()
{
  sub_10004622C();
  if (sub_100031C94())
  {
    sub_100046208();
    sub_100033F24();
    _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  }

  sub_10004628C();
}

void sub_10005A524()
{
  sub_100013B28();
  sub_1000461C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005A5A0()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A5DC()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A618()
{
  sub_100031C64();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10005A690()
{
  sub_100031C64();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10005A708()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A744()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A780()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A858(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> Could not create number from charge rate index %d", v3, 8u);
}

void sub_10005A908(os_log_t log, float a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> Invalid speaker gain: %f", &v2, 0xCu);
}

void sub_10005A9CC(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> Invalid speaker gain value: %f", &v2, 0xCu);
}

void sub_10005AF5C(uint64_t a1, NSObject *a2)
{
  v3 = 138412290;
  v4 = [NSNumber numberWithInt:a1];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> Unable to create power assertion for TSFD blend. Error: %@", &v3, 0xCu);
}

void sub_10005B1A0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> bad FContext value", buf, 2u);
}

void sub_10005B1E0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> no FContext value", buf, 2u);
}

void sub_10005B304(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "<Error> Failed to write data to SensorDispatcher = 0x%x", v2, 8u);
}

void sub_10005B3FC()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005B46C()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005B4A8()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005B4E4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> Unable to create eventRef for keyboard event", buf, 2u);
}

void sub_10005B524(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<Error> Failed to copy keyboard event from client", buf, 2u);
}

void sub_10005B564()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005B6A0()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005B710()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005B780()
{
  sub_100013B28();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005B7F0()
{
  sub_10000E794();
  sub_10000E76C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}