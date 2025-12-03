@interface LifetimeServoStatePersistence
- (BOOL)initializeLTSPersistence;
- (BOOL)nvramUpgradeStateV2toV3;
- (BOOL)saveLTSStateToNand:(void *)nand;
- (BOOL)sendLTSStateToPMP;
- (BOOL)updateLTSStateISFromPMP:(ltsStateV3 *)p;
- (BOOL)updateLTSStateISRev:(ltsStateV3 *)rev;
- (BOOL)writePersistedStateNvram:(void *)nvram path:(__CFString *)path;
- (LifetimeServoStatePersistence)initWithParams:(id)params;
- (void)copyUpdatedLTSState;
- (void)dealloc;
- (void)initClassVariables;
- (void)readNVRAM;
- (void)safeFreeLTSStatePtrs:(void *)ptrs;
@end

@implementation LifetimeServoStatePersistence

- (void)copyUpdatedLTSState
{
  v7 = 0;
  v3 = malloc_type_malloc(0x18uLL, 0x30040F310086FuLL);
  v4 = v3;
  if (v3)
  {
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    *v4 = v5;
    if (v5)
    {
      if ([(LifetimeServoStatePersistenceBase *)self UpdateLTSStateCommonFromPMP:v5])
      {
        **v4 = self->super._pmpLTSStateversion;
        if (![(LifetimeServoStatePersistenceBase *)self readInteger:&v7 forKey:@"counter"])
        {
          v7 = 0;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_10005889C();
          }
        }

        *(*v4 + 4) = ++v7;
        if ([(LifetimeServoStatePersistence *)self updateLTSStateISFromPMP:v4])
        {
          if ([(LifetimeServoStatePersistence *)self updateLTSStateISRev:v4])
          {
            return v4;
          }

          sub_100058990();
        }

        else
        {
          sub_1000588D8();
        }
      }

      else
      {
        sub_100058840();
      }
    }

    else
    {
      sub_100058A48();
    }
  }

  else
  {
    sub_100059984();
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000599E0();
  }

  [(LifetimeServoStatePersistenceBase *)self safeFreeUpdatedLTSState:v4];
  return 0;
}

- (void)initClassVariables
{
  self->super._pmpLTSStateversion = 3;
  self->_currNvramLTSStateV3.integratorStatePtr = 0;
  self->_currNvramLTSStateV3.integratorStateRevPtr = 0;
  self->_currNvramLTSStateV3.ltsStateCommonPtr = 0;
}

