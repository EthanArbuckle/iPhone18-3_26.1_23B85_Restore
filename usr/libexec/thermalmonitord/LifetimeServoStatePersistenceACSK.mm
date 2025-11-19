@interface LifetimeServoStatePersistenceACSK
- (BOOL)initializeLTSPersistence;
- (BOOL)saveLTSStateToNand:(void *)a3;
- (BOOL)sendLTSStateToPMP;
- (BOOL)updateLTSStateISFromPMP:(ltsStateACSKV4 *)a3 total_cores:(unsigned int)a4;
- (BOOL)updateLTSStateISRev:(ltsStateACSKV4 *)a3 total_cores:(unsigned int)a4;
- (BOOL)updateLTSStateTDDBISFromPMP:(ltsStateACSKV4 *)a3 tddb_cluster_mask:(unsigned int)a4 tddb_cores:(unsigned int)a5;
- (BOOL)writePersistedStateNvram:(void *)a3 path:(__CFString *)a4;
- (LifetimeServoStatePersistenceACSK)initWithParams:(id)a3;
- (unsigned)getNumTotalEntries:(ltsStateACSKV4 *)a3;
- (unsigned)getNumTotalTDDBEntries:(ltsStateACSKV4 *)a3;
- (void)copyUpdatedLTSState;
- (void)dealloc;
- (void)initClassVariables;
- (void)readNVRAM;
- (void)safeFreeLTSStatePtrs:(void *)a3;
@end

@implementation LifetimeServoStatePersistenceACSK

- (LifetimeServoStatePersistenceACSK)initWithParams:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = LifetimeServoStatePersistenceACSK;
  v6 = [(LifetimeServoStatePersistenceBase *)&v10 init];
  if (v6)
  {
    v9.receiver = v6;
    v9.super_class = LifetimeServoStatePersistenceACSK;
    v7 = [(LifetimeServoStatePersistenceBase *)&v9 initWithParams:a3];
  }

  else
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100058804();
    }

    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (void)initClassVariables
{
  self->super._pmpLTSStateversion = 4;
  self->_currNvramLTSStateACSK.ltsStateCommonPtr = 0;
  self->_currNvramLTSStateACSK.tddbClusterMask = 0;
  *&self->_currNvramLTSStateACSK.perIPCoreCountPtr = 0u;
  *&self->_currNvramLTSStateACSK.TDDBintegratorStatePtr = 0u;
}

- (void)copyUpdatedLTSState
{
  v47 = 0;
  v3 = malloc_type_malloc(0x30uLL, 0x1030040D0D8147AuLL);
  v4 = v3;
  if (!v3)
  {
    sub_100058AA4();
    goto LABEL_41;
  }

  *(v3 + 1) = 0u;
  v5 = v3 + 2;
  *(v3 + 2) = 0;
  *(v3 + 2) = 0u;
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *v4 = v6;
  if (!v6)
  {
    sub_100058A48();
    goto LABEL_41;
  }

  if (![(LifetimeServoStatePersistenceBase *)self UpdateLTSStateCommonFromPMP:v6])
  {
    sub_100058840();
    goto LABEL_41;
  }

  **v4 = self->super._pmpLTSStateversion;
  if (![(LifetimeServoStatePersistenceBase *)self readInteger:&v47 forKey:@"counter"])
  {
    v47 = 0;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005889C();
    }
  }

  ++v47;
  v7 = *v4;
  v7[1] = v47;
  v8 = v7[2];
  v9 = v7[3];
  v10 = malloc_type_calloc((v9 * v8), 4uLL, 0x100004052888210uLL);
  v4[2] = v10;
  if (!v10)
  {
    sub_1000589EC();
    goto LABEL_41;
  }

  v42 = v4;
  if (v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v43 = v8;
    while (!v9)
    {
LABEL_18:
      v13 = (v13 + 1);
      v11 += v9;
      v8 = v43;
      if (v13 == v43)
      {
        goto LABEL_21;
      }
    }

    v14 = 0;
    while (1)
    {
      v15 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-cores", v13, v14);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v17 = self;
      v18 = [(LifetimeServoStatePersistenceBase *)self copyKeyFromPMP:v15 is_64:0];
      if (!v18)
      {
        v4 = v42;
        if (byte_1000AB2F8 == 1)
        {
          v37 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v49 = v16;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "<Notice> Failed to read Cores per IP for key %@", buf, 0xCu);
          }
        }

        CFRelease(v16);
        goto LABEL_41;
      }

      v19 = v18;
      CFRelease(v16);
      v46 = 0;
      [(__CFData *)v19 getBytes:&v46 length:4];
      v20 = v46;
      if (byte_1000AB2F8 == 1)
      {
        v21 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          v22 = NSStringFromSelector(a2);
          *buf = 138413058;
          v49 = v22;
          v50 = 1024;
          v51 = v13;
          v52 = 1024;
          v53 = v14;
          v54 = 1024;
          v55 = v46;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<Notice> %@: lts-ctrl-%u-%u-cores=%u", buf, 0x1Eu);
        }
      }

      v12 = (v20 + v12);
      CFRelease(v19);
      *(*v5 + 4 * (v11 + v14++)) = v46;
      self = v17;
      if (v9 == v14)
      {
        goto LABEL_18;
      }
    }

    v34 = qword_1000AB718;
    v4 = v42;
    if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v35 = NSStringFromSelector(a2);
    *buf = 138412802;
    v49 = v35;
    v50 = 1024;
    v51 = v13;
    v52 = 1024;
    v53 = v14;
    v36 = "<Error> %@: Failed to create Cores per IP key for die %u loop %u\n";
