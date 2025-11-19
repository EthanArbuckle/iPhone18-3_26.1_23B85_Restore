@interface NIServerCryptoSession
- (NIServerCryptoSession)initWithKeyDerivationKey:(id)a3 sessionIdentifier:(id)a4 encrypt:(BOOL)a5;
- (id)_deriveSessionKeyFromKeyDerivationKey:(id)a3 sessionIdentifier:(id)a4;
- (id)decrypt:(id)a3;
- (id)encrypt:(id)a3;
@end

@implementation NIServerCryptoSession

- (NIServerCryptoSession)initWithKeyDerivationKey:(id)a3 sessionIdentifier:(id)a4 encrypt:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = NIServerCryptoSession;
  v11 = [(NIServerCryptoSession *)&v23 init];
  if (!v11)
  {
    goto LABEL_18;
  }

  if ([v9 length])
  {
    if ([v10 length])
    {
      objc_storeStrong(&v11->_keyDerivationKey, a3);
      objc_storeStrong(&v11->_sessionIdentifier, a4);
      sessionIdentifier = v11->_sessionIdentifier;
      v13 = CUPrintNSObjectMasked();
      logIdentifier = v11->_logIdentifier;
      v11->_logIdentifier = v13;

      v11->_encrypt = v5;
      v15 = [(NIServerCryptoSession *)v11 _deriveSessionKeyFromKeyDerivationKey:v9 sessionIdentifier:v10];
      sessionKey = v11->_sessionKey;
      v11->_sessionKey = v15;

      if (v11->_sessionKey)
      {
        if (v5)
        {
          v11->_nonce = arc4random_uniform(0xFFFF0000);
          v17 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v11->_logIdentifier;
            *buf = 138477827;
            v25 = v18;
            v19 = "#crypto,[%{private}@][Encryptor] initialized";
LABEL_17:
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
          }
        }

        else
        {
          v11->_nonce = 0;
          v17 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v11->_logIdentifier;
            *buf = 138477827;
            v25 = v21;
            v19 = "#crypto,[%{private}@][Decryptor] initialized";
            goto LABEL_17;
          }
        }

LABEL_18:
        v20 = v11;
        goto LABEL_19;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0934();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0974();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B09B4();
  }

  v20 = 0;
LABEL_19:

  return v20;
}

- (id)encrypt:(id)a3
{
  v4 = a3;
  if (!self->_encrypt)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B09F4(self);
    }

    goto LABEL_23;
  }

  nonce = self->_nonce;
  if (nonce >= 0xFFFFFFFF)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0CD4(self);
    }

    goto LABEL_23;
  }

  v6 = nonce + 1;
  self->_nonce = v6;
  v28 = v6;
  cryptorRef = 0;
  v7 = CCCryptorCreateWithMode(0, 0xCu, 0, 0x3E8u, 0, [(NSData *)self->_sessionKey bytes], [(NSData *)self->_sessionKey length], 0, 0, 0, 0, &cryptorRef);
  if (v7 || !cryptorRef)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      logIdentifier = self->_logIdentifier;
      *buf = 138478339;
      *&buf[4] = logIdentifier;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      v33 = 1024;
      v34 = cryptorRef != 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#crypto,[%{private}@][Encryptor] create failed %d. Cryptor needs release: %d", buf, 0x18u);
    }

    if (!cryptorRef)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  [v4 length];
  if (CCCryptorAddParameter())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0A64(self);
    }

