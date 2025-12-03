@interface CLClientKeyPath
+ (id)nullClientKeyPath;
- (BOOL)isAuthSharingSubIdentity;
- (CLClientKeyPath)anchorKeyPath;
- (CLClientKeyPath)limitingCKP;
- (NSString)bundleId;
- (NSString)bundlePath;
- (NSString)clientAnchor;
- (NSString)clientKey;
- (NSString)executablePath;
- (NSString)legacyClientKey;
- (NSString)nestedBundlePath;
- (NSString)subIdentityId;
- (NSString)userName;
- (NSString)website;
- (Name)clientName;
- (basic_string<char,)cppClientKey;
- (char)subIdentityType;
- (unint64_t)hash;
@end

@implementation CLClientKeyPath

+ (id)nullClientKeyPath
{
  if (qword_10265F518 != -1)
  {
    sub_101AB2B9C();
  }

  return qword_10265F510;
}

- (NSString)clientAnchor
{
  v3 = [(CLClientKeyPath *)self findComponent:1]+ 1;

  return [(CLClientKeyPath *)self extractComponentFromCharPtr:v3];
}

- (basic_string<char,)cppClientKey
{
  v2 = v1;
  v4 = [v1 findComponent:2];
  if (v4 && (v5 = v4, *v4 == 119))
  {
    *v4 = 0;
    result = sub_10000EC00(retstr, v2 + 8);
    *v5 = 119;
  }

  else
  {

    return sub_10000EC00(retstr, v2 + 8);
  }

  return result;
}

- (NSString)subIdentityId
{
  result = [(CLClientKeyPath *)self findComponent:2];
  if (result)
  {

    return [(CLClientKeyPath *)self extractComponentFromCharPtr:result + 1];
  }

  return result;
}

- (NSString)clientKey
{
  v3 = [(CLClientKeyPath *)self findComponent:2];
  if (v3 && (v4 = v3, *v3 == 119))
  {
    *v3 = 0;
    result = [NSString stringWithUTF8String:self->_buffer];
    *v4 = 119;
  }

  else
  {

    return [NSString stringWithUTF8String:self->_buffer];
  }

  return result;
}

- (NSString)bundlePath
{
  v3 = [(CLClientKeyPath *)self findComponent:1];
  if (*v3 != 112)
  {
    return 0;
  }

  return [(CLClientKeyPath *)self extractComponentFromCharPtr:v3 + 1];
}

- (NSString)executablePath
{
  v3 = [(CLClientKeyPath *)self findComponent:1];
  if (*v3 != 101)
  {
    return 0;
  }

  return [(CLClientKeyPath *)self extractComponentFromCharPtr:v3 + 1];
}

- (NSString)bundleId
{
  v3 = [(CLClientKeyPath *)self findComponent:1];
  if (*v3 != 105)
  {
    return 0;
  }

  return [(CLClientKeyPath *)self extractComponentFromCharPtr:v3 + 1];
}

- (BOOL)isAuthSharingSubIdentity
{
  if (*[(CLClientKeyPath *)self findComponent:1]== 108 || (v3 = [(CLClientKeyPath *)self findComponent:2]) == 0 || (v4 = *v3 - 101, v4 > 0xB))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0x811u >> v4;
  }

  return v5 & 1;
}