LABEL_55:
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v36, buf, 0x18u);
    goto LABEL_41;
  }

  v12 = 0;
LABEL_21:
  if (byte_1000AB2F8 == 1)
  {
    v23 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v24 = NSStringFromSelector(a2);
      *buf = 138412546;
      v49 = v24;
      v50 = 1024;
      v51 = v12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "<Notice> %@: total_cores: %u", buf, 0x12u);
    }
  }

  if (v8)
  {
    v44 = v8;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    while (1)
    {
      v29 = self;
      if (v9)
      {
        break;
      }

LABEL_32:
      v28 = (v28 + 1);
      v25 += v9;
      self = v29;
      if (v28 == v44)
      {
        goto LABEL_46;
      }
    }

    v30 = 0;
    while (1)
    {
      v31 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-0-is-tddb-inuse", v28, v30);
      if (!v31)
      {
        break;
      }

      v32 = v31;
      v33 = [(LifetimeServoStatePersistenceBase *)v29 copyKeyFromPMP:v31 is_64:1];
      if (v33)
      {
        v27 = (*(*v5 + 4 * (v25 + v30)) + v27);
        v26 = v26 | (1 << (v25 + v30));
        CFRelease(v33);
      }

      CFRelease(v32);
      if (v9 == ++v30)
      {
        goto LABEL_32;
      }
    }

    v34 = qword_1000AB718;
    self = v29;
    v4 = v42;
    if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v41 = NSStringFromSelector(a2);
    *buf = 138412802;
    v49 = v41;
    v50 = 1024;
    v51 = v28;
    v52 = 1024;
    v53 = v30;
    v36 = "<Error> %@ Failed to create Cores per IP key for die %u loop %u\n";
    goto LABEL_55;
  }

  v27 = 0;
  v26 = 0;
LABEL_46:
  *(v42 + 2) = v26;
  if (byte_1000AB2F8 == 1)
  {
    v39 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v40 = NSStringFromSelector(a2);
      *buf = 138412802;
      v49 = v40;
      v50 = 1024;
      v51 = v26;
      v52 = 1024;
      v53 = v27;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "<Notice> %@: lts-ctrl-tddb-cluster-mask=0x%x, tddb_cores: %u", buf, 0x18u);
    }
  }

  v4 = v42;
  if ([(LifetimeServoStatePersistenceACSK *)self updateLTSStateISFromPMP:v42 total_cores:v12])
  {
    if (v26 && ![(LifetimeServoStatePersistenceACSK *)self updateLTSStateTDDBISFromPMP:v42 tddb_cluster_mask:v26 tddb_cores:v27])
    {
      sub_100058934();
    }

    else
    {
      if ([(LifetimeServoStatePersistenceACSK *)self updateLTSStateISRev:v42 total_cores:v12])
      {
        return v4;
      }

      sub_100058990();
    }
  }

  else
  {
    sub_1000588D8();
  }

LABEL_41:
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100058B00(v4);
  }

  [(LifetimeServoStatePersistenceBase *)self safeFreeUpdatedLTSState:v4];
  return 0;
}

- (BOOL)updateLTSStateISRev:(ltsStateACSKV4 *)a3 total_cores:(unsigned int)a4
{
  var2 = a3->ltsStateCommonPtr->var2;
  var3 = a3->ltsStateCommonPtr->var3;
  v8 = malloc_type_calloc(a4, 4uLL, 0x100004052888210uLL);
  a3->integratorStateRevPtr = v8;
  if (v8)
  {
    if (var2)
    {
      v9 = 0;
      v10 = 0;
      v19 = var2;
      v20 = var3;
      while (!var3)
      {
LABEL_14:
        v10 = (v10 + 1);
        if (v10 == v19)
        {
          goto LABEL_15;
        }
      }

      v11 = 0;
      v21 = v10 * var3;
      perIPCoreCountPtr = a3->perIPCoreCountPtr;
      while (!perIPCoreCountPtr[(v21 + v11)])
      {
LABEL_13:
        if (++v11 == var3)
        {
          goto LABEL_14;
        }
      }

      v13 = 0;
      while (1)
      {
        v14 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-%u-is-rev", v10, v11, v13);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        *buf = 0;
        if ((sub_100002A20(self->super._isRevDict, v14, kCFNumberIntType, buf) & 1) == 0)
        {
          *buf = 0;
        }

        CFRelease(v15);
        a3->integratorStateRevPtr[v9++] = *buf;
        v13 = (v13 + 1);
        perIPCoreCountPtr = a3->perIPCoreCountPtr;
        if (v13 >= perIPCoreCountPtr[(v21 + v11)])
        {
          var3 = v20;
          goto LABEL_13;
        }
      }

      v17 = qword_1000AB718;
      v16 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        *buf = 67109632;
        v23 = v10;
        v24 = 1024;
        v25 = v11;
        v26 = 1024;
        v27 = v13;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "<Error> Failed to create revision key for die %u loop %u core %u\n", buf, 0x14u);
        LOBYTE(v16) = 0;
      }
    }

    else
    {
LABEL_15:
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    sub_100058B78(buf);
    LOBYTE(v16) = buf[0];
  }

  return v16;
}

