@interface SCReporting
+ (id)createScreenshotReportWithScreenshotProperties:(id)properties mainBundleID:(id)d bundleID:(id)iD isSLContentStream:(BOOL)stream;
- (BOOL)shouldReportBundleID:(id)d;
- (SCReporting)initWithClientBundleID:(id)d clientMainBundleID:(id)iD streamID:(id)streamID;
- (id)collectSummaryEventMetrics;
- (id)collectSummaryRecordingEventMetrics;
- (id)thermalDescription;
- (int64_t)getColorFromRGBA:(double)a withGreen:(double)green withBlue:(double)blue withAlpha:(double)alpha;
- (int64_t)getCurrentStreamScreenConfiguration;
- (int64_t)intToSCReportingAudioSampleRate:(int64_t)rate;
- (int64_t)stringToSCReportingColorMatrix:(id)matrix;
- (int64_t)stringToSCReportingColorSpace:(id)space;
- (int64_t)stringToSCReportingPixelFormat:(id)format;
- (int64_t)stringToSCReportingRecordingFileType:(id)type;
- (int64_t)stringToSCReportingRecordingVideoCodecType:(id)type;
- (void)addToThermalResultsWithLevel:(int64_t)level;
- (void)reportRTCEvent:(id)event withStreamID:(id)d;
- (void)reportRecordingRTCEvent:(id)event withStreamID:(id)d;
- (void)resetReportingMetrics;
- (void)resetThermalResults;
- (void)thermalPressureDidChangeWithLevel:(int64_t)level;
- (void)updateReportWithClientProperties:(id)properties;
- (void)updateReportWithContentFilterDictionary:(id)dictionary;
- (void)updateReportWithRecordingFinishDuration:(int64_t)duration fileSize:(int64_t)size;
- (void)updateReportWithRecordingStartConfiguration:(id)configuration recordingPreset:(int64_t)preset;
@end

@implementation SCReporting

- (SCReporting)initWithClientBundleID:(id)d clientMainBundleID:(id)iD streamID:(id)streamID
{
  dCopy = d;
  iDCopy = iD;
  streamIDCopy = streamID;
  v21.receiver = self;
  v21.super_class = SCReporting;
  v11 = [(SCReporting *)&v21 init];
  if (v11)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v23 = "[SCReporting initWithClientBundleID:clientMainBundleID:streamID:]";
      v24 = 1024;
      v25 = 102;
      v26 = 2048;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    [(SCReporting *)v11 setPixelFormat:&stru_1000A2FB8];
    [(SCReporting *)v11 setColorMatrix:&stru_1000A2FB8];
    [(SCReporting *)v11 setColorSpace:&stru_1000A2FB8];
    [(SCReporting *)v11 setUserStopped:0];
    v12 = +[NSDate date];
    captureStartTime = v11->_captureStartTime;
    v11->_captureStartTime = v12;

    v14 = [iDCopy copy];
    [(SCReporting *)v11 setCanonicalBundleID:v14];

    -[SCReporting setIsClientScreenCapture:](v11, "setIsClientScreenCapture:", [dCopy hasPrefix:@"/usr/sbin/screencapture"]);
    -[SCReporting setIsHostSystemUIServer:](v11, "setIsHostSystemUIServer:", [iDCopy isEqualToString:@"com.apple.systemuiserver"]);
    v15 = [streamIDCopy copy];
    [(SCReporting *)v11 setStreamID:v15];

    v16 = objc_alloc_init(RPThermalPressure);
    thermalPressureMonitor = v11->_thermalPressureMonitor;
    v11->_thermalPressureMonitor = v16;

    [(RPThermalPressure *)v11->_thermalPressureMonitor setDelegate:v11];
    v18 = objc_alloc_init(NSMutableDictionary);
    thermalResults = v11->_thermalResults;
    v11->_thermalResults = v18;

    [(SCReporting *)v11 resetThermalResults];
  }

  return v11;
}

