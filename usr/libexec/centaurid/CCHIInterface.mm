@interface CCHIInterface
- (BOOL)start:(id *)start;
- (CCHIInterface)init;
- (id)getBootPerformanceStats;
- (id)getPMUFaultInfo;
- (id)getPowerStats:(BOOL)stats;
- (id)getSiKPublicKey;
- (id)hello;
- (id)sendCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid;
- (id)shell:(id)shell;
- (void)dealloc;
- (void)log;
- (void)stop;
@end

@implementation CCHIInterface

- (CCHIInterface)init
{
  v6.receiver = self;
  v6.super_class = CCHIInterface;
  v2 = [(CCHIInterface *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AirshipInterface);
    airshipInterface = v2->_airshipInterface;
    v2->_airshipInterface = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_started)
  {
    v2 = sub_10002E68C(self);
    [(CCHIInterface *)v2 stop];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CCHIInterface;
    [(CCHIInterface *)&v4 dealloc];
  }
}

- (void)stop
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v7, 0x16u);
  }

  if (self->_started)
  {
    [(AirshipInterface *)self->_airshipInterface stop];
    self->_rxSeq = 0;
    *&self->_started = 0;
  }
}

- (id)sendCommand:(id)command gid:(unsigned __int8)gid oid:(unsigned __int8)oid
{
  oidCopy = oid;
  gidCopy = gid;
  commandCopy = command;
  if ([commandCopy length] >= 0x3F9)
  {
    sub_10002EA80();
LABEL_17:
    v20 = 0;
    v14 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v10 = [commandCopy length] + 8;
  v11 = malloc_type_calloc(1uLL, v10, 0x1966C672uLL);
  if (!v11)
  {
    sub_10002E9B8(self);
    goto LABEL_17;
  }

  v12 = v11;
  *v11 = v10;
  v11[2] = gidCopy;
  v11[3] = oidCopy;
  txSeq = self->_txSeq;
  self->_txSeq = txSeq + 1;
  v11[4] = txSeq;
  [commandCopy getBytes:v11 + 8 length:{objc_msgSend(commandCopy, "length")}];
  v14 = [NSData dataWithBytesNoCopy:v12 length:v10 freeWhenDone:0];
  if (!v14)
  {
    sub_10002E8F0(self);
    goto LABEL_19;
  }

  if (![(AirshipInterface *)self->_airshipInterface write:v14])
  {
LABEL_19:
    v16 = 0;
    goto LABEL_31;
  }

  v15 = [(AirshipInterface *)self->_airshipInterface read:1024];
  v16 = v15;
  if (!v15)
  {
LABEL_31:
    v20 = 0;
    goto LABEL_13;
  }

  if ([v15 length] <= 7)
  {
    sub_10002E828();
    goto LABEL_31;
  }

  bytes = [v16 bytes];
  v18 = *bytes;
  if ([v16 length] != v18)
  {
    v23 = sub_100025204();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_26:

      goto LABEL_31;
    }

    v24 = [objc_opt_class() description];
    v25 = NSStringFromSelector(a2);
    v26 = *bytes;
    v39 = 138544130;
    v40 = v24;
    v41 = 2114;
    v42 = v25;
    v43 = 1024;
    v44 = v26;
    v45 = 2048;
    v46 = [v16 length];
    v27 = "%{public}@::%{public}@: response length mismatch: %hu != %lu";
    v28 = v23;
    v29 = 38;
LABEL_33:
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v27, &v39, v29);

    goto LABEL_26;
  }

  v19 = bytes[4];
  if (v19 != self->_rxSeq)
  {
    v23 = sub_100025204();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v30 = [objc_opt_class() description];
      v31 = NSStringFromSelector(a2);
      v32 = bytes[4];
      rxSeq = self->_rxSeq;
      v39 = 138544130;
      v40 = v30;
      v41 = 2114;
      v42 = v31;
      v43 = 1024;
      v44 = v32;
      v45 = 1024;
      LODWORD(v46) = rxSeq;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: received sequence num %u, expected %u", &v39, 0x22u);
    }

    goto LABEL_26;
  }

  self->_rxSeq = v19 + 1;
  if (bytes[2] != gidCopy)
  {
    v23 = sub_100025204();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v24 = [objc_opt_class() description];
    v25 = NSStringFromSelector(a2);
    v35 = bytes[2];
    v39 = 138544130;
    v40 = v24;
    v41 = 2114;
    v42 = v25;
    v43 = 1024;
    v44 = v35;
    v45 = 1024;
    LODWORD(v46) = gidCopy;
    v27 = "%{public}@::%{public}@: received gid %u, expected %u";
    v28 = v23;
    v29 = 34;
    goto LABEL_33;
  }

  if (bytes[3] != oidCopy)
  {
    v34 = sub_100025204();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v36 = [objc_opt_class() description];
      v37 = NSStringFromSelector(a2);
      v38 = bytes[3];
      v39 = 138544130;
      v40 = v36;
      v41 = 2114;
      v42 = v37;
      v43 = 1024;
      v44 = v38;
      v45 = 1024;
      LODWORD(v46) = oidCopy;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: received oid %u, expected %u", &v39, 0x22u);
    }

    goto LABEL_31;
  }

  if (bytes[5])
  {
    sub_10002E744();
    goto LABEL_31;
  }

  v20 = [v16 subdataWithRange:{8, objc_msgSend(v16, "length") - 8}];
