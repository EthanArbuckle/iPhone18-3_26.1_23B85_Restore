@interface SRSensorDescription
+ (id)allDescriptions;
+ (id)sensorDescriptionForDeletionRecordFromDescription:(id)description;
+ (id)sensorDescriptionForSensor:(id)sensor;
+ (id)sensorDescriptionsForAuthorizationService:(id)service;
+ (void)initialize;
- (BOOL)supportsPlatform:(id)platform;
- (NSSet)eligibleDaemons;
- (NSString)localizedAdditionalSampleDataNote;
- (NSString)sampleClass;
- (SRSensorDescription)initWithDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation SRSensorDescription

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071B18 = os_log_create("com.apple.SensorKit", "SRLogDataStream");
  }
}

+ (id)sensorDescriptionForSensor:(id)sensor
{
  v4 = sub_100019058();

  return sub_100018F58(v4, sensor);
}

- (SRSensorDescription)initWithDictionary:(id)dictionary
{
  v17.receiver = self;
  v17.super_class = SRSensorDescription;
  v4 = [(SRSensorDescription *)&v17 init];
  if (v4)
  {
    v5 = [dictionary objectForKeyedSubscript:@"Name"];
    v4->_name = v5;
    if (!v5)
    {
      v6 = qword_100071B18;
      if (os_log_type_enabled(qword_100071B18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        dictionaryCopy3 = dictionary;
        _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Data stream defined without a name: %{public}@", buf, 0xCu);
      }
    }

    v7 = [dictionary objectForKeyedSubscript:@"AuthService"];
    v4->_authorizationService = v7;
    if (!v7)
    {
      v8 = qword_100071B18;
      if (os_log_type_enabled(qword_100071B18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        dictionaryCopy3 = dictionary;
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Data stream defined without an authorization service: %{public}@", buf, 0xCu);
      }
    }

    v9 = [dictionary objectForKeyedSubscript:@"RelatedSettingsCategories"];
    v10 = &__NSArray0__struct;
    if (v9)
    {
      v10 = v9;
    }

    v4->_relatedSettingsCategories = v10;
    v4->_publicEntitlementValue = [dictionary objectForKeyedSubscript:@"PublicEntitlementValue"];
    v4->_sampleClass = [dictionary objectForKeyedSubscript:@"SampleClass"];
    v4->_exportingSampleClass = [dictionary objectForKeyedSubscript:@"ExportingSampleClass"];
    v4->_legacySampleClass = [dictionary objectForKeyedSubscript:@"LegacySampleClass"];
    v4->_legacySampleClassLinkedBefore = [objc_msgSend(dictionary objectForKeyedSubscript:{@"LegacySampleClassLinkedBefore", "unsignedIntValue"}];
    v11 = [dictionary objectForKeyedSubscript:@"SRInfoPlistAuthCategory"];
    v4->_infoPlistAuthorizationCategory = v11;
    if (!v11)
    {
      v12 = qword_100071B18;
      if (os_log_type_enabled(qword_100071B18, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        dictionaryCopy3 = dictionary;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Data stream defined without an Info.plist authorization category: %{public}@", buf, 0xCu);
      }
    }

    v4->_authorizationVersion = [objc_msgSend(dictionary objectForKeyedSubscript:{@"AuthorizationVersion", "integerValue"}];
    v4->_onDemandWriterService = [dictionary objectForKeyedSubscript:@"OnDemandWriterService"];
    v4->_supportedPlatforms = [dictionary objectForKeyedSubscript:@"SupportedPlatforms"];
    v4->_writerAuthorizationService = [dictionary objectForKeyedSubscript:@"WriterAuthorizationService"];
    v4->_authorizationStoreCohort = [dictionary objectForKeyedSubscript:@"AuthorizationStoreCohort"];
    v4->_legacyName = [dictionary objectForKeyedSubscript:@"LegacyName"];
    v4->_filters = [dictionary objectForKeyedSubscript:@"Filters"];
    [objc_msgSend(dictionary objectForKeyedSubscript:{@"RoundingIntervalSecs", "doubleValue"}];
    v4->_roundingInterval = v13;
    v14 = [dictionary objectForKeyedSubscript:@"EligibleDaemons"];
    if (v14)
    {
      v4->_eligibleDaemons = [[NSSet alloc] initWithArray:v14];
    }

    v15 = [dictionary objectForKeyedSubscript:@"Additions"];
    if (v15)
    {
      v4->_additions = [[NSSet alloc] initWithArray:v15];
    }

    v4->_additionalSampleDataNoteKey = [dictionary objectForKeyedSubscript:@"AdditionalDataNote"];
    v4->_datastoreBackend = [objc_msgSend(dictionary objectForKeyedSubscript:{@"StorageBackend", "integerValue"}];
  }

  return v4;
}

+ (id)sensorDescriptionForDeletionRecordFromDescription:(id)description
{
  v4 = [NSMutableDictionary alloc];
  v8[0] = @"Name";
  v9[0] = [objc_msgSend(description "name")];
  v8[1] = @"AuthService";
  v9[1] = [description authorizationService];
  v9[2] = @"SRDeletionRecord";
  v8[2] = @"SampleClass";
  v8[3] = @"StorageBackend";
  v9[3] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [description datastoreBackend]);
  v8[4] = @"SRInfoPlistAuthCategory";
  v9[4] = [description infoPlistAuthorizationCategory];
  v5 = [v4 initWithDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v9, v8, 5)}];
  if ([description legacyName])
  {
    [v5 setObject:objc_msgSend(objc_msgSend(description forKeyedSubscript:{"legacyName"), "sr_sensorForDeletionRecordsFromSensor"), @"LegacyName"}];
  }

  v6 = [[SRSensorDescription alloc] initWithDictionary:v5];

  return v6;
}

- (NSString)localizedAdditionalSampleDataNote
{
  result = self->_localizedAdditionalSampleDataNote;
  if (!result)
  {
    v4 = [NSBundle bundleForClass:NSClassFromString(@"SRSensorReader")];
    if (v4)
    {
      result = [(NSBundle *)v4 localizedStringForKey:self->_additionalSampleDataNoteKey value:&stru_100062328 table:0];
      self->_localizedAdditionalSampleDataNote = result;
    }

    else
    {
      return self->_localizedAdditionalSampleDataNote;
    }
  }

  return result;
}

- (NSString)sampleClass
{
  if (!self->_legacySampleClassLinkedBefore)
  {
    return self->_sampleClass;
  }

  if (self->_legacySampleClass)
  {
    v3 = dyld_program_sdk_at_least();
    v4 = 160;
    if (v3)
    {
      v4 = 64;
    }

    return *(&self->super.isa + v4);
  }

  else
  {
    v6 = qword_100071B18;
    if (os_log_type_enabled(qword_100071B18, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Found a linked before version but no legacy sample class", v7, 2u);
    }

    return 0;
  }
}

- (BOOL)supportsPlatform:(id)platform
{
  if (!platform)
  {
    return 0;
  }

  supportedPlatforms = self->_supportedPlatforms;
  if (!supportedPlatforms)
  {
    return 1;
  }

  v4 = [-[NSDictionary objectForKeyedSubscript:](supportedPlatforms "objectForKeyedSubscript:{"objectForKeyedSubscript:", @"Enabled"}")];

  return [v4 BOOLValue];
}

- (NSSet)eligibleDaemons
{
  result = self->_eligibleDaemons;
  if (!result)
  {
    return +[NSSet set];
  }

  return result;
}

- (void)dealloc
{
  self->_publicEntitlementValue = 0;

  self->_sampleClass = 0;
  self->_exportingSampleClass = 0;

  self->_localizedAdditionalSampleDataNote = 0;
  self->_onDemandWriterService = 0;

  self->_additionalSampleDataNoteKey = 0;
  v3.receiver = self;
  v3.super_class = SRSensorDescription;
  [(SRSensorDescription *)&v3 dealloc];
}

+ (id)sensorDescriptionsForAuthorizationService:(id)service
{
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = sub_100019058();
  v6 = sub_1000193F0(v5);
  v7 = [(SRSensorDescriptionEnumerator *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v11 authorizationService])
        {
          [v4 addObject:v11];
        }
      }

      v8 = [(SRSensorDescriptionEnumerator *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return [NSArray arrayWithArray:v4, v13];
}

+ (id)allDescriptions
{
  v2 = sub_100019058();

  return sub_1000193F0(v2);
}

@end