- (BOOL)updateLTSStateTDDBISFromPMP:(ltsStateACSKV4 *)a3 tddb_cluster_mask:(unsigned int)a4 tddb_cores:(unsigned int)a5
{
  var2 = a3->ltsStateCommonPtr->var2;
  var3 = a3->ltsStateCommonPtr->var3;
  v9 = malloc_type_calloc(a5, 8uLL, 0x100004000313F17uLL);
  a3->TDDBintegratorStatePtr = v9;
  if (v9)
  {
    if (var2)
    {
      v10 = 0;
      v11 = 0;
      v26 = var2;
      v27 = var3;
      while (!var3)
      {
LABEL_16:
        v11 = (v11 + 1);
        if (v11 == v26)
        {
          goto LABEL_17;
        }
      }

      v12 = 0;
      v28 = v11 * var3;
      while (1)
      {
        v13 = v28 + v12;
        if (a4 >> (v28 + v12))
        {
          if (a3->perIPCoreCountPtr[v13])
          {
            break;
          }
        }

LABEL_15:
        ++v12;
        LODWORD(var3) = v27;
        if (v12 == v27)
        {
          goto LABEL_16;
        }
      }

      v14 = 0;
      while (1)
      {
        v15 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-%u-is-tddb-inuse", v11, v12, v14);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = [(LifetimeServoStatePersistenceBase *)self copyKeyFromPMP:v15 is_64:1];
        if (!v17)
        {
          if (byte_1000AB2F8 == 1)
          {
            v23 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v31 = v16;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "<Notice> Failed to read TDDB integrator state for key %@", buf, 0xCu);
            }
          }

          v24 = v16;
          goto LABEL_28;
        }

        v18 = v17;
        CFRelease(v16);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109890;
          *v31 = v11;
          *&v31[4] = 1024;
          *&v31[6] = v12;
          v32 = 1024;
          v33 = v14;
          v34 = 2114;
          v35 = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "die %u loop %u core %u TDDB is: %{public}@", buf, 0x1Eu);
        }

        BytePtr = CFDataGetBytePtr(v18);
        if (!BytePtr)
        {
          v24 = v18;
LABEL_28:
          CFRelease(v24);
          goto LABEL_29;
        }

        a3->TDDBintegratorStatePtr[v10++] = *BytePtr;
        CFRelease(v18);
        v14 = (v14 + 1);
        if (v14 >= a3->perIPCoreCountPtr[v13])
        {
          goto LABEL_15;
        }
      }

      v22 = qword_1000AB718;
      v21 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
      if (!v21)
      {
        return v21;
      }

      *buf = 67109632;
      *v31 = v11;
      *&v31[4] = 1024;
      *&v31[6] = v12;
      v32 = 1024;
      v33 = v14;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "<Error> Failed to create TDDB key for die %u loop %u core %u\n", buf, 0x14u);
LABEL_29:
      LOBYTE(v21) = 0;
    }

    else
    {
LABEL_17:
      if (byte_1000AB2F8 == 1)
      {
        v20 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<Notice> Copied TDDB LTS IS data from PMP", buf, 2u);
        }
      }

      LOBYTE(v21) = 1;
    }
  }

  else
  {
    sub_100058BDC(buf);
    LOBYTE(v21) = buf[0];
  }

  return v21;
}