LABEL_13:
  free(v12);
LABEL_14:
  v21 = v20;

  return v20;
}

- (void)log
{
  v4 = sub_100025204();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    started = self->_started;
    txSeq = self->_txSeq;
    rxSeq = self->_rxSeq;
    v10 = 138544386;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 1024;
    v15 = started;
    v16 = 1024;
    v17 = txSeq;
    v18 = 1024;
    v19 = rxSeq;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: started %u, TX seq %u, RX seq %u", &v10, 0x28u);
  }
}

- (id)getSiKPublicKey
{
  v3 = [(CCHIInterface *)self sendCommand:0 gid:0 oid:5];
  v4 = v3;
  if (![v3 length])
  {
    sub_10002EB48(self);
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)getBootPerformanceStats
{
  v136[0] = &off_10006D908;
  v101 = [NSString stringWithUTF8String:"bootFromROM"];
  v137[0] = v101;
  v136[1] = &off_10006D920;
  v124 = [NSString stringWithUTF8String:"clockDone"];
  v137[1] = v124;
  v136[2] = &off_10006D938;
  v122 = [NSString stringWithUTF8String:"endOfResource"];
  v137[2] = v122;
  v136[3] = &off_10006D950;
  v120 = [NSString stringWithUTF8String:"irqEnable"];
  v137[3] = v120;
  v136[4] = &off_10006D968;
  v118 = [NSString stringWithUTF8String:"beforeScheduler"];
  v137[4] = v118;
  v136[5] = &off_10006D980;
  v117 = [NSString stringWithUTF8String:"afterScheduler"];
  v137[5] = v117;
  v136[6] = &off_10006D998;
  v116 = [NSString stringWithUTF8String:"validFilesystemPresent"];
  v137[6] = v116;
  v136[7] = &off_10006D9B0;
  v115 = [NSString stringWithUTF8String:"nvramPresent"];
  v137[7] = v115;
  v136[8] = &off_10006D9C8;
  v114 = [NSString stringWithUTF8String:"logInfrastructureUp"];
  v137[8] = v114;
  v136[9] = &off_10006D9E0;
  v113 = [NSString stringWithUTF8String:"preparingForNewCrashHandling"];
  v137[9] = v113;
  v136[10] = &off_10006D9F8;
  v112 = [NSString stringWithUTF8String:"ftabAvailable"];
  v137[10] = v112;
  v136[11] = &off_10006DA10;
  v111 = [NSString stringWithUTF8String:"appStart"];
  v137[11] = v111;
  v136[12] = &off_10006DA28;
  v110 = [NSString stringWithUTF8String:"appEnd"];
  v137[12] = v110;
  v136[13] = &off_10006DA40;
  v109 = [NSString stringWithUTF8String:"aopStart"];
  v137[13] = v109;
  v136[14] = &off_10006DA58;
  v108 = [NSString stringWithUTF8String:"aopFWLoad"];
  v137[14] = v108;
  v136[15] = &off_10006DA70;
  v107 = [NSString stringWithUTF8String:"aopAppLoad"];
  v137[15] = v107;
  v136[16] = &off_10006DA88;
  v106 = [NSString stringWithUTF8String:"btStart"];
  v137[16] = v106;
  v136[17] = &off_10006DAA0;
  v105 = [NSString stringWithUTF8String:"btFWLoad"];
  v137[17] = v105;
  v136[18] = &off_10006DAB8;
  v104 = [NSString stringWithUTF8String:"hostAppLoad"];
  v137[18] = v104;
  v136[19] = &off_10006DAD0;
  v103 = [NSString stringWithUTF8String:"dspFWLoad"];
  v137[19] = v103;
  v136[20] = &off_10006DAE8;
  v102 = [NSString stringWithUTF8String:"filesystemNotPresent"];
  v137[20] = v102;
  v136[21] = &off_10006DB00;
  v100 = [NSString stringWithUTF8String:"iopLoadStart"];
  v137[21] = v100;
  v136[22] = &off_10006DB18;
  v99 = [NSString stringWithUTF8String:"iopLoadDone"];
  v137[22] = v99;
  v136[23] = &off_10006DB30;
  v98 = [NSString stringWithUTF8String:"beforePTM"];
  v137[23] = v98;
  v136[24] = &off_10006DB48;
  v97 = [NSString stringWithUTF8String:"ptmDone"];
  v137[24] = v97;
  v136[25] = &off_10006DB60;
  v96 = [NSString stringWithUTF8String:"manifestValidated"];
  v137[25] = v96;
  v136[26] = &off_10006DB78;
  v95 = [NSString stringWithUTF8String:"bt2GFetchValidateBegin"];
  v137[26] = v95;
  v136[27] = &off_10006DB90;
  v94 = [NSString stringWithUTF8String:"bt2GFetchValidateDone"];
  v137[27] = v94;
  v136[28] = &off_10006DBA8;
  v93 = [NSString stringWithUTF8String:"bt5GFetchValidateBegin"];
  v137[28] = v93;
  v136[29] = &off_10006DBC0;
  v92 = [NSString stringWithUTF8String:"bt5GFetchValidateDone"];
  v137[29] = v92;
  v136[30] = &off_10006DBD8;
  v91 = [NSString stringWithUTF8String:"btLPSFetchValidateBegin"];
  v137[30] = v91;
  v136[31] = &off_10006DBF0;
  v90 = [NSString stringWithUTF8String:"btLPSFetchValidateDone"];
  v137[31] = v90;
  v136[32] = &off_10006DC08;
  v89 = [NSString stringWithUTF8String:"btMainFetchValidateBegin"];
  v137[32] = v89;
  v136[33] = &off_10006DC20;
  v88 = [NSString stringWithUTF8String:"btMainFetchValidateDone"];
  v137[33] = v88;
  v136[34] = &off_10006DC38;
  v87 = [NSString stringWithUTF8String:"btSecFetchValidateBegin"];
  v137[34] = v87;
  v136[35] = &off_10006DC50;
  v86 = [NSString stringWithUTF8String:"btSecFetchValidateDone"];
  v137[35] = v86;
  v136[36] = &off_10006DC68;
  v85 = [NSString stringWithUTF8String:"wifiLM2GFetchValidateBegin"];
  v137[36] = v85;
  v136[37] = &off_10006DC80;
  v84 = [NSString stringWithUTF8String:"wifiLM2GFetchValidateDone"];
  v137[37] = v84;
  v136[38] = &off_10006DC98;
  v83 = [NSString stringWithUTF8String:"wifiLM5GFetchValidateBegin"];
  v137[38] = v83;
  v136[39] = &off_10006DCB0;
  v82 = [NSString stringWithUTF8String:"wifiLM5GFetchValidateDone"];
  v137[39] = v82;
  v136[40] = &off_10006DCC8;
  v81 = [NSString stringWithUTF8String:"wifiMainFetchValidateBegin"];
  v137[40] = v81;
  v136[41] = &off_10006DCE0;
  v80 = [NSString stringWithUTF8String:"wifiMainFetchValidateDone"];
  v137[41] = v80;
  v136[42] = &off_10006DCF8;
  v79 = [NSString stringWithUTF8String:"wifiP2GFetchValidateBegin"];
  v137[42] = v79;
  v136[43] = &off_10006DD10;
  v78 = [NSString stringWithUTF8String:"wifiP2GFetchValidateDone"];
  v137[43] = v78;
  v136[44] = &off_10006DD28;
  v77 = [NSString stringWithUTF8String:"wifiP5GFetchValidateBegin"];
  v137[44] = v77;
  v136[45] = &off_10006DD40;
  v76 = [NSString stringWithUTF8String:"wifiP5GFetchValidateDone"];
  v137[45] = v76;
  v136[46] = &off_10006DD58;
  v75 = [NSString stringWithUTF8String:"wifiRXFetchValidateBegin"];
  v137[46] = v75;
  v136[47] = &off_10006DD70;
  v74 = [NSString stringWithUTF8String:"wifiRXFetchValidateDone"];
  v137[47] = v74;
  v136[48] = &off_10006DD88;
  v73 = [NSString stringWithUTF8String:"wifiTXFetchValidateBegin"];
  v137[48] = v73;
  v136[49] = &off_10006DDA0;
  v72 = [NSString stringWithUTF8String:"wifiTXFetchValidateDone"];
  v137[49] = v72;
  v136[50] = &off_10006DDB8;
  v71 = [NSString stringWithUTF8String:"wifiScanFetchValidateBegin"];
  v137[50] = v71;
  v136[51] = &off_10006DDD0;
  v70 = [NSString stringWithUTF8String:"wifiScanFetchValidateDone"];
  v137[51] = v70;
  v136[52] = &off_10006DDE8;
  v2 = [NSString stringWithUTF8String:"btFLRSequencePrepared"];
  v137[52] = v2;
  v136[53] = &off_10006DE00;
  v3 = [NSString stringWithUTF8String:"wifiFLRSequencePrepared"];
  v137[53] = v3;
  v136[54] = &off_10006DE18;
  v4 = [NSString stringWithUTF8String:"controlAppInitBegin"];
  v137[54] = v4;
  v136[55] = &off_10006DE30;
  v5 = [NSString stringWithUTF8String:"controlAppInitDone"];
  v137[55] = v5;
  v136[56] = &off_10006DE48;
  v6 = [NSString stringWithUTF8String:"fdrCalBegin"];
  v137[56] = v6;
  v136[57] = &off_10006DE60;
  v7 = [NSString stringWithUTF8String:"fdrCalDone"];
  v137[57] = v7;
  v136[58] = &off_10006DE78;
  v8 = [NSString stringWithUTF8String:"imageResponseSent"];
  v137[58] = v8;
  v136[59] = &off_10006DE90;
  v9 = [NSString stringWithUTF8String:"bootStageOS"];
  v137[59] = v9;
  v136[60] = &off_10006DEA8;
  v10 = [NSString stringWithUTF8String:"postAllFWLoad"];
  v137[60] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v137 forKeys:v136 count:61];

  v126 = 0;
  v12 = +[NSMutableDictionary dictionary];
  v123 = +[NSMutableSet set];
  v125 = +[NSMutableSet set];
  v13 = 0;
  do
  {
    v14 = [NSData dataWithBytes:&v126 length:2];
    v15 = [(CCHIInterface *)self sendCommand:v14 gid:0 oid:8];
    v16 = v15;
    if (!v15)
    {
      goto LABEL_68;
    }

    if ([v15 length] <= 7)
    {
      v43 = sub_100025204();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v44 = [objc_opt_class() description];
      v45 = NSStringFromSelector(a2);
      v46 = [v16 length];
      *buf = 138543874;
      v128 = v44;
      v129 = 2114;
      v130 = v45;
      v131 = 2048;
      *v132 = v46;
      v47 = "%{public}@::%{public}@: response too small %lu";
LABEL_44:
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, v47, buf, 0x20u);

LABEL_50:
      goto LABEL_67;
    }

    v17 = [v16 length] - 8;
    v18 = v17 / 0xC;
    if ((12 * (v17 / 0xC) + 8) != [v16 length])
    {
      v43 = sub_100025204();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v44 = [objc_opt_class() description];
      v45 = NSStringFromSelector(a2);
      v48 = [v16 length];
      *buf = 138543874;
      v128 = v44;
      v129 = 2114;
      v130 = v45;
      v131 = 2048;
      *v132 = v48;
      v47 = "%{public}@::%{public}@: invalid response size %lu";
      goto LABEL_44;
    }

    bytes = [v16 bytes];
    v20 = bytes;
    v21 = *bytes;
    if (v21 != v126)
    {
      v43 = sub_100025204();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v44 = [objc_opt_class() description];
      v49 = NSStringFromSelector(a2);
      v50 = *v20;
      *buf = 138544130;
      v128 = v44;
      v129 = 2114;
      v130 = v49;
      v131 = 1024;
      *v132 = v50;
      *&v132[4] = 1024;
      *&v132[6] = v126;
      v51 = "%{public}@::%{public}@: received start index %u, requested %u";
LABEL_49:
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, v51, buf, 0x22u);

      goto LABEL_50;
    }

    v22 = bytes[1];
    if (v22 < v21)
    {
      v43 = sub_100025204();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v44 = [objc_opt_class() description];
      v49 = NSStringFromSelector(a2);
      v52 = v20[1];
      v53 = *v20;
      *buf = 138544130;
      v128 = v44;
      v129 = 2114;
      v130 = v49;
      v131 = 1024;
      *v132 = v52;
      *&v132[4] = 1024;
      *&v132[6] = v53;
      v51 = "%{public}@::%{public}@: end index %u less than start index %u";
      goto LABEL_49;
    }

    v121 = v14;
    v23 = bytes[2];
    if (v23 < v22)
    {
      v43 = sub_100025204();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      v54 = [objc_opt_class() description];
      v55 = NSStringFromSelector(a2);
      v56 = v20[2];
      v57 = v20[1];
      *buf = 138544130;
      v128 = v54;
      v129 = 2114;
      v130 = v55;
      v131 = 1024;
      *v132 = v56;
      *&v132[4] = 1024;
      *&v132[6] = v57;
      v58 = "%{public}@::%{public}@: max index %u less than end index %u";
      goto LABEL_64;
    }

    if (v17 < 0xC)
    {
      if (*bytes)
      {
        v43 = sub_100025204();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v54 = [objc_opt_class() description];
          v55 = NSStringFromSelector(a2);
          v59 = *v20;
          *buf = 138543874;
          v128 = v54;
          v129 = 2114;
          v130 = v55;
          v131 = 1024;
          *v132 = v59;
          v58 = "%{public}@::%{public}@: start index %u but no stats present";
LABEL_61:
          v63 = v43;
          v64 = 28;
          goto LABEL_65;
        }
      }

      else
      {
        if (!bytes[1])
        {
          if (!bytes[2])
          {
            v24 = 0;
            goto LABEL_27;
          }

          v43 = sub_100025204();
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          v54 = [objc_opt_class() description];
          v55 = NSStringFromSelector(a2);
          v66 = v20[2];
          *buf = 138543874;
          v128 = v54;
          v129 = 2114;
          v130 = v55;
          v131 = 1024;
          *v132 = v66;
          v58 = "%{public}@::%{public}@: max index %u but no stats present";
          goto LABEL_61;
        }

        v43 = sub_100025204();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v54 = [objc_opt_class() description];
          v55 = NSStringFromSelector(a2);
          v65 = v20[1];
          *buf = 138543874;
          v128 = v54;
          v129 = 2114;
          v130 = v55;
          v131 = 1024;
          *v132 = v65;
          v58 = "%{public}@::%{public}@: end index %u but no stats present";
          goto LABEL_61;
        }
      }