- (int64_t)stringToSCReportingPixelFormat:(id)format
{
  integerValue = [format integerValue];
  if (integerValue > 1111970368)
  {
    if (integerValue != 1111970369)
    {
      if (integerValue == 1815162994)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }

  else
  {
    if (integerValue != 875704422)
    {
      if (integerValue == 875704438)
      {
        return 3;
      }

      return 0;
    }

    return 4;
  }
}

- (int64_t)stringToSCReportingColorMatrix:(id)matrix
{
  matrixCopy = matrix;
  if ([matrixCopy isEqualToString:@"ITU_R_601_4"])
  {
    v4 = 2;
  }

  else if ([matrixCopy isEqualToString:@"SMPTE_240M_1995"])
  {
    v4 = 3;
  }

  else
  {
    v4 = [matrixCopy isEqualToString:@"ITU_R_709_2"];
  }

  return v4;
}

- (int64_t)stringToSCReportingColorSpace:(id)space
{
  spaceCopy = space;
  if ([spaceCopy isEqualToString:@"kCGColorSpaceDisplayP3"])
  {
    v4 = 1;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceDisplayP3_HLG"])
  {
    v4 = 2;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceExtendedLinearDisplayP3"])
  {
    v4 = 3;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceSRGB"])
  {
    v4 = 4;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceLinearSRGB"])
  {
    v4 = 5;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceExtendedSRGB"])
  {
    v4 = 6;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceExtendedLinearSRGB"])
  {
    v4 = 7;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceGenericGrayGamma2_2"])
  {
    v4 = 8;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceLinearGray"])
  {
    v4 = 9;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceExtendedGray"])
  {
    v4 = 10;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceExtendedLinearGray"])
  {
    v4 = 11;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceGenericRGBLinear"])
  {
    v4 = 12;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceGenericCMYK"])
  {
    v4 = 13;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceGenericXYZ"])
  {
    v4 = 14;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceGenericLab"])
  {
    v4 = 15;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceACESCGLinear"])
  {
    v4 = 16;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceAdobeRGB1998"])
  {
    v4 = 17;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceDCIP3"])
  {
    v4 = 18;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceITUR_709"])
  {
    v4 = 19;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceROMMRGB"])
  {
    v4 = 20;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceITUR_2020"])
  {
    v4 = 21;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceExtendedLinearITUR_2020"])
  {
    v4 = 22;
  }

  else if ([spaceCopy isEqualToString:@"kCGColorSpaceGenericRGB"])
  {
    v4 = 23;
  }

  else
  {
    v4 = 24;
  }

  return v4;
}

- (int64_t)intToSCReportingAudioSampleRate:(int64_t)rate
{
  if (rate > 23999)
  {
    if (rate != 24000)
    {
      if (rate == 48000)
      {
        return 4;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (rate != 8000)
    {
      if (rate == 16000)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }
}

- (int64_t)getCurrentStreamScreenConfiguration
{
  if (self->_individualWindow)
  {
    return 6;
  }

  includedApplicationsCount = self->_includedApplicationsCount;
  if (includedApplicationsCount && self->_excludedApplicationsCount)
  {
    return 4;
  }

  if (self->_includedWindowsCount)
  {
    if (self->_excludedWindowsCount)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (includedApplicationsCount)
  {
    return 3;
  }

  else
  {
    return 5;
  }
}

- (int64_t)getColorFromRGBA:(double)a withGreen:(double)green withBlue:(double)blue withAlpha:(double)alpha
{
  if (a > 1.0 && green > 1.0 && blue > 1.0)
  {
    a = a / 255.0;
    green = green / 255.0;
    blue = blue / 255.0;
  }

  v8 = a == 0.0;
  if (green != 0.0)
  {
    v8 = 0;
  }

  v9 = blue == 0.0 && v8;
  if (alpha == 0.0 && v9)
  {
    result = 16;
  }

  else
  {
    result = 2;
  }

  if (!v9)
  {
    if (a == 0.333 && green == 0.333 && blue == 0.333)
    {
      return 3;
    }

    else if (a == 0.667 && green == 0.667 && blue == 0.667)
    {
      return 4;
    }

    else if (a == 0.5 && green == 0.5 && blue == 0.5)
    {
      return 6;
    }

    else
    {
      v11 = a == 1.0;
      if (green != 1.0)
      {
        v11 = 0;
      }

      if (v11 && blue == 1.0)
      {
        return 5;
      }

      else
      {
        v12 = a == 1.0;
        if (green != 0.0)
        {
          v12 = 0;
        }

        if (v12 && blue == 0.0)
        {
          return 7;
        }

        else
        {
          v13 = a == 0.0;
          if (green != 1.0)
          {
            v13 = 0;
          }

          if (v13 && blue == 0.0)
          {
            return 8;
          }

          else
          {
            if (blue != 1.0)
            {
              v8 = 0;
            }

            if (v8)
            {
              return 9;
            }

            else if (blue == 1.0 && v13)
            {
              return 10;
            }

            else if (blue == 0.0 && v11)
            {
              return 11;
            }

            else if (blue == 1.0 && v12)
            {
              return 12;
            }

            else if (a == 1.0 && green == 0.5 && blue == 0.0)
            {
              return 13;
            }

            else if (a == 0.5 && green == 0.0 && blue == 0.5)
            {
              return 14;
            }

            else if (blue == 0.2 && green == 0.4 && a == 0.6)
            {
              return 15;
            }

            else
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)collectSummaryEventMetrics
{
  [(SCReporting *)self addToThermalResultsWithLevel:[(RPThermalPressure *)self->_thermalPressureMonitor getCurrentPressureLevel]];
  v89 = [NSMutableDictionary alloc];
  v109[0] = @"SID";
  streamID = [(SCReporting *)self streamID];
  if (streamID)
  {
    streamID2 = [(SCReporting *)self streamID];
  }

  else
  {
    streamID2 = &stru_1000A2FB8;
  }

  v38 = streamID2;
  v110[0] = streamID2;
  v109[1] = @"CVCW";
  v101 = [NSNumber numberWithUnsignedLongLong:sub_1000226CC(llroundf([(SCReporting *)self frameWidth]), 0x32uLL)];
  v110[1] = v101;
  v109[2] = @"CVCH";
  v100 = [NSNumber numberWithUnsignedLongLong:sub_1000226CC(llroundf([(SCReporting *)self frameHeight]), 0x32uLL)];
  v110[2] = v100;
  v109[3] = @"CVCR";
  v99 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf([(SCReporting *)self targetFrameRate]), 2uLL)];
  v110[3] = v99;
  v109[4] = @"PVFC";
  v98 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf([(SCReporting *)self totalFrameCount]), 2uLL)];
  v110[4] = v98;
  v109[5] = @"CBID";
  canonicalBundleID = [(SCReporting *)self canonicalBundleID];
  v96 = [(SCReporting *)self shouldReportBundleID:?];
  if (v96)
  {
    canonicalBundleID2 = [(SCReporting *)self canonicalBundleID];
  }

  else
  {
    canonicalBundleID2 = &stru_1000A2FB8;
  }

  v34 = canonicalBundleID2;
  v110[5] = canonicalBundleID2;
  v109[6] = @"CPF";
  pixelFormat = [(SCReporting *)self pixelFormat];
  if (pixelFormat)
  {
    pixelFormat2 = [(SCReporting *)self pixelFormat];
    v6 = [NSNumber numberWithInteger:[(SCReporting *)self stringToSCReportingPixelFormat:?]];
  }

  else
  {
    v6 = &stru_1000A2FB8;
  }

  v37 = v6;
  v110[6] = v6;
  v109[7] = @"CSF";
  v94 = [NSNumber numberWithBool:[(SCReporting *)self scaleToFit]];
  v110[7] = v94;
  v109[8] = @"CPA";
  v93 = [NSNumber numberWithBool:[(SCReporting *)self preserveAspectRatio]];
  v110[8] = v93;
  v109[9] = @"CSC";
  v92 = [NSNumber numberWithBool:[(SCReporting *)self showCursor]];
  v110[9] = v92;
  v109[10] = @"CBG";
  v91 = [NSNumber numberWithInteger:[(SCReporting *)self backgroundColor]];
  v110[10] = v91;
  v109[11] = @"CSW";
  v88 = [NSNumber numberWithUnsignedLongLong:sub_1000226CC(llroundf([(SCReporting *)self inputSurfaceWidth]), 0x32uLL)];
  v110[11] = v88;
  v109[12] = @"CSH";
  v87 = [NSNumber numberWithUnsignedLongLong:sub_1000226CC(llroundf([(SCReporting *)self inputSurfaceHeight]), 0x32uLL)];
  v110[12] = v87;
  v109[13] = @"CDW";
  v86 = [NSNumber numberWithUnsignedLongLong:sub_1000226CC(llroundf([(SCReporting *)self destSurfaceWidth]), 0x32uLL)];
  v110[13] = v86;
  v109[14] = @"CDH";
  v85 = [NSNumber numberWithUnsignedLongLong:sub_1000226CC(llroundf([(SCReporting *)self destSurfaceHeight]), 0x32uLL)];
  v110[14] = v85;
  v109[15] = @"CQD";
  v84 = [NSNumber numberWithInteger:[(SCReporting *)self frameQueueSize]];
  v110[15] = v84;
  v109[16] = @"CCM";
  colorMatrix = [(SCReporting *)self colorMatrix];
  if (colorMatrix)
  {
    colorMatrix2 = [(SCReporting *)self colorMatrix];
    v8 = [NSNumber numberWithInteger:[(SCReporting *)self stringToSCReportingColorMatrix:?]];
  }

  else
  {
    v8 = &stru_1000A2FB8;
  }

  v36 = v8;
  v110[16] = v8;
  v109[17] = @"CCS";
  colorSpace = [(SCReporting *)self colorSpace];
  v83 = colorMatrix;
  v95 = pixelFormat;
  if (colorSpace)
  {
    colorSpace2 = [(SCReporting *)self colorSpace];
    v9 = [NSNumber numberWithInteger:[(SCReporting *)self stringToSCReportingColorSpace:?]];
  }

  else
  {
    v9 = &stru_1000A2FB8;
  }

  v35 = v9;
  v110[17] = v9;
  v109[18] = @"PDUR";
  [(SCReporting *)self activeDuration];
  *&v10 = v10;
  v81 = [NSNumber numberWithLong:llroundf(*&v10)];
  v110[18] = v81;
  v109[19] = @"PLAT";
  [(SCReporting *)self averageFrameLatency];
  *&v11 = round(v11 * 1000000.0);
  v80 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf(*&v11), 2uLL)];
  v110[19] = v80;
  v109[20] = @"AE";
  v79 = [NSNumber numberWithBool:[(SCReporting *)self audioEnabled]];
  v110[20] = v79;
  v109[21] = @"ASR";
  v78 = [NSNumber numberWithInteger:[(SCReporting *)self intToSCReportingAudioSampleRate:[(SCReporting *)self audioSampleRate]]];
  v110[21] = v78;
  v109[22] = @"ACC";
  v77 = [NSNumber numberWithInteger:[(SCReporting *)self audioChannelCount]];
  v110[22] = v77;
  v109[23] = @"AEXC";
  v76 = [NSNumber numberWithInteger:[(SCReporting *)self excludeCallingClientAudio]];
  v110[23] = v76;
  v109[24] = @"ALAT";
  [(SCReporting *)self averageFrameLatencyAudio];
  *&v12 = round(v12 * 1000000.0);
  v75 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf(*&v12), 2uLL)];
  v110[24] = v75;
  v109[25] = @"CFD";
  v74 = [NSNumber numberWithInteger:[(SCReporting *)self getCurrentStreamScreenConfiguration]];
  v110[25] = v74;
  v109[26] = @"CFSRC";
  v73 = [NSNumber numberWithInteger:[(SCReporting *)self filterSource]];
  v110[26] = v73;
  v109[27] = @"SWCMD";
  v72 = [NSNumber numberWithInteger:[(SCReporting *)self startWithCompositeMode]];
  v110[27] = v72;
  v109[28] = @"NDUR";
  [(SCReporting *)self newsroomTotalDuration];
  *&v13 = v13;
  v71 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf(*&v13), 2uLL)];
  v110[28] = v71;
  v109[29] = @"FDUR";
  [(SCReporting *)self floatingTotalDuration];
  *&v14 = v14;
  v70 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf(*&v14), 2uLL)];
  v110[29] = v70;
  v109[30] = @"NSC";
  v69 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self newsroomSessionCount], 2uLL)];
  v110[30] = v69;
  v109[31] = @"FSC";
  v68 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self floatingSessionCount], 2uLL)];
  v110[31] = v68;
  v109[32] = @"NFC";
  v67 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self newsroomTotalFrameCount], 2uLL)];
  v110[32] = v67;
  v109[33] = @"FFC";
  v66 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self floatingTotalFrameCount], 2uLL)];
  v110[33] = v66;
  v109[34] = @"NTFC";
  v65 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self newsroomToFloatingTransitionCount], 2uLL)];
  v110[34] = v65;
  v109[35] = @"FTNC";
  v64 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self floatingToNewsroomTransitionCount], 2uLL)];
  v110[35] = v64;
  v109[36] = @"NTLC";
  v63 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self newsroomTopLeftWindowCount], 2uLL)];
  v110[36] = v63;
  v109[37] = @"NTRC";
  v62 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self newsroomTopRightWindowCount], 2uLL)];
  v110[37] = v62;
  v109[38] = @"NBRC";
  v61 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self newsroomBottomRightWindowCount], 2uLL)];
  v110[38] = v61;
  v109[39] = @"NBLC";
  v60 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self newsroomBottomLeftWindowCount], 2uLL)];
  v110[39] = v60;
  v109[40] = @"NFMC";
  v59 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self newsroomFullScreenContentCount], 2uLL)];
  v110[40] = v59;
  v109[41] = @"PDR";
  [(SCReporting *)self portraitEffectTotalDuration];
  *&v15 = v15;
  v58 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf(*&v15), 2uLL)];
  v110[41] = v58;
  v109[42] = @"CSDR";
  [(SCReporting *)self centerStageEffectTotalDuration];
  *&v16 = v16;
  v57 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf(*&v16), 2uLL)];
  v110[42] = v57;
  v109[43] = @"SLDR";
  [(SCReporting *)self studioLightEffectTotalDuration];
  *&v17 = v17;
  v56 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf(*&v17), 2uLL)];
  v110[43] = v56;
  v109[44] = @"BGDR";
  [(SCReporting *)self backgroundReplacementTotalDuration];
  *&v18 = v18;
  v55 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf(*&v18), 2uLL)];
  v110[44] = v55;
  v109[45] = @"GBRE";
  v54 = [NSNumber numberWithBool:[(SCReporting *)self gestureDetectionBasedReactionsEnabled]];
  v110[45] = v54;
  v109[46] = @"MTRC";
  v53 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self manualTriggeredReactionsCount], 2uLL)];
  v110[46] = v53;
  v109[47] = @"PIEV";
  v52 = [NSNumber numberWithInteger:[(SCReporting *)self portraitIntensityEndValue]];
  v110[47] = v52;
  v109[48] = @"SIEV";
  v51 = [NSNumber numberWithInteger:[(SCReporting *)self studioLightIntensityEndValue]];
  v110[48] = v51;
  v109[49] = @"CDT";
  v50 = [NSNumber numberWithInteger:[(SCReporting *)self cameraDeviceType]];
  v110[49] = v50;
  v109[50] = @"IWC";
  v49 = [NSNumber numberWithInteger:[(SCReporting *)self includedWindowsCount]];
  v110[50] = v49;
  v109[51] = @"IAC";
  v48 = [NSNumber numberWithInteger:[(SCReporting *)self includedApplicationsCount]];
  v110[51] = v48;
  v109[52] = @"EWC";
  v47 = [NSNumber numberWithInteger:[(SCReporting *)self excludedWindowsCount]];
  v110[52] = v47;
  v109[53] = @"EAC";
  v46 = [NSNumber numberWithInteger:[(SCReporting *)self excludedApplicationsCount]];
  v110[53] = v46;
  v109[54] = @"US";
  v45 = [NSNumber numberWithBool:[(SCReporting *)self userStopped]];
  v110[54] = v45;
  v109[55] = @"DUID";
  v44 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", +[RPStringUtility rotatingDeviceUniqueID]);
  v110[55] = v44;
  v109[56] = @"CRT";
  v43 = [NSNumber numberWithInteger:[(SCReporting *)self captureResolutionType]];
  v110[56] = v43;
  v109[57] = @"CHDR";
  v42 = [NSNumber numberWithInteger:[(SCReporting *)self captureDynamicRange]];
  v110[57] = v42;
  v109[58] = @"MICE";
  v41 = [NSNumber numberWithBool:[(SCReporting *)self micEnabled]];
  v110[58] = v41;
  v109[59] = @"MLAT";
  [(SCReporting *)self averageFrameLatencyMic];
  *&v19 = round(v19 * 1000000.0);
  v40 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf(*&v19), 2uLL)];
  v110[59] = v40;
  v109[60] = @"RPRE";
  v39 = [NSNumber numberWithInteger:[(SCReporting *)self recordingPreset]];
  v110[60] = v39;
  v109[61] = @"REC";
  v20 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self recordingOutputCount], 2uLL)];
  v110[61] = v20;
  v109[62] = @"RED";
  v21 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self recordingTotalDuration], 2uLL)];
  v110[62] = v21;
  v109[63] = @"RES";
  v22 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self recordingTotalFileSize], 2uLL)];
  v110[63] = v22;
  v109[64] = @"CSS";
  v23 = [NSNumber numberWithBool:[(SCReporting *)self isClientScreenCapture]];
  v110[64] = v23;
  v109[65] = @"HSUS";
  v24 = [NSNumber numberWithBool:[(SCReporting *)self isHostSystemUIServer]];
  v110[65] = v24;
  v109[66] = @"CSMC";
  v25 = [NSNumber numberWithBool:[(SCReporting *)self showMouseClicks]];
  v110[66] = v25;
  v109[67] = @"PAFC";
  v26 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf([(SCReporting *)self totalAudioFrameCount]), 2uLL)];
  v110[67] = v26;
  v109[68] = @"PMFC";
  v27 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC(llroundf([(SCReporting *)self totalMicFrameCount]), 2uLL)];
  v110[68] = v27;
  v109[69] = @"TPL";
  thermalDescription = [(SCReporting *)self thermalDescription];
  v110[69] = thermalDescription;
  v29 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:70];
  v90 = [v89 initWithDictionary:v29];

  if (colorSpace)
  {
  }

  if (v83)
  {
  }

  if (v95)
  {
  }

  if (v96)
  {
  }

  if (streamID)
  {
  }

  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v104 = "[SCReporting collectSummaryEventMetrics]";
    v105 = 1024;
    v106 = 346;
    v107 = 2112;
    v108 = v90;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d %@", buf, 0x1Cu);
  }

  return v90;
}

