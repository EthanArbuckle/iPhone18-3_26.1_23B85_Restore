@interface FlickerResourceArbiterClientDelegate
- (FlickerResourceArbiterClientDelegate)init;
- (void)cleanup;
- (void)releaseResourceAccess;
- (void)requestResourceAccess;
- (void)resourceAccessResult:(BOOL)result;
- (void)resourceAccessRevoked;
@end

@implementation FlickerResourceArbiterClientDelegate

- (FlickerResourceArbiterClientDelegate)init
{
  v5.receiver = self;
  v5.super_class = FlickerResourceArbiterClientDelegate;
  v2 = [(FlickerResourceArbiterClientDelegate *)&v5 init];
  if (v2)
  {
    v3 = [[ResourceArbiterClient alloc] initWithID:1];
    v2->_arbiterClient = v3;
    [(ResourceArbiterClient *)v3 setDelegate:v2];
    v2->_flickerContext = 0;
  }

  return v2;
}

- (void)requestResourceAccess
{
  if (self->_arbiterClient)
  {
    [(ResourceArbiterClient *)self->_arbiterClient asynchRequestResourceAccess:1];
  }

  else
  {
    [(FlickerResourceArbiterClientDelegate *)self resourceAccessResult:1];
  }

  v2 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v2 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10007CF5C();
  }
}

- (void)cleanup
{
  self->_flickerContext = 0;
  [(FlickerResourceArbiterClientDelegate *)self releaseResourceAccess];

  v3 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v3 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10007CF20();
  }
}

- (void)releaseResourceAccess
{
  [(ResourceArbiterClient *)self->_arbiterClient releaseResourceAccess];
  v2 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v2 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10007CF98();
  }
}