LABEL_66:
      v14 = v121;
LABEL_67:

LABEL_68:
      v36 = 0;
LABEL_36:

      goto LABEL_37;
    }

    if (v22 - v21 + 1 != v18)
    {
      v43 = sub_100025204();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v54 = [objc_opt_class() description];
        v55 = NSStringFromSelector(a2);
        v60 = [v16 length];
        v61 = *v20;
        v62 = v20[1];
        *buf = 138544386;
        v128 = v54;
        v129 = 2114;
        v130 = v55;
        v131 = 2048;
        *v132 = v60;
        *&v132[8] = 1024;
        v133 = v61;
        v134 = 1024;
        v135 = v62;
        v58 = "%{public}@::%{public}@: response size %lu doesn't match indexes (%u,%u)";
        v63 = v43;
        v64 = 44;
LABEL_65:
        _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, v58, buf, v64);

        goto LABEL_66;
      }

      goto LABEL_66;
    }

    if (*bytes)
    {
      if (v23 >= v13)
      {
        v23 = v13;
        goto LABEL_17;
      }

      v43 = sub_100025204();
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      v67 = v13;
      v54 = [objc_opt_class() description];
      v55 = NSStringFromSelector(a2);
      v68 = v20[2];
      *buf = 138544130;
      v128 = v54;
      v129 = 2114;
      v130 = v55;
      v131 = 1024;
      *v132 = v68;
      *&v132[4] = 1024;
      *&v132[6] = v67;
      v58 = "%{public}@::%{public}@: max index %u less than previous max index %u";
LABEL_64:
      v63 = v43;
      v64 = 34;
      goto LABEL_65;
    }

