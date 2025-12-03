@interface BatteryLevelStatus
- (BatteryLevelStatus)initWithData:(id)data;
- (id)description;
@end

@implementation BatteryLevelStatus

- (BatteryLevelStatus)initWithData:(id)data
{
  dataCopy = data;
  if (!self)
  {
    v17.receiver = 0;
    v17.super_class = BatteryLevelStatus;
    self = [(BatteryLevelStatus *)&v17 init];
  }

  bytes = [dataCopy bytes];
  if (!bytes)
  {
    sub_1000711C4(dataCopy, &v18);
LABEL_18:
    selfCopy = v18;
    goto LABEL_15;
  }

  v6 = bytes;
  v7 = [dataCopy length];
  if (v7 <= 2)
  {
    sub_100071100(dataCopy, v6, &v18);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = (v6 + 3);
  self->_statusFlags = *v6;
  v10 = [[BatteryLevelStatusPowerState alloc] initWithPtr:v6 + 1];
  powerState = self->_powerState;
  self->_powerState = v10;

  statusFlags = self->_statusFlags;
  if (statusFlags)
  {
    if (v8 <= 4)
    {
      goto LABEL_14;
    }

    self->_identifier = *(v6 + 3);
    v9 = (v6 + 5);
  }

  v13 = v6 + v8;
  if ((statusFlags & 2) == 0)
  {
LABEL_11:
    if ((statusFlags & 4) != 0 && (v13 - v9) > 0)
    {
      self->_additionalFlags = self->_additionalFlags & 0xFC | (2 * ((*v9 & 3) != 0)) | ((*v9 & 4) != 0);
    }

    goto LABEL_14;
  }

  if ((v13 - v9) > 0)
  {
    v14 = *v9++;
    self->_batteryLevel = v14;
    goto LABEL_11;
  }

LABEL_14:
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (id)description
{
  powerState = self->_powerState;
  NSAppendPrintF_safe();
  v15 = 0;
  statusFlags = self->_statusFlags;
  v4 = CUPrintFlags32();
  NSAppendPrintF_safe();
  v5 = v15;

  identifier = self->_identifier;
  NSAppendPrintF_safe();
  v6 = v5;

  batteryLevel = self->_batteryLevel;
  NSAppendPrintF_safe();
  v7 = v6;

  additionalFlags = self->_additionalFlags;
  v14 = CUPrintFlags32();
  NSAppendPrintF_safe();
  v9 = v7;

  return v7;
}

@end