- (LifetimeServoStatePersistence)initWithParams:(id)params
{
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = LifetimeServoStatePersistence;
  v6 = [(LifetimeServoStatePersistenceBase *)&v10 init];
  if (v6)
  {
    v9.receiver = v6;
    v9.super_class = LifetimeServoStatePersistence;
    v7 = [(LifetimeServoStatePersistenceBase *)&v9 initWithParams:params];
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100059514();
    }

    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (void)dealloc
{
  [(LifetimeServoStatePersistence *)self safeFreeLTSStatePtrs:&self->_currNvramLTSStateV3];
  v3.receiver = self;
  v3.super_class = LifetimeServoStatePersistence;
  [(LifetimeServoStatePersistenceBase *)&v3 dealloc];
}

- (BOOL)saveLTSStateToNand:(void *)nand
{
  if (![(LifetimeServoStatePersistenceBase *)self writeInteger:**nand withKey:@"version"])
  {
    sub_1000591FC(buf);
    return buf[0];
  }

  v21 = *(*nand + 8);
  if (![LifetimeServoStatePersistenceBase writeInteger:"writeInteger:withKey:" withKey:?])
  {
    sub_100059260(buf);
    return buf[0];
  }

  v5 = *(*nand + 12);
  if (![(LifetimeServoStatePersistenceBase *)self writeInteger:v5 withKey:@"lts-ctrl-loop-count"])
  {
    sub_1000592C4(buf);
    return buf[0];
  }

  if (v21)
  {
    v6 = 0;
    v7 = 0;
    while (!v5)
    {
LABEL_21:
      v7 = (v7 + 1);
      v6 += v5;
      if (v7 == v21)
      {
        goto LABEL_22;
      }
    }

    v8 = 0;
    while (1)
    {
      v9 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-is", v7, v8);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      v11 = CFDataCreate(0, (*(nand + 1) + 8 * (v6 + v8)), 8);
      if (v11)
      {
        v12 = v11;
        [(Filer *)self->super._filer setValue:v11 forKey:v10];
        CFRelease(v12);
      }

      else
      {
        v13 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23[0] = v10;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "<Error> Failed to create CFData for key %@", buf, 0xCu);
        }
      }

      CFRelease(v10);
      v14 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-is-rev", v7, v8);
      if (v14)
      {
        v15 = v14;
        v16 = [(LifetimeServoStatePersistenceBase *)self writeInteger:*(*(nand + 2) + 4 * (v6 + v8)) withKey:v14];
        CFRelease(v15);
        if ((v16 & 1) == 0)
        {
          v18 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            LODWORD(v23[0]) = v7;
            WORD2(v23[0]) = 1024;
            *(v23 + 6) = v8;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "<Error> Failed to save IS revision for lts-ctrl-%u-%u-is-rev\n", buf, 0xEu);
          }
        }
      }

      else
      {
        v17 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          LODWORD(v23[0]) = v7;
          WORD2(v23[0]) = 1024;
          *(v23 + 6) = v8;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "<Error> Failed to create revision key for die %u loop %u\n", buf, 0xEu);
        }
      }

      if (v5 == ++v8)
      {
        goto LABEL_21;
      }
    }

    sub_100059550();
    return buf[0];
  }

LABEL_22:
  if (![(LifetimeServoStatePersistenceBase *)self writeInteger:*(*nand + 4) withKey:@"counter"])
  {
    sub_10005944C(buf);
    return buf[0];
  }

  if (![(Filer *)self->super._filer synchronizeToFile])
  {
    sub_1000594B0(buf);
    return buf[0];
  }

  if (byte_1000AB2F8 == 1)
  {
    v19 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<Notice> Saved updated LTS stats data to Nand", buf, 2u);
    }
  }

  return 1;
}

- (void)readNVRAM
{
  readNVRAMData = [(LifetimeServoStatePersistenceBase *)self readNVRAMData];
  if (readNVRAMData)
  {
    v4 = readNVRAMData;
    BytePtr = CFDataGetBytePtr(readNVRAMData);
    self->super._nvramLength = CFDataGetLength(v4);
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x15084EA0uLL);
    p_currNvramLTSStateV3 = &self->_currNvramLTSStateV3;
    self->_currNvramLTSStateV3.ltsStateCommonPtr = v6;
    if (v6)
    {
      *v6 = *BytePtr;
      var3 = p_currNvramLTSStateV3->ltsStateCommonPtr->var3;
      v9 = var3 * p_currNvramLTSStateV3->ltsStateCommonPtr->var2;
      v10 = 8 * v9 + 16;
      if (self->super._nvramLength < v10)
      {
        sub_100059610();
      }

      else
      {
        v11 = malloc_type_calloc(var3 * p_currNvramLTSStateV3->ltsStateCommonPtr->var2, 8uLL, 0x100004000313F17uLL);
        self->_currNvramLTSStateV3.integratorStatePtr = v11;
        if (v11)
        {
          memcpy(v11, BytePtr + 16, 8 * v9);
          nvramLength = self->super._nvramLength;
          if (nvramLength >= v10 + 4 * v9)
          {
            v16 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
            self->_currNvramLTSStateV3.integratorStateRevPtr = v16;
            if (v16)
            {
              memcpy(v16, &BytePtr[v10], 4 * v9);
            }

            else
            {
              sub_100058DA8();
            }
          }

          else
          {
            ltsStateCommonPtr = p_currNvramLTSStateV3->ltsStateCommonPtr;
            var0 = p_currNvramLTSStateV3->ltsStateCommonPtr->var0;
            if (var0 >= self->super._pmpLTSStateversion)
            {
              v15 = qword_1000AB718;
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
              {
                v17[0] = 67109376;
                v17[1] = var0;
                v18 = 2048;
                v19 = nvramLength;
                _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "<Error> NVRAM version %u, but NVRAM length of %ld is mismatched - version will be invalidated", v17, 0x12u);
                ltsStateCommonPtr = p_currNvramLTSStateV3->ltsStateCommonPtr;
              }

              ltsStateCommonPtr->var0 = 0;
            }
          }
        }

        else
        {
          sub_100058E04();
        }
      }
    }

    else
    {
      sub_100058EC0();
    }

    CFRelease(v4);
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100058F1C();
  }
}