- (NSString)legacyClientKey
{
  userName = [(CLClientKeyPath *)self userName];
  v4 = [(CLClientKeyPath *)self findComponent:1];
  v5 = *v4;
  v6 = [(CLClientKeyPath *)self extractComponentFromCharPtr:v4 + 1];
  v7 = [(CLClientKeyPath *)self findComponent:2];
  if (v7)
  {
    v8 = v7;
    v9 = [(CLClientKeyPath *)self extractComponentFromCharPtr:v7 + 1];
    v10 = *v8;
    switch(v10)
    {
      case 'e':
        v11 = &off_1024E05B0;
        goto LABEL_11;
      case 'i':
        goto LABEL_15;
      case 'p':
        v11 = &off_1024E05B8;
LABEL_11:
        v13 = [NSString stringWithFormat:@"%s%@", *v11, v9];
LABEL_14:
        v9 = v13;
LABEL_15:
        if (!userName)
        {
          return v9;
        }

        goto LABEL_16;
    }
  }

  switch(v5)
  {
    case '!':
      v13 = [NSString stringWithUTF8String:"com.apple.locationd.executable-"];
      goto LABEL_14;
    case 'e':
      v12 = &off_1024E05B0;
      goto LABEL_13;
    case 'p':
      v12 = &off_1024E05B8;
LABEL_13:
      v13 = [NSString stringWithFormat:@"%s%@", *v12, v6];
      goto LABEL_14;
  }

  v9 = v6;
  if (!userName)
  {
    return v9;
  }

LABEL_16:
  sub_10004FE1C(__p);
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  v9 = [NSString stringWithFormat:@"%@%s%@", userName, v14, v9];
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

- (NSString)userName
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = [(CLClientKeyPath *)self findComponent:0];

  return [(CLClientKeyPath *)self extractComponentFromCharPtr:v3];
}

- (NSString)nestedBundlePath
{
  v3 = [(CLClientKeyPath *)self findComponent:2];
  if (!v3 || *v3 != 112)
  {
    return 0;
  }

  return [(CLClientKeyPath *)self extractComponentFromCharPtr:v3 + 1];
}

- (CLClientKeyPath)anchorKeyPath
{
  if ([(CLClientKeyPath *)self isAuthLimited])
  {
    return self;
  }

  v3 = [(CLClientKeyPath *)self findComponent:2];
  if (!v3)
  {
    return self;
  }

  v4 = [[NSString alloc] initWithBytes:self->_buffer length:v3 - self->_buffer encoding:4];

  return [CLClientKeyPath clientKeyPathWithClientKey:v4];
}