- (BOOL)updateLTSStateISFromPMP:(ltsStateACSKV4 *)a3 total_cores:(unsigned int)a4
{
  var2 = a3->ltsStateCommonPtr->var2;
  var3 = a3->ltsStateCommonPtr->var3;
  v8 = malloc_type_calloc(a4, 8uLL, 0x100004000313F17uLL);
  a3->integratorStatePtr = v8;
  if (v8)
  {
    if (var2)
    {
      v9 = 0;
      v10 = 0;
      v28 = var2;
      v27 = var3;
      while (!var3)
      {
LABEL_16:
        v10 = (v10 + 1);
        if (v10 == var2)
        {
          goto LABEL_17;
        }
      }

      v11 = 0;
      v12 = v10 * var3;
      perIPCoreCountPtr = a3->perIPCoreCountPtr;
      v29 = v10 * var3;
      while (1)
      {
        v14 = v12 + v11;
        if (perIPCoreCountPtr[(v12 + v11)])
        {
          break;
        }

LABEL_15:
        if (++v11 == var3)
        {
          goto LABEL_16;
        }
      }

      v15 = 0;
      while (1)
      {
        v16 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-%u-is-inuse", v10, v11, v15);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        v18 = [(LifetimeServoStatePersistenceBase *)self copyKeyFromPMP:v16 is_64:1];
        if (!v18)
        {
          if (byte_1000AB2F8 == 1)
          {
            v24 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v31 = v17;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "<Notice> Failed to read integrator state for key %@", buf, 0xCu);
            }
          }

          v25 = v17;
          goto LABEL_28;
        }

        v19 = v18;
        CFRelease(v17);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109890;
          *v31 = v10;
          *&v31[4] = 1024;
          *&v31[6] = v11;
          v32 = 1024;
          v33 = v15;
          v34 = 2114;
          v35 = v19;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "die %u loop %u core %u is: %{public}@", buf, 0x1Eu);
        }

        BytePtr = CFDataGetBytePtr(v19);
        if (!BytePtr)
        {
          v25 = v19;
LABEL_28:
          CFRelease(v25);
          goto LABEL_29;
        }

        a3->integratorStatePtr[v9++] = *BytePtr;
        CFRelease(v19);
        v15 = (v15 + 1);
        perIPCoreCountPtr = a3->perIPCoreCountPtr;
        if (v15 >= perIPCoreCountPtr[v14])
        {
          var2 = v28;
          v12 = v29;
          var3 = v27;
          goto LABEL_15;
        }
      }

      v23 = qword_1000AB718;
      v22 = os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR);
      if (!v22)
      {
        return v22;
      }

      *buf = 67109632;
      *v31 = v10;
      *&v31[4] = 1024;
      *&v31[6] = v11;
      v32 = 1024;
      v33 = v15;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "<Error> Failed to create key for die %u loop %u core %u\n", buf, 0x14u);
LABEL_29:
      LOBYTE(v22) = 0;
    }

    else
    {
LABEL_17:
      if (byte_1000AB2F8 == 1)
      {
        v21 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<Notice> Copied LTS IS data from PMP", buf, 2u);
        }
      }

      LOBYTE(v22) = 1;
    }
  }

  else
  {
    sub_100058C40(buf);
    LOBYTE(v22) = buf[0];
  }

  return v22;
}

- (void)safeFreeLTSStatePtrs:(void *)a3
{
  if (*a3)
  {
    free(*a3);
    *a3 = 0;
  }

  v4 = *(a3 + 4);
  if (v4)
  {
    free(v4);
    *(a3 + 4) = 0;
  }

  v5 = *(a3 + 2);
  if (v5)
  {
    free(v5);
    *(a3 + 2) = 0;
  }

  v6 = *(a3 + 3);
  if (v6)
  {
    free(v6);
    *(a3 + 3) = 0;
  }

  v7 = *(a3 + 5);
  if (v7)
  {
    free(v7);
    *(a3 + 5) = 0;
  }
}

- (void)readNVRAM
{
  v3 = [(LifetimeServoStatePersistenceBase *)self readNVRAMData];
  if (v3)
  {
    v4 = v3;
    BytePtr = CFDataGetBytePtr(v3);
    self->super._nvramLength = CFDataGetLength(v4);
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x61198F5EuLL);
    p_currNvramLTSStateACSK = &self->_currNvramLTSStateACSK;
    self->_currNvramLTSStateACSK.ltsStateCommonPtr = v6;
    if (v6)
    {
      *v6 = *BytePtr;
      self->_currNvramLTSStateACSK.tddbClusterMask = *(BytePtr + 4);
      var3 = p_currNvramLTSStateACSK->ltsStateCommonPtr->var3;
      v9 = malloc_type_calloc((p_currNvramLTSStateACSK->ltsStateCommonPtr->var2 * var3), 4uLL, 0x100004052888210uLL);
      self->_currNvramLTSStateACSK.perIPCoreCountPtr = v9;
      if (v9)
      {
        memcpy(v9, BytePtr + 20, 4 * var3);
        v10 = [(LifetimeServoStatePersistenceACSK *)self getNumTotalEntries:&self->_currNvramLTSStateACSK];
        v11 = [(LifetimeServoStatePersistenceACSK *)self getNumTotalTDDBEntries:&self->_currNvramLTSStateACSK];
        v12 = 4 * (var3 + 1) + 16;
        v13 = v12 + 8 * v10;
        v14 = v13 + 8 * v11;
        if (self->super._nvramLength == v14 + 4 * v10)
        {
          v15 = malloc_type_calloc(v10, 8uLL, 0x100004000313F17uLL);
          self->_currNvramLTSStateACSK.integratorStatePtr = v15;
          if (v15)
          {
            memcpy(v15, &BytePtr[v12], 8 * v10);
            if (!v11)
            {
              goto LABEL_9;
            }

            v16 = malloc_type_calloc(v11, 8uLL, 0x100004000313F17uLL);
            self->_currNvramLTSStateACSK.TDDBintegratorStatePtr = v16;
            if (v16)
            {
              memcpy(v16, &BytePtr[v13], 8 * v11);
LABEL_9:
              v17 = malloc_type_calloc(v10, 4uLL, 0x100004052888210uLL);
              self->_currNvramLTSStateACSK.integratorStateRevPtr = v17;
              if (v17)
              {
                memcpy(v17, &BytePtr[v14], 4 * v10);
              }

              else
              {
                sub_100058DA8();
              }

              goto LABEL_11;
            }

            sub_100058D4C();
          }

          else
          {
            sub_100058E04();
          }
        }

        else
        {
          sub_100058CA4();
        }
      }

      else
      {
        sub_100058E60();
      }
    }

    else
    {
      sub_100058EC0();
    }

LABEL_11:
    CFRelease(v4);
    return;
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100058F1C();
  }
}

