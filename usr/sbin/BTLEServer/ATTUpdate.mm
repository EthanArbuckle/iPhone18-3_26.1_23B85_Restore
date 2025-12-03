@interface ATTUpdate
+ (id)updateWithValue:(id)value characteristic:(id)characteristic centrals:(id)centrals;
- (ATTUpdate)initWithValue:(id)value characteristic:(id)characteristic centrals:(id)centrals;
@end

@implementation ATTUpdate

- (ATTUpdate)initWithValue:(id)value characteristic:(id)characteristic centrals:(id)centrals
{
  valueCopy = value;
  characteristicCopy = characteristic;
  centralsCopy = centrals;
  v15.receiver = self;
  v15.super_class = ATTUpdate;
  v12 = [(ATTUpdate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, value);
    objc_storeStrong(&v13->_characteristic, characteristic);
    objc_storeStrong(&v13->_centrals, centrals);
  }

  return v13;
}

+ (id)updateWithValue:(id)value characteristic:(id)characteristic centrals:(id)centrals
{
  centralsCopy = centrals;
  characteristicCopy = characteristic;
  valueCopy = value;
  v10 = [[ATTUpdate alloc] initWithValue:valueCopy characteristic:characteristicCopy centrals:centralsCopy];

  return v10;
}

@end