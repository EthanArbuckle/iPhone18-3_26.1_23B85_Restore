@interface LifetimeServoControlLoop
- (LifetimeServoControlLoop)initWithParams:(id)a3 perfStateVoltages:(int *)a4 voltageCount:(int)a5 loopType:(int)a6 persistancePath:(__CFString *)a7 filer:(id)a8;
- (__CFString)copyFieldCurrentValueForIndex:(int)a3;
- (__CFString)copyHeaderForIndex:(int)a3;
- (int)updateTempMax:(int)a3;
- (void)initSensorIndexSet:(id)a3;
- (void)initializeLifetimeServoStateAsPersisted;
- (void)processSleepInterval:(int64_t)a3;
- (void)updateDieTempTarget;
- (void)updatePersistedState;
@end

@implementation LifetimeServoControlLoop

- (LifetimeServoControlLoop)initWithParams:(id)a3 perfStateVoltages:(int *)a4 voltageCount:(int)a5 loopType:(int)a6 persistancePath:(__CFString *)a7 filer:(id)a8
{
  v41.receiver = self;
  v41.super_class = LifetimeServoControlLoop;
  v14 = [(LifetimeServoControlLoop *)&v41 init];
  v15 = v14;
  if (!v14)
  {
    return v15;
  }

  if (a3)
  {
    v14->_loopType = a6;
    p_loopType = &v14->_loopType;
    if (byte_1000AB2F8 == 1)
    {
      v16 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v43 = a6;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: init", buf, 8u);
      }
    }

    if (a6 > 1)
    {
      if (a6 == 2)
      {
        v17 = off_1000861C0;
        v18 = @"_P";
        goto LABEL_20;
      }

      if (a6 == 3)
      {
        v17 = off_1000861E0;
        v18 = @"_G";
        goto LABEL_20;
      }
    }

    else
    {
      if (!a6)
      {
        v17 = off_100086180;
        v18 = &stru_1000891D8;
        goto LABEL_20;
      }

      if (a6 == 1)
      {
        v17 = off_1000861A0;
        v18 = @"_E";
LABEL_20:
        v15->_persistenceKeyNames = v17;
        v15->_tGraphHeaderSuffix = v18;
LABEL_21:
        v15->_persistancePath = a7;
        v15->_filer = a8;
        v15->_override_is = -1;
        v15->_override_af_i = -1;
        v15->_override_af_i_float = -1;
        [objc_msgSend(a3 valueForKey:{@"targetAF", "floatValue"}];
        v15->_r = v19;
        v15->_afLUT = -[LifetimeServoAFLUT initWithAFTableColumns:]([LifetimeServoAFLUT alloc], "initWithAFTableColumns:", [a3 valueForKey:@"AFLUT"]);
        v15->_is = 0;
        [objc_msgSend(a3 valueForKey:{@"seed", "floatValue"}];
        v21 = v20;
        v22 = [objc_msgSend(a3 valueForKey:{@"seed", "intValue"}];
        v15->_is = v22;
        if (v21 != 0.0)
        {
          if (byte_1000AB2F8 == 1)
          {
            v23 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *p_loopType;
              *buf = 67109376;
              v43 = v24;
              v44 = 2048;
              *v45 = v22;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: seed %lld", buf, 0x12u);
            }
          }

          v15->_is = vcvts_n_s32_f32(v21, 0xAuLL);
        }

        v15->_isUp = 0;
        v15->_isDown = 0;
        [(LifetimeServoControlLoop *)v15 initializeLifetimeServoStateAsPersisted];
        v15->_Lmin = [objc_msgSend(a3 valueForKey:{@"targetLmin", "intValue"}];
        v15->_Lmax = [objc_msgSend(a3 valueForKey:{@"targetLmax", "intValue"}];
        [objc_msgSend(a3 valueForKey:{@"ki", "floatValue"}];
        LODWORD(v15->_ki_ls) = v25;
        if (byte_1000AB2F8 == 1)
        {
          v26 = *&v25;
          v27 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            loopType = v15->_loopType;
            r = v15->_r;
            Lmin = v15->_Lmin;
            Lmax = v15->_Lmax;
            *buf = 67110144;
            v43 = loopType;
            v44 = 2048;
            *v45 = r;
            *&v45[8] = 1024;
            v46 = Lmin;
            v47 = 1024;
            v48 = Lmax;
            v49 = 2048;
            v50 = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: _r %f, _Lmin %d, _Lmax %d, _ki_ls %f", buf, 0x28u);
          }
        }

        if (v15->_Lmin >= v15->_Lmax && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100059A8C(p_loopType);
        }

        if (a5 <= 16)
        {
          if (a5 >= 1)
          {
            v32 = 0;
            v33 = a5;
            v34 = byte_1000AB2F8;
            *&v25 = 67109632;
            v39 = v25;
            do
            {
              v35 = a4[v32];
              v15->_perfStateVoltages[v32] = v35;
              if (v34)
              {
                v36 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = *p_loopType;
                  *buf = v39;
                  v43 = v37;
                  v44 = 1024;
                  *v45 = v32;
                  *&v45[4] = 1024;
                  *&v45[6] = v35;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: state[%d] %d", buf, 0x14u);
                  v34 = byte_1000AB2F8;
                }

                else
                {
                  v34 = 1;
                }
              }

              else
              {
                v34 = 0;
              }

              ++v32;
            }

            while (v33 != v32);
          }
        }

        else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100059B00(p_loopType);
        }

        [(LifetimeServoControlLoop *)v15 updateDieTempTarget];
        [+[TGraphSampler sharedInstance](TGraphSampler addtGraphDataSource:"addtGraphDataSource:", v15];
        return v15;
      }
    }

    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100059A1C();
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100059B88();
  }

  return 0;
}

- (void)updateDieTempTarget
{
  v2 = self->_ki_ls * (100 * (self->_is / 1024));
  Lmax = self->_Lmax;
  if (Lmax >= (Lmax + (v2 * 5.0)))
  {
    Lmax = (Lmax + (v2 * 5.0));
  }

  if (self->_Lmin > Lmax)
  {
    Lmax = self->_Lmin;
  }

  self->_u = Lmax;
}

- (void)initializeLifetimeServoStateAsPersisted
{
  v38 = 0;
  p_persistenceKeyNames = &self->_persistenceKeyNames;
  persistenceKeyNames = self->_persistenceKeyNames;
  filer = self->_filer;
  v6 = persistenceKeyNames[3];
  if (filer)
  {
    if (![(Filer *)filer getValueForKey:v6])
    {
      [(LifetimeServoControlLoop *)self updatePersistedState];
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> LS State reset", buf, 2u);
      }

      [(Filer *)self->_filer setValue:&off_10008D3B0 forKey:*(self->_persistenceKeyNames + 3)];
    }

    v8 = [(Filer *)self->_filer getValueForKey:*self->_persistenceKeyNames];
    if (v8 && (self->_is = [v8 unsignedLongLongValue], (v9 = -[Filer getValueForKey:](self->_filer, "getValueForKey:", *(self->_persistenceKeyNames + 1))) != 0) && (self->_isUp = objc_msgSend(v9, "unsignedLongLongValue"), (v10 = -[Filer getValueForKey:](self->_filer, "getValueForKey:", *(self->_persistenceKeyNames + 2))) != 0))
    {
      v11 = [v10 unsignedLongLongValue];
      self->_isDown = v11;
      if (byte_1000AB2F8 == 1)
      {
        v12 = v11;
        v13 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          loopType = self->_loopType;
          v15 = self->_persistenceKeyNames;
          v16 = *v15;
          v17 = v15[1];
          is = self->_is;
          isUp = self->_isUp;
          v20 = v15[2];
          *buf = 67110658;
          *&buf[4] = loopType;
          v40 = 2112;
          v41 = v16;
          v42 = 2048;
          v43 = is;
          v44 = 2112;
          v45 = v17;
          v46 = 2048;
          v47 = isUp;
          v48 = 2112;
          v49 = v20;
          v50 = 2048;
          v51 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: initializing %@ to %lld; initializing %@ to %lld; initializing %@ to %lld", buf, 0x44u);
        }
      }
    }

    else
    {
      sub_100059BC4();
    }

    return;
  }

  v21 = CFPreferencesCopyValue(v6, self->_persistancePath, @"root", kCFPreferencesCurrentHost);
  if (v21)
  {
    v22 = kCFAllocatorDefault;
  }

  else
  {
    [(LifetimeServoControlLoop *)self updatePersistedState];
    v23 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "<Notice> LS State reset", buf, 2u);
    }

    buf[0] = 1;
    v22 = kCFAllocatorDefault;
    v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, buf);
    CFPreferencesSetValue(*(self->_persistenceKeyNames + 3), v24, self->_persistancePath, @"root", kCFPreferencesCurrentHost);
    CFPreferencesAppSynchronize(self->_persistancePath);
    if (v24)
    {
      CFRelease(v24);
    }
  }

  v25 = CFArrayCreate(v22, *p_persistenceKeyNames, 4, &kCFTypeArrayCallBacks);
  v26 = v25;
  if (!v25)
  {
    sub_100059D08();
    goto LABEL_45;
  }

  v27 = CFPreferencesCopyMultiple(v25, self->_persistancePath, @"root", kCFPreferencesCurrentHost);
  if (!v27)
  {
    sub_100059C64();
LABEL_45:
    v28 = *buf;
    if (!v21)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v28 = v27;
  if (sub_100002A20(v27, **p_persistenceKeyNames, kCFNumberLongLongType, &v38))
  {
    if (byte_1000AB2F8 == 1)
    {
      v29 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v30 = self->_loopType;
        v31 = *self->_persistenceKeyNames;
        *buf = 67109634;
        *&buf[4] = v30;
        v40 = 2112;
        v41 = v31;
        v42 = 2048;
        v43 = v38;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: initializing %@ to %lld", buf, 0x1Cu);
      }
    }

    self->_is = v38;
  }

  if (sub_100002A20(v28, (*p_persistenceKeyNames)[1], kCFNumberLongLongType, &v38))
  {
    if (byte_1000AB2F8 == 1)
    {
      v32 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->_loopType;
        v34 = *(self->_persistenceKeyNames + 1);
        *buf = 67109634;
        *&buf[4] = v33;
        v40 = 2112;
        v41 = v34;
        v42 = 2048;
        v43 = v38;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: initializing %@ to %lld", buf, 0x1Cu);
      }
    }

    self->_isUp = v38;
  }

  if (sub_100002A20(v28, (*p_persistenceKeyNames)[2], kCFNumberLongLongType, &v38))
  {
    if (byte_1000AB2F8 == 1)
    {
      v35 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v36 = self->_loopType;
        v37 = *(self->_persistenceKeyNames + 2);
        *buf = 67109634;
        *&buf[4] = v36;
        v40 = 2112;
        v41 = v37;
        v42 = 2048;
        v43 = v38;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: initializing %@ to %lld", buf, 0x1Cu);
      }
    }

    self->_isDown = v38;
  }

  if (!v21)
  {
    goto LABEL_37;
  }