- (id)thermalDescription
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NSMutableDictionary *)self->_thermalResults allKeys];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  v4 = &stru_1000A2FB8;
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v17;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(NSMutableDictionary *)self->_thermalResults objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v8)];
        v11 = v10;
        v12 = ",";
        if (!v6)
        {
          v12 = "";
        }

        if (v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = &stru_1000A2FB8;
        }

        v4 = [(__CFString *)v9 stringByAppendingFormat:@"%s%@", v12, v13];

        ++v6;
        v8 = v8 + 1;
        v9 = v4;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v4;
}

- (void)updateReportWithContentFilterDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"SCStreamContentFilterIndividualWindowID"];

  if (v4)
  {
    self->_individualWindow = 1;
  }

  else
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"SCStreamContentFilterIncludedWindows"];
    self->_includedWindowsCount = [v5 count];

    v6 = [dictionaryCopy objectForKeyedSubscript:@"SCStreamContentFilterExcludedWindows"];
    self->_excludedWindowsCount = [v6 count];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"SCStreamContentFilterIncludedBundleIDs"];
    v8 = [v7 count];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"SCStreamContentFilterIncludedVideoPIDs"];
    self->_includedApplicationsCount = v8 + [v9 count];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"SCStreamContentFilterExcludedBundleIDs"];
    v11 = [v10 count];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"SCStreamContentFilterExcludedVideoPIDs"];
    self->_excludedApplicationsCount = v11 + [v12 count];
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"SCStreamPreservedContentFilterCompositeConfig"];
  v14 = [v13 objectForKeyedSubscript:@"SCStreamPropertiesCompositeSessionMode"];
  integerValue = 0;
  if (v13 && v14)
  {
    integerValue = [v14 integerValue];
  }

  self->_startWithCompositeMode = integerValue;
  integerValue2 = [dictionaryCopy objectForKeyedSubscript:@"SCStreamContentFilterSource"];
  v17 = integerValue2;
  if (integerValue2)
  {
    integerValue2 = [integerValue2 integerValue];
  }

  self->_filterSource = integerValue2;
}

