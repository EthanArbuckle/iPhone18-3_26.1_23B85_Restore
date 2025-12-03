@interface NIServerFindingPeerTracking
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NIServerFindingPeerTracking

- (id)copyWithZone:(_NSZone *)zone
{
  LOBYTE(v4) = self->_clientWantsUpdates;
  [NIServerFindingPeerTracking peerTrackingWithDiscoveryState:self->_discoveryState advertisingState:self->_advertisingState rangingState:self->_rangingState algorithmOutputFlags:self->_algorithmOutputFlags receivedSignalFlags:self->_receivedSignalFlags tellClientAboutPeer:self->_tellClientAboutPeer clientWantsUpdates:v4 nbUwbAcquisitionChannelIdx:self->_nbUwbAcquisitionChannelIdx nbUwbAcquisitionUseLowPriorityDutyCycle:self->_nbUwbAcquisitionUseLowPriorityDutyCycle oobRefreshPeriod:self->_oobRefreshPeriodSeconds keepAliveTimeout:self->_keepAliveTimeoutSeconds];
  return objc_claimAutoreleasedReturnValue();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      LOBYTE(v8) = 1;
LABEL_41:

      goto LABEL_42;
    }

    if (self->_nbUwbAcquisitionChannelIdx)
    {
      v7 = 0;
    }

    else
    {
      nbUwbAcquisitionChannelIdx = [(NIServerFindingPeerTracking *)v5 nbUwbAcquisitionChannelIdx];
      v7 = nbUwbAcquisitionChannelIdx == 0;

      if (!self->_nbUwbAcquisitionChannelIdx)
      {
        goto LABEL_12;
      }
    }

    nbUwbAcquisitionChannelIdx2 = [(NIServerFindingPeerTracking *)v6 nbUwbAcquisitionChannelIdx];
    if (nbUwbAcquisitionChannelIdx2)
    {
      nbUwbAcquisitionChannelIdx = self->_nbUwbAcquisitionChannelIdx;
      nbUwbAcquisitionChannelIdx3 = [(NIServerFindingPeerTracking *)v6 nbUwbAcquisitionChannelIdx];
      v13 = [(NSNumber *)nbUwbAcquisitionChannelIdx isEqualToNumber:nbUwbAcquisitionChannelIdx3];
    }

    else
    {
      v13 = 0;
    }

    v7 |= v13;
LABEL_12:
    if (self->_nbUwbAcquisitionUseLowPriorityDutyCycle)
    {
      v14 = 0;
    }

    else
    {
      nbUwbAcquisitionUseLowPriorityDutyCycle = [(NIServerFindingPeerTracking *)v6 nbUwbAcquisitionUseLowPriorityDutyCycle];
      v14 = nbUwbAcquisitionUseLowPriorityDutyCycle == 0;

      if (!self->_nbUwbAcquisitionUseLowPriorityDutyCycle)
      {
        goto LABEL_19;
      }
    }

    nbUwbAcquisitionUseLowPriorityDutyCycle2 = [(NIServerFindingPeerTracking *)v6 nbUwbAcquisitionUseLowPriorityDutyCycle];
    if (nbUwbAcquisitionUseLowPriorityDutyCycle2)
    {
      nbUwbAcquisitionUseLowPriorityDutyCycle = self->_nbUwbAcquisitionUseLowPriorityDutyCycle;
      nbUwbAcquisitionUseLowPriorityDutyCycle3 = [(NIServerFindingPeerTracking *)v6 nbUwbAcquisitionUseLowPriorityDutyCycle];
      v19 = [(NSNumber *)nbUwbAcquisitionUseLowPriorityDutyCycle isEqualToNumber:nbUwbAcquisitionUseLowPriorityDutyCycle3];
    }

    else
    {
      v19 = 0;
    }

    v14 |= v19;
LABEL_19:
    if (self->_oobRefreshPeriodSeconds)
    {
      v20 = 0;
    }

    else
    {
      oobRefreshPeriodSeconds = [(NIServerFindingPeerTracking *)v6 oobRefreshPeriodSeconds];
      v20 = oobRefreshPeriodSeconds == 0;

      if (!self->_oobRefreshPeriodSeconds)
      {
        goto LABEL_26;
      }
    }

    oobRefreshPeriodSeconds2 = [(NIServerFindingPeerTracking *)v6 oobRefreshPeriodSeconds];
    if (oobRefreshPeriodSeconds2)
    {
      oobRefreshPeriodSeconds = self->_oobRefreshPeriodSeconds;
      oobRefreshPeriodSeconds3 = [(NIServerFindingPeerTracking *)v6 oobRefreshPeriodSeconds];
      v25 = [(NSNumber *)oobRefreshPeriodSeconds isEqualToNumber:oobRefreshPeriodSeconds3];
    }

    else
    {
      v25 = 0;
    }

    v20 |= v25;
