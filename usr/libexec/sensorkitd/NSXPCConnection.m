@interface NSXPCConnection
- (BOOL)_sr_hasEntitlement:(id)a3 sensor:(id)a4 valueProvider:(id)a5;
- (BOOL)sr_hasHoldingPeriodBypassEntitlement:(id)a3;
@end

@implementation NSXPCConnection

- (BOOL)_sr_hasEntitlement:(id)a3 sensor:(id)a4 valueProvider:(id)a5
{
  if (a3)
  {
    v9 = objc_autoreleasePoolPush();
    if ([a3 isEqualToString:@"com.apple.sensorkit.reader.allow"] && objc_msgSend(a5, "valueForEntitlement:connection:", @"com.apple.private.sensorkit.reader.wildcard.allow", self) || objc_msgSend(a3, "isEqualToString:", @"com.apple.sensorkit.pruner.allow") && objc_msgSend(a5, "valueForEntitlement:connection:", @"com.apple.private.sensorkit.pruner.power", self))
    {
      goto LABEL_6;
    }

    v11 = @"com.apple.private.sensorkit.debugging.allow";
    if ([a3 isEqualToString:@"com.apple.private.sensorkit.debugging.allow"] || (v11 = @"com.apple.private.sensorkit.export.allow-all", objc_msgSend(a3, "isEqualToString:", @"com.apple.private.sensorkit.export.allow-all")) || (v11 = @"com.apple.private.sensorkit.auth.request.arbitrary_bundle", objc_msgSend(a3, "isEqualToString:", @"com.apple.private.sensorkit.auth.request.arbitrary_bundle")))
    {
      v12 = [a5 valueForEntitlement:v11 connection:self];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 BOOLValue];
LABEL_13:
        v10 = v13;
        goto LABEL_23;
      }

LABEL_22:
      v10 = 0;
      goto LABEL_23;
    }

    if (!a4)
    {
LABEL_6:
      v10 = 1;
LABEL_23:
      objc_autoreleasePoolPop(v9);
      return v10;
    }

    v14 = [a5 valueForEntitlement:a3 connection:self];
    v15 = [SRSensorDescription sensorDescriptionForSensor:a4];
    if (!v15)
    {
      if (qword_100071AF8 == -1)
      {
        v16 = qword_100071B00;
        if (!os_log_type_enabled(qword_100071B00, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }
      }

      else
      {
        dispatch_once(&qword_100071AF8, &stru_1000613E8);
        v16 = qword_100071B00;
        if (!os_log_type_enabled(qword_100071B00, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }
      }

      v20 = 138543362;
      v21 = a4;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to find sensor description for %{public}@", &v20, 0xCu);
    }

LABEL_18:
    v17 = [v15 publicEntitlementValue];
    v18 = [v15 legacyName];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    if (([v14 containsObject:a4] & 1) == 0 && (objc_msgSend(v14, "containsObject:", v18) & 1) == 0)
    {
      v13 = [v14 containsObject:v17];
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  return 0;
}

- (BOOL)sr_hasHoldingPeriodBypassEntitlement:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [a3 valueForEntitlement:@"com.apple.private.sensorkit.reader.holdingperiod.bypass" connection:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

@end