LABEL_22:
    CCCryptorRelease(cryptorRef);
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if (CCCryptorAddParameter())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0ACC(self);
    }

    goto LABEL_22;
  }

  if (CCCryptorAddParameter())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0B34(self);
    }

    goto LABEL_22;
  }

  v26 = 1;
  LOBYTE(v24) = 0;
  sub_100025100(buf, 5);
  **buf = 1;
  *(*buf + 1) = v28;
  if (CCCryptorAddParameter())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0B9C(self);
    }

    CCCryptorRelease(cryptorRef);
    v9 = 0;
  }

  else
  {
    OutputLength = CCCryptorGetOutputLength(cryptorRef, [v4 length], 0);
    LOBYTE(__p) = 0;
    sub_100025100(&v24, OutputLength);
    dataOutMoved = 0;
    v13 = cryptorRef;
    v14 = v4;
    v15 = [v4 bytes];
    v16 = [v4 length];
    if (CCCryptorUpdate(v13, v15, v16, v24, v25 - v24, &dataOutMoved))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0C04(self);
      }

      CCCryptorRelease(cryptorRef);
      v9 = 0;
    }

    else
    {
      if (dataOutMoved < v25 - v24)
      {
        sub_1002501F0(&v24, dataOutMoved);
      }

      v29[0] = 0;
      sub_100025100(&__p, 16);
      v20 = 0;
      v17 = CCCryptorFinal(cryptorRef, __p, v22 - __p, &v20);
      if (v17 || v20)
      {
        v18 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          v19 = self->_logIdentifier;
          *v29 = 138478339;
          *&v29[4] = v19;
          *&v29[12] = 1024;
          *&v29[14] = v17;
          v30 = 1024;
          v31 = v20;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#crypto,[%{private}@][Encryptor] cryptor-final failed %d. Leftover: %d", v29, 0x18u);
        }

        CCCryptorRelease(cryptorRef);
        v9 = 0;
      }

      else
      {
        sub_100025100(v29, 6);
        if (CCCryptorGetParameter())
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004B0C6C(self);
          }

          CCCryptorRelease(cryptorRef);
          v9 = 0;
        }

        else
        {
          CCCryptorRelease(cryptorRef);
          v9 = objc_opt_new();
          [v9 appendBytes:&v26 length:1];
          [v9 appendBytes:&v28 length:4];
          [v9 appendBytes:*v29 length:*&v29[8] - *v29];
          [v9 appendBytes:v24 length:v25 - v24];
        }

        if (*v29)
        {
          *&v29[8] = *v29;
          operator delete(*v29);
        }
      }

      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }
    }

    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

LABEL_24:

  return v9;
}

