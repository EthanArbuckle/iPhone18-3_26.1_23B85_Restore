@interface APPolicyInstrumentationClient
- (BOOL)adFiltered:(id)filtered policyIdentifier:(int64_t)identifier policyReason:(int64_t)reason secondaryReason:(id)secondaryReason;
- (BOOL)adImpressed:(id)impressed impressionType:(int64_t)type;
- (BOOL)adPlaced:(id)placed;
- (BOOL)adReceived:(id)received contextId:(id)id adUnitId:(id)unitId rank:(int64_t)rank placement:(int64_t)placement;
- (void)_recordMetric:(int64_t)metric adIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier withProperties:(id)properties;
@end

@implementation APPolicyInstrumentationClient

- (BOOL)adReceived:(id)received contextId:(id)id adUnitId:(id)unitId rank:(int64_t)rank placement:(int64_t)placement
{
  if (received)
  {
    v7 = id == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v22[0] = unitId;
    v21[0] = @"unit_id";
    v21[1] = @"rank";
    unitIdCopy = unitId;
    idCopy = id;
    receivedCopy = received;
    v17 = [NSNumber numberWithInteger:rank];
    v22[1] = v17;
    v21[2] = @"placement";
    v18 = [NSNumber numberWithInteger:placement];
    v22[2] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

    [(APPolicyInstrumentationClient *)self _recordMetric:15101 adIdentifier:receivedCopy contextIdentifier:idCopy withProperties:v19];
  }

  return v8;
}

- (BOOL)adFiltered:(id)filtered policyIdentifier:(int64_t)identifier policyReason:(int64_t)reason secondaryReason:(id)secondaryReason
{
  if (filtered)
  {
    v6 = identifier == -1;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    v18[0] = @"policy_id";
    secondaryReasonCopy = secondaryReason;
    filteredCopy = filtered;
    v14 = [NSNumber numberWithInteger:identifier];
    v19[0] = v14;
    v18[1] = @"policy_reason";
    v15 = [NSNumber numberWithInteger:reason];
    v18[2] = @"policy_detail";
    v19[1] = v15;
    v19[2] = secondaryReasonCopy;
    v16 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

    [(APPolicyInstrumentationClient *)self _recordMetric:15102 adIdentifier:filteredCopy contextIdentifier:0 withProperties:v16];
  }

  return v7;
}

- (BOOL)adPlaced:(id)placed
{
  if (placed)
  {
    [(APPolicyInstrumentationClient *)self _recordMetric:15103 adIdentifier:placed contextIdentifier:0 withProperties:0];
  }

  return placed != 0;
}

- (BOOL)adImpressed:(id)impressed impressionType:(int64_t)type
{
  if (impressed)
  {
    v11 = @"impression_type";
    impressedCopy = impressed;
    v8 = [NSNumber numberWithInteger:type];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    [(APPolicyInstrumentationClient *)self _recordMetric:15104 adIdentifier:impressedCopy contextIdentifier:0 withProperties:v9];
  }

  return impressed != 0;
}

- (void)_recordMetric:(int64_t)metric adIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier withProperties:(id)properties
{
  identifierCopy = identifier;
  contextIdentifierCopy = contextIdentifier;
  propertiesCopy = properties;
  v12 = +[MetricsModule storage];
  v13 = +[MetricsModuleClasses metricClass];
  v14 = contextIdentifierCopy;
  v20 = identifierCopy;
  v15 = +[NSUUID UUID];
  uUIDString = [v15 UUIDString];
  v17 = [uUIDString substringFromIndex:12];
  v18 = [NSString stringWithFormat:@"%@_%@", v20, v17];

  v19 = [[v13 alloc] initWithPurpose:-1 metric:metric contentIdentifier:v20 contextIdentifier:v14 handle:v18 secondaryHandle:0 branch:0 properties:0 internalProperties:propertiesCopy relayData:0 environment:0 order:0 options:0];
  [v12 receivedMetric:v19];
}

@end