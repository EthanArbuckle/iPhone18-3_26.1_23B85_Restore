@interface NSPCandidateProxyPath
- (BOOL)matchEgress:(id)egress;
- (BOOL)matchIngress:(id)ingress;
- (BOOL)proxyPathReady;
- (NSPCandidateProxyPath)initWithCoder:(id)coder;
- (NSPCandidateProxyPath)initWithIngressProxy:(id)proxy egressProxy:(id)egressProxy proxyPathWeight:(unint64_t)weight preferredPathConfigURI:(id)i preferredPathPatterns:(id)patterns;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)fetchDomainFilter:(id)filter;
@end

@implementation NSPCandidateProxyPath

- (NSPCandidateProxyPath)initWithIngressProxy:(id)proxy egressProxy:(id)egressProxy proxyPathWeight:(unint64_t)weight preferredPathConfigURI:(id)i preferredPathPatterns:(id)patterns
{
  proxyCopy = proxy;
  egressProxyCopy = egressProxy;
  iCopy = i;
  patternsCopy = patterns;
  if (!proxyCopy)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      selfCopy = 0;
      goto LABEL_6;
    }

    *buf = 136315138;
    v26 = "[NSPCandidateProxyPath initWithIngressProxy:egressProxy:proxyPathWeight:preferredPathConfigURI:preferredPathPatterns:]";
    v23 = "%s called with null ingressProxy";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, v23, buf, 0xCu);
    goto LABEL_10;
  }

  if (!egressProxyCopy)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v26 = "[NSPCandidateProxyPath initWithIngressProxy:egressProxy:proxyPathWeight:preferredPathConfigURI:preferredPathPatterns:]";
    v23 = "%s called with null egressProxy";
    goto LABEL_12;
  }

  v24.receiver = self;
  v24.super_class = NSPCandidateProxyPath;
  v17 = [(NSPCandidateProxyPath *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_ingressProxy, proxy);
    objc_storeStrong(&v18->_egressProxy, egressProxy);
    v18->_proxyPathWeight = weight;
    objc_storeStrong(&v18->_preferredPathConfigURI, i);
    objc_storeStrong(&v18->_preferredPathPatterns, patterns);
    domainFilter = v18->_domainFilter;
    v18->_domainFilter = 0;
  }

  self = v18;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (NSPCandidateProxyPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NSPCandidateProxyPath;
  v5 = [(NSPCandidateProxyPath *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateProxyPathIngressProxy"];
    ingressProxy = v5->_ingressProxy;
    v5->_ingressProxy = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateProxyPathEgressProxy"];
    egressProxy = v5->_egressProxy;
    v5->_egressProxy = v8;

    v5->_proxyPathWeight = [coderCopy decodeIntegerForKey:@"candidateProxyPathWeight"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateProxyPreferredPathConfigURI"];
    preferredPathConfigURI = v5->_preferredPathConfigURI;
    v5->_preferredPathConfigURI = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"candidateProxyPreferredPathPatterns"];
    preferredPathPatterns = v5->_preferredPathPatterns;
    v5->_preferredPathPatterns = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ingressProxy = [(NSPCandidateProxyPath *)self ingressProxy];
  [coderCopy encodeObject:ingressProxy forKey:@"candidateProxyPathIngressProxy"];

  egressProxy = [(NSPCandidateProxyPath *)self egressProxy];
  [coderCopy encodeObject:egressProxy forKey:@"candidateProxyPathEgressProxy"];

  [coderCopy encodeInteger:-[NSPCandidateProxyPath proxyPathWeight](self forKey:{"proxyPathWeight"), @"candidateProxyPathWeight"}];
  preferredPathConfigURI = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
  [coderCopy encodeObject:preferredPathConfigURI forKey:@"candidateProxyPreferredPathConfigURI"];

  preferredPathPatterns = [(NSPCandidateProxyPath *)self preferredPathPatterns];
  [coderCopy encodeObject:preferredPathPatterns forKey:@"candidateProxyPreferredPathPatterns"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPCandidateProxyPath allocWithZone:?]];
  ingressProxy = [(NSPCandidateProxyPath *)self ingressProxy];
  [(NSPCandidateProxyPath *)v4 setIngressProxy:ingressProxy];

  egressProxy = [(NSPCandidateProxyPath *)self egressProxy];
  [(NSPCandidateProxyPath *)v4 setEgressProxy:egressProxy];

  [(NSPCandidateProxyPath *)v4 setProxyPathWeight:[(NSPCandidateProxyPath *)self proxyPathWeight]];
  preferredPathConfigURI = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
  [(NSPCandidateProxyPath *)v4 setPreferredPathConfigURI:preferredPathConfigURI];

  preferredPathPatterns = [(NSPCandidateProxyPath *)self preferredPathPatterns];
  [(NSPCandidateProxyPath *)v4 setPreferredPathPatterns:preferredPathPatterns];

  domainFilter = [(NSPCandidateProxyPath *)self domainFilter];
  [(NSPCandidateProxyPath *)v4 setDomainFilter:domainFilter];

  return v4;
}

- (BOOL)proxyPathReady
{
  preferredPathConfigURI = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
  if (preferredPathConfigURI)
  {
    v4 = preferredPathConfigURI;
    domainFilter = [(NSPCandidateProxyPath *)self domainFilter];

    if (!domainFilter)
    {
      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v41) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "proxy path is not ready due to absent domain filter", &v41, 2u);
      }

      goto LABEL_26;
    }
  }

  ingressProxy = [(NSPCandidateProxyPath *)self ingressProxy];
  if (sub_100004F70(ingressProxy))
  {
    ingressProxy2 = [(NSPCandidateProxyPath *)self ingressProxy];
    v8 = sub_1000071A0(ingressProxy2);
    ingressProxy3 = [(NSPCandidateProxyPath *)self ingressProxy];
    v10 = sub_100006674(ingressProxy3);

    if (v8 <= v10)
    {
      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        ingressProxy4 = [(NSPCandidateProxyPath *)self ingressProxy];
        v13 = sub_1000071A0(ingressProxy4);
        ingressProxy5 = [(NSPCandidateProxyPath *)self ingressProxy];
        v15 = ingressProxy5;
        if (ingressProxy5)
        {
          v16 = *(ingressProxy5 + 24);
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        vendor = [v17 vendor];
        ingressProxy6 = [(NSPCandidateProxyPath *)self ingressProxy];
        v41 = 134218498;
        v42 = v13;
        v43 = 2112;
        v44 = vendor;
        v45 = 2048;
        v46 = sub_100006674(ingressProxy6);
        v20 = "proxy path is not ready due to insufficient ingress proxy tokens (cache+agent: %lu) for [%@], (ingress proxy low-water mark: %lu)";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v20, &v41, 0x20u);

        goto LABEL_26;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  egressProxy = [(NSPCandidateProxyPath *)self egressProxy];
  if (sub_100004F70(egressProxy))
  {
    egressProxy2 = [(NSPCandidateProxyPath *)self egressProxy];
    v23 = sub_1000071A0(egressProxy2);
    egressProxy3 = [(NSPCandidateProxyPath *)self egressProxy];
    v25 = sub_100006674(egressProxy3);

    if (v23 <= v25)
    {
      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        ingressProxy4 = [(NSPCandidateProxyPath *)self egressProxy];
        v26 = sub_1000071A0(ingressProxy4);
        egressProxy4 = [(NSPCandidateProxyPath *)self egressProxy];
        v15 = egressProxy4;
        if (egressProxy4)
        {
          v28 = *(egressProxy4 + 24);
        }

        else
        {
          v28 = 0;
        }

        v17 = v28;
        vendor = [v17 vendor];
        ingressProxy6 = [(NSPCandidateProxyPath *)self egressProxy];
        v41 = 134218498;
        v42 = v26;
        v43 = 2112;
        v44 = vendor;
        v45 = 2048;
        v46 = sub_100006674(ingressProxy6);
        v20 = "proxy path is not ready due to insufficient egress proxy tokens (cache+agent: %lu) for [%@], (egress proxy low-water mark: %lu)";
        goto LABEL_16;
      }

LABEL_26:
      v29 = 0;
      goto LABEL_27;
    }
  }

  else
  {
  }

  v11 = nplog_obj();
  v29 = 1;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    ingressProxy7 = [(NSPCandidateProxyPath *)self ingressProxy];
    v31 = ingressProxy7;
    if (ingressProxy7)
    {
      v32 = *(ingressProxy7 + 24);
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    vendor2 = [v33 vendor];
    egressProxy5 = [(NSPCandidateProxyPath *)self egressProxy];
    v36 = egressProxy5;
    if (egressProxy5)
    {
      v37 = *(egressProxy5 + 24);
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    vendor3 = [v38 vendor];
    v41 = 138412546;
    v42 = vendor2;
    v43 = 2112;
    v44 = vendor3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "proxy path [%@:%@] is ready", &v41, 0x16u);
  }

LABEL_27:

  return v29;
}