- (Name)clientName
{
  v2 = v1;
  *(&retstr[2].var1 + 3) = 0;
  *retstr[2].fUserName.__rep_.__s.__data_ = 0u;
  *(&retstr[2].fUserName.__rep_.__l + 1) = 0u;
  *retstr[1].fUserName.__rep_.__s.__data_ = 0u;
  *(&retstr[1].fUserName.__rep_.__l + 1) = 0u;
  *retstr->fUserName.__rep_.__s.__data_ = 0u;
  *(&retstr->fUserName.__rep_.__l + 1) = 0u;
  *&retstr[3].fUserName.__rep_.__l.__size_ = 0u;
  *&retstr[3].var0 = 0u;
  *&retstr[4].fUserName.__rep_.__l.__size_ = 0u;
  *&retstr[4].var0 = 0u;
  *(&retstr[5].fUserName.__rep_.__l + 3) = 0u;
  v4 = *[v1 findComponent:1];
  clientAnchor = [v2 clientAnchor];
  v6 = [v2 findComponent:2];
  if (!v6)
  {
    if (clientAnchor)
    {
      goto LABEL_23;
    }

LABEL_27:
    if (qword_1025D47A0 != -1)
    {
      sub_101AB2B60();
    }

    v10 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    __str = 68289282;
    __str_8 = 2082;
    __str_10 = "";
    __str_18 = 2114;
    *__str_20 = v2;
    v11 = "{msg%{public}.0s:#warning #CLCKP creating Name from ckp with an empty anchor, CKP:%{public, location:escape_only}@}";
LABEL_38:
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, v11, &__str, 0x1Cu);
    goto LABEL_65;
  }

  v7 = *v6;
  subIdentityId = [v2 subIdentityId];
  if (!clientAnchor)
  {
    goto LABEL_27;
  }

  if (v7 == 112)
  {
    if (subIdentityId)
    {
      if (v4 == 108)
      {
        sub_10000EC00(&v17, [subIdentityId UTF8String]);
        sub_10000EC00(&v16, [clientAnchor UTF8String]);
        sub_101320864(&v17, &v16, &__str);
        sub_100034F70(retstr, &__str);
        if (v33 < 0)
        {
          operator delete(__p);
        }

        if (v31 < 0)
        {
          operator delete(v30);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 < 0)
        {
          operator delete(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v23 < 0)
        {
          operator delete(*&__str_20[4]);
        }

        if ((__str_20[3] & 0x80000000) != 0)
        {
          operator delete(__str);
        }

        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        v9 = v16.__r_.__value_.__r.__words[0];
LABEL_61:
        operator delete(v9);
LABEL_62:
        if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v12 = v17.__r_.__value_.__r.__words[0];
        goto LABEL_64;
      }

      sub_10000EC00(&v17, [subIdentityId UTF8String]);
      sub_1000E1C7C(&v17, &__str);
LABEL_47:
      sub_100034F70(retstr, &__str);
      if (v33 < 0)
      {
        operator delete(__p);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(*&__str_20[4]);
      }

      if ((__str_20[3] & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      v9 = __str;
      goto LABEL_61;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_101AB2B60();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      __str = 68289282;
      __str_8 = 2082;
      __str_10 = "";
      __str_18 = 2114;
      *__str_20 = v2;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLCKP creating Name from ckp which has SubIdentityTypeNestedBundlePath, but empty subId, CKP:%{public, location:escape_only}@}", &__str, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_101AB2B74();
      }
    }

    v14 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      __str = 68289282;
      __str_8 = 2082;
      __str_10 = "";
      __str_18 = 2114;
      *__str_20 = v2;
      _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLCKP creating Name from ckp which has SubIdentityTypeNestedBundlePath, but empty subId", "{msg%{public}.0s:#CLCKP creating Name from ckp which has SubIdentityTypeNestedBundlePath, but empty subId, CKP:%{public, location:escape_only}@}", &__str, 0x1Cu);
    }

    goto LABEL_65;
  }

LABEL_23:
  switch(v4)
  {
    case 'e':
      sub_10000EC00(&__str, [clientAnchor UTF8String]);
      std::string::operator=(&retstr->var0, &__str);
      if ((__str_20[3] & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v12 = __str;
LABEL_64:
      operator delete(v12);
      goto LABEL_65;
    case 'p':
      sub_10000EC00(&v17, [clientAnchor UTF8String]);
      sub_1000E1C7C(&v17, &__str);
      goto LABEL_47;
    case 'i':
      sub_10000EC00(&v17, [clientAnchor UTF8String]);
      sub_100034EE4(&v17, &__str);
      goto LABEL_47;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101AB2B60();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __str = 68289282;
    __str_8 = 2082;
    __str_10 = "";
    __str_18 = 2114;
    *__str_20 = v2;
    v11 = "{msg%{public}.0s:#Warning #CLCKP creating Name from CKP without valid anchor type. The resulting Name will have the following client key: 'com.apple.locationd.executable-', CKP:%{public, location:escape_only}@}";
    goto LABEL_38;
  }

LABEL_65:
  result = _os_feature_enabled_impl();
  if (result)
  {
    sub_10000EC00(&__str, [objc_msgSend(v2 "userName")]);
    result = sub_100061154(retstr, &__str);
    if ((__str_20[3] & 0x80000000) != 0)
    {
      operator delete(__str);
    }
  }

  return result;
}

- (CLClientKeyPath)limitingCKP
{
  v3 = [(CLClientKeyPath *)self findComponent:1];
  if (*v3 != 108)
  {
    return 0;
  }

  v4 = [(CLClientKeyPath *)self extractComponentFromCharPtr:v3 + 1];
  userName = [(CLClientKeyPath *)self userName];

  return [CLClientKeyPath clientKeyPathWithUserName:userName clientAnchor:v4 anchorType:105];
}

- (char)subIdentityType
{
  v2 = [(CLClientKeyPath *)self findComponent:2];
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 33;
  }
}

- (unint64_t)hash
{
  LOBYTE(v2) = self->_buffer[0];
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v5 = &self->_buffer[1];
  do
  {
    v6 = v2;
    result = 2 * (result + v2);
    v7 = *v5++;
    v2 = v7;
    v9 = v6 == 58 && v2 == 119;
    if (v2)
    {
      v10 = !v9;
    }

    else
    {
      v10 = 0;
    }
  }

  while (v10);
  return result;
}

- (NSString)website
{
  v3 = [(CLClientKeyPath *)self findComponent:2];
  if (!v3 || *v3 != 119)
  {
    return 0;
  }

  return [(CLClientKeyPath *)self extractComponentFromCharPtr:v3 + 1];
}

@end