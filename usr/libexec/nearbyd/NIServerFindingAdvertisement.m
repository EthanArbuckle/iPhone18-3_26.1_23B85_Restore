@interface NIServerFindingAdvertisement
+ (array<unsigned)convertCBAddressToRoseAddress:(id)a3;
+ (id)advertisementFromByteRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)byteRepresentation;
- (NSData)extraOOBData;
- (NSData)payload;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForFinder:(BOOL)a3 address:(const void *)a4;
- (int)selectedTechnology;
- (unsigned)statusFlags;
@end

@implementation NIServerFindingAdvertisement

- (id)initForFinder:(BOOL)a3 address:(const void *)a4
{
  v14.receiver = self;
  v14.super_class = NIServerFindingAdvertisement;
  v6 = [(NIServerFindingAdvertisement *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_isFinder = a3;
    v8 = *a4;
    *&v6->_address.__elems_[4] = *(a4 + 2);
    v6->_canRange = 1;
    v6->_useCase = 0;
    *v6->_address.__elems_ = v8;
    v6->_supportedTechnologies.__end_ = v6->_supportedTechnologies.__begin_;
    nbUwbAcquisitionChannelIdx = v6->_nbUwbAcquisitionChannelIdx;
    v6->_nbUwbAcquisitionChannelIdx = 0;

    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = 0;

    *&v7->_protocolVersion = 0;
    v7->_mmsNumFragmentsOOB = 0;
    nbUwbAcquisitionUseLowPriorityDutyCycle = v7->_nbUwbAcquisitionUseLowPriorityDutyCycle;
    v7->_nbUwbAcquisitionUseLowPriorityDutyCycle = 0;

    oobRefreshPeriodSeconds = v7->_oobRefreshPeriodSeconds;
    v7->_oobRefreshPeriodSeconds = 0;
  }

  return v7;
}

+ (id)advertisementFromByteRepresentation:(id)a3
{
  v3 = a3;
  if ([v3 length] < 0x65)
  {
    v17 = 0;
    v5 = OPACKDecodeData();
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004C5A1C(&v17);
      }

      v4 = 0;
      goto LABEL_31;
    }

    v6 = [v5 objectForKey:&off_1009C4208];
    v7 = [v5 objectForKey:&off_1009C4220];
    v8 = [v5 objectForKey:&off_1009C4238];
    v9 = [v5 objectForKey:&off_1009C4250];
    v10 = [v5 objectForKey:&off_1009C4268];
    v11 = [v5 objectForKey:&off_1009C4280];
    if (!v6)
    {
      goto LABEL_29;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & (v7 != 0)) == 0)
    {
      goto LABEL_29;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_29;
    }

    v4 = 0;
    if ([v7 length] != 6 || !v8)
    {
      goto LABEL_30;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_29;
    }

    if (!v9 || (+[NSNull null], v12 = objc_claimAutoreleasedReturnValue(), v12, v9 == v12))
    {

      v9 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (!v10 || (+[NSNull null], v13 = objc_claimAutoreleasedReturnValue(), v13, v10 == v13))
    {

      v10 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (!v11 || (+[NSNull null], v14 = objc_claimAutoreleasedReturnValue(), v14, v11 == v14))
    {

      v11 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_29:
        v4 = 0;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }
    }

    [v7 getBytes:v16 length:6];
    v4 = +[NIServerFindingAdvertisement advertisementForFinder:address:statusFlags:payload:extraOOBData:uniqueIdentifier:](NIServerFindingAdvertisement, "advertisementForFinder:address:statusFlags:payload:extraOOBData:uniqueIdentifier:", [v6 BOOLValue], v16, objc_msgSend(v8, "unsignedCharValue"), v9, v11, v10);
    goto LABEL_30;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
  {
    sub_1004C5A94();
  }

  v4 = 0;
LABEL_32:

  return v4;
}

