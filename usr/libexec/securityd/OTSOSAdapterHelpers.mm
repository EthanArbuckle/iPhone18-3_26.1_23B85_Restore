@interface OTSOSAdapterHelpers
+ (id)peerPublicSigningKeySPKIs:(id)is;
+ (id)peerPublicSigningKeySPKIsForCircle:(id)circle error:(id *)error;
@end

@implementation OTSOSAdapterHelpers

+ (id)peerPublicSigningKeySPKIsForCircle:(id)circle error:(id *)error
{
  circleCopy = circle;
  v21 = 0;
  v7 = [circleCopy circleStatus:&v21];
  v8 = v21;
  v9 = v8;
  if (v7 || v8)
  {
    v14 = sub_100006274("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v7 + 1 > 4)
      {
        v15 = @"kSOSCCError";
      }

      else
      {
        v15 = off_1003454A8[v7 + 1];
      }

      *buf = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "octagon-sos: Not in circle; not preapproving keys: %@ (%@)", buf, 0x16u);
    }

    if (error)
    {
      v18 = v9;
      v13 = 0;
      *error = v9;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v20 = 0;
    v10 = [circleCopy fetchTrustedPeers:&v20];
    v11 = v20;
    v12 = v11;
    if (!v10 || v11)
    {
      v16 = sub_100006274("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "octagon-sos: Can't fetch trusted peer SPKIs: %@", buf, 0xCu);
      }

      if (error)
      {
        v17 = v12;
        v13 = 0;
        *error = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = [self peerPublicSigningKeySPKIs:v10];
    }
  }

  return v13;
}

+ (id)peerPublicSigningKeySPKIs:(id)is
{
  isCopy = is;
  v4 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = isCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138412290;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        publicSigningKey = [v11 publicSigningKey];
        encodeSubjectPublicKeyInfo = [publicSigningKey encodeSubjectPublicKeyInfo];

        v14 = sub_100006274("SecError");
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (encodeSubjectPublicKeyInfo)
        {
          if (v15)
          {
            *buf = v17;
            v23 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "octagon-sos: Created SPKI for peer: %@", buf, 0xCu);
          }

          [v4 addObject:encodeSubjectPublicKeyInfo];
        }

        else
        {
          if (v15)
          {
            *buf = v17;
            v23 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "octagon-sos: Can't create SPKI for peer: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  return v4;
}

@end