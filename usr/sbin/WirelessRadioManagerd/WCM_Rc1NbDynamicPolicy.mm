@interface WCM_Rc1NbDynamicPolicy
- (BOOL)isEqual:(id)equal;
@end

@implementation WCM_Rc1NbDynamicPolicy

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy;
    uplinkLowFreq_Hz = self->_uplinkLowFreq_Hz;
    if (uplinkLowFreq_Hz != [v6 uplinkLowFreq_Hz])
    {
      goto LABEL_13;
    }

    uplinkHighFreq_Hz = self->_uplinkHighFreq_Hz;
    if (uplinkHighFreq_Hz != [v6 uplinkHighFreq_Hz])
    {
      goto LABEL_13;
    }

    downlinkLowFreq_Hz = self->_downlinkLowFreq_Hz;
    if (downlinkLowFreq_Hz != [v6 downlinkLowFreq_Hz])
    {
      goto LABEL_13;
    }

    downlinkHighFreq_Hz = self->_downlinkHighFreq_Hz;
    if (downlinkHighFreq_Hz == [v6 downlinkHighFreq_Hz] && (nbChannelToAvoidStart = self->_nbChannelToAvoidStart, nbChannelToAvoidStart == objc_msgSend(v6, "nbChannelToAvoidStart")) && (nbChannelToAvoidEnd = self->_nbChannelToAvoidEnd, nbChannelToAvoidEnd == objc_msgSend(v6, "nbChannelToAvoidEnd")) && (Rc1IssueChannel = self->_Rc1IssueChannel, Rc1IssueChannel == objc_msgSend(v6, "Rc1IssueChannel")) && (Rc1AntBitmap = self->_Rc1AntBitmap, Rc1AntBitmap == objc_msgSend(v6, "Rc1AntBitmap")) && (mitigationType = self->_mitigationType, mitigationType == objc_msgSend(v6, "mitigationType")) && (cellAgressorAntBitmap = self->_cellAgressorAntBitmap, cellAgressorAntBitmap == objc_msgSend(v6, "cellAgressorAntBitmap")))
    {
      cellTxPowerCap_16th_dBm = self->_cellTxPowerCap_16th_dBm;
      v18 = cellTxPowerCap_16th_dBm == [v6 cellTxPowerCap_16th_dBm];
    }

    else
    {
LABEL_13:
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end