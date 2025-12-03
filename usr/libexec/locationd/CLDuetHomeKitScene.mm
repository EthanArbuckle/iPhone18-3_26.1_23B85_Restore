@interface CLDuetHomeKitScene
- (CLDuetHomeKitScene)initWithHomeUUID:(id)d actionSetUUID:(id)iD actionSetName:(id)name actionSetType:(id)type clientName:(id)clientName source:(id)source triggerLocalizationScan:(id)scan triggerRecordingScan:(id)self0;
- (void)dealloc;
@end

@implementation CLDuetHomeKitScene

- (CLDuetHomeKitScene)initWithHomeUUID:(id)d actionSetUUID:(id)iD actionSetName:(id)name actionSetType:(id)type clientName:(id)clientName source:(id)source triggerLocalizationScan:(id)scan triggerRecordingScan:(id)self0
{
  v19.receiver = self;
  v19.super_class = CLDuetHomeKitScene;
  v16 = [(CLDuetHomeKitScene *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(CLDuetHomeKitScene *)v16 setHomeUUID:d];
    [(CLDuetHomeKitScene *)v17 setActionSetUUID:iD];
    [(CLDuetHomeKitScene *)v17 setActionSetName:name];
    [(CLDuetHomeKitScene *)v17 setActionSetType:type];
    [(CLDuetHomeKitScene *)v17 setClientName:clientName];
    [(CLDuetHomeKitScene *)v17 setSource:source];
    [(CLDuetHomeKitScene *)v17 setTriggerLocalizationScan:scan];
    [(CLDuetHomeKitScene *)v17 setTriggerRecordingScan:recordingScan];
  }

  return v17;
}

- (void)dealloc
{
  [(CLDuetHomeKitScene *)self setHomeUUID:0];
  [(CLDuetHomeKitScene *)self setActionSetUUID:0];
  [(CLDuetHomeKitScene *)self setActionSetName:0];
  [(CLDuetHomeKitScene *)self setActionSetType:0];
  [(CLDuetHomeKitScene *)self setClientName:0];
  [(CLDuetHomeKitScene *)self setSource:0];
  [(CLDuetHomeKitScene *)self setTriggerLocalizationScan:0];
  [(CLDuetHomeKitScene *)self setTriggerRecordingScan:0];
  v3.receiver = self;
  v3.super_class = CLDuetHomeKitScene;
  [(CLDuetHomeKitScene *)&v3 dealloc];
}

@end