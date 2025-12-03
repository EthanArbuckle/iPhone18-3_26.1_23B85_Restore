@interface DIEncryptionChpass
- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)usage error:(id *)error;
- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)stdin usage:(int64_t)usage error:(id *)error;
- (BOOL)replacePassWithXpcHandler:(id)handler params:(id)params error:(id *)error;
- (BOOL)replacePassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)updateDiskImageParamsWithFrontend:(id)frontend error:(id *)error;
- (DIEncryptionChpass)initWithCoder:(id)coder;
- (DIEncryptionChpass)initWithParams:(id)params;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
- (void)setPassEntryToChange:(void *)change;
@end

@implementation DIEncryptionChpass

- (DIEncryptionChpass)initWithParams:(id)params
{
  v4.receiver = self;
  v4.super_class = DIEncryptionChpass;
  return [(DIEncryptionFrontend *)&v4 initWithParams:params];
}

- (DIEncryptionChpass)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diParams"];
  v6 = [(DIEncryptionChpass *)self initWithParams:v5];
  if (v6)
  {
    -[DIEncryptionFrontend setAllowStoringInKeychain:](v6, "setAllowStoringInKeychain:", [coderCopy decodeBoolForKey:@"allowStoringInKeychain"]);
    sub_10003DB34(coderCopy, &v9);
    sub_10003DCCC(&v6->_passEntryToChange.__ptr_, &v9);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      operator delete();
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diParams = [(DIEncryptionFrontend *)self diParams];
  [coderCopy encodeObject:diParams forKey:@"diParams"];

  ptr = self->_passEntryToChange.__ptr_;
  if (ptr)
  {
    sub_10003DDBC(coderCopy, ptr);
  }
}

- (BOOL)replacePassWithXpcHandler:(id)handler params:(id)params error:(id *)error
{
  handlerCopy = handler;
  LOBYTE(error) = [(DIEncryptionFrontend *)self addPassphraseEntryWithXpcHandler:handlerCopy flags:[(DIEncryptionFrontend *)self flags] usage:2 error:error];

  return error;
}

- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];

  backendXPC = [diskImageParamsXPC backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v27 = v9;
    v28 = v11;
    v29[0] = 0;
    v30 = 0;
    v12 = &OBJC_IVAR___DIBaseParams__inputURL;
    if (v11 == v9[1])
    {
LABEL_20:
      sleep(2u);
      error = [v12 + 478 failWithPOSIXCode:80 description:@"Incorrect passphrase" error:error];
    }

    else
    {
      while (1)
      {
        v13 = sub_10003AA38(&v27);
        if (!*(v13 + 632))
        {
          v14 = sub_100178AF0(v13, passphrase, &v20);
          if (v22 == 1)
          {
            [backendXPC cryptoHeader];
            sub_100040704();
          }

          v15 = std::generic_category();
          *buf = 35;
          v26 = v15;
          if (*(*v21 + 32))(v21, v20, buf) || ((v26->equivalent_0)(v26, &v20, *buf))
          {
            v16 = 1;
          }

          else
          {
            error = [DIError failWithUnexpected:v20 error:v21, error];
            v16 = 0;
          }

          if (v22 == 1)
          {
            *buf = &v20;
            sub_10003FF54(buf);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        sub_10003AAD8(&v27, v23);
        if (v24[640] == 1)
        {
          sub_10003F650(v24);
        }

        if (v27 == v10 && v28 == v10[1])
        {
          if (v30)
          {
            sub_10003F650(v29);
          }

          v12 = &OBJC_IVAR___DIBaseParams__inputURL;
          goto LABEL_20;
        }
      }

      if (v30)
      {
        sub_10003F650(v29);
      }
    }
  }

  else
  {
    error = 0;
  }

  return error & 1;
}

- (BOOL)replacePassphrase:(const char *)passphrase error:(id *)error
{
  selfCopy = self;
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  if (!v7)
  {
    LOBYTE(selfCopy) = 0;
    return selfCopy & 1;
  }

  v8 = v7;
  [(DIEncryptionFrontend *)selfCopy getSerializerWithAuthTable:v7];
  if (v29)
  {
    v33.i32[0] = 8;
    sub_100178394(v8, passphrase, v33.i32, v28, &v54);
    if (v56)
    {
      v9 = *v8;
      v50 = v8;
      v51 = v9;
      v52[0] = 0;
      v53 = 0;
      if (v9 == v8[1])
      {
LABEL_11:
        v22 = 1;
      }

      else
      {
        while (1)
        {
          v10 = sub_10003AA38(&v50);
          v11 = v10;
          if (!*(v10 + 632))
          {
            v12 = *(v10 + 60);
            v13 = *(v10 + 112);
            ptr = selfCopy->_passEntryToChange.__ptr_;
            v15 = *(ptr + 1);
            v33 = *ptr;
            v27 = *(v10 + 12);
            v26 = *(v10 + 96);
            v16 = *(ptr + 2);
            v34[0] = v15;
            v34[1] = v16;
            v17 = *(ptr + 12);
            v18 = *(ptr + 52);
            v37 = *(ptr + 68);
            v36 = v18;
            v38 = *(ptr + 84);
            v19 = *(ptr + 25);
            v35 = v17;
            v39 = v19;
            memcpy(v40, ptr + 104, 0x200uLL);
            v42[0] = v27;
            v20 = *(v11 + 44);
            v42[1] = *(v11 + 28);
            v43 = v20;
            v44 = v12;
            v21 = v11[5];
            v45 = v11[4];
            v46 = v21;
            v47 = v26;
            v48 = v13;
            memcpy(v49, v11 + 116, sizeof(v49));
            v30[0] = &v33;
            v30[1] = v42;
            if (sub_100040548(v30, vmovn_s32(vceqq_s32(v33, v27)).u8[0] & 1))
            {
              break;
            }
          }

          sub_10003AAD8(&v50, v31);
          if (v32[640] == 1)
          {
            sub_10003F650(v32);
          }

          if (v50 == v8 && v51 == v8[1])
          {
            goto LABEL_11;
          }
        }

        (*(v28[0] + 1))(v42, v28, &v55 + 4);
        if (v43)
        {
          sub_100177F2C(v8, v42, &v50, &v33);
          v22 = v41;
          if (v41 & 1) != 0 || (LOBYTE(selfCopy) = [DIError failWithUnexpected:v33.i64[0] verboseInfo:v33.i64[1] error:@"Failed to replace passphrase entry in auth table", error], (v41))
          {
            if (v40[552] == 1)
            {
              sub_10003F650(v34);
            }
          }
        }

        else
        {
          LOBYTE(selfCopy) = [DIError failWithUnexpected:*&v42[0] verboseInfo:*(&v42[0] + 1) error:@"Failed to serialize passphrase to crypto header", error];
          v22 = 0;
        }

        if (v43 == 1)
        {
          sub_100040370(v42);
        }
      }

      if (v53 == 1)
      {
        sub_10003F650(v52);
      }

      if (v22)
      {
        (*(v28[0] + 4))(&v33, v28, v8);
        v23 = v34[0];
        if ((v34[0] & 1) == 0)
        {
          LOBYTE(selfCopy) = [DIError failWithUnexpected:v33.i64[0] verboseInfo:v33.i64[1] error:@"Failed to update crypto header", error];
        }

        LOBYTE(selfCopy) = v23 | selfCopy;
      }

      goto LABEL_22;
    }

    error = [DIError failWithUnexpected:v54 verboseInfo:v55 error:@"Failed to create passphrase auth entry", error];
  }

  else
  {
    error = [DIError failWithUnexpected:v28[0] verboseInfo:v28[1] error:@"Failed to create crypto serializer", error];
  }

  LOBYTE(selfCopy) = error;
LABEL_22:
  if (v29 == 1)
  {
    (*(v28[0] + 7))(v28);
  }

  return selfCopy & 1;
}

- (BOOL)updateDiskImageParamsWithFrontend:(id)frontend error:(id *)error
{
  frontendCopy = frontend;
  v13.receiver = self;
  v13.super_class = DIEncryptionChpass;
  v7 = [(DIEncryptionFrontend *)&v13 updateDiskImageParamsWithFrontend:frontendCopy error:error];
  if (v7)
  {
    passEntryToChange = [frontendCopy passEntryToChange];
    v10 = *passEntryToChange;
    v9 = passEntryToChange[1];
    if (v9)
    {
      atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
    }

    cntrl = self->_passEntryToChange.__cntrl_;
    self->_passEntryToChange.__ptr_ = v10;
    self->_passEntryToChange.__cntrl_ = v9;
    if (cntrl)
    {
      sub_10000E984(cntrl);
    }
  }

  return v7;
}

- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)usage error:(id *)error
{
  error = 0;
  if (usage)
  {
    gUIPassphraseLabelCreate = [(DIEncryptionFrontend *)self GUIPassphraseLabelCreate];
    v8 = [NSMutableArray arrayWithObject:gUIPassphraseLabelCreate];

    gUIVerifyPassphraseLabelCreate = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
    v10 = 65539;
    v11 = gUIVerifyPassphraseLabelCreate != 0;

    if (gUIVerifyPassphraseLabelCreate)
    {
      gUIVerifyPassphraseLabelCreate2 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
      [v8 addObject:gUIVerifyPassphraseLabelCreate2];

      v10 = 196611;
    }

    v32[0] = kCFUserNotificationAlertHeaderKey;
    gUIPassphrasePromptCreate = [(DIEncryptionFrontend *)self GUIPassphrasePromptCreate];
  }

  else
  {
    gUIPassphraseLabelUnlock = [(DIEncryptionFrontend *)self GUIPassphraseLabelUnlock];
    v8 = [NSMutableArray arrayWithObject:gUIPassphraseLabelUnlock];

    v32[0] = kCFUserNotificationAlertHeaderKey;
    gUIPassphrasePromptCreate = [(DIEncryptionFrontend *)self GUIPassphrasePromptUnlock];
    v11 = 0;
    v10 = 65539;
  }

  v33[0] = gUIPassphrasePromptCreate;
  v33[1] = @"OK";
  v32[1] = kCFUserNotificationDefaultButtonTitleKey;
  v32[2] = kCFUserNotificationAlternateButtonTitleKey;
  v32[3] = kCFUserNotificationTextFieldTitlesKey;
  v33[2] = @"Cancel";
  v33[3] = v8;
  v15 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
  v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

  v17 = CFUserNotificationCreate(0, 0.0, v10, &error, v16);
  v18 = v17;
  if (!v17)
  {
    error = [NSString stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error];
    v19 = [DIError failWithEnumValue:154 verboseInfo:error error:error];

    goto LABEL_32;
  }

  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(v17, 0.0, &responseFlags))
  {
    v29 = BYTE1(responseFlags) & 1;
    if ((responseFlags & 3) != 0)
    {
      v21 = 0;
      v22 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:error];
LABEL_12:
      v19 = v22;
LABEL_31:

      goto LABEL_32;
    }

    v21 = CFUserNotificationGetResponseValue(v18, kCFUserNotificationTextFieldValuesKey, 0);
    if (v11)
    {
      v23 = CFUserNotificationGetResponseValue(v18, kCFUserNotificationTextFieldValuesKey, 1);
      if (![v21 isEqualToString:v23])
      {
        v19 = [DIError failWithPOSIXCode:80 description:@"Passwords don’t match" error:error];

        goto LABEL_31;
      }
    }

    if (usage == 2)
    {
      v27 = v21;
      if (!-[DIEncryptionChpass replacePassphrase:error:](self, "replacePassphrase:error:", [v21 UTF8String], error))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (usage == 1)
    {
      v26 = v21;
      v25 = -[DIEncryptionFrontend setPassphrase:error:](self, "setPassphrase:error:", [v21 UTF8String], error);
    }

    else
    {
      if (usage)
      {
LABEL_25:
        if ([(DIEncryptionFrontend *)self askPermissionWithRememberPassword:&v29 error:error])
        {
          if (![(DIEncryptionChpass *)self allowStoringInKeychain]|| v29 != 1)
          {
            v19 = 1;
            goto LABEL_31;
          }

          v22 = [(DIEncryptionFrontend *)self storeInKeychainWithPassphrase:v21 forceSystemKeychain:0 error:error];
          goto LABEL_12;
        }

LABEL_29:
        v19 = 0;
        goto LABEL_31;
      }

      v24 = v21;
      v25 = -[DIEncryptionChpass unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v21 UTF8String], error);
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v19 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:error];
LABEL_32:

  return v19;
}

- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)stdin usage:(int64_t)usage error:(id *)error
{
  stdinCopy = stdin;
  v9 = *__error();
  if (sub_1000E95F0())
  {
    v10 = sub_1000E957C();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v33 = 70;
    v34 = 2080;
    v35 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
    v11 = _os_log_send_and_compose_impl();

    if (v11)
    {
      fprintf(__stderrp, "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = sub_1000E957C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v33 = 70;
      v34 = 2080;
      v35 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Asking for passphrase using readpassphrase", buf, 0x12u);
    }
  }

  *__error() = v9;
  if (usage)
  {
    cLIPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIPassphrasePromptCreate];
    v14 = cLIPassphrasePromptCreate;
    uTF8String = [cLIPassphrasePromptCreate UTF8String];
    if (stdinCopy)
    {
      v16 = 32;
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    cLIPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIPassphrasePromptUnlock];
    v17 = cLIPassphrasePromptCreate;
    uTF8String = [cLIPassphrasePromptCreate UTF8String];
    if (stdinCopy)
    {
      v16 = 32;
    }

    else
    {
      v16 = 2;
    }
  }

  v18 = readpassphrase(uTF8String, __s1, 0x102uLL, v16);

  if (v18)
  {
    if (usage)
    {
      if (!stdinCopy)
      {
        cLIVerifyPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
        v20 = cLIVerifyPassphrasePromptCreate == 0;

        if (!v20)
        {
          cLIVerifyPassphrasePromptCreate2 = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
          v22 = cLIVerifyPassphrasePromptCreate2;
          v23 = readpassphrase([cLIVerifyPassphrasePromptCreate2 UTF8String], buf, 0x102uLL, 2);

          if (!v23)
          {
            return [DIError failWithPOSIXCode:5 verboseInfo:@"Failed to read passphrase" error:error];
          }

          if (strncmp(__s1, buf, 0x101uLL))
          {
            return [DIError failWithPOSIXCode:80 verboseInfo:@"Passphrases doesn't match" error:error];
          }
        }
      }
    }

    switch(usage)
    {
      case 2:
        return [(DIEncryptionChpass *)self replacePassphrase:__s1 error:error];
      case 1:
        return [(DIEncryptionFrontend *)self setPassphrase:__s1 error:error];
      case 0:
        return [(DIEncryptionChpass *)self unlockWithPassphrase:__s1 error:error];
    }

    return 0;
  }

  else
  {
    if (stdinCopy)
    {
      return [DIError failWithPOSIXCode:25 verboseInfo:@"Failed to read passphrase from stdin" error:error];
    }

    v25 = *__error();
    if (sub_1000E95F0())
    {
      v26 = sub_1000E957C();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v33 = 70;
      v34 = 2080;
      v35 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
      v27 = _os_log_send_and_compose_impl();

      if (v27)
      {
        fprintf(__stderrp, "%s\n", v27);
        free(v27);
      }
    }

    else
    {
      v29 = sub_1000E957C();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v33 = 70;
        v34 = 2080;
        v35 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%.*s: Failed to read passphrase from TTY", buf, 0x12u);
      }
    }

    *__error() = v25;
    v30 = [NSError errorWithDomain:NSPOSIXErrorDomain code:25 userInfo:0];
    v28 = [DIError failWithInError:v30 outError:error];
  }

  return v28;
}

- (void)setPassEntryToChange:(void *)change
{
  p_passEntryToChange = &self->_passEntryToChange;
  v5 = *change;
  v4 = *(change + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_passEntryToChange.__cntrl_;
  p_passEntryToChange->__ptr_ = v5;
  p_passEntryToChange->__cntrl_ = v4;
  if (cntrl)
  {
    sub_10000E984(cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end