- (BOOL)nvramUpgradeStateV2toV3
{
  if (self->super._hasNvram)
  {
    p_currNvramLTSStateV3 = &self->_currNvramLTSStateV3;
    ltsStateCommonPtr = self->_currNvramLTSStateV3.ltsStateCommonPtr;
    if (ltsStateCommonPtr)
    {
      v4 = ltsStateCommonPtr->var3 * ltsStateCommonPtr->var2;
      v5 = malloc_type_calloc(v4, 4uLL, 0x100004052888210uLL);
      p_currNvramLTSStateV3->integratorStateRevPtr = v5;
      if (v5)
      {
        bzero(v5, v4);
      }

      else
      {
        sub_100059718();
      }
    }

    else
    {
      sub_100059774();
    }
  }

  else
  {
    sub_1000596BC();
  }

  return 0;
}

- (BOOL)initializeLTSPersistence
{
  if (self->super._hasNvram)
  {
    [(LifetimeServoStatePersistence *)self readNVRAM];
  }

  [(LifetimeServoStatePersistenceBase *)self resolvePersistentLTSState:self->_currNvramLTSStateV3.ltsStateCommonPtr integratorStatePtr:self->_currNvramLTSStateV3.integratorStatePtr nandDataValidityKey:@"lts-ctrl-0-0-is" minValidVer:2];
  current_version = self->super._resolvedLTSPersistence.current_version;
  if (current_version >= 2 && current_version != 3)
  {
    if (current_version == 2)
    {
      if (self->super._hasNvram && self->super._resolvedLTSPersistence.pmp_data_source == 2)
      {
        [(LifetimeServoStatePersistence *)self nvramUpgradeStateV2toV3];
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000597EC();
      }

      self->super._resolvedLTSPersistence.pmp_data_source = 0;
    }
  }

  pmp_data_source = self->super._resolvedLTSPersistence.pmp_data_source;
  if (pmp_data_source == 2)
  {
    [(LifetimeServoStatePersistence *)self saveLTSStateToNand:&self->_currNvramLTSStateV3];
    pmp_data_source = self->super._resolvedLTSPersistence.pmp_data_source;
  }

  if (pmp_data_source)
  {
    [(LifetimeServoStatePersistence *)self sendLTSStateToPMP];
  }

  else
  {
    v6 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> No valid NVRam and NAND data. Nothing to send to PMP", buf, 2u);
      v6 = qword_1000AB718;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> Retrieving initial data from PMP and storing in NAND & NVRAM", v11, 2u);
    }

    if (![(LifetimeServoStatePersistenceBase *)self writeInteger:0 withKey:@"counter"]&& os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100059038();
    }
  }

  sleep(1u);
  v7 = [(LifetimeServoStatePersistenceBase *)self updatePersistenceLTSState:self->super._initializeNvram];
  if (v7)
  {
    if (byte_1000AB2F8 == 1)
    {
      v8 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> PMP update with LTS State complete", v10, 2u);
      }
    }
  }

  else
  {
    sub_100059074();
  }

  return v7;
}

