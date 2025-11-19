@interface APPolicyInstrumentationClient
- (BOOL)adFiltered:(id)a3 policyIdentifier:(int64_t)a4 policyReason:(int64_t)a5 secondaryReason:(id)a6;
- (BOOL)adImpressed:(id)a3 impressionType:(int64_t)a4;
- (BOOL)adPlaced:(id)a3;
- (BOOL)adReceived:(id)a3 contextId:(id)a4 adUnitId:(id)a5 rank:(int64_t)a6 placement:(int64_t)a7;
- (void)_recordMetric:(int64_t)a3 adIdentifier:(id)a4 contextIdentifier:(id)a5 withProperties:(id)a6;
@end

@implementation APPolicyInstrumentationClient

- (BOOL)adReceived:(id)a3 contextId:(id)a4 adUnitId:(id)a5 rank:(int64_t)a6 placement:(int64_t)a7
{
  if (a3)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v22[0] = a5;
    v21[0] = @"unit_id";
    v21[1] = @"rank";
    v14 = a5;
    v15 = a4;
    v16 = a3;
    v17 = [NSNumber numberWithInteger:a6];
    v22[1] = v17;
    v21[2] = @"placement";
    v18 = [NSNumber numberWithInteger:a7];
    v22[2] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

    [(APPolicyInstrumentationClient *)self _recordMetric:15101 adIdentifier:v16 contextIdentifier:v15 withProperties:v19];
  }

  return v8;
}

- (BOOL)adFiltered:(id)a3 policyIdentifier:(int64_t)a4 policyReason:(int64_t)a5 secondaryReason:(id)a6
{
  if (a3)
  {
    v6 = a4 == -1;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (!v6)
  {
    v18[0] = @"policy_id";
    v12 = a6;
    v13 = a3;
    v14 = [NSNumber numberWithInteger:a4];
    v19[0] = v14;
    v18[1] = @"policy_reason";
    v15 = [NSNumber numberWithInteger:a5];
    v18[2] = @"policy_detail";
    v19[1] = v15;
    v19[2] = v12;
    v16 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

    [(APPolicyInstrumentationClient *)self _recordMetric:15102 adIdentifier:v13 contextIdentifier:0 withProperties:v16];
  }

  return v7;
}

- (BOOL)adPlaced:(id)a3
{
  if (a3)
  {
    [(APPolicyInstrumentationClient *)self _recordMetric:15103 adIdentifier:a3 contextIdentifier:0 withProperties:0];
  }

  return a3 != 0;
}

- (BOOL)adImpressed:(id)a3 impressionType:(int64_t)a4
{
  if (a3)
  {
    v11 = @"impression_type";
    v7 = a3;
    v8 = [NSNumber numberWithInteger:a4];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    [(APPolicyInstrumentationClient *)self _recordMetric:15104 adIdentifier:v7 contextIdentifier:0 withProperties:v9];
  }

  return a3 != 0;
}

- (void)_recordMetric:(int64_t)a3 adIdentifier:(id)a4 contextIdentifier:(id)a5 withProperties:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[MetricsModule storage];
  v13 = +[MetricsModuleClasses metricClass];
  v14 = v10;
  v20 = v9;
  v15 = +[NSUUID UUID];
  v16 = [v15 UUIDString];
  v17 = [v16 substringFromIndex:12];
  v18 = [NSString stringWithFormat:@"%@_%@", v20, v17];

  v19 = [[v13 alloc] initWithPurpose:-1 metric:a3 contentIdentifier:v20 contextIdentifier:v14 handle:v18 secondaryHandle:0 branch:0 properties:0 internalProperties:v11 relayData:0 environment:0 order:0 options:0];
  [v12 receivedMetric:v19];
}

@end