- (NSData)byteRepresentation
{
  v3 = [NSData dataWithBytes:&self->_address length:6];
  v4 = [(NIServerFindingAdvertisement *)self statusFlags];
  v5 = [(NIServerFindingAdvertisement *)self payload];
  v6 = [(NIServerFindingAdvertisement *)self extraOOBData];
  v7 = NSRandomData();
  v15[0] = &off_1009C4208;
  v8 = [NSNumber numberWithBool:self->_isFinder];
  v16[0] = v8;
  v16[1] = v3;
  v15[1] = &off_1009C4220;
  v15[2] = &off_1009C4238;
  v9 = [NSNumber numberWithUnsignedChar:v4];
  v16[2] = v9;
  v15[3] = &off_1009C4250;
  v10 = v5;
  if (!v5)
  {
    v10 = +[NSNull null];
  }

  v16[3] = v10;
  v16[4] = v7;
  v15[4] = &off_1009C4268;
  v15[5] = &off_1009C4280;
  v11 = v6;
  if (!v6)
  {
    v11 = +[NSNull null];
  }

  v16[5] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];
  if (!v6)
  {
  }

  if (!v5)
  {
  }

  Data = OPACKEncoderCreateData();

  return Data;
}

+ (array<unsigned)convertCBAddressToRoseAddress:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v9 = "cbAddress";
    v10 = 2266;
    goto LABEL_8;
  }

  if ([v3 length] <= 5)
  {
    v9 = "cbAddress.length >= rose::kBtAdvAddressByteLength";
    v10 = 2267;
LABEL_8:
    __assert_rtn("+[NIServerFindingAdvertisement convertCBAddressToRoseAddress:]", "NIServerFindingDiscovery.mm", v10, v9);
  }

  [v4 getBytes:&v11 length:6];
  v5 = 0;
  for (i = 5; i != 2; --i)
  {
    v7 = *(&v11 + v5);
    *(&v11 + v5) = *(&v11 + i);
    *(&v11 + i) = v7;
    ++v5;
  }

  return (v11 | (v12 << 32));
}

- (unsigned)statusFlags
{
  if (self->_nbUwbAcquisitionChannelIdx || self->_protocolVersion || self->_narrowBandMask || (mmsNumFragmentsOOB = self->_mmsNumFragmentsOOB) != 0)
  {
    mmsNumFragmentsOOB = 1;
  }

  if (self->_canRange)
  {
    mmsNumFragmentsOOB |= 2u;
  }

  if (self->_useCase == 1)
  {
    mmsNumFragmentsOOB |= 0x10u;
  }

  for (i = self->_supportedTechnologies.__begin_; i != self->_supportedTechnologies.__end_; ++i)
  {
    v4 = *i;
    if (v4 == 1)
    {
      mmsNumFragmentsOOB |= 4u;
    }
  }

  return mmsNumFragmentsOOB;
}

- (NSData)payload
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  nbUwbAcquisitionChannelIdx = self->_nbUwbAcquisitionChannelIdx;
  if (nbUwbAcquisitionChannelIdx)
  {
    v10 = [(NSNumber *)nbUwbAcquisitionChannelIdx intValue];
    sub_1001FE4D0(&__p, &v10);
  }

  protocolVersion = self->_protocolVersion;
  if (self->_protocolVersion)
  {
    if (protocolVersion > 7)
    {
      __assert_rtn("[NIServerFindingAdvertisement payload]", "NIServerFindingDiscovery.mm", 2327, "(_protocolVersion & kProtocolVersionMask) == _protocolVersion");
    }

    narrowBandMask = self->_narrowBandMask;
  }

  else
  {
    narrowBandMask = self->_narrowBandMask;
    if (!self->_narrowBandMask && !self->_mmsNumFragmentsOOB)
    {
      goto LABEL_15;
    }
  }

  v10 = self->_protocolVersion;
  if (narrowBandMask)
  {
    if (narrowBandMask >= 4)
    {
      __assert_rtn("[NIServerFindingAdvertisement payload]", "NIServerFindingDiscovery.mm", 2333, "(_narrowBandMask & narrowBandMaskValueMask) == _narrowBandMask");
    }

    LOBYTE(protocolVersion) = protocolVersion | (8 * narrowBandMask);
    v10 = protocolVersion;
  }

  mmsNumFragmentsOOB = self->_mmsNumFragmentsOOB;
  if (self->_mmsNumFragmentsOOB)
  {
    if (mmsNumFragmentsOOB >= 4)
    {
      __assert_rtn("[NIServerFindingAdvertisement payload]", "NIServerFindingDiscovery.mm", 2339, "(_mmsNumFragmentsOOB & mmsNumFragmentsOOBValueMask) == _mmsNumFragmentsOOB");
    }

    v10 = protocolVersion | (32 * mmsNumFragmentsOOB);
  }

  sub_1001FE4D0(&__p, &v10);