- (void)updateReportWithClientProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesWidth"];
  if (v4)
  {
    v5 = v4;
    v6 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesHeight"];

    if (v6)
    {
      v7 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesWidth"];
      [v7 floatValue];
      v9 = v8;
      v10 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesHeight"];
      [v10 floatValue];
      v12 = v11;

      self->_frameWidth = v9;
      self->_frameHeight = v12;
    }
  }

  v13 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesPixelFormat"];

  if (v13)
  {
    v14 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesPixelFormat"];
    pixelFormat = self->_pixelFormat;
    self->_pixelFormat = v14;
  }

  v16 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesFrameRate"];
  if (v16)
  {
    v17 = v16;
    v18 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesFrameRate"];
    [v18 doubleValue];
    v20 = v19;

    if (v20 > 0.0)
    {
      v21 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesFrameRate"];
      [v21 doubleValue];
      self->_targetFrameRate = (1.0 / v22);
    }
  }

  v23 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesScaleToFit"];

  if (v23)
  {
    v24 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesScaleToFit"];
    self->_scaleToFit = [v24 BOOLValue];
  }

  v25 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesPreserveAspectRatio"];

  if (v25)
  {
    v26 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesPreserveAspectRatio"];
    self->_preserveAspectRatio = [v26 BOOLValue];
  }

  v27 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesQueueDepth"];
  v28 = propertiesCopy;
  if (v27)
  {
    v29 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesQueueDepth"];
    if ([v29 longValue] <= 0)
    {
    }

    else
    {
      v30 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesQueueDepth"];
      longValue = [v30 longValue];

      v28 = propertiesCopy;
      if (longValue > 8)
      {
        goto LABEL_19;
      }

      v27 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesQueueDepth"];
      self->_frameQueueSize = [v27 longValue];
    }

    v28 = propertiesCopy;
  }

