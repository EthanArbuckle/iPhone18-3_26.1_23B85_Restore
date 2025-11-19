@interface _DASNetworkQualityPolicyResponseRationale
- (_DASNetworkQualityPolicyResponseRationale)initWithPolicyName:(id)a3;
- (id)description;
- (id)detailsAsDictionary;
@end

@implementation _DASNetworkQualityPolicyResponseRationale

- (_DASNetworkQualityPolicyResponseRationale)initWithPolicyName:(id)a3
{
  v4.receiver = self;
  v4.super_class = _DASNetworkQualityPolicyResponseRationale;
  return [(_DASPolicyResponseRationale *)&v4 initWithPolicyName:a3];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _DASNetworkQualityPolicyResponseRationale;
  v3 = [(_DASPolicyResponseRationale *)&v7 description];
  v4 = [v3 mutableCopy];

  cellLQMRequired = self->_cellLQMRequired;
  [v4 appendFormat:@" Size %lu upload:%d, [wifiLQM] Required=%ld, Observed=%ld, [cellLQM] Required=%ld Observed=%ld\n", self->_activityTransferSize, self->_isUpload, self->_wifiLQMRequired, self->_wifiLQMObserved, cellLQMRequired, self->_cellLQMObserved];

  return v4;
}

- (id)detailsAsDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSString stringWithFormat:@"%ld", self->_wifiLQMObserved];
  [v3 setObject:v4 forKeyedSubscript:@"WiFiLQMObserved"];

  v5 = [NSString stringWithFormat:@"%ld", self->_wifiLQMRequired];
  [v3 setObject:v5 forKeyedSubscript:@"WiFiLQMRequired"];

  v6 = [NSString stringWithFormat:@"%ld", self->_cellLQMObserved];
  [v3 setObject:v6 forKeyedSubscript:@"CellLQMObserved"];

  v7 = [NSString stringWithFormat:@"%ld", self->_cellLQMRequired];
  [v3 setObject:v7 forKeyedSubscript:@"CellLQMRequired"];

  v8 = [NSString stringWithFormat:@"%ld", self->_activityTransferSize];
  [v3 setObject:v8 forKeyedSubscript:@"TransferSize"];

  v14.receiver = self;
  v14.super_class = _DASNetworkQualityPolicyResponseRationale;
  v9 = [NSString stringWithFormat:@"0x%ld", [(_DASPolicyResponseRationale *)&v14 responseOptions]];
  [v3 setObject:v9 forKeyedSubscript:@"ResponseOptions"];

  interfaceType = self->_interfaceType;
  if (interfaceType)
  {
    v11 = [(NSString *)interfaceType uppercaseString];
    [v3 setObject:v11 forKeyedSubscript:@"InterfaceType"];
  }

  else
  {
    [v3 setObject:@"UNKNOWN" forKeyedSubscript:@"InterfaceType"];
  }

  v12 = [v3 copy];

  return v12;
}

@end