- (BOOL)sendLTSStateToPMP
{
  v24 = 0;
  if (![(LifetimeServoStatePersistenceBase *)self readInteger:&v24 + 4 forKey:@"lts-ctrl-die-count"])
  {
    sub_1000590D0(buf);
    return buf[0];
  }

  if (![(LifetimeServoStatePersistenceBase *)self readInteger:&v24 forKey:@"lts-ctrl-loop-count"])
  {
    sub_100059134(buf);
    return buf[0];
  }

  if (byte_1000AB2F8 == 1)
  {
    v3 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v26 = HIDWORD(v24);
      v27 = 1024;
      v28 = v24;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<Notice> sendLTSStateToPMP: dieCount:%u loopCount:%u", buf, 0xEu);
    }
  }

  v4 = HIDWORD(v24);
  if (!HIDWORD(v24))
  {
    goto LABEL_30;
  }

  v5 = 0;
  v6 = v24;
  do
  {
    if (!v6)
    {
      goto LABEL_29;
    }

    v7 = 0;
    do
    {
      v8 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-is-rev", v5, v7);
      if (!v8)
      {
        v15 = qword_1000AB718;
        if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 67109376;
        v26 = v5;
        v27 = 1024;
        v28 = v7;
        v16 = v15;
        v17 = "<Error> Failed to create is rev key for die %u loop %u\n";
        goto LABEL_23;
      }

      v9 = v8;
      v23 = 0;
      [(LifetimeServoStatePersistenceBase *)self readInteger:&v23 forKey:v8];
      v22 = 0;
      if ((sub_100002A20(self->super._isRevDict, v9, kCFNumberIntType, &v22) & 1) == 0)
      {
        v22 = 0;
      }

      CFRelease(v9);
      if (v23 == v22)
      {
        v10 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-is", v5, v7);
        if (v10)
        {
          v11 = v10;
          v12 = [(Filer *)self->super._filer getValueForKey:v10];
          if (v12)
          {
            v13 = v12;
            [(LifetimeServoStatePersistenceBase *)self sendDataToPMP:v12 forKey:v11];
            if (byte_1000AB2F8 == 1)
            {
              v14 = qword_1000AB718;
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109634;
                v26 = v5;
                v27 = 1024;
                v28 = v7;
                v29 = 2112;
                v30 = v13;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "<Notice> Sending data to PMP: die %u loop %u is: %@", buf, 0x18u);
              }
            }
          }

          else
          {
            v19 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              v26 = v5;
              v27 = 1024;
              v28 = v7;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "<Error> Failed to send data to PMP: die %u loop %u", buf, 0xEu);
            }
          }

          CFRelease(v11);
          goto LABEL_27;
        }

        v18 = qword_1000AB718;
        if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 67109376;
        v26 = v5;
        v27 = 1024;
        v28 = v7;
        v16 = v18;
        v17 = "<Error> Failed to create key for die %u loop %u\n";
LABEL_23:
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, buf, 0xEu);
      }

LABEL_27:
      v7 = (v7 + 1);
      v6 = v24;
    }

    while (v7 < v24);
    v4 = HIDWORD(v24);
LABEL_29:
    v5 = (v5 + 1);
  }

  while (v5 < v4);
LABEL_30:
  if (byte_1000AB2F8)
  {
    v20 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<Notice> Updated PMP with saved LTS State", buf, 2u);
    }
  }

  return 1;
}