- (BOOL)initializeLTSPersistence
{
  if (self->super._hasNvram)
  {
    [(LifetimeServoStatePersistenceACSK *)self readNVRAM];
  }

  [(LifetimeServoStatePersistenceBase *)self resolvePersistentLTSState:self->_currNvramLTSStateACSK.ltsStateCommonPtr integratorStatePtr:self->_currNvramLTSStateACSK.integratorStatePtr nandDataValidityKey:@"lts-ctrl-0-0-0-is" minValidVer:4];
  current_version = self->super._resolvedLTSPersistence.current_version;
  if (current_version - 1 < 3)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100058F58();
    }

LABEL_10:
    self->super._resolvedLTSPersistence.pmp_data_source = 0;
    goto LABEL_11;
  }

  if (current_version && current_version != 4)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100058FC8();
    }

    goto LABEL_10;
  }

LABEL_11:
  pmp_data_source = self->super._resolvedLTSPersistence.pmp_data_source;
  if (pmp_data_source == 2)
  {
    [(LifetimeServoStatePersistenceACSK *)self saveLTSStateToNand:&self->_currNvramLTSStateACSK];
    pmp_data_source = self->super._resolvedLTSPersistence.pmp_data_source;
  }

  if (pmp_data_source)
  {
    [(LifetimeServoStatePersistenceACSK *)self sendLTSStateToPMP];
  }

  else
  {
    v5 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> No valid NVRam and NAND data. Nothing to send to PMP", buf, 2u);
      v5 = qword_1000AB718;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<Notice> Retrieving initial data from PMP and storing in NAND & NVRAM", v10, 2u);
    }

    if (![(LifetimeServoStatePersistenceBase *)self writeInteger:0 withKey:@"counter"]&& os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100059038();
    }
  }

  sleep(1u);
  v6 = [(LifetimeServoStatePersistenceBase *)self updatePersistenceLTSState:self->super._initializeNvram];
  if (v6)
  {
    if (byte_1000AB2F8 == 1)
    {
      v7 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> PMP update with LTS State complete", v9, 2u);
      }
    }
  }

  else
  {
    sub_100059074();
  }

  return v6;
}

- (unsigned)getNumTotalEntries:(ltsStateACSKV4 *)a3
{
  var2 = a3->ltsStateCommonPtr->var2;
  if (!var2)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = 0;
  var3 = a3->ltsStateCommonPtr->var3;
  do
  {
    if (var3)
    {
      v8 = a3->ltsStateCommonPtr->var3;
      v9 = v4;
      do
      {
        result += a3->perIPCoreCountPtr[v9++];
        --v8;
      }

      while (v8);
    }

    ++v6;
    v4 += var3;
  }

  while (v6 != var2);
  return result;
}

- (unsigned)getNumTotalTDDBEntries:(ltsStateACSKV4 *)a3
{
  var2 = a3->ltsStateCommonPtr->var2;
  if (!var2)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = 0;
  var3 = a3->ltsStateCommonPtr->var3;
  do
  {
    if (var3)
    {
      v8 = a3->ltsStateCommonPtr->var3;
      v9 = v4;
      do
      {
        v10 = a3->perIPCoreCountPtr[v9];
        if (((a3->tddbClusterMask >> v9) & 1) == 0)
        {
          v10 = 0;
        }

        result += v10;
        ++v9;
        --v8;
      }

      while (v8);
    }

    ++v6;
    v4 += var3;
  }

  while (v6 != var2);
  return result;
}