LABEL_17:
    v25 = (bytes + 4);
    if (v18 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v18;
    }

    do
    {
      v27 = [NSNumber numberWithUnsignedInt:*v25];
      v28 = [v11 objectForKeyedSubscript:v27];

      if (v28)
      {
        v29 = [v12 objectForKey:v28];

        if (v29)
        {
          [v125 addObject:v28];
        }

        v30 = [NSNumber numberWithUnsignedLongLong:*(v25 + 1)];
        [v12 setObject:v30 forKey:v28];
      }

      else
      {
        v30 = [NSNumber numberWithUnsignedInt:*v25];
        [v123 addObject:v30];
      }

      v25 += 3;
      --v26;
    }

    while (v26);
    v24 = v20[1];
LABEL_27:
    v126 = v24 + 1;

    v13 = v23;
  }

  while (v24 < v23);
  if ([v125 count])
  {
    v31 = sub_100025204();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [objc_opt_class() description];
      v33 = NSStringFromSelector(a2);
      allObjects = [v125 allObjects];
      v35 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v128 = v32;
      v129 = 2114;
      v130 = v33;
      v131 = 2112;
      *v132 = v35;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: duplicated events: {%@}", buf, 0x20u);
    }
  }

  v36 = v12;
  if ([v123 count])
  {
    v14 = sub_100025204();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [objc_opt_class() description];
      v38 = NSStringFromSelector(a2);
      allObjects2 = [v123 allObjects];
      v40 = [allObjects2 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v128 = v37;
      v129 = 2114;
      v130 = v38;
      v131 = 2112;
      *v132 = v40;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ignoring unrecognized events: {%@}", buf, 0x20u);
    }

    v36 = v12;
    goto LABEL_36;
  }

