@interface UARPMappedAnalyticsDatabaseEntry
- (BOOL)appendTmapEvents:(id)events endian:(id)endian;
- (BOOL)isEqualAppleModel:(id)model;
- (UARPMappedAnalyticsDatabaseEntry)init;
- (UARPMappedAnalyticsDatabaseEntry)initWithCoder:(id)coder;
- (UARPMappedAnalyticsDatabaseEntry)initWithEvents:(id)events appleModelNumber:(id)number endian:(id)endian;
- (UARPMappedAnalyticsDatabaseEntry)initWithEvents:(id)events appleModelNumbers:(id)numbers endian:(id)endian;
- (UARPMappedAnalyticsDatabaseEntry)initWithEvents:(id)events endian:(id)endian;
- (id)expandMticData:(id)data withEventID:(unsigned int)d;
- (id)findTmapEvent:(unint64_t)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPMappedAnalyticsDatabaseEntry

- (UARPMappedAnalyticsDatabaseEntry)init
{
  [(UARPMappedAnalyticsDatabaseEntry *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPMappedAnalyticsDatabaseEntry)initWithEvents:(id)events endian:(id)endian
{
  eventsCopy = events;
  endianCopy = endian;
  v8 = os_log_create("com.apple.uarp", "tmap");
  log = self->_log;
  self->_log = v8;

  v10 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = eventsCopy;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    selfCopy = self;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          self = selfCopy;
          if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007A3A8();
          }

          goto LABEL_17;
        }

        v17 = [v16 objectForKeyedSubscript:@"EventID"];
        if (!v17)
        {
          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(selfCopy->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007A3E8();
          }

LABEL_16:

          self = selfCopy;
LABEL_17:

          selfCopy2 = 0;
          goto LABEL_18;
        }

        v18 = -[UARPMappedAnalyticsEvent initWithEventFields:eventID:endian:]([UARPMappedAnalyticsEvent alloc], "initWithEventFields:eventID:endian:", v16, [v17 unsignedIntValue], endianCopy);
        [v10 addObject:v18];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      self = selfCopy;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = [v10 copy];
  tmapEvents = self->_tmapEvents;
  self->_tmapEvents = v19;

  selfCopy2 = self;
LABEL_18:

  return selfCopy2;
}

- (UARPMappedAnalyticsDatabaseEntry)initWithEvents:(id)events appleModelNumber:(id)number endian:(id)endian
{
  endianCopy = endian;
  numberCopy = number;
  eventsCopy = events;
  v11 = [[NSArray alloc] initWithObjects:{numberCopy, 0}];

  appleModelNumbers = self->_appleModelNumbers;
  self->_appleModelNumbers = v11;

  v13 = [(UARPMappedAnalyticsDatabaseEntry *)self initWithEvents:eventsCopy endian:endianCopy];
  return v13;
}

- (UARPMappedAnalyticsDatabaseEntry)initWithEvents:(id)events appleModelNumbers:(id)numbers endian:(id)endian
{
  endianCopy = endian;
  eventsCopy = events;
  v10 = [numbers copy];
  appleModelNumbers = self->_appleModelNumbers;
  self->_appleModelNumbers = v10;

  v12 = [(UARPMappedAnalyticsDatabaseEntry *)self initWithEvents:eventsCopy endian:endianCopy];
  return v12;
}

- (UARPMappedAnalyticsDatabaseEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = UARPMappedAnalyticsDatabaseEntry;
  v5 = [(UARPMappedAnalyticsDatabaseEntry *)&v18 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.uarp", "tmap");
    log = v5->_log;
    v5->_log = v6;

    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v20 count:2];
    v9 = [NSSet setWithArray:v8];

    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"AppleModelNumbers"];
    appleModelNumbers = v5->_appleModelNumbers;
    v5->_appleModelNumbers = v10;

    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v12 = [NSArray arrayWithObjects:v19 count:3];
    v13 = [NSSet setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"Events"];
    tmapEvents = v5->_tmapEvents;
    v5->_tmapEvents = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  appleModelNumbers = self->_appleModelNumbers;
  coderCopy = coder;
  [coderCopy encodeObject:appleModelNumbers forKey:@"AppleModelNumbers"];
  [coderCopy encodeObject:self->_tmapEvents forKey:@"Events"];
}

- (BOOL)isEqualAppleModel:(id)model
{
  modelCopy = model;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_appleModelNumbers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([modelCopy isEqualToString:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)findTmapEvent:(unint64_t)event
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_tmapEvents;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 eventID] == event)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)expandMticData:(id)data withEventID:(unsigned int)d
{
  dataCopy = data;
  v7 = [(UARPMappedAnalyticsDatabaseEntry *)self findTmapEvent:d];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 expandMticData:dataCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007A45C();
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10007A49C();
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)appendTmapEvents:(id)events endian:(id)endian
{
  eventsCopy = events;
  endianCopy = endian;
  v7 = [(NSArray *)self->_tmapEvents mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = eventsCopy;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    v22 = v7;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = v22;
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007A3A8();
          }

          v20 = 0;
          tmapEvents = v8;
          goto LABEL_20;
        }

        v14 = [v13 objectForKeyedSubscript:@"EventID"];
        if (!v14)
        {
          goto LABEL_19;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_10007A3E8();
          }

LABEL_19:

          v20 = 0;
          tmapEvents = v8;
          v7 = v22;
          goto LABEL_20;
        }

        unsignedIntValue = [v14 unsignedIntValue];
        v16 = [(UARPMappedAnalyticsDatabaseEntry *)self findTmapEvent:unsignedIntValue];
        if (!v16)
        {
          v17 = [[UARPMappedAnalyticsEvent alloc] initWithEventFields:v13 eventID:unsignedIntValue endian:endianCopy];
          [v22 addObject:v17];
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v7 = v22;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v18 = [v7 copy];
  tmapEvents = self->_tmapEvents;
  self->_tmapEvents = v18;
  v20 = 1;
LABEL_20:

  return v20;
}

@end