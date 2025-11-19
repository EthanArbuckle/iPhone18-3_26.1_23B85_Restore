@interface NSPCandidateProxyPath
- (BOOL)matchEgress:(id)a3;
- (BOOL)matchIngress:(id)a3;
- (BOOL)proxyPathReady;
- (NSPCandidateProxyPath)initWithCoder:(id)a3;
- (NSPCandidateProxyPath)initWithIngressProxy:(id)a3 egressProxy:(id)a4 proxyPathWeight:(unint64_t)a5 preferredPathConfigURI:(id)a6 preferredPathPatterns:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fetchDomainFilter:(id)a3;
@end

@implementation NSPCandidateProxyPath

- (NSPCandidateProxyPath)initWithIngressProxy:(id)a3 egressProxy:(id)a4 proxyPathWeight:(unint64_t)a5 preferredPathConfigURI:(id)a6 preferredPathPatterns:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    v22 = nplog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      v20 = 0;
      goto LABEL_6;
    }

    *buf = 136315138;
    v26 = "[NSPCandidateProxyPath initWithIngressProxy:egressProxy:proxyPathWeight:preferredPathConfigURI:preferredPathPatterns:]";
    v23 = "%s called with null ingressProxy";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, v23, buf, 0xCu);
    goto LABEL_10;
  }

  if (!v14)
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
    objc_storeStrong(&v17->_ingressProxy, a3);
    objc_storeStrong(&v18->_egressProxy, a4);
    v18->_proxyPathWeight = a5;
    objc_storeStrong(&v18->_preferredPathConfigURI, a6);
    objc_storeStrong(&v18->_preferredPathPatterns, a7);
    domainFilter = v18->_domainFilter;
    v18->_domainFilter = 0;
  }

  self = v18;
  v20 = self;
LABEL_6:

  return v20;
}

- (NSPCandidateProxyPath)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NSPCandidateProxyPath;
  v5 = [(NSPCandidateProxyPath *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidateProxyPathIngressProxy"];
    ingressProxy = v5->_ingressProxy;
    v5->_ingressProxy = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidateProxyPathEgressProxy"];
    egressProxy = v5->_egressProxy;
    v5->_egressProxy = v8;

    v5->_proxyPathWeight = [v4 decodeIntegerForKey:@"candidateProxyPathWeight"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidateProxyPreferredPathConfigURI"];
    preferredPathConfigURI = v5->_preferredPathConfigURI;
    v5->_preferredPathConfigURI = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"candidateProxyPreferredPathPatterns"];
    preferredPathPatterns = v5->_preferredPathPatterns;
    v5->_preferredPathPatterns = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NSPCandidateProxyPath *)self ingressProxy];
  [v4 encodeObject:v5 forKey:@"candidateProxyPathIngressProxy"];

  v6 = [(NSPCandidateProxyPath *)self egressProxy];
  [v4 encodeObject:v6 forKey:@"candidateProxyPathEgressProxy"];

  [v4 encodeInteger:-[NSPCandidateProxyPath proxyPathWeight](self forKey:{"proxyPathWeight"), @"candidateProxyPathWeight"}];
  v7 = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
  [v4 encodeObject:v7 forKey:@"candidateProxyPreferredPathConfigURI"];

  v8 = [(NSPCandidateProxyPath *)self preferredPathPatterns];
  [v4 encodeObject:v8 forKey:@"candidateProxyPreferredPathPatterns"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPCandidateProxyPath allocWithZone:?]];
  v5 = [(NSPCandidateProxyPath *)self ingressProxy];
  [(NSPCandidateProxyPath *)v4 setIngressProxy:v5];

  v6 = [(NSPCandidateProxyPath *)self egressProxy];
  [(NSPCandidateProxyPath *)v4 setEgressProxy:v6];

  [(NSPCandidateProxyPath *)v4 setProxyPathWeight:[(NSPCandidateProxyPath *)self proxyPathWeight]];
  v7 = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
  [(NSPCandidateProxyPath *)v4 setPreferredPathConfigURI:v7];

  v8 = [(NSPCandidateProxyPath *)self preferredPathPatterns];
  [(NSPCandidateProxyPath *)v4 setPreferredPathPatterns:v8];

  v9 = [(NSPCandidateProxyPath *)self domainFilter];
  [(NSPCandidateProxyPath *)v4 setDomainFilter:v9];

  return v4;
}

