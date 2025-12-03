@interface CLDuetHomeKitAccessory
- (CLDuetHomeKitAccessory)initWithHomeUUID:(id)d accessoryUUID:(id)iD accessoryName:(id)name serviceName:(id)serviceName serviceType:(id)type characteristicType:(id)characteristicType clientName:(id)clientName source:(id)self0 serviceUUID:(id)self1 triggerLocalizationScan:(id)self2 triggerRecordingScan:(id)self3;
- (void)dealloc;
@end

@implementation CLDuetHomeKitAccessory

- (CLDuetHomeKitAccessory)initWithHomeUUID:(id)d accessoryUUID:(id)iD accessoryName:(id)name serviceName:(id)serviceName serviceType:(id)type characteristicType:(id)characteristicType clientName:(id)clientName source:(id)self0 serviceUUID:(id)self1 triggerLocalizationScan:(id)self2 triggerRecordingScan:(id)self3
{
  v22.receiver = self;
  v22.super_class = CLDuetHomeKitAccessory;
  v19 = [(CLDuetHomeKitAccessory *)&v22 init];
  v20 = v19;
  if (v19)
  {
    [(CLDuetHomeKitAccessory *)v19 setHomeUUID:d];
    [(CLDuetHomeKitAccessory *)v20 setAccessoryUUID:iD];
    [(CLDuetHomeKitAccessory *)v20 setAccessoryName:name];
    [(CLDuetHomeKitAccessory *)v20 setServiceName:serviceName];
    [(CLDuetHomeKitAccessory *)v20 setServiceType:type];
    [(CLDuetHomeKitAccessory *)v20 setCharacteristicType:characteristicType];
    [(CLDuetHomeKitAccessory *)v20 setClientName:clientName];
    [(CLDuetHomeKitAccessory *)v20 setSource:source];
    [(CLDuetHomeKitAccessory *)v20 setServiceUUID:uID];
    [(CLDuetHomeKitAccessory *)v20 setTriggerLocalizationScan:scan];
    [(CLDuetHomeKitAccessory *)v20 setTriggerRecordingScan:recordingScan];
  }

  return v20;
}

- (void)dealloc
{
  [(CLDuetHomeKitAccessory *)self setHomeUUID:0];
  [(CLDuetHomeKitAccessory *)self setAccessoryUUID:0];
  [(CLDuetHomeKitAccessory *)self setAccessoryName:0];
  [(CLDuetHomeKitAccessory *)self setServiceName:0];
  [(CLDuetHomeKitAccessory *)self setServiceType:0];
  [(CLDuetHomeKitAccessory *)self setCharacteristicType:0];
  [(CLDuetHomeKitAccessory *)self setClientName:0];
  [(CLDuetHomeKitAccessory *)self setSource:0];
  [(CLDuetHomeKitAccessory *)self setServiceUUID:0];
  [(CLDuetHomeKitAccessory *)self setTriggerLocalizationScan:0];
  [(CLDuetHomeKitAccessory *)self setTriggerRecordingScan:0];
  v3.receiver = self;
  v3.super_class = CLDuetHomeKitAccessory;
  [(CLDuetHomeKitAccessory *)&v3 dealloc];
}

@end