LABEL_19:
  v32 = [v28 objectForKeyedSubscript:@"SCStreamPropertiesShowCursor"];

  if (v32)
  {
    v33 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesShowCursor"];
    self->_showCursor = [v33 BOOLValue];
  }

  v34 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesBackgroundColorR"];
  [v34 doubleValue];
  v36 = v35;
  v37 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesBackgroundColorG"];
  [v37 doubleValue];
  v39 = v38;
  v40 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesBackgroundColorB"];
  [v40 doubleValue];
  v42 = v41;
  v43 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesBackgroundColorA"];
  [v43 doubleValue];
  self->_backgroundColor = [(SCReporting *)self getColorFromRGBA:v36 withGreen:v39 withBlue:v42 withAlpha:v44];

  v45 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesSourceRectX"];
  if (v45)
  {
    v46 = v45;
    v47 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesSourceRectY"];
    if (v47)
    {
      v48 = v47;
      v49 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesSourceRectWidth"];
      if (v49)
      {
        v50 = v49;
        v51 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesSourceRectHeight"];

        if (v51)
        {
          v52 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesSourceRectX"];
          [v52 floatValue];
          v53 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesSourceRectY"];
          [v53 floatValue];
          v54 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesSourceRectWidth"];
          [v54 floatValue];
          v56 = v55;
          v57 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesSourceRectHeight"];
          [v57 floatValue];
          v59 = v58;

          self->_inputSurfaceWidth = v56;
          self->_inputSurfaceHeight = v59;
        }

        goto LABEL_28;
      }
    }
  }