- (BOOL)proxyPathReady
{
  v3 = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
  if (v3)
  {
    v4 = v3;
    v5 = [(NSPCandidateProxyPath *)self domainFilter];

    if (!v5)
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

  v6 = [(NSPCandidateProxyPath *)self ingressProxy];
  if (sub_100004F70(v6))
  {
    v7 = [(NSPCandidateProxyPath *)self ingressProxy];
    v8 = sub_1000071A0(v7);
    v9 = [(NSPCandidateProxyPath *)self ingressProxy];
    v10 = sub_100006674(v9);

    if (v8 <= v10)
    {
      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(NSPCandidateProxyPath *)self ingressProxy];
        v13 = sub_1000071A0(v12);
        v14 = [(NSPCandidateProxyPath *)self ingressProxy];
        v15 = v14;
        if (v14)
        {
          v16 = *(v14 + 24);
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        v18 = [v17 vendor];
        v19 = [(NSPCandidateProxyPath *)self ingressProxy];
        v41 = 134218498;
        v42 = v13;
        v43 = 2112;
        v44 = v18;
        v45 = 2048;
        v46 = sub_100006674(v19);
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

  v21 = [(NSPCandidateProxyPath *)self egressProxy];
  if (sub_100004F70(v21))
  {
    v22 = [(NSPCandidateProxyPath *)self egressProxy];
    v23 = sub_1000071A0(v22);
    v24 = [(NSPCandidateProxyPath *)self egressProxy];
    v25 = sub_100006674(v24);

    if (v23 <= v25)
    {
      v11 = nplog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(NSPCandidateProxyPath *)self egressProxy];
        v26 = sub_1000071A0(v12);
        v27 = [(NSPCandidateProxyPath *)self egressProxy];
        v15 = v27;
        if (v27)
        {
          v28 = *(v27 + 24);
        }

        else
        {
          v28 = 0;
        }

        v17 = v28;
        v18 = [v17 vendor];
        v19 = [(NSPCandidateProxyPath *)self egressProxy];
        v41 = 134218498;
        v42 = v26;
        v43 = 2112;
        v44 = v18;
        v45 = 2048;
        v46 = sub_100006674(v19);
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
    v30 = [(NSPCandidateProxyPath *)self ingressProxy];
    v31 = v30;
    if (v30)
    {
      v32 = *(v30 + 24);
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v34 = [v33 vendor];
    v35 = [(NSPCandidateProxyPath *)self egressProxy];
    v36 = v35;
    if (v35)
    {
      v37 = *(v35 + 24);
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    v39 = [v38 vendor];
    v41 = 138412546;
    v42 = v34;
    v43 = 2112;
    v44 = v39;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "proxy path [%@:%@] is ready", &v41, 0x16u);
  }

LABEL_27:

  return v29;
}

- (BOOL)matchIngress:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [(NSPCandidateProxyPath *)self ingressProxy];

  if (!v5)
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

  v6 = [(NSPCandidateProxyPath *)self ingressProxy];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 proxyURL];
  v11 = [v4[3] proxyURL];
  v12 = [v10 isEqualToString:v11];

LABEL_6:
  return v12;
}

- (BOOL)matchEgress:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [(NSPCandidateProxyPath *)self egressProxy];

  if (!v5)
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

  v6 = [(NSPCandidateProxyPath *)self egressProxy];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 proxyURL];
  v11 = [v4[3] proxyURL];
  v12 = [v10 isEqualToString:v11];

LABEL_6:
  return v12;
}

- (void)fetchDomainFilter:(id)a3
{
  v4 = a3;
  v5 = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
  if (v5 && ([(NSPCandidateProxyPath *)self domainFilter], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v7 = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
    v8 = [NSURL URLWithString:v7];

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
      v25 = v4;
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
        v22 = [(NSPCandidateProxyPath *)self preferredPathConfigURI];
        LODWORD(v40) = 138412290;
        *(&v40 + 4) = v22;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to create request for preferred path URL %@", &v40, 0xCu);
      }

      if (v4)
      {
        (*(v4 + 2))(v4, 0);
      }
    }
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1);
  }
}

@end