LABEL_37:
  v41 = v36;

  return v41;
}

- (BOOL)start:(id *)start
{
  v6 = sub_100025204();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v14 = 138543618;
    v15 = v7;
    sub_100016B20();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: ", &v14, 0x16u);
  }

  if (self->_started)
  {
    *start = @"alreadyStarted";
    v10 = sub_100025204();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [objc_opt_class() description];
      v12 = NSStringFromSelector(a2);
      v14 = 138543618;
      v15 = v11;
      sub_100016B20();
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: already started", &v14, 0x16u);
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [(AirshipInterface *)self->_airshipInterface start:start];
    if (v9)
    {
      self->_rxSeq = 0;
      LOBYTE(v9) = 1;
      *&self->_started = 1;
    }
  }

  return v9;
}

- (id)hello
{
  [NSData dataWithBytes:"centaurid" length:10];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10001D084() sendCommand:? gid:? oid:?];
  v5 = v4;
  if (v4)
  {
    if ([v4 length])
    {
      v6 = [[NSString alloc] initWithData:v5 encoding:4];
      goto LABEL_4;
    }

    v8 = sub_100025204();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_opt_class() description];
      v10 = NSStringFromSelector(a2);
      v11 = 138543618;
      v12 = v9;
      sub_100016B20();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: no response payload", &v11, 0x16u);
    }
  }

  v6 = 0;
