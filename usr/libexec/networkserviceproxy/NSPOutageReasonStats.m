@interface NSPOutageReasonStats
- (NSPOutageReasonStats)initWithCoder:(id)a3;
- (id)analyticsDict;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPOutageReasonStats

- (NSPOutageReasonStats)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NSPOutageReasonStats;
  v5 = [(NSPOutageReasonStats *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TierType"];
    tierType = v5->_tierType;
    v5->_tierType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OutageReasonType"];
    outageReasonType = v5->_outageReasonType;
    v5->_outageReasonType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OutageReasonSubType"];
    outageReasonSubType = v5->_outageReasonSubType;
    v5->_outageReasonSubType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryIngressProxy"];
    primaryIngressProxy = v5->_primaryIngressProxy;
    v5->_primaryIngressProxy = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryEgressProxy"];
    primaryEgressProxy = v5->_primaryEgressProxy;
    v5->_primaryEgressProxy = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FallbackIngressProxy"];
    fallbackIngressProxy = v5->_fallbackIngressProxy;
    v5->_fallbackIngressProxy = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FallbackEgressProxy"];
    fallbackEgressProxy = v5->_fallbackEgressProxy;
    v5->_fallbackEgressProxy = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ODoHProxy"];
    odohProxy = v5->_odohProxy;
    v5->_odohProxy = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TokenProxy"];
    tokenProxy = v5->_tokenProxy;
    v5->_tokenProxy = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NSPOutageReasonStats *)self tierType];
  [v4 encodeObject:v5 forKey:@"TierType"];

  v6 = [(NSPOutageReasonStats *)self outageReasonType];
  [v4 encodeObject:v6 forKey:@"OutageReasonType"];

  v7 = [(NSPOutageReasonStats *)self outageReasonSubType];
  [v4 encodeObject:v7 forKey:@"OutageReasonSubType"];

  v8 = [(NSPOutageReasonStats *)self primaryIngressProxy];
  [v4 encodeObject:v8 forKey:@"PrimaryIngressProxy"];

  v9 = [(NSPOutageReasonStats *)self primaryEgressProxy];
  [v4 encodeObject:v9 forKey:@"PrimaryEgressProxy"];

  v10 = [(NSPOutageReasonStats *)self fallbackIngressProxy];
  [v4 encodeObject:v10 forKey:@"FallbackIngressProxy"];

  v11 = [(NSPOutageReasonStats *)self fallbackEgressProxy];
  [v4 encodeObject:v11 forKey:@"FallbackEgressProxy"];

  v12 = [(NSPOutageReasonStats *)self odohProxy];
  [v4 encodeObject:v12 forKey:@"ODoHProxy"];

  v13 = [(NSPOutageReasonStats *)self tokenProxy];
  [v4 encodeObject:v13 forKey:@"TokenProxy"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPOutageReasonStats allocWithZone:?]];
  v5 = [(NSPOutageReasonStats *)self tierType];
  [(NSPOutageReasonStats *)v4 setTierType:v5];

  v6 = [(NSPOutageReasonStats *)self outageReasonType];
  [(NSPOutageReasonStats *)v4 setOutageReasonType:v6];

  v7 = [(NSPOutageReasonStats *)self outageReasonSubType];
  [(NSPOutageReasonStats *)v4 setOutageReasonSubType:v7];

  v8 = [(NSPOutageReasonStats *)self primaryIngressProxy];
  [(NSPOutageReasonStats *)v4 setPrimaryIngressProxy:v8];

  v9 = [(NSPOutageReasonStats *)self primaryEgressProxy];
  [(NSPOutageReasonStats *)v4 setPrimaryEgressProxy:v9];

  v10 = [(NSPOutageReasonStats *)self fallbackIngressProxy];
  [(NSPOutageReasonStats *)v4 setFallbackIngressProxy:v10];

  v11 = [(NSPOutageReasonStats *)self fallbackEgressProxy];
  [(NSPOutageReasonStats *)v4 setFallbackEgressProxy:v11];

  v12 = [(NSPOutageReasonStats *)self odohProxy];
  [(NSPOutageReasonStats *)v4 setOdohProxy:v12];

  v13 = [(NSPOutageReasonStats *)self tokenProxy];
  [(NSPOutageReasonStats *)v4 setTokenProxy:v13];

  return v4;
}

- (id)analyticsDict
{
  v3 = [(NSPOutageReasonStats *)self outageReasonType];

  if (!v3)
  {
    v16 = nplog_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v18 = 136315138;
    v19 = "[NSPOutageReasonStats analyticsDict]";
    v17 = "%s called with null self.outageReasonType";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, v17, &v18, 0xCu);
    goto LABEL_10;
  }

  v4 = [(NSPOutageReasonStats *)self outageReasonSubType];

  if (v4)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [(NSPOutageReasonStats *)self tierType];
    [v5 setObject:v6 forKeyedSubscript:@"TierType"];

    v7 = [(NSPOutageReasonStats *)self outageReasonType];
    [v5 setObject:v7 forKeyedSubscript:@"OutageReasonType"];

    v8 = [(NSPOutageReasonStats *)self outageReasonSubType];
    [v5 setObject:v8 forKeyedSubscript:@"OutageReasonSubType"];

    v9 = [(NSPOutageReasonStats *)self primaryIngressProxy];
    [v5 setObject:v9 forKeyedSubscript:@"PrimaryIngressProxy"];

    v10 = [(NSPOutageReasonStats *)self primaryEgressProxy];
    [v5 setObject:v10 forKeyedSubscript:@"PrimaryEgressProxy"];

    v11 = [(NSPOutageReasonStats *)self fallbackIngressProxy];
    [v5 setObject:v11 forKeyedSubscript:@"FallbackIngressProxy"];

    v12 = [(NSPOutageReasonStats *)self fallbackEgressProxy];
    [v5 setObject:v12 forKeyedSubscript:@"FallbackEgressProxy"];

    v13 = [(NSPOutageReasonStats *)self odohProxy];
    [v5 setObject:v13 forKeyedSubscript:@"ODoHProxy"];

    v14 = [(NSPOutageReasonStats *)self tokenProxy];
    [v5 setObject:v14 forKeyedSubscript:@"TokenProxy"];

    goto LABEL_4;
  }

  v16 = nplog_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    v18 = 136315138;
    v19 = "[NSPOutageReasonStats analyticsDict]";
    v17 = "%s called with null self.outageReasonSubType";
    goto LABEL_12;
  }

LABEL_10:

  v5 = 0;
LABEL_4:

  return v5;
}

@end