LABEL_15:
  v7 = __p;
  if (v12 != __p)
  {
    v8 = [NSData dataWithBytes:__p length:v12 - __p];
    v7 = __p;
    if (!__p)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v8 = 0;
  if (__p)
  {
LABEL_17:
    v12 = v7;
    operator delete(v7);
  }

LABEL_18:

  return v8;
}

- (NSData)extraOOBData
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (self->_nbUwbAcquisitionUseLowPriorityDutyCycle)
  {
    v10 = 0;
    sub_100250E48(&__p, 1uLL, &v10);
    v3 = [(NSNumber *)self->_nbUwbAcquisitionUseLowPriorityDutyCycle BOOLValue];
    v4 = __p;
    if (v3)
    {
      *__p |= 1u;
      v4 = __p;
    }
  }

  else
  {
    v4 = 0;
  }

  oobRefreshPeriodSeconds = self->_oobRefreshPeriodSeconds;
  if (oobRefreshPeriodSeconds)
  {
    if (v12 == v4)
    {
      v10 = 0;
      sub_100250E48(&__p, 1uLL, &v10);
      oobRefreshPeriodSeconds = self->_oobRefreshPeriodSeconds;
    }

    v6 = [(NSNumber *)oobRefreshPeriodSeconds unsignedIntValue];
    if (v6 >= 0x3F)
    {
      v7 = 63;
    }

    else
    {
      v7 = v6;
    }

    *__p |= 2 * v7;
    v4 = __p;
  }

  if (v12 != v4)
  {
    v8 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
    v4 = __p;
    if (!__p)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = 0;
  if (v4)
  {
LABEL_14:
    v12 = v4;
    operator delete(v4);
  }

LABEL_15:

  return v8;
}

- (int)selectedTechnology
{
  begin = self->_supportedTechnologies.__begin_;
  if ((self->_supportedTechnologies.__end_ - begin) == 4)
  {
    return *begin;
  }

  else
  {
    return 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NIServerFindingAdvertisement alloc] initForFinder:self->_isFinder address:&self->_address];
  v5 = v4;
  if (!v4)
  {
    __assert_rtn("[NIServerFindingAdvertisement copyWithZone:]", "NIServerFindingDiscovery.mm", 2396, "advertisement");
  }

  [v4 setCanRange:self->_canRange];
  [v5 setUseCase:self->_useCase];
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_10037E450(&__p, self->_supportedTechnologies.__begin_, self->_supportedTechnologies.__end_, self->_supportedTechnologies.__end_ - self->_supportedTechnologies.__begin_);
  [v5 setSupportedTechnologies:&__p];
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  [v5 setNbUwbAcquisitionChannelIdx:self->_nbUwbAcquisitionChannelIdx];
  [v5 setProtocolVersion:self->_protocolVersion];
  [v5 setNarrowBandMask:self->_narrowBandMask];
  [v5 setMmsNumFragmentsOOB:self->_mmsNumFragmentsOOB];
  [v5 setUniqueIdentifier:self->_uniqueIdentifier];
  [v5 setNbUwbAcquisitionUseLowPriorityDutyCycle:self->_nbUwbAcquisitionUseLowPriorityDutyCycle];
  [v5 setOobRefreshPeriodSeconds:self->_oobRefreshPeriodSeconds];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v8 = 1;
LABEL_63:

      goto LABEL_64;
    }

    if (!self->_isFinder)
    {
      goto LABEL_10;
    }

    if ([(NIServerFindingAdvertisement *)v5 isFinder])
    {
      v7 = 0;
      goto LABEL_11;
    }

    if (self->_isFinder)
    {
      v7 = 1;
    }

    else
    {
LABEL_10:
      v7 = [(NIServerFindingAdvertisement *)v6 isFinder];
    }