LABEL_4:

  return v6;
}

- (id)shell:(id)shell
{
  v4 = [shell dataUsingEncoding:4];
  v5 = [(CCHIInterface *)self sendCommand:v4 gid:0 oid:1];
  if (v5)
  {
    v6 = [[NSString alloc] initWithData:v5 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getPMUFaultInfo
{
  v3 = [(CCHIInterface *)self sendCommand:0 gid:0 oid:3];
  v4 = v3;
  if (!v3)
  {
LABEL_28:
    v12 = 0;
    v7 = 0;
    goto LABEL_22;
  }

  if ([v3 length] != 1)
  {
    v14 = sub_100025204();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v15 = sub_100004654();
      v16 = NSStringFromSelector(v15);
      [v4 length];
      *buf = 138543874;
      selfCopy = self;
      sub_10001D058();
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unexpected response size %lu", buf, 0x20u);
    }

    goto LABEL_28;
  }

  bytes = [v4 bytes];
  v6 = objc_alloc_init(NSMutableString);
  v7 = v6;
  v8 = *bytes;
  if (*bytes)
  {
    [v6 appendFormat:@"%@UnderVoltageShutdown", @"|"];
    v8 = *bytes;
    if ((*bytes & 2) == 0)
    {
LABEL_5:
      if ((v8 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*bytes & 2) == 0)
  {
    goto LABEL_5;
  }

  [v7 appendFormat:@"%@OverTempShutdown", @"|"];
  v8 = *bytes;
  if ((*bytes & 4) == 0)
  {
LABEL_6:
    if ((v8 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v7 appendFormat:@"%@PowerOnReset", @"|"];
  v8 = *bytes;
  if ((*bytes & 8) == 0)
  {
LABEL_7:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v7 appendFormat:@"%@SystemReset", @"|"];
  v8 = *bytes;
  if ((*bytes & 0x10) == 0)
  {
LABEL_8:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v7 appendFormat:@"%@NACKTimeout", @"|"];
  v8 = *bytes;
  if ((*bytes & 0x20) == 0)
  {
LABEL_9:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    [v7 appendFormat:@"%@ShortResetPulse", @"|"];
    if ((*bytes & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_18:
  [v7 appendFormat:@"%@SPMITargetCommandOff", @"|"];
  v8 = *bytes;
  if ((*bytes & 0x40) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  [v7 appendFormat:@"%@SOCWatchdog", @"|"];
LABEL_11:
  v9 = [v7 length];
  v10 = *bytes;
  if (v9)
  {
    v11 = [v7 substringFromIndex:{objc_msgSend(@"|", "length")}];
    v12 = [NSString stringWithFormat:@"0x%02x-%@", v10, v11];
  }

  else
  {
    v12 = [NSString stringWithFormat:@"0x%02x-NoFaults", v10];
  }

LABEL_22:

  return v12;
}

- (id)getPowerStats:(BOOL)stats
{
  statsCopy = stats;
  [NSData dataWithBytes:&statsCopy length:1];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_10001D084() sendCommand:? gid:? oid:?];
  v6 = v5;
  if (v5)
  {
    if ([v5 length] == 1016)
    {
      bytes = [v6 bytes];
      v8 = +[NSMutableDictionary dictionary];
      v9 = [NSNumber numberWithUnsignedLongLong:*bytes];
      sub_10001D040();

      v10 = [NSNumber numberWithUnsignedLongLong:bytes[1]];
      sub_10001D040();

      v11 = [NSNumber numberWithUnsignedLongLong:bytes[2]];
      sub_10001D040();

      v12 = [NSNumber numberWithUnsignedLongLong:bytes[3]];
      sub_10001D040();

      v13 = [NSNumber numberWithUnsignedLongLong:bytes[4]];
      sub_10001D040();

      v14 = [NSNumber numberWithUnsignedLongLong:bytes[5]];
      sub_10001D040();

      v15 = [NSNumber numberWithUnsignedLongLong:bytes[6]];
      sub_10001D040();

      v16 = [NSNumber numberWithUnsignedLongLong:bytes[7]];
      sub_10001D040();

      v17 = [NSNumber numberWithUnsignedLongLong:bytes[8]];
      sub_10001D040();

      v18 = [NSNumber numberWithUnsignedLongLong:bytes[9]];
      sub_10001D040();

      v19 = [NSNumber numberWithUnsignedLongLong:bytes[10]];
      sub_10001D040();

      v20 = [NSNumber numberWithUnsignedLongLong:bytes[11]];
      sub_10001D040();

      v21 = [NSNumber numberWithUnsignedLongLong:bytes[12]];
      sub_10001D040();

      v22 = [NSNumber numberWithUnsignedLongLong:bytes[13]];
      sub_10001D040();

      v23 = [NSNumber numberWithUnsignedLongLong:bytes[14]];
      sub_10001D040();

      v24 = [NSNumber numberWithUnsignedLongLong:bytes[15]];
      sub_10001D040();

      v25 = [NSNumber numberWithUnsignedLongLong:bytes[16]];
      sub_10001D040();

      v26 = [NSNumber numberWithUnsignedLongLong:bytes[17]];
      sub_10001D040();

      v27 = [NSNumber numberWithUnsignedLongLong:bytes[18]];
      sub_10001D040();

      v28 = [NSNumber numberWithUnsignedLongLong:bytes[19]];
      sub_10001D040();

      v29 = [NSNumber numberWithUnsignedLongLong:bytes[20]];
      sub_10001D040();

      v30 = [NSNumber numberWithUnsignedLongLong:bytes[21]];
      sub_10001D040();

      v31 = [NSNumber numberWithUnsignedLongLong:bytes[22]];
      sub_10001D040();

      v32 = [NSNumber numberWithUnsignedLongLong:bytes[23]];
      sub_10001D040();

      v33 = [NSNumber numberWithUnsignedLongLong:bytes[24]];
      sub_10001D040();

      v34 = [NSNumber numberWithUnsignedLongLong:bytes[25]];
      sub_10001D040();

      v35 = [NSNumber numberWithUnsignedLongLong:bytes[26]];
      sub_10001D040();

      v36 = [NSNumber numberWithUnsignedLongLong:bytes[27]];
      sub_10001D040();

      v37 = [NSNumber numberWithUnsignedLongLong:bytes[28]];
      sub_10001D040();

      v38 = [NSNumber numberWithUnsignedLongLong:bytes[29]];
      sub_10001D040();

      v39 = [NSNumber numberWithUnsignedLongLong:bytes[30]];
      sub_10001D040();

      v40 = [NSNumber numberWithUnsignedLongLong:bytes[31]];
      sub_10001D040();

      v41 = [NSNumber numberWithUnsignedLongLong:bytes[32]];
      [v8 setObject:v41 forKey:@"PCIeL3Duration"];
    }

    else
    {
      v41 = sub_100025204();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v43 = [objc_opt_class() description];
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [sub_100004684() length];
        *buf = 138543874;
        v46 = v43;
        sub_10001D058();
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: unexpected response size %lu", buf, 0x20u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end