- (BOOL)writePersistedStateNvram:(void *)nvram path:(__CFString *)path
{
  if (path)
  {
    v6 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
    if (v6)
    {
      v7 = v6;
      v8 = objc_autoreleasePoolPush();
      v9 = *(*nvram + 12) * *(*nvram + 8);
      v10 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
      v11 = [NSData dataWithBytes:*(nvram + 1) length:8 * v9];
      v12 = [NSData dataWithBytes:*(nvram + 2) length:4 * v9];
      v13 = [(NSData *)v10 mutableCopy];
      [v13 appendData:v11];
      [v13 appendData:v12];
      v14 = IORegistryEntrySetCFProperty(v7, path, v13);
      v15 = v14 == 0;
      if (v14 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100058764();
      }

      objc_autoreleasePoolPop(v8);
      IOObjectRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000587A0(&v17);
    return v17;
  }

  return v15;
}

- (BOOL)updateLTSStateISFromPMP:(ltsStateV3 *)p
{
  var2 = p->ltsStateCommonPtr->var2;
  var3 = p->ltsStateCommonPtr->var3;
  v7 = malloc_type_calloc(var3 * var2, 8uLL, 0x100004000313F17uLL);
  p->integratorStatePtr = v7;
  if (v7)
  {
    if (var2)
    {
      v8 = 0;
      v9 = 0;
      v21 = var2;
      while (!var3)
      {
LABEL_12:
        v9 = (v9 + 1);
        v8 += var3;
        if (v9 == v21)
        {
          goto LABEL_13;
        }
      }

      v10 = 0;
      while (1)
      {
        v11 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-is-inuse", v9, v10);
        if (!v11)
        {
          break;
        }

        v12 = v11;
        v13 = [(LifetimeServoStatePersistenceBase *)self copyKeyFromPMP:v11 is_64:1];
        if (!v13)
        {
          if (byte_1000AB2F8 == 1)
          {
            v18 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v23 = v12;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "<Notice> Failed to read integrator state for key %@", buf, 0xCu);
            }
          }

          v19 = v12;
          goto LABEL_24;
        }

        v14 = v13;
        CFRelease(v12);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v23 = v9;
          *&v23[4] = 1024;
          *&v23[6] = v10;
          v24 = 2114;
          v25 = v14;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "die %u loop %u is: %{public}@", buf, 0x18u);
        }

        BytePtr = CFDataGetBytePtr(v14);
        if (!BytePtr)
        {
          v19 = v14;
LABEL_24:
          CFRelease(v19);
          goto LABEL_25;
        }

        p->integratorStatePtr[(v8 + v10)] = *BytePtr;
        CFRelease(v14);
        if (var3 == ++v10)
        {
          goto LABEL_12;
        }
      }

      v17 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
      if (!v17)
      {
        return v17;
      }

      sub_10005985C();
LABEL_25:
      LOBYTE(v17) = 0;
    }

    else
    {
LABEL_13:
      if (byte_1000AB2F8 == 1)
      {
        v16 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<Notice> Copied LTS IS data from PMP", buf, 2u);
        }
      }

      LOBYTE(v17) = 1;
    }
  }

  else
  {
    sub_100058C40(buf);
    LOBYTE(v17) = buf[0];
  }

  return v17;
}

- (BOOL)updateLTSStateISRev:(ltsStateV3 *)rev
{
  var2 = rev->ltsStateCommonPtr->var2;
  var3 = rev->ltsStateCommonPtr->var3;
  v7 = malloc_type_calloc(var3 * var2, 4uLL, 0x100004052888210uLL);
  rev->integratorStateRevPtr = v7;
  if (v7)
  {
    if (var2)
    {
      v8 = 0;
      v9 = 0;
      while (!var3)
      {
LABEL_10:
        v9 = (v9 + 1);
        v8 += var3;
        if (v9 == var2)
        {
          return 1;
        }
      }

      v10 = 0;
      while (1)
      {
        v11 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-is-rev", v9, v10);
        if (!v11)
        {
          break;
        }

        v12 = v11;
        v14 = 0;
        if ((sub_100002A20(self->super._isRevDict, v11, kCFNumberIntType, &v14) & 1) == 0)
        {
          v14 = 0;
        }

        CFRelease(v12);
        rev->integratorStateRevPtr[(v8 + v10++)] = v14;
        if (var3 == v10)
        {
          goto LABEL_10;
        }
      }

      sub_1000598D0(v9, v10, &v15);
      return v15;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_100058B78(&v16);
    return v16;
  }
}

- (void)safeFreeLTSStatePtrs:(void *)ptrs
{
  if (*ptrs)
  {
    free(*ptrs);
    *ptrs = 0;
  }

  v4 = *(ptrs + 1);
  if (v4)
  {
    free(v4);
    *(ptrs + 1) = 0;
  }

  v5 = *(ptrs + 2);
  if (v5)
  {
    free(v5);
    *(ptrs + 2) = 0;
  }
}

@end