- (BOOL)writePersistedStateNvram:(void *)a3 path:(__CFString *)a4
{
  if (a4)
  {
    v7 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
    if (v7)
    {
      v8 = v7;
      context = objc_autoreleasePoolPush();
      v9 = [(LifetimeServoStatePersistenceACSK *)self getNumTotalEntries:a3];
      v10 = [(LifetimeServoStatePersistenceACSK *)self getNumTotalTDDBEntries:a3];
      v11 = *(*a3 + 8);
      v12 = *(*a3 + 12);
      v13 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
      v14 = [NSData dataWithBytes:*(a3 + 2) length:4 * (v12 * v11)];
      v15 = [NSData dataWithBytes:a3 + 8 length:4];
      v16 = [NSData dataWithBytes:*(a3 + 3) length:8 * v9];
      v17 = [NSData dataWithBytes:*(a3 + 4) length:8 * v10];
      v18 = [NSData dataWithBytes:*(a3 + 5) length:4 * v9];
      v19 = [(NSData *)v13 mutableCopy];
      [v19 appendData:v15];
      [v19 appendData:v14];
      [v19 appendData:v16];
      [v19 appendData:v17];
      [v19 appendData:v18];
      v20 = IORegistryEntrySetCFProperty(v8, a4, v19);
      v21 = v20 == 0;
      if (v20 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100058764();
      }

      objc_autoreleasePoolPop(context);
      IOObjectRelease(v8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000587A0(&v24);
    return v24;
  }

  return v21;
}

- (BOOL)sendLTSStateToPMP
{
  v38 = 0;
  v37 = 0;
  if (![(LifetimeServoStatePersistenceBase *)self readInteger:&v38 + 4 forKey:@"lts-ctrl-die-count"])
  {
    sub_1000590D0(buf);
    return buf[0];
  }

  if (![(LifetimeServoStatePersistenceBase *)self readInteger:&v38 forKey:@"lts-ctrl-loop-count"])
  {
    sub_100059134(buf);
    return buf[0];
  }

  if (![(LifetimeServoStatePersistenceBase *)self readInteger:&v37 forKey:@"lts-ctrl-tddb-cluster-mask"])
  {
    sub_100059198(buf);
    return buf[0];
  }

  if (byte_1000AB2F8 == 1)
  {
    v3 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v40 = HIDWORD(v38);
      v41 = 1024;
      v42 = v38;
      v43 = 1024;
      v44 = v37;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<Notice> sendLTSStateToPMP: dieCount:%u loopCount:%u tddbMask: 0x%x", buf, 0x14u);
    }
  }

  v4 = HIDWORD(v38);
  if (!HIDWORD(v38))
  {
    goto LABEL_50;
  }

  v5 = 0;
  v6 = v38;
  do
  {
    if (!v6)
    {
      goto LABEL_49;
    }

    v7 = 0;
    do
    {
      v8 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-cores", v5, v7);
      if (v8)
      {
        v9 = v8;
        v36 = 0;
        [(LifetimeServoStatePersistenceBase *)self readInteger:&v36 forKey:v8];
        CFRelease(v9);
        if (v36)
        {
          v10 = 0;
          do
          {
            v11 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-%u-is-rev", v5, v7, v10);
            if (v11)
            {
              v12 = v11;
              v35 = 0;
              [(LifetimeServoStatePersistenceBase *)self readInteger:&v35 forKey:v11];
              v34 = 0;
              if ((sub_100002A20(self->super._isRevDict, v12, kCFNumberIntType, &v34) & 1) == 0)
              {
                v34 = 0;
              }

              CFRelease(v12);
              if (v34 != v35)
              {
                goto LABEL_24;
              }

              v13 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-%u-is", v5, v7, v10);
              if (v13)
              {
                v14 = v13;
                v15 = [(Filer *)self->super._filer getValueForKey:v13];
                if (v15)
                {
                  v16 = v15;
                  [(LifetimeServoStatePersistenceBase *)self sendDataToPMP:v15 forKey:v14];
                  if (byte_1000AB2F8 == 1)
                  {
                    v17 = qword_1000AB718;
                    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109890;
                      v40 = v5;
                      v41 = 1024;
                      v42 = v7;
                      v43 = 1024;
                      v44 = v10;
                      v45 = 2112;
                      v46 = v16;
                      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<Notice> Sending data to PMP: die %u loop %u core %u is: %@", buf, 0x1Eu);
                    }
                  }
                }

                else
                {
                  v23 = qword_1000AB718;
                  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109632;
                    v40 = v5;
                    v41 = 1024;
                    v42 = v7;
                    v43 = 1024;
                    v44 = v10;
                    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "<Error> Failed to send data to PMP: die %u loop %u core %u", buf, 0x14u);
                  }
                }

                CFRelease(v14);
                if (((v37 >> (v7 + v38 * v5)) & 1) == 0 || (v34 ^ v35) >> 16)
                {
                  goto LABEL_24;
                }

                v24 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-%u-is-tddb", v5, v7, v10);
                if (v24)
                {
                  v25 = v24;
                  v26 = [(Filer *)self->super._filer getValueForKey:v24];
                  if (v26)
                  {
                    v27 = v26;
                    [(LifetimeServoStatePersistenceBase *)self sendDataToPMP:v26 forKey:v25];
                    if (byte_1000AB2F8 == 1)
                    {
                      v28 = qword_1000AB718;
                      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109890;
                        v40 = v5;
                        v41 = 1024;
                        v42 = v7;
                        v43 = 1024;
                        v44 = v10;
                        v45 = 2112;
                        v46 = v27;
                        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "<Notice> Sending data to PMP: die %u loop %u core %u TDDB is: %@", buf, 0x1Eu);
                      }
                    }
                  }

                  else
                  {
                    v30 = qword_1000AB718;
                    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67109632;
                      v40 = v5;
                      v41 = 1024;
                      v42 = v7;
                      v43 = 1024;
                      v44 = v10;
                      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "<Error> Failed to send TDDB data to PMP: die %u loop %u core %u", buf, 0x14u);
                    }
                  }

                  CFRelease(v25);
                  goto LABEL_24;
                }

                v29 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109632;
                  v40 = v5;
                  v41 = 1024;
                  v42 = v7;
                  v43 = 1024;
                  v44 = v10;
                  v20 = v29;
                  v21 = "<Error> Failed to create TDDB key for die %u loop %u core %u\n";
LABEL_28:
                  v22 = 20;
LABEL_39:
                  _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v21, buf, v22);
                }
              }

              else
              {
                v19 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109632;
                  v40 = v5;
                  v41 = 1024;
                  v42 = v7;
                  v43 = 1024;
                  v44 = v10;
                  v20 = v19;
                  v21 = "<Error> Failed to create key for die %u loop %u core %u\n";
                  goto LABEL_28;
                }
              }
            }

            else
            {
              v18 = qword_1000AB718;
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                v40 = v5;
                v41 = 1024;
                v42 = v7;
                v20 = v18;
                v21 = "<Error> Failed to create is rev key for die %u loop %u\n";
                v22 = 14;
                goto LABEL_39;
              }
            }