- (BOOL)matchIngress:(id)ingress
{
  ingressCopy = ingress;
  if (!ingressCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      v12 = 0;
      goto LABEL_6;
    }

    v16 = 136315138;
    v17 = "[NSPCandidateProxyPath matchIngress:]";
    v15 = "%s called with null proxyTokenInfo";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_10;
  }

  ingressProxy = [(NSPCandidateProxyPath *)self ingressProxy];

  if (!ingressProxy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v16 = 136315138;
    v17 = "[NSPCandidateProxyPath matchIngress:]";
    v15 = "%s called with null self.ingressProxy";
    goto LABEL_12;
  }

  ingressProxy2 = [(NSPCandidateProxyPath *)self ingressProxy];
  v7 = ingressProxy2;
  if (ingressProxy2)
  {
    v8 = *(ingressProxy2 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  proxyURL = [v9 proxyURL];
  proxyURL2 = [ingressCopy[3] proxyURL];
  v12 = [proxyURL isEqualToString:proxyURL2];

LABEL_6:
  return v12;
}

- (BOOL)matchEgress:(id)egress
{
  egressCopy = egress;
  if (!egressCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      v12 = 0;
      goto LABEL_6;
    }

    v16 = 136315138;
    v17 = "[NSPCandidateProxyPath matchEgress:]";
    v15 = "%s called with null proxyTokenInfo";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_10;
  }

  egressProxy = [(NSPCandidateProxyPath *)self egressProxy];

  if (!egressProxy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    v16 = 136315138;
    v17 = "[NSPCandidateProxyPath matchEgress:]";
    v15 = "%s called with null self.egressProxy";
    goto LABEL_12;
  }

  egressProxy2 = [(NSPCandidateProxyPath *)self egressProxy];
  v7 = egressProxy2;
  if (egressProxy2)
  {
    v8 = *(egressProxy2 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  proxyURL = [v9 proxyURL];
  proxyURL2 = [egressCopy[3] proxyURL];
  v12 = [proxyURL isEqualToString:proxyURL2];

LABEL_6:
  return v12;
}

- (void)fetchDomainFilter:(id)filter
{
  filterCopy = filter;
  preferredPathConfigURI = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
  if (preferredPathConfigURI && ([(NSPCandidateProxyPath *)self domainFilter], v6 = objc_claimAutoreleasedReturnValue(), v6, preferredPathConfigURI, !v6))
  {
    preferredPathConfigURI2 = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
    v8 = [NSURL URLWithString:preferredPathConfigURI2];

    v9 = [NSMutableURLRequest requestWithURL:v8];
    if (v9)
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v11 = copyProductTypeString();
      v12 = copyOSNameString();
      v13 = copyOSVersionString();
      v14 = copyOSBuildString();
      v15 = v14;
      if (has_internal_diagnostics)
      {
        v16 = @"<%@> <%@;%@;%@;internal>";
      }

      else
      {
        v16 = @"<%@> <%@;%@;%@>";
      }

      v17 = [NSString stringWithFormat:v16, v11, v12, v13, v14];

      if (v17)
      {
        [v9 setValue:v17 forHTTPHeaderField:@"X-Mask-Client-Info"];
      }

      *&v40 = 0;
      *(&v40 + 1) = &v40;
      v41 = 0x3032000000;
      v42 = sub_100001F14;
      v43 = sub_100005818;
      v44 = os_transaction_create();
      objc_initWeak(&location, self);
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = sub_100001F14;
      v33 = sub_100005818;
      v34 = 0;
      v18 = nplog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = v8;
        v38 = 2112;
        v39 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending request for %@ with client-info %@", buf, 0x16u);
      }

      v19 = +[NPUtilities sharedEmphemeralSession];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10001A9E8;
      v23[3] = &unk_100109870;
      v26 = &v29;
      objc_copyWeak(&v28, &location);
      v24 = v8;
      v25 = filterCopy;
      v27 = &v40;
      v20 = [v19 dataTaskWithRequest:v9 completionHandler:v23];

      objc_storeStrong(v30 + 5, v20);
      [v30[5] resume];

      objc_destroyWeak(&v28);
      _Block_object_dispose(&v29, 8);

      objc_destroyWeak(&location);
      _Block_object_dispose(&v40, 8);
    }

    else
    {
      v21 = nplog_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        preferredPathConfigURI3 = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
        LODWORD(v40) = 138412290;
        *(&v40 + 4) = preferredPathConfigURI3;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to create request for preferred path URL %@", &v40, 0xCu);
      }

      if (filterCopy)
      {
        (*(filterCopy + 2))(filterCopy, 0);
      }
    }
  }

  else if (filterCopy)
  {
    (*(filterCopy + 2))(filterCopy, 1);
  }
}

@end