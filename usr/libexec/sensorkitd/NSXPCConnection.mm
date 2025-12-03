@interface NSXPCConnection
- (BOOL)_sr_hasEntitlement:(id)entitlement sensor:(id)sensor valueProvider:(id)provider;
- (BOOL)sr_hasHoldingPeriodBypassEntitlement:(id)entitlement;
@end

@implementation NSXPCConnection

- (BOOL)_sr_hasEntitlement:(id)entitlement sensor:(id)sensor valueProvider:(id)provider
{
  if (entitlement)
  {
    v9 = objc_autoreleasePoolPush();
    if ([entitlement isEqualToString:@"com.apple.sensorkit.reader.allow"] && objc_msgSend(provider, "valueForEntitlement:connection:", @"com.apple.private.sensorkit.reader.wildcard.allow", self) || objc_msgSend(entitlement, "isEqualToString:", @"com.apple.sensorkit.pruner.allow") && objc_msgSend(provider, "valueForEntitlement:connection:", @"com.apple.private.sensorkit.pruner.power", self))
    {
      goto LABEL_6;
    }

    v11 = @"com.apple.private.sensorkit.debugging.allow";
    if ([entitlement isEqualToString:@"com.apple.private.sensorkit.debugging.allow"] || (v11 = @"com.apple.private.sensorkit.export.allow-all", objc_msgSend(entitlement, "isEqualToString:", @"com.apple.private.sensorkit.export.allow-all")) || (v11 = @"com.apple.private.sensorkit.auth.request.arbitrary_bundle", objc_msgSend(entitlement, "isEqualToString:", @"com.apple.private.sensorkit.auth.request.arbitrary_bundle")))
    {
      v12 = [provider valueForEntitlement:v11 connection:self];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v12 BOOLValue];
LABEL_13:
        v10 = bOOLValue;
        goto LABEL_23;
      }

LABEL_22:
      v10 = 0;
      goto LABEL_23;
    }

    if (!sensor)
    {
LABEL_6:
      v10 = 1;
LABEL_23:
      objc_autoreleasePoolPop(v9);
      return v10;
    }

    v14 = [provider valueForEntitlement:entitlement connection:self];
    v15 = [SRSensorDescription sensorDescriptionForSensor:sensor];
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
      sensorCopy = sensor;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to find sensor description for %{public}@", &v20, 0xCu);
    }

LABEL_18:
    publicEntitlementValue = [v15 publicEntitlementValue];
    legacyName = [v15 legacyName];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    if (([v14 containsObject:sensor] & 1) == 0 && (objc_msgSend(v14, "containsObject:", legacyName) & 1) == 0)
    {
      bOOLValue = [v14 containsObject:publicEntitlementValue];
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  return 0;
}

- (BOOL)sr_hasHoldingPeriodBypassEntitlement:(id)entitlement
{
  v5 = objc_autoreleasePoolPush();
  v6 = [entitlement valueForEntitlement:@"com.apple.private.sensorkit.reader.holdingperiod.bypass" connection:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  objc_autoreleasePoolPop(v5);
  return bOOLValue;
}

@end