LABEL_11:
    v9 = [(NIServerFindingAdvertisement *)v6 address];
    WORD2(v62) = WORD2(v9);
    v10 = *self->_address.__elems_;
    v11 = *&self->_address.__elems_[4];
    v61 = WORD2(v9);
    canRange = self->_canRange;
    v13 = [(NIServerFindingAdvertisement *)v6 canRange];
    useCase = self->_useCase;
    v59 = [(NIServerFindingAdvertisement *)v6 useCase];
    if (v6)
    {
      [(NIServerFindingAdvertisement *)v6 supportedTechnologies];
      v14 = v62;
      v15 = v63;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    begin = self->_supportedTechnologies.__begin_;
    end = self->_supportedTechnologies.__end_;
    v58 = v9;
    v57 = canRange;
    if (end - begin == v15 - v14)
    {
      if (begin == end)
      {
        v22 = 0;
        if (!v14)
        {
LABEL_26:
          v56 = __PAIR64__(v10, v11);
          v55 = v13;
          if (self->_nbUwbAcquisitionChannelIdx)
          {
            v24 = 0;
          }

          else
          {
            v25 = [(NIServerFindingAdvertisement *)v6 nbUwbAcquisitionChannelIdx];
            v24 = v25 == 0;

            if (!self->_nbUwbAcquisitionChannelIdx)
            {
              goto LABEL_33;
            }
          }

          v26 = [(NIServerFindingAdvertisement *)v6 nbUwbAcquisitionChannelIdx];
          if (v26)
          {
            nbUwbAcquisitionChannelIdx = self->_nbUwbAcquisitionChannelIdx;
            v28 = [(NIServerFindingAdvertisement *)v6 nbUwbAcquisitionChannelIdx];
            v29 = [(NSNumber *)nbUwbAcquisitionChannelIdx isEqualToNumber:v28];
          }

          else
          {
            v29 = 0;
          }

          v24 |= v29;
LABEL_33:
          uniqueIdentifier = self->_uniqueIdentifier;
          if (uniqueIdentifier)
          {
            v53 = 0;
          }

          else
          {
            v31 = [(NIServerFindingAdvertisement *)v6 uniqueIdentifier];
            v53 = v31 == 0;

            uniqueIdentifier = self->_uniqueIdentifier;
          }

          v32 = [(NIServerFindingAdvertisement *)v6 uniqueIdentifier];
          v54 = v7;
          v33 = [(NSData *)uniqueIdentifier isEqualToData:v32];

          protocolVersion = self->_protocolVersion;
          v51 = [(NIServerFindingAdvertisement *)v6 protocolVersion];
          narrowBandMask = self->_narrowBandMask;
          v49 = [(NIServerFindingAdvertisement *)v6 narrowBandMask];
          HIDWORD(v48) = self->_mmsNumFragmentsOOB;
          LODWORD(v48) = [(NIServerFindingAdvertisement *)v6 mmsNumFragmentsOOB];
          if (self->_nbUwbAcquisitionUseLowPriorityDutyCycle)
          {
            v34 = 0;
          }

          else
          {
            v35 = [(NIServerFindingAdvertisement *)v6 nbUwbAcquisitionUseLowPriorityDutyCycle];
            v34 = v35 == 0;

            if (!self->_nbUwbAcquisitionUseLowPriorityDutyCycle)
            {
              goto LABEL_43;
            }
          }

          v36 = [(NIServerFindingAdvertisement *)v6 nbUwbAcquisitionUseLowPriorityDutyCycle];
          if (v36)
          {
            nbUwbAcquisitionUseLowPriorityDutyCycle = self->_nbUwbAcquisitionUseLowPriorityDutyCycle;
            v38 = [(NIServerFindingAdvertisement *)v6 nbUwbAcquisitionUseLowPriorityDutyCycle];
            v39 = [(NSNumber *)nbUwbAcquisitionUseLowPriorityDutyCycle isEqualToNumber:v38];
          }

          else
          {
            v39 = 0;
          }

          v34 |= v39;
LABEL_43:
          if (self->_oobRefreshPeriodSeconds)
          {
            v40 = 0;
          }

          else
          {
            v41 = [(NIServerFindingAdvertisement *)v6 oobRefreshPeriodSeconds];
            v40 = v41 == 0;

            if (!self->_oobRefreshPeriodSeconds)
            {
LABEL_50:
              v8 = 0;
              v46 = v54;
              if (v56 != __PAIR64__(v58, v61))
              {
                v46 = 1;
              }

              if (v57 != v55)
              {
                v46 = 1;
              }

              if (useCase != v59)
              {
                v46 = 1;
              }

              if (((v46 | v22) & 1) == 0 && ((v24 ^ 1) & 1) == 0 && (((v53 | v33) ^ 1) & 1) == 0 && protocolVersion == v51 && narrowBandMask == v49 && ((v34 ^ 1) & 1) == 0)
              {
                v8 = v40 & (BYTE4(v48) == v48);
              }

              goto LABEL_63;
            }
          }

          v42 = [(NIServerFindingAdvertisement *)v6 oobRefreshPeriodSeconds];
          if (v42)
          {
            oobRefreshPeriodSeconds = self->_oobRefreshPeriodSeconds;
            v44 = [(NIServerFindingAdvertisement *)v6 oobRefreshPeriodSeconds];
            v45 = [(NSNumber *)oobRefreshPeriodSeconds isEqualToNumber:v44];
          }

          else
          {
            v45 = 0;
          }

          v40 |= v45;
          goto LABEL_50;
        }

LABEL_25:
        operator delete(v14);
        goto LABEL_26;
      }

      v18 = begin + 1;
      v19 = v14;
      do
      {
        v20 = *v19++;
        v21 = *(v18 - 1);
        v22 = v21 != v20;
      }

      while (v21 == v20 && v18++ != end);
    }

    else
    {
      v22 = 1;
    }

    if (!v14)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v8 = 0;
LABEL_64:

  return v8;
}