- (id)decrypt:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encrypt)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B11D0(self);
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v31 = 0;
  if (![v4 length])
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004B118C(self->_logIdentifier, [v5 length], &v41);
    }

    goto LABEL_15;
  }

  [v5 getBytes:&v31 range:{0, 1}];
  if (v31 != 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0D44(self);
    }

    goto LABEL_15;
  }

  v30 = 0;
  if ([v5 length] <= 4)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1148(self->_logIdentifier, [v5 length], &v41);
    }

    goto LABEL_15;
  }

  [v5 getBytes:&v30 range:{1, 4}];
  cryptorRef[1] = v30;
  LOBYTE(v38) = 0;
  sub_100025100(&v41, 6);
  if ([v5 length] > 0xA)
  {
    [v5 getBytes:v41 range:{5, 6}];
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v11 = [v5 length];
    v12 = (v11 - 11);
    if (v11 == 11)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B1094(self);
      }

      goto LABEL_47;
    }

    buf[0] = 0;
    v13 = v38;
    if (v12 <= v39 - v38)
    {
      if (v12 < v39 - v38)
      {
        v39 = &v38[v12];
      }
    }

    else
    {
      sub_100250E48(&v38, v12 - (v39 - v38), buf);
      v13 = v38;
    }

    [v5 getBytes:v13 range:{11, v12}];
    if (v11 != [v5 length])
    {
      __assert_rtn("[NIServerCryptoSession decrypt:]", "NIServerCryptoSession.mm", 306, "byteOffset == ciphertext.length");
    }

    cryptorRef[0] = 0;
    v14 = CCCryptorCreateWithMode(1u, 0xCu, 0, 0x3E8u, 0, [(NSData *)self->_sessionKey bytes], [(NSData *)self->_sessionKey length], 0, 0, 0, 0, cryptorRef);
    if (v14 || !cryptorRef[0])
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        logIdentifier = self->_logIdentifier;
        *buf = 138478339;
        *&buf[4] = logIdentifier;
        *&buf[12] = 1024;
        *&buf[14] = v14;
        v36 = 1024;
        v37 = cryptorRef[0] != 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#crypto,[%{private}@][Decryptor] create failed %d. Cryptor needs release: %d", buf, 0x18u);
      }

      if (!cryptorRef[0])
      {
        goto LABEL_47;
      }
    }

    else if (CCCryptorAddParameter())
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0DB4(self);
      }
    }

    else if (CCCryptorAddParameter())
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0E1C(self);
      }
    }

    else
    {
      if (!CCCryptorAddParameter())
      {
        LOBYTE(v27) = 0;
        sub_100025100(buf, 5);
        **buf = v31;
        *(*buf + 1) = v30;
        if (CCCryptorAddParameter())
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004B0EEC(self);
          }

          CCCryptorRelease(cryptorRef[0]);
          v8 = 0;
        }

        else
        {
          OutputLength = CCCryptorGetOutputLength(cryptorRef[0], v39 - v38, 0);
          LOBYTE(v24) = 0;
          sub_100025100(&v27, OutputLength);
          dataOutMoved = 0;
          if (CCCryptorUpdate(cryptorRef[0], v38, v39 - v38, v27, v28 - v27, &dataOutMoved))
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004B0F54(self);
            }

            CCCryptorRelease(cryptorRef[0]);
            v8 = 0;
          }

          else
          {
            if (dataOutMoved < v28 - v27)
            {
              sub_1002501F0(&v27, dataOutMoved);
            }

            __p[0] = 0;
            sub_100025100(&v24, 16);
            v23 = 0;
            v18 = CCCryptorFinal(cryptorRef[0], v24, v25 - v24, &v23);
            if (v18 || v23)
            {
              v19 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                v22 = self->_logIdentifier;
                *__p = 138478339;
                *&__p[4] = v22;
                *&__p[12] = 1024;
                *&__p[14] = v18;
                v33 = 1024;
                v34 = v23;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#crypto,[%{private}@][Decryptor] cryptor-final failed %d. Leftover: %d", __p, 0x18u);
              }

              CCCryptorRelease(cryptorRef[0]);
              v8 = 0;
            }

            else
            {
              sub_100025100(__p, 6);
              if (CCCryptorGetParameter())
              {
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  sub_1004B0FBC(self);
                }

                CCCryptorRelease(cryptorRef[0]);
                v8 = 0;
              }

              else
              {
                CCCryptorRelease(cryptorRef[0]);
                v20 = [NSData dataWithBytes:v41 length:v42 - v41];
                v21 = [NSData dataWithBytes:*__p length:*&__p[8] - *__p];
                if ([v20 isEqualToData:v21])
                {
                  v8 = [NSData dataWithBytes:v27 length:v28 - v27];
                }

                else
                {
                  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                  {
                    sub_1004B1024(self);
                  }

                  v8 = 0;
                }
              }

              if (*__p)
              {
                *&__p[8] = *__p;
                operator delete(*__p);
              }
            }

            if (v24)
            {
              v25 = v24;
              operator delete(v24);
            }
          }

          if (v27)
          {
            v28 = v27;
            operator delete(v27);
          }
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        goto LABEL_48;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0E84(self);
      }
    }

    CCCryptorRelease(cryptorRef[0]);
LABEL_47:
    v8 = 0;
LABEL_48:
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    goto LABEL_50;
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1004B1104(self->_logIdentifier, [v5 length], &v38);
  }

  v8 = 0;
LABEL_50:
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

LABEL_16:

  return v8;
}

- (id)_deriveSessionKeyFromKeyDerivationKey:(id)a3 sessionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 bytes];
  [v7 length];
  Hkdf = CCKDFParametersCreateHkdf();
  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    logIdentifier = self->_logIdentifier;
    __p = 138478339;
    __p_4 = logIdentifier;
    v14 = 1024;
    v15 = Hkdf;
    v16 = 1024;
    v17 = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#crypto,[%{private}@][KDF] create parameters failed %d. Parameters need release: %d", &__p, 0x18u);
  }

  return 0;
}

@end