LABEL_28:
  v60 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesDestinationRectX"];
  if (!v60)
  {
    goto LABEL_35;
  }

  v61 = v60;
  v62 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesDestinationRectY"];
  if (!v62)
  {
    goto LABEL_34;
  }

  v63 = v62;
  v64 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesDestinationRectWidth"];
  if (!v64)
  {

LABEL_34:
    goto LABEL_35;
  }

  v65 = v64;
  v66 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesDestinationRectHeight"];

  if (v66)
  {
    v67 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesDestinationRectX"];
    [v67 floatValue];
    v68 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesDestinationRectY"];
    [v68 floatValue];
    v69 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesDestinationRectWidth"];
    [v69 floatValue];
    v71 = v70;
    v72 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesDestinationRectHeight"];
    [v72 floatValue];
    v74 = v73;

    self->_destSurfaceWidth = v71;
    self->_destSurfaceHeight = v74;
  }

LABEL_35:
  v75 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesColorSpace"];

  if (v75)
  {
    v76 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesColorSpace"];
    colorSpace = self->_colorSpace;
    self->_colorSpace = v76;
  }

  v78 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesColorMatrix"];

  if (v78)
  {
    v79 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesColorMatrix"];
    colorMatrix = self->_colorMatrix;
    self->_colorMatrix = v79;
  }

  v81 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesContentScale"];

  if (v81)
  {
    v82 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesContentScale"];
    [v82 floatValue];
    self->_contentScale = v83;
  }

  v84 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesAudioEnabled"];

  if (v84)
  {
    v85 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesAudioEnabled"];
    self->_audioEnabled = [v85 BOOLValue];
  }

  v86 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesSampleRate"];

  if (v86)
  {
    v87 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesSampleRate"];
    self->_audioSampleRate = [v87 intValue];
  }

  v88 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesChannelCount"];

  if (v88)
  {
    v89 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesChannelCount"];
    self->_audioChannelCount = [v89 intValue];
  }

  v90 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesExcludeCallingClientAudio"];

  if (v90)
  {
    v91 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesExcludeCallingClientAudio"];
    self->_excludeCallingClientAudio = [v91 BOOLValue];
  }

  v92 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesBestResolution"];
  if ([v92 BOOLValue])
  {
    v93 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesNominalResolution"];
    bOOLValue = [v93 BOOLValue];

    if (!bOOLValue)
    {
      v95 = 2;
      goto LABEL_58;
    }
  }

  else
  {
  }

  v96 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesNominalResolution"];
  if ([v96 BOOLValue])
  {
    v97 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesBestResolution"];
    bOOLValue2 = [v97 BOOLValue];

    if (!bOOLValue2)
    {
      v95 = 3;
      goto LABEL_58;
    }
  }

  else
  {
  }

  v95 = 1;
LABEL_58:
  self->_captureResolutionType = v95;
  v99 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesCaptureDynamicRange"];

  if (v99)
  {
    v100 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesCaptureDynamicRange"];
    self->_captureDynamicRange = [v100 unsignedIntValue];
  }

  v101 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesMicrophoneEnabled"];

  if (v101)
  {
    v102 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesMicrophoneEnabled"];
    self->_micEnabled = [v102 BOOLValue];
  }

  v103 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesShowMouseClicks"];

  if (v103)
  {
    v104 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesShowMouseClicks"];
    self->_showMouseClicks = [v104 BOOLValue];
  }

  v105 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesRecordingPreset"];

  if (v105)
  {
    v106 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesRecordingPreset"];
    self->_recordingPreset = [v106 unsignedIntValue];
  }
}

