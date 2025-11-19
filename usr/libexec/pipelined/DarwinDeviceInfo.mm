@interface DarwinDeviceInfo
+ (id)currentDevice;
- (Info)ws_info;
- (id)family;
- (id)hwModel;
- (id)machine;
- (id)name;
- (id)osVersion;
- (id)systemName;
- (id)systemVersion;
- (vector<int,)splitSystemVersion;
@end

@implementation DarwinDeviceInfo

+ (id)currentDevice
{
  v2 = objc_alloc_init(DarwinDeviceInfo);

  return v2;
}

- (id)machine
{
  v17 = 10;
  strcpy(__p, "hw.machine");
  v20 = 0;
  if (sysctlbyname(__p, 0, &v20, 0, 0))
  {
    v2 = __error();
    v3 = strerror(*v2);
    v4 = strlen(v3);
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    v19 = v4;
    if (v4)
    {
      memmove(&__dst, v3, v4);
    }

    *(&__dst + v5) = 0;
    goto LABEL_27;
  }

  if (v20)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (v17 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (sysctlbyname(v6, 0, &v20, 0, 0))
  {
    v7 = __error();
    v8 = strerror(*v7);
    v9 = strlen(v8);
    if (v9 <= 0x7FFFFFFFFFFFFFF7)
    {
      v10 = v9;
      if (v9 >= 0x17)
      {
        operator new();
      }

      v19 = v9;
      if (v9)
      {
        memmove(&__dst, v8, v9);
      }

      *(&__dst + v10) = 0;
      goto LABEL_27;
    }

LABEL_38:
    sub_10000D39C();
  }

  v11 = v20 - 1;
  if (v20 - 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_38;
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  v19 = v20 - 1;
  if (v20 != 1)
  {
    memcpy(&__dst, 0, v11);
  }

  *(&__dst + v11) = 0;
LABEL_27:
  v12 = sub_1000DD848(&__dst);
  if (v19 < 0)
  {
    v14 = v12;
    operator delete(__dst);
    v12 = v14;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  v15 = v12;
  operator delete(__p[0]);
  v12 = v15;
LABEL_29:

  return v12;
}

- (id)family
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (!v2 || ((v4 = [v2 intValue], v4 <= 6) ? (v5 = ((1 << v4) & 0x4E) == 0) : (v5 = 1), v5))
  {
    v6 = [[NSNumber alloc] initWithInt:0xFFFFFFFFLL];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (id)hwModel
{
  v2 = MGCopyAnswer();
  CFRelease(v2);

  return v2;
}

- (vector<int,)splitSystemVersion
{
  v4 = [(DarwinDeviceInfo *)self systemVersion];
  v5 = [v4 UTF8String];
  v6 = strlen(v5);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_10000D39C();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v34 = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
  }

  *(&__dst + v7) = 0;

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v8 = v34;
  if ((v34 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  while ((v8 & 0x80) == 0)
  {
    result = &__dst;
    if (p_dst == (&__dst + v8))
    {
      return result;
    }

LABEL_15:
    v11 = (result + v8);
    v12 = p_dst;
    if (p_dst != v11)
    {
      while (1)
      {
        var0_low = SLOBYTE(v12->var0);
        if (var0_low < 0 || (_DefaultRuneLocale.__runetype[var0_low] & 0x400) == 0)
        {
          break;
        }

        v12 = (v12 + 1);
        if (v12 == v11)
        {
          v12 = v11;
          break;
        }
      }
    }

    v14 = v12 - p_dst;
    if ((v12 - p_dst) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_10000D39C();
    }

    if (v14 > 0x16)
    {
      operator new();
    }

    v31 = v12 - p_dst;
    if (v12 != p_dst)
    {
      memmove(__p, p_dst, v12 - p_dst);
    }

    *(__p + v14) = 0;
    v15 = v34;
    if ((v34 & 0x80u) == 0)
    {
      v16 = &__dst;
    }

    else
    {
      v16 = __dst;
    }

    if ((v34 & 0x80u) != 0)
    {
      v15 = v33;
    }

    v17 = v16 + v15;
    if (v12 != v17)
    {
      v18 = v12;
      while (1)
      {
        v19 = *v18;
        if ((v19 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v19] & 0x400) != 0)
        {
          break;
        }

        ++v18;
        v12 = (v12 + 1);
        if (v18 == v17)
        {
          v12 = v17;
          break;
        }
      }
    }

    v20 = __p[1];
    if (v31 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v31 >= 0)
    {
      v20 = v31;
    }

    if (!v20)
    {
LABEL_62:
      std::bad_cast::bad_cast(&v35);
      v35.__vftable = &off_100434090;
      sub_100049F88(&v35);
    }

    v39 = 0;
    v22 = *v21;
    if (v22 == 45 || (v23 = v21, v22 == 43))
    {
      if (v31 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      v23 = (v24 + 1);
    }

    LOBYTE(v35.__vftable) = 0;
    HIDWORD(v35.__vftable) = 1;
    v36 = &v39;
    v37 = v23;
    v38 = v20 + v21;
    v25 = sub_1000D89EC(&v35);
    v26 = v39;
    if (v22 == 45)
    {
      if (v39 < 0x80000001)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0;
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_62;
      }

      v26 = -v39;
    }

    else
    {
      if (v39 >= 0)
      {
        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      if ((v28 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v29 = v26;
    sub_10000A688(retstr, &v29);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v34;
    p_dst = v12;
  }

  result = __dst;
  v8 = v33;
  if (p_dst != (__dst + v33))
  {
    goto LABEL_15;
  }

  operator delete(__dst);
  return result;
}

- (id)osVersion
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"UnknownVersion";
  }

  v5 = v4;

  return v4;
}

- (Info)ws_info
{
  v2 = v1;
  v19 = [v1 manufacturer];
  v4 = [v19 UTF8String];
  v5 = strlen(v4);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_10000D39C();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&retstr->var0.__rep_.__l + 23) = v5;
  if (v5)
  {
    memmove(retstr, v4, v5);
  }

  retstr->var0.__rep_.__s.__data_[v6] = 0;
  v7 = [v2 family];
  *retstr[1].var0.__rep_.__s.__data_ = [v7 integerValue];
  v8 = [v2 hwModel];
  v9 = [v8 UTF8String];
  v10 = strlen(v9);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_10000D39C();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  retstr[2].var0.__rep_.__s.__data_[7] = v10;
  v12 = &retstr[1].var0.__rep_.__s.__data_[8];
  if (v10)
  {
    memmove(v12, v9, v10);
  }

  v12[v11] = 0;
  v13 = [v2 osVersion];
  v14 = [v13 UTF8String];
  v15 = strlen(v14);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_10000D39C();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  v17 = &retstr[2].var0.__rep_.__s.__data_[8];
  retstr[3].var0.__rep_.__s.__data_[7] = v15;
  if (v15)
  {
    memmove(v17, v14, v15);
  }

  v17[v16] = 0;

  return result;
}

- (id)name
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return v4;
}

- (id)systemName
{
  v2 = _CFCopySystemVersionDictionary();
  v3 = [v2 objectForKeyedSubscript:_kCFSystemVersionProductNameKey];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"Unknown";
  }

  v6 = v5;

  return v5;
}

- (id)systemVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

@end