LABEL_26:
    if (self->_keepAliveTimeoutSeconds)
    {
      v26 = 0;
    }

    else
    {
      keepAliveTimeoutSeconds = [(NIServerFindingPeerTracking *)v6 keepAliveTimeoutSeconds];
      v26 = keepAliveTimeoutSeconds == 0;

      if (!self->_keepAliveTimeoutSeconds)
      {
LABEL_33:
        discoveryState = self->_discoveryState;
        if (discoveryState == [(NIServerFindingPeerTracking *)v6 discoveryState]&& (advertisingState = self->_advertisingState, advertisingState == [(NIServerFindingPeerTracking *)v6 advertisingState]) && (rangingState = self->_rangingState, rangingState == [(NIServerFindingPeerTracking *)v6 rangingState]) && (algorithmOutputFlags = self->_algorithmOutputFlags, algorithmOutputFlags == [(NIServerFindingPeerTracking *)v6 algorithmOutputFlags]) && (receivedSignalFlags = self->_receivedSignalFlags, receivedSignalFlags == [(NIServerFindingPeerTracking *)v6 receivedSignalFlags]) && (tellClientAboutPeer = self->_tellClientAboutPeer, tellClientAboutPeer == [(NIServerFindingPeerTracking *)v6 tellClientAboutPeer]))
        {
          clientWantsUpdates = self->_clientWantsUpdates;
          v8 = (clientWantsUpdates == [(NIServerFindingPeerTracking *)v6 clientWantsUpdates]) & v7 & v14 & v20 & v26;
        }

        else
        {
          LOBYTE(v8) = 0;
        }

        goto LABEL_41;
      }
    }

    keepAliveTimeoutSeconds2 = [(NIServerFindingPeerTracking *)v6 keepAliveTimeoutSeconds];
    if (keepAliveTimeoutSeconds2)
    {
      keepAliveTimeoutSeconds = self->_keepAliveTimeoutSeconds;
      keepAliveTimeoutSeconds3 = [(NIServerFindingPeerTracking *)v6 keepAliveTimeoutSeconds];
      v31 = [(NSNumber *)keepAliveTimeoutSeconds isEqualToNumber:keepAliveTimeoutSeconds3];
    }

    else
    {
      v31 = 0;
    }

    v26 |= v31;
    goto LABEL_33;
  }

  LOBYTE(v8) = 0;
LABEL_42:

  return v8;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  discoveryState = self->_discoveryState;
  if (discoveryState > 4)
  {
    v5 = "Unkn";
  }

  else
  {
    v5 = off_1009A6498[discoveryState];
  }

  advertisingState = self->_advertisingState;
  if (advertisingState > 2)
  {
    v7 = "Unkn ";
  }

  else
  {
    v7 = off_1009A64C0[advertisingState];
  }

  rangingState = self->_rangingState;
  if (rangingState > 4)
  {
    v9 = "Unkn ";
  }

  else
  {
    v9 = off_1009A64D8[rangingState];
  }

  algorithmOutputFlags = self->_algorithmOutputFlags;
  receivedSignalFlags = self->_receivedSignalFlags;
  tellClientAboutPeer = self->_tellClientAboutPeer;
  clientWantsUpdates = self->_clientWantsUpdates;
  nbUwbAcquisitionChannelIdx = self->_nbUwbAcquisitionChannelIdx;
  if (nbUwbAcquisitionChannelIdx)
  {
    std::to_string(&v26, [(NSNumber *)self->_nbUwbAcquisitionChannelIdx intValue]);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v26;
    }

    else
    {
      v11 = v26.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v11 = "---";
  }

  nbUwbAcquisitionUseLowPriorityDutyCycle = self->_nbUwbAcquisitionUseLowPriorityDutyCycle;
  if (nbUwbAcquisitionUseLowPriorityDutyCycle)
  {
    if ([(NSNumber *)nbUwbAcquisitionUseLowPriorityDutyCycle BOOLValue])
    {
      v13 = "Y";
    }

    else
    {
      v13 = "N";
    }
  }

  else
  {
    v13 = "-";
  }

  oobRefreshPeriodSeconds = self->_oobRefreshPeriodSeconds;
  if (oobRefreshPeriodSeconds)
  {
    v15 = &v25;
    std::to_string(&v25, [(NSNumber *)self->_oobRefreshPeriodSeconds intValue]);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v25.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v15 = "--";
  }

  keepAliveTimeoutSeconds = self->_keepAliveTimeoutSeconds;
  if (keepAliveTimeoutSeconds)
  {
    std::to_string(&v24, [(NSNumber *)keepAliveTimeoutSeconds intValue]);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v24;
    }

    else
    {
      v17 = v24.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v17 = "---";
  }

  v18 = [v3 initWithFormat:@"[ D:%s | A:%s | R:%s | G:%02X | S:%02X | N:%d | U:%d | C:%-3s | L:%s | O:%-2s | K:%-3s ]", v5, v7, v9, algorithmOutputFlags, receivedSignalFlags, tellClientAboutPeer, clientWantsUpdates, v11, v13, v15, v17];
  if (keepAliveTimeoutSeconds && SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (oobRefreshPeriodSeconds && SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (nbUwbAcquisitionChannelIdx && SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v18;
}

@end