@interface ATTUpdate
+ (id)updateWithValue:(id)a3 characteristic:(id)a4 centrals:(id)a5;
- (ATTUpdate)initWithValue:(id)a3 characteristic:(id)a4 centrals:(id)a5;
@end

@implementation ATTUpdate

- (ATTUpdate)initWithValue:(id)a3 characteristic:(id)a4 centrals:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATTUpdate;
  v12 = [(ATTUpdate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, a3);
    objc_storeStrong(&v13->_characteristic, a4);
    objc_storeStrong(&v13->_centrals, a5);
  }

  return v13;
}

+ (id)updateWithValue:(id)a3 characteristic:(id)a4 centrals:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[ATTUpdate alloc] initWithValue:v9 characteristic:v8 centrals:v7];

  return v10;
}

@end