- (int64_t)stringToSCReportingRecordingFileType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:AVFileTypeMPEG4])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:AVFileTypeQuickTimeMovie])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)stringToSCReportingRecordingVideoCodecType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:AVVideoCodecTypeH264])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:AVVideoCodecTypeHEVC])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)updateReportWithRecordingStartConfiguration:(id)configuration recordingPreset:(int64_t)preset
{
  recordingOutputCount = self->_recordingOutputCount;
  self->_recordingOutputDuration = 0;
  self->_recordingOutputFileSize = 0;
  self->_recordingOutputCount = recordingOutputCount + 1;
  configurationCopy = configuration;
  v8 = [configurationCopy objectForKeyedSubscript:@"SCRecordingOutputConfigOutputFileType"];
  self->_recordingOutputFileType = [(SCReporting *)self stringToSCReportingRecordingFileType:v8];

  v9 = [configurationCopy objectForKeyedSubscript:@"SCRecordingOutputConfigVideoCodecType"];

  self->_recordingOutputVideoCodecType = [(SCReporting *)self stringToSCReportingRecordingVideoCodecType:v9];
  self->_recordingPreset = preset;
}

- (void)updateReportWithRecordingFinishDuration:(int64_t)duration fileSize:(int64_t)size
{
  self->_recordingOutputDuration = duration;
  self->_recordingOutputFileSize = size;
  self->_recordingTotalDuration += duration;
  self->_recordingTotalFileSize += size;
}

- (id)collectSummaryRecordingEventMetrics
{
  v13[0] = @"SID";
  streamID = [(SCReporting *)self streamID];
  if (streamID)
  {
    streamID2 = [(SCReporting *)self streamID];
  }

  else
  {
    streamID2 = &stru_1000A2FB8;
  }

  v14[0] = streamID2;
  v13[1] = @"RED";
  v5 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self recordingOutputDuration], 2uLL)];
  v14[1] = v5;
  v13[2] = @"RES";
  v6 = [NSNumber numberWithUnsignedLongLong:sub_1000226EC([(SCReporting *)self recordingOutputFileSize], 2uLL)];
  v14[2] = v6;
  v13[3] = @"REFT";
  v7 = [NSNumber numberWithInteger:[(SCReporting *)self recordingOutputFileType]];
  v14[3] = v7;
  v13[4] = @"REVC";
  v8 = [NSNumber numberWithInteger:[(SCReporting *)self recordingOutputVideoCodecType]];
  v14[4] = v8;
  v13[5] = @"CSS";
  v9 = [NSNumber numberWithBool:[(SCReporting *)self isClientScreenCapture]];
  v14[5] = v9;
  v13[6] = @"RPRE";
  v10 = [NSNumber numberWithInteger:[(SCReporting *)self recordingPreset]];
  v14[6] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];

  if (streamID)
  {
  }

  return v11;
}

- (void)reportRecordingRTCEvent:(id)event withStreamID:(id)d
{
  eventCopy = event;
  dCopy = d;
  collectSummaryRecordingEventMetrics = [(SCReporting *)self collectSummaryRecordingEventMetrics];
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "[SCReporting reportRecordingRTCEvent:withStreamID:]";
    v11 = 1024;
    v12 = 526;
    v13 = 2112;
    v14 = collectSummaryRecordingEventMetrics;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d reportingMetric=%@", &v9, 0x1Cu);
  }

  [eventCopy reportSCEventWithType:4 dictionary:collectSummaryRecordingEventMetrics streamID:dCopy];
}

- (void)resetReportingMetrics
{
  v3 = +[NSDate date];
  captureStartTime = self->_captureStartTime;
  self->_captureStartTime = v3;

  self->_totalFrameCount = 0;
  self->_userStopped = 0;
  *&self->_totalAudioFrameCount = 0u;
  *&self->_newsroomTotalDuration = 0u;
  *&self->_newsroomSessionCount = 0u;
  *&self->_recordingTotalDuration = 0u;

  [(SCReporting *)self resetThermalResults];
}

- (void)resetThermalResults
{
  [(RPThermalPressure *)self->_thermalPressureMonitor stopMonitoring];
  [(NSMutableDictionary *)self->_thermalResults removeAllObjects];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6B78 forKeyedSubscript:&off_1000A6B90];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6B78 forKeyedSubscript:&off_1000A6BA8];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6B78 forKeyedSubscript:&off_1000A6BC0];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6B78 forKeyedSubscript:&off_1000A6BD8];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6B78 forKeyedSubscript:&off_1000A6BF0];
  [(NSMutableDictionary *)self->_thermalResults setObject:&off_1000A6B78 forKeyedSubscript:&off_1000A6C08];
  v3 = +[NSDate date];
  thermalLevelIntervalStartTime = self->_thermalLevelIntervalStartTime;
  self->_thermalLevelIntervalStartTime = v3;

  thermalPressureMonitor = self->_thermalPressureMonitor;

  [(RPThermalPressure *)thermalPressureMonitor startMonitoring];
}