LABEL_36:
  CFRelease(v21);
LABEL_37:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

- (void)updatePersistedState
{
  filer = self->_filer;
  if (filer)
  {
    [(Filer *)filer setValue:[NSNumber forKey:"numberWithUnsignedLongLong:" numberWithUnsignedLongLong:?], *self->_persistenceKeyNames];
    [(Filer *)self->_filer setValue:[NSNumber forKey:"numberWithUnsignedLongLong:" numberWithUnsignedLongLong:?], *(self->_persistenceKeyNames + 1)];
    [(Filer *)self->_filer setValue:[NSNumber forKey:"numberWithUnsignedLongLong:" numberWithUnsignedLongLong:?], *(self->_persistenceKeyNames + 2)];
    if (byte_1000AB2F8 == 1)
    {
      v4 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        loopType = self->_loopType;
        v6 = [(Filer *)self->_filer copyDictionaryFromFile];
        *buf = 67109378;
        *&buf[4] = loopType;
        LOWORD(v16) = 2112;
        *(&v16 + 2) = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: persisting dictionary %@", buf, 0x12u);
      }
    }

    [(Filer *)self->_filer synchronizeToFile];
  }

  else
  {
    *buf = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &self->_is);
    *&v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &self->_isUp);
    *(&v16 + 1) = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &self->_isDown);
    v17 = 0;
    v7 = CFDictionaryCreate(kCFAllocatorDefault, self->_persistenceKeyNames, buf, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v7)
    {
      if (byte_1000AB2F8 == 1)
      {
        v8 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_loopType;
          v12[0] = 67109378;
          v12[1] = v9;
          v13 = 2112;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: persisting %@", v12, 0x12u);
        }
      }

      CFPreferencesSetMultiple(v7, 0, self->_persistancePath, @"root", kCFPreferencesCurrentHost);
      CFPreferencesAppSynchronize(self->_persistancePath);
    }

    else
    {
      sub_100059DAC(self);
    }

    for (i = 0; i != 32; i += 8)
    {
      v11 = *&buf[i];
      if (v11)
      {
        CFRelease(v11);
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

- (int)updateTempMax:(int)a3
{
  sensorIndexSet = self->_sensorIndexSet;
  if (sensorIndexSet)
  {
    return sub_1000078F0(sensorIndexSet, &qword_1000AB824, 0);
  }

  else
  {
    return a3;
  }
}

- (void)processSleepInterval:(int64_t)a3
{
  if (self->_override_is == -1)
  {
    v5 = ((self->_r * a3) * 1024.0) / 5.0;
    v6 = v5;
    if (v5 >= 1)
    {
      self->_is = sub_1000334E0(self->_is, v5);
    }

    if (byte_1000AB2F8 == 1)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        loopType = self->_loopType;
        v9[0] = 67109632;
        v9[1] = loopType;
        v10 = 2048;
        v11 = a3;
        v12 = 2048;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> LSControlLoop %d: delta %ld, is_sleep_adjustment %lld", v9, 0x1Cu);
      }
    }
  }
}

- (void)initSensorIndexSet:(id)a3
{
  self->_sensorIndexSet = a3;
  v5 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
  {
    loopType = self->_loopType;
    v7[0] = 67109378;
    v7[1] = loopType;
    v8 = 2112;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> looptype %d sensorIndex %@", v7, 0x12u);
  }
}

- (__CFString)copyHeaderForIndex:(int)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, *(&off_100086250 + a3), self->_tGraphHeaderSuffix);
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return 0;
      }

      v4 = kCFAllocatorDefault;
      isUp = self->_isUp;
    }

    else
    {
      v4 = kCFAllocatorDefault;
      isUp = self->_is;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%f", self->_af_i);
      }

      if (a3 == 4)
      {
        return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", self->_u);
      }

      return 0;
    }

    v4 = kCFAllocatorDefault;
    isUp = self->_isDown;
  }

  return CFStringCreateWithFormat(v4, 0, @"%lld", isUp);
}

@end