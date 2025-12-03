@interface NSPOutageReasonStats
- (NSPOutageReasonStats)initWithCoder:(id)coder;
- (id)analyticsDict;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPOutageReasonStats

- (NSPOutageReasonStats)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = NSPOutageReasonStats;
  v5 = [(NSPOutageReasonStats *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TierType"];
    tierType = v5->_tierType;
    v5->_tierType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OutageReasonType"];
    outageReasonType = v5->_outageReasonType;
    v5->_outageReasonType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OutageReasonSubType"];
    outageReasonSubType = v5->_outageReasonSubType;
    v5->_outageReasonSubType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryIngressProxy"];
    primaryIngressProxy = v5->_primaryIngressProxy;
    v5->_primaryIngressProxy = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryEgressProxy"];
    primaryEgressProxy = v5->_primaryEgressProxy;
    v5->_primaryEgressProxy = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FallbackIngressProxy"];
    fallbackIngressProxy = v5->_fallbackIngressProxy;
    v5->_fallbackIngressProxy = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FallbackEgressProxy"];
    fallbackEgressProxy = v5->_fallbackEgressProxy;
    v5->_fallbackEgressProxy = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ODoHProxy"];
    odohProxy = v5->_odohProxy;
    v5->_odohProxy = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TokenProxy"];
    tokenProxy = v5->_tokenProxy;
    v5->_tokenProxy = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  tierType = [(NSPOutageReasonStats *)self tierType];
  [coderCopy encodeObject:tierType forKey:@"TierType"];

  outageReasonType = [(NSPOutageReasonStats *)self outageReasonType];
  [coderCopy encodeObject:outageReasonType forKey:@"OutageReasonType"];

  outageReasonSubType = [(NSPOutageReasonStats *)self outageReasonSubType];
  [coderCopy encodeObject:outageReasonSubType forKey:@"OutageReasonSubType"];

  primaryIngressProxy = [(NSPOutageReasonStats *)self primaryIngressProxy];
  [coderCopy encodeObject:primaryIngressProxy forKey:@"PrimaryIngressProxy"];

  primaryEgressProxy = [(NSPOutageReasonStats *)self primaryEgressProxy];
  [coderCopy encodeObject:primaryEgressProxy forKey:@"PrimaryEgressProxy"];

  fallbackIngressProxy = [(NSPOutageReasonStats *)self fallbackIngressProxy];
  [coderCopy encodeObject:fallbackIngressProxy forKey:@"FallbackIngressProxy"];

  fallbackEgressProxy = [(NSPOutageReasonStats *)self fallbackEgressProxy];
  [coderCopy encodeObject:fallbackEgressProxy forKey:@"FallbackEgressProxy"];

  odohProxy = [(NSPOutageReasonStats *)self odohProxy];
  [coderCopy encodeObject:odohProxy forKey:@"ODoHProxy"];

  tokenProxy = [(NSPOutageReasonStats *)self tokenProxy];
  [coderCopy encodeObject:tokenProxy forKey:@"TokenProxy"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPOutageReasonStats allocWithZone:?]];
  tierType = [(NSPOutageReasonStats *)self tierType];
  [(NSPOutageReasonStats *)v4 setTierType:tierType];

  outageReasonType = [(NSPOutageReasonStats *)self outageReasonType];
  [(NSPOutageReasonStats *)v4 setOutageReasonType:outageReasonType];

  outageReasonSubType = [(NSPOutageReasonStats *)self outageReasonSubType];
  [(NSPOutageReasonStats *)v4 setOutageReasonSubType:outageReasonSubType];

  primaryIngressProxy = [(NSPOutageReasonStats *)self primaryIngressProxy];
  [(NSPOutageReasonStats *)v4 setPrimaryIngressProxy:primaryIngressProxy];

  primaryEgressProxy = [(NSPOutageReasonStats *)self primaryEgressProxy];
  [(NSPOutageReasonStats *)v4 setPrimaryEgressProxy:primaryEgressProxy];

  fallbackIngressProxy = [(NSPOutageReasonStats *)self fallbackIngressProxy];
  [(NSPOutageReasonStats *)v4 setFallbackIngressProxy:fallbackIngressProxy];

  fallbackEgressProxy = [(NSPOutageReasonStats *)self fallbackEgressProxy];
  [(NSPOutageReasonStats *)v4 setFallbackEgressProxy:fallbackEgressProxy];

  odohProxy = [(NSPOutageReasonStats *)self odohProxy];
  [(NSPOutageReasonStats *)v4 setOdohProxy:odohProxy];

  tokenProxy = [(NSPOutageReasonStats *)self tokenProxy];
  [(NSPOutageReasonStats *)v4 setTokenProxy:tokenProxy];

  return v4;
}

- (id)analyticsDict
{
  outageReasonType = [(NSPOutageReasonStats *)self outageReasonType];

  if (!outageReasonType)
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

  outageReasonSubType = [(NSPOutageReasonStats *)self outageReasonSubType];

  if (outageReasonSubType)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    tierType = [(NSPOutageReasonStats *)self tierType];
    [v5 setObject:tierType forKeyedSubscript:@"TierType"];

    outageReasonType2 = [(NSPOutageReasonStats *)self outageReasonType];
    [v5 setObject:outageReasonType2 forKeyedSubscript:@"OutageReasonType"];

    outageReasonSubType2 = [(NSPOutageReasonStats *)self outageReasonSubType];
    [v5 setObject:outageReasonSubType2 forKeyedSubscript:@"OutageReasonSubType"];

    primaryIngressProxy = [(NSPOutageReasonStats *)self primaryIngressProxy];
    [v5 setObject:primaryIngressProxy forKeyedSubscript:@"PrimaryIngressProxy"];

    primaryEgressProxy = [(NSPOutageReasonStats *)self primaryEgressProxy];
    [v5 setObject:primaryEgressProxy forKeyedSubscript:@"PrimaryEgressProxy"];

    fallbackIngressProxy = [(NSPOutageReasonStats *)self fallbackIngressProxy];
    [v5 setObject:fallbackIngressProxy forKeyedSubscript:@"FallbackIngressProxy"];

    fallbackEgressProxy = [(NSPOutageReasonStats *)self fallbackEgressProxy];
    [v5 setObject:fallbackEgressProxy forKeyedSubscript:@"FallbackEgressProxy"];

    odohProxy = [(NSPOutageReasonStats *)self odohProxy];
    [v5 setObject:odohProxy forKeyedSubscript:@"ODoHProxy"];

    tokenProxy = [(NSPOutageReasonStats *)self tokenProxy];
    [v5 setObject:tokenProxy forKeyedSubscript:@"TokenProxy"];

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