- (void)reportRTCEvent:(id)event withStreamID:(id)d
{
  eventCopy = event;
  dCopy = d;
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:self->_captureStartTime];
  self->_activeDuration = v9;

  if (self->_activeDuration <= 5.0)
  {
    if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      activeDuration = self->_activeDuration;
      v12 = 136446978;
      v13 = "[SCReporting reportRTCEvent:withStreamID:]";
      v14 = 1024;
      v15 = 566;
      v16 = 2048;
      v17 = activeDuration;
      v18 = 1024;
      v19 = 5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d not reporting session of %f seconds less than %d seconds", &v12, 0x22u);
    }
  }

  else
  {
    collectSummaryEventMetrics = [(SCReporting *)self collectSummaryEventMetrics];
    if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446722;
      v13 = "[SCReporting reportRTCEvent:withStreamID:]";
      v14 = 1024;
      v15 = 562;
      v16 = 2112;
      v17 = *&collectSummaryEventMetrics;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d reportingMetric=%@", &v12, 0x1Cu);
    }

    [eventCopy reportSCEventWithType:1 dictionary:collectSummaryEventMetrics streamID:dCopy];
    [(SCReporting *)self resetReportingMetrics];
  }

  [(SCReporting *)self resetReportingMetrics];
}

- (BOOL)shouldReportBundleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    if (qword_1000B68D8 != -1)
    {
      sub_100061C30();
    }

    v11.tv_sec = 0;
    *&v11.tv_usec = 0;
    memset(&v10, 0, sizeof(v10));
    gettimeofday(&v11, 0);
    localtime_r(&v11.tv_sec, &v10);
    data = v10.tm_yday + 366 * v10.tm_year;
    memset(&v8, 0, sizeof(v8));
    CC_SHA256_Init(&v8);
    CC_SHA256_Update(&v8, &unk_1000B68C8, 0x10u);
    CC_SHA256_Update(&v8, &data, 4u);
    if (dCopy)
    {
      uTF8String = [dCopy UTF8String];
      v5 = strlen(uTF8String);
      CC_SHA256_Update(&v8, uTF8String, v5);
    }

    CC_SHA256_Final(md, &v8);
    v6 = *md < 0x290u;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)thermalPressureDidChangeWithLevel:(int64_t)level
{
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446722;
    v6 = "[SCReporting thermalPressureDidChangeWithLevel:]";
    v7 = 1024;
    v8 = 604;
    v9 = 2048;
    levelCopy = level;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d level=%ld", &v5, 0x1Cu);
  }

  [(SCReporting *)self addToThermalResultsWithLevel:level];
}

- (void)addToThermalResultsWithLevel:(int64_t)level
{
  v5 = +[NSDate date];
  [v5 timeIntervalSinceDate:self->_thermalLevelIntervalStartTime];
  *&v6 = v6;
  v7 = llroundf(*&v6);

  thermalResults = self->_thermalResults;
  v9 = [NSNumber numberWithInteger:level];
  v10 = [(NSMutableDictionary *)thermalResults objectForKeyedSubscript:v9];
  [v10 doubleValue];
  v12 = v11 + v7;

  v13 = [NSNumber numberWithDouble:v12];
  v14 = self->_thermalResults;
  v15 = [NSNumber numberWithInteger:level];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

  v16 = +[NSDate date];
  thermalLevelIntervalStartTime = self->_thermalLevelIntervalStartTime;
  self->_thermalLevelIntervalStartTime = v16;

  _objc_release_x1();
}

+ (id)createScreenshotReportWithScreenshotProperties:(id)properties mainBundleID:(id)d bundleID:(id)iD isSLContentStream:(BOOL)stream
{
  streamCopy = stream;
  propertiesCopy = properties;
  dCopy = d;
  iDCopy = iD;
  v12 = objc_alloc_init(NSMutableDictionary);
  if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136446466;
    v22 = "+[SCReporting createScreenshotReportWithScreenshotProperties:mainBundleID:bundleID:isSLContentStream:]";
    v23 = 1024;
    v24 = 628;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v21, 0x12u);
  }

  if (dCopy)
  {
    [v12 setObject:dCopy forKeyedSubscript:@"CBID"];
    v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [dCopy isEqualToString:@"com.apple.systemuiserver"]);
    [v12 setObject:v13 forKeyedSubscript:@"HSUS"];
  }

  if (iDCopy)
  {
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [iDCopy hasPrefix:@"/usr/sbin/screencapture"]);
    [v12 setObject:v14 forKeyedSubscript:@"CSS"];
  }

  if (streamCopy)
  {
    v15 = &off_1000A6B90;
  }

  else
  {
    v15 = &off_1000A6C20;
  }

  [v12 setObject:v15 forKeyedSubscript:@"SSV"];
  v16 = [propertiesCopy objectForKeyedSubscript:@"SCScreenshotPropertiesDynamicRange"];

  if (v16)
  {
    v17 = @"SCScreenshotPropertiesDynamicRange";
LABEL_15:
    v19 = [propertiesCopy objectForKeyedSubscript:v17];
    [v12 setObject:v19 forKeyedSubscript:@"SDR"];

    goto LABEL_16;
  }

  v18 = [propertiesCopy objectForKeyedSubscript:@"SCStreamPropertiesCaptureDynamicRange"];

  if (v18)
  {
    v17 = @"SCStreamPropertiesCaptureDynamicRange";
    goto LABEL_15;
  }

  [v12 setObject:&off_1000A6B78 forKeyedSubscript:@"SDR"];
LABEL_16:
  [v12 setObject:&off_1000A6B90 forKeyedSubscript:@"IFT"];

  return v12;
}

@end