- (id)description
{
  v3 = [[NSMutableString alloc] initWithString:@"0x"];
  for (i = 0; i != 6; ++i)
  {
    [v3 appendFormat:@"%02x", self->_address.__elems_[i]];
  }

  v5 = [[NSMutableString alloc] initWithString:@"["];
  begin = self->_supportedTechnologies.__begin_;
  if (self->_supportedTechnologies.__end_ != begin)
  {
    v7 = 0;
    do
    {
      [v5 appendFormat:@"%s", sub_100346EF4(begin[v7])];
      begin = self->_supportedTechnologies.__begin_;
      v8 = self->_supportedTechnologies.__end_ - begin;
      if (v8 - 1 > v7)
      {
        [v5 appendString:{@", "}];
        begin = self->_supportedTechnologies.__begin_;
        v8 = self->_supportedTechnologies.__end_ - begin;
      }

      ++v7;
    }

    while (v8 > v7);
  }

  [v5 appendString:@"]"];
  v22 = sub_100009210(self->_isFinder);
  canRange = self->_canRange;
  v20 = sub_1003464B8(self->_useCase);
  v9 = @"-";
  uniqueIdentifier = self->_uniqueIdentifier;
  if (self->_nbUwbAcquisitionChannelIdx)
  {
    nbUwbAcquisitionChannelIdx = self->_nbUwbAcquisitionChannelIdx;
  }

  else
  {
    nbUwbAcquisitionChannelIdx = @"-";
  }

  protocolVersion = self->_protocolVersion;
  narrowBandMask = self->_narrowBandMask;
  mmsNumFragmentsOOB = self->_mmsNumFragmentsOOB;
  oobRefreshPeriodSeconds = self->_oobRefreshPeriodSeconds;
  if (self->_nbUwbAcquisitionUseLowPriorityDutyCycle)
  {
    nbUwbAcquisitionUseLowPriorityDutyCycle = self->_nbUwbAcquisitionUseLowPriorityDutyCycle;
  }

  else
  {
    nbUwbAcquisitionUseLowPriorityDutyCycle = @"-";
  }

  if (oobRefreshPeriodSeconds)
  {
    v17 = oobRefreshPeriodSeconds;
  }

  else
  {
    v17 = @"-";
  }

  if (uniqueIdentifier)
  {
    [(NSData *)uniqueIdentifier length];
    v9 = CUPrintNSDataHex();
  }

  v18 = [NSString stringWithFormat:@"<%s, addr: %@, canRange:%d, useCase: %s, supportedTech:%@, nbUwbAcqChIdx:%@, protocolVer: %d, nbMask:%hu, mmsNumFragmentsOOB:%d, nbUwbAcqLowPrio:%@, oobPeriod:%@, ID:0x%@>", v22, v3, canRange, v20, v5, nbUwbAcquisitionChannelIdx, protocolVersion, narrowBandMask, mmsNumFragmentsOOB, nbUwbAcquisitionUseLowPriorityDutyCycle, v17, v9];
  if (uniqueIdentifier)
  {
  }

  return v18;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end