- (void)resourceAccessResult:(BOOL)result
{
  if (result)
  {
    v4 = off_10041DC78;
    if (off_10041DC78 == &_os_log_default)
    {
      v4 = os_log_create("com.apple.isp", "general");
      off_10041DC78 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FlickerDetector: ArbiterClient resource access granted=%d\n\n", buf, 8u);
    }

    flickerContext = self->_flickerContext;
    if (flickerContext)
    {
      pthread_mutex_lock(&flickerContext->var23);
      if (flickerContext->var22 || (p_var2 = &flickerContext->var2, flickerContext->var2))
      {
LABEL_9:
        pthread_mutex_unlock(&flickerContext->var23);
        return;
      }

      *&inDesc.componentType = xmmword_10008D1E0;
      inDesc.componentFlagsMask = 0;
      Next = AudioComponentFindNext(0, &inDesc);
      if (!Next)
      {
        v10 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v10 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v10;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10007D4C8();
        }

        goto LABEL_43;
      }

      if (AudioComponentInstanceNew(Next, &flickerContext->var2))
      {
        v9 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v9 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v9;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10007CFD4();
        }

        goto LABEL_43;
      }

      bzero(buf, 0x28uLL);
      var0 = flickerContext->var0;
      *buf = **(flickerContext->var0 + 1);
      if (*var0 == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      v38 = v12;
      v39 = 32;
      v36 = 1;
      v37 = 4 * v12;
      v35 = 4 * v12;
      v34 = 0x96C70636DLL;
      if (AudioUnitSetProperty(flickerContext->var2, 8u, 2u, 1u, buf, 0x28u))
      {
        v13 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v13 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v13;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10007D044();
        }

        goto LABEL_43;
      }

      if (AudioUnitSetProperty(flickerContext->var2, 0xEu, 0, 0, &flickerContext->var4, 4u))
      {
        v14 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v14 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v14;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10007D0B4();
        }

        goto LABEL_43;
      }

      ioDataSize = 4;
      if (AudioUnitGetProperty(*p_var2, 0xEu, 0, 0, &flickerContext->var4, &ioDataSize))
      {
        v15 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v15 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10007D124();
        }

        goto LABEL_43;
      }

      inData[1] = flickerContext;
      v18 = *flickerContext->var0;
      if (v18 <= 5)
      {
        if (v18 > 2)
        {
          goto LABEL_65;
        }

        if (v18 != 1)
        {
          if (v18 == 2)
          {
            v19 = sub_100029094;
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        v19 = sub_100028A90;
LABEL_66:
        inData[0] = v19;
        if (AudioUnitSetProperty(*p_var2, 0x7D5u, 0, 0, inData, 0x10u))
        {
          v20 = off_10041DC78;
          if (off_10041DC78 == &_os_log_default)
          {
            v20 = os_log_create("com.apple.isp", "general");
            off_10041DC78 = v20;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10007D194();
          }
        }

        else
        {
          v21 = AudioUnitInitialize(*p_var2);
          if (v21)
          {
            v22 = v21;
            v23 = off_10041DC78;
            if (off_10041DC78 == &_os_log_default)
            {
              v23 = os_log_create("com.apple.isp", "general");
              off_10041DC78 = v23;
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              sub_10007D204();
            }

            if (v22 == 1852794999)
            {
              v24 = off_10041DC78;
              if (off_10041DC78 == &_os_log_default)
              {
                v24 = os_log_create("com.apple.isp", "general");
                off_10041DC78 = v24;
              }

              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_10007D274();
              }
            }
          }

          else
          {
            if (AudioUnitSetProperty(flickerContext->var2, 0x7E6u, 1u, 1u, &flickerContext->var19, 4u))
            {
              v25 = off_10041DC78;
              if (off_10041DC78 == &_os_log_default)
              {
                v25 = os_log_create("com.apple.isp", "general");
                off_10041DC78 = v25;
              }

              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                sub_10007D2B0();
              }
            }

            ioDataSize = 40;
            if (AudioUnitGetProperty(flickerContext->var2, 8u, 2u, 1u, &flickerContext->var3, &ioDataSize))
            {
              v26 = off_10041DC78;
              if (off_10041DC78 == &_os_log_default)
              {
                v26 = os_log_create("com.apple.isp", "general");
                off_10041DC78 = v26;
              }

              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                sub_10007D330();
              }
            }

            else if (bcmp(&flickerContext->var3, buf, 0x28uLL))
            {
              v27 = off_10041DC78;
              if (off_10041DC78 == &_os_log_default)
              {
                v27 = os_log_create("com.apple.isp", "general");
                off_10041DC78 = v27;
              }

              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_10007D3A0();
              }
            }

            else
            {
              if ((flickerContext->var3.mFormatFlags & 1) == 0 || flickerContext->var3.mBytesPerFrame == 4 * v38)
              {
                if (sub_100009340(flickerContext))
                {
                  v28 = off_10041DC78;
                  if (off_10041DC78 == &_os_log_default)
                  {
                    v28 = os_log_create("com.apple.isp", "general");
                    off_10041DC78 = v28;
                  }

                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    sub_10007D454();
                  }
                }

                goto LABEL_47;
              }

              v29 = off_10041DC78;
              if (off_10041DC78 == &_os_log_default)
              {
                v29 = os_log_create("com.apple.isp", "general");
                off_10041DC78 = v29;
              }

              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_10007D3DC();
              }
            }
          }
        }

LABEL_43:
        sub_10000CF9C(flickerContext);
        v16 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v16 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v16;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10007D504();
        }

LABEL_47:
        if (*p_var2 && AudioOutputUnitStart(*p_var2))
        {
          v17 = off_10041DC78;
          if (off_10041DC78 == &_os_log_default)
          {
            v17 = os_log_create("com.apple.isp", "general");
            off_10041DC78 = v17;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10007D578();
          }
        }

        goto LABEL_9;
      }

      if (v18 <= 7)
      {
        if (v18 == 6)
        {
          v19 = sub_1000087B8;
          goto LABEL_66;
        }
      }

      else if (v18 != 8)
      {
        if (v18 != 9)
        {
          if (v18 == 10)
          {
            v19 = sub_10002AB38;
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        v19 = sub_10002A18C;
        goto LABEL_66;
      }

LABEL_65:
      v19 = sub_1000297DC;
      goto LABEL_66;
    }

    v7 = off_10041DC78;
    if (off_10041DC78 == &_os_log_default)
    {
      v7 = os_log_create("com.apple.isp", "general");
      off_10041DC78 = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007D5E8();
    }
  }
}

- (void)resourceAccessRevoked
{
  v3 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v3 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FlickerDetector: ArbiterClient resource access revoked \n\n", v4, 2u);
  }

  sub_10000CE20(self->_flickerContext);
  [(FlickerResourceArbiterClientDelegate *)self releaseResourceAccess];
}

@end