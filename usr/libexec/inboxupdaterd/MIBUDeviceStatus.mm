@interface MIBUDeviceStatus
- (BOOL)isEqual:(id)equal;
- (MIBUDeviceStatus)init;
@end

@implementation MIBUDeviceStatus

- (MIBUDeviceStatus)init
{
  v5.receiver = self;
  v5.super_class = MIBUDeviceStatus;
  v2 = [(MIBUDeviceStatus *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUDeviceStatus *)v2 setState:0];
    [(MIBUDeviceStatus *)v3 setOperation:0];
    [(MIBUDeviceStatus *)v3 setOperationDetails:0];
    [(MIBUDeviceStatus *)v3 setOperationError:0];
    [(MIBUDeviceStatus *)v3 setBatteryLevel:0];
    [(MIBUDeviceStatus *)v3 setThermalDetails:0];
    [(MIBUDeviceStatus *)v3 setBatteryDetails:0];
    [(MIBUDeviceStatus *)v3 setUpdateSummary:0];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  state = [equalCopy state];
  if (state != [(MIBUDeviceStatus *)self state])
  {
    goto LABEL_11;
  }

  operation = [equalCopy operation];
  if (operation != [(MIBUDeviceStatus *)self operation])
  {
    goto LABEL_11;
  }

  operationError = [equalCopy operationError];
  domain = [operationError domain];
  operationError2 = [(MIBUDeviceStatus *)self operationError];
  domain2 = [operationError2 domain];
  v11 = [domain isEqualToString:domain2];

  if (!v11)
  {
    goto LABEL_11;
  }

  operationError3 = [equalCopy operationError];
  code = [operationError3 code];
  operationError4 = [(MIBUDeviceStatus *)self operationError];
  code2 = [operationError4 code];

  if (code != code2)
  {
    goto LABEL_11;
  }

  batteryLevel = [equalCopy batteryLevel];
  batteryLevel2 = [(MIBUDeviceStatus *)self batteryLevel];
  v18 = [batteryLevel isEqualToNumber:batteryLevel2];

  if (!v18)
  {
    goto LABEL_11;
  }

  operationDetails = [equalCopy operationDetails];
  operationDetails2 = [(MIBUDeviceStatus *)self operationDetails];
  v21 = [operationDetails isEqualToDictionary:operationDetails2];

  if (!v21)
  {
    goto LABEL_11;
  }

  thermalDetails = [equalCopy thermalDetails];
  thermalDetails2 = [(MIBUDeviceStatus *)self thermalDetails];
  v24 = [thermalDetails isEqualToDictionary:thermalDetails2];

  if (!v24)
  {
    goto LABEL_11;
  }

  batteryDetails = [equalCopy batteryDetails];
  batteryDetails2 = [(MIBUDeviceStatus *)self batteryDetails];
  v27 = [batteryDetails isEqualToDictionary:batteryDetails2];

  if (v27)
  {
    updateSummary = [equalCopy updateSummary];
    updateSummary2 = [(MIBUDeviceStatus *)self updateSummary];
    v30 = [updateSummary isEqualToDictionary:updateSummary2];
  }

  else
  {
LABEL_11:
    v30 = 0;
  }

  return v30;
}

@end