LABEL_24:
            v10 = (v10 + 1);
          }

          while (v10 < v36);
        }
      }

      else
      {
        v31 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v40 = v5;
          v41 = 1024;
          v42 = v7;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "<Error> Failed to create cluster core num key for die %u loop %u\n", buf, 0xEu);
        }
      }

      v7 = (v7 + 1);
      v6 = v38;
    }

    while (v7 < v38);
    v4 = HIDWORD(v38);
LABEL_49:
    v5 = (v5 + 1);
  }

  while (v5 < v4);
LABEL_50:
  if (byte_1000AB2F8)
  {
    v32 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "<Notice> Updated PMP with saved LTS State", buf, 2u);
    }
  }

  return 1;
}

- (void)dealloc
{
  [(LifetimeServoStatePersistenceACSK *)self safeFreeLTSStatePtrs:&self->_currNvramLTSStateACSK];
  v3.receiver = self;
  v3.super_class = LifetimeServoStatePersistenceACSK;
  [(LifetimeServoStatePersistenceBase *)&v3 dealloc];
}

- (BOOL)saveLTSStateToNand:(void *)a3
{
  if (![(LifetimeServoStatePersistenceBase *)self writeInteger:**a3 withKey:@"version"])
  {
    sub_1000591FC(buf);
LABEL_56:
    v38 = buf[0];
    return v38 & 1;
  }

  v5 = *(*a3 + 8);
  if (![(LifetimeServoStatePersistenceBase *)self writeInteger:v5 withKey:@"lts-ctrl-die-count"])
  {
    sub_100059260(buf);
    goto LABEL_56;
  }

  v50 = *(*a3 + 12);
  if (![LifetimeServoStatePersistenceBase writeInteger:"writeInteger:withKey:" withKey:?])
  {
    sub_1000592C4(buf);
    goto LABEL_56;
  }

  v6 = *(a3 + 2);
  if (byte_1000AB2F8 == 1)
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v62 = NSStringFromSelector(a2);
      *&v62[8] = 1024;
      *v63 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> %@: Saving TDDB Cluster Mask 0x%x to NAND", buf, 0x12u);
    }
  }

  if (![(LifetimeServoStatePersistenceBase *)self writeInteger:v6 withKey:@"lts-ctrl-tddb-cluster-mask"])
  {
    sub_100059328(buf);
    goto LABEL_56;
  }

  if (v5)
  {
    v59 = 0;
    v8 = 0;
    v9 = 0;
    v56 = 1;
    v47 = v5;
    v48 = v6;
    while (!v50)
    {
LABEL_46:
      v9 = (v9 + 1);
      if (v9 == v5)
      {
        goto LABEL_47;
      }
    }

    v10 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-cores", v9, 0);
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v49 = v9 * v50;
      v58 = v9;
      v57 = v9;
      v54 = v9;
      v52 = v9;
      while (1)
      {
        v60 = *(*(a3 + 2) + 4 * (v49 + v12));
        v13 = [LifetimeServoStatePersistenceBase writeInteger:"writeInteger:withKey:" withKey:?];
        CFRelease(v11);
        v56 = v13;
        if ((v13 & 1) == 0)
        {
          v14 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *v62 = v9;
            *&v62[4] = 1024;
            *&v62[6] = v12;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "<Error> Failed to save Cores per IP for lts-ctrl-%u-%u-cores\n", buf, 0xEu);
          }
        }

        v15 = (1 << (v49 + v12)) & v6;
        if (v60)
        {
          break;
        }

LABEL_40:
        v36 = v60;
        if (!v15)
        {
          v36 = 0;
        }

        v8 += v36;
        if (++v12 == v50)
        {
          v5 = v47;
          goto LABEL_46;
        }

        v11 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-cores", v9, v12);
        if (!v11)
        {
          goto LABEL_61;
        }
      }

      v16 = v12;
      v17 = 0;
      v51 = v8;
      v18 = 8 * v8;
      v19 = v16;
      v20 = v16;
      v53 = v16;
      v55 = v16;
      while (1)
      {
        v21 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-%u-is", v58, v19, v17);
        if (!v21)
        {
          break;
        }

        v22 = v21;
        v23 = CFDataCreate(0, (*(a3 + 3) + 8 * (v59 + v17)), 8);
        if (v23)
        {
          v24 = v23;
          [(Filer *)self->super._filer setValue:v23 forKey:v22];
          CFRelease(v24);
        }

        else
        {
          v25 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v62 = v22;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "<Error> Failed to create CFData for key %@", buf, 0xCu);
          }
        }

        CFRelease(v22);
        if (v15)
        {
          v26 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-%u-is-tddb", v54, v55, v17);
          if (!v26)
          {
            sub_10005938C();
            goto LABEL_56;
          }

          v27 = v26;
          v28 = CFDataCreate(0, (*(a3 + 4) + v18), 8);
          if (v28)
          {
            v29 = v28;
            [(Filer *)self->super._filer setValue:v28 forKey:v27];
            CFRelease(v29);
          }

          else
          {
            v30 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v62 = v27;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "<Error> Failed to create CFData for key %@", buf, 0xCu);
            }
          }

          CFRelease(v27);
        }

        v31 = CFStringCreateWithFormat(0, 0, @"lts-ctrl-%u-%u-%u-is-rev", v57, v20, v17);
        if (v31)
        {
          v32 = v31;
          v33 = [(LifetimeServoStatePersistenceBase *)self writeInteger:*(*(a3 + 5) + 4 * (v59 + v17)) withKey:v31];
          CFRelease(v32);
          if (v33)
          {
            v56 = 1;
          }

          else
          {
            v35 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109632;
              *v62 = v52;
              *&v62[4] = 1024;
              *&v62[6] = v53;
              *v63 = 1024;
              *&v63[2] = v17;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "<Error> Failed to save IS revision for lts-ctrl-%u-%u-%u-is-rev\n", buf, 0x14u);
            }

            v56 = 0;
          }
        }

        else
        {
          v34 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109632;
            *v62 = v52;
            *&v62[4] = 1024;
            *&v62[6] = v53;
            *v63 = 1024;
            *&v63[2] = v17;
            _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "<Error> Failed to create revision key for die %u loop %u core %u\n", buf, 0x14u);
          }
        }

        ++v17;
        v18 += 8;
        if (v60 == v17)
        {
          v59 += v17;
          LODWORD(v6) = v48;
          v8 = v51;
          v9 = v52;
          v12 = v53;
          goto LABEL_40;
        }
      }

      v39 = qword_1000AB718;
      if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      *buf = 67109632;
      *v62 = v52;
      *&v62[4] = 1024;
      *&v62[6] = v53;
      *v63 = 1024;
      *&v63[2] = v17;
      v41 = "<Error> Failed to create key for die %u loop %u core %u\n";
      v42 = v39;
      v43 = 20;
    }

    else
    {
      LODWORD(v12) = 0;
LABEL_61:
      v44 = qword_1000AB718;
      if (!os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v45 = NSStringFromSelector(a2);
      *buf = 138412802;
      *v62 = v45;
      *&v62[8] = 1024;
      *v63 = v9;
      *&v63[4] = 1024;
      v64 = v12;
      v41 = "<Error> %@: Failed to create Cores per IP key for die %u loop %u\n";
      v42 = v44;
      v43 = 24;
    }

    _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
LABEL_54:
    v38 = v56;
    return v38 & 1;
  }

LABEL_47:
  if (![(LifetimeServoStatePersistenceBase *)self writeInteger:*(*a3 + 4) withKey:@"counter"])
  {
    sub_10005944C(buf);
    goto LABEL_56;
  }

  if (![(Filer *)self->super._filer synchronizeToFile])
  {
    sub_1000594B0(buf);
    goto LABEL_56;
  }

  if (byte_1000AB2F8 == 1)
  {
    v37 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "<Notice> Saved updated LTS stats data to Nand", buf, 2u);
    }
  }

  v38 = 1;
  return v38 & 1;
}

@end