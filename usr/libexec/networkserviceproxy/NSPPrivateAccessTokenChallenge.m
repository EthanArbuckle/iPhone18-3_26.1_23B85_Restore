@interface NSPPrivateAccessTokenChallenge
- (NSPPrivateAccessTokenChallenge)initWithData:(id)a3;
- (id)initARCChallengeWithIssuerName:(id)a3;
- (id)initARCChallengeWithIssuerName:(id)a3 redemptionContext:(id)a4 originNames:(id)a5 credentialContext:(id)a6;
- (id)initATHMChallengeWithIssuerName:(id)a3;
- (id)initRSABlindSignatureChallengeWithIssuerName:(id)a3 redemptionNonce:(id)a4 originNames:(id)a5;
- (id)initRateLimitedRSABlindSignatureChallengeWithIssuerName:(id)a3 redemptionNonce:(id)a4 originNames:(id)a5;
@end

@implementation NSPPrivateAccessTokenChallenge

- (NSPPrivateAccessTokenChallenge)initWithData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v37 = nplog_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v67[0] = "[NSPPrivateAccessTokenChallenge initWithData:]";
      v38 = "%s called with null data";
      goto LABEL_90;
    }

LABEL_64:

    goto LABEL_15;
  }

  v6 = [v4 length];
  v7 = [v5 bytes];
  if (!v6)
  {
    v37 = nplog_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v67[0] = "[NSPPrivateAccessTokenChallenge initWithData:]";
      v38 = "%s called with null remainingLength";
      goto LABEL_90;
    }

    goto LABEL_64;
  }

  v8 = v7;
  if (!v7)
  {
    v37 = nplog_obj();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_64;
    }

    *buf = 136315138;
    v67[0] = "[NSPPrivateAccessTokenChallenge initWithData:]";
    v38 = "%s called with null cursor";
LABEL_90:
    _os_log_fault_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, v38, buf, 0xCu);
    goto LABEL_64;
  }

  v65.receiver = self;
  v65.super_class = NSPPrivateAccessTokenChallenge;
  v9 = [(NSPPrivateAccessTokenChallenge *)&v65 init];
  if (!v9)
  {
    self = nplog_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

    goto LABEL_15;
  }

  v10 = v9;
  if (v6 == 1)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Invalid challenge length";
LABEL_8:
      v13 = v11;
      v14 = 2;
LABEL_31:
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v9->_tokenType = bswap32(*v8) >> 16;
  if (![(NSPPrivateAccessTokenChallenge *)v9 isSupportedTokenType])
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v24 = [(NSPPrivateAccessTokenChallenge *)v10 tokenType];
    *buf = 67109120;
    LODWORD(v67[0]) = v24;
    v12 = "Unsupported token type %u";
    goto LABEL_30;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Invalid challenge length";
      goto LABEL_8;
    }

LABEL_14:

    self = v10;
LABEL_15:
    v10 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v16 = bswap32(v8[1]) >> 16;
  v17 = (v6 - 4);
  if (v6 - 4 < v16 || ((v16 - 257) >> 8) != 255)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109120;
    LODWORD(v67[0]) = v16;
    v12 = "Invalid issuer name length %u";
    goto LABEL_30;
  }

  v18 = malloc_type_calloc(1uLL, (v16 + 1), 0x4C6E16EDuLL);
  if (!v18)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109120;
    LODWORD(v67[0]) = v16 + 1;
    v12 = "calloc of %u bytes failed";
    goto LABEL_30;
  }

  v19 = v18;
  v20 = v8 + 2;
  memcpy(v18, v8 + 2, v16);
  v21 = [NSString stringWithUTF8String:v19];
  objc_setProperty_atomic(v10, v22, v21, 24);

  free(v19);
  v23 = [(NSPPrivateAccessTokenChallenge *)v10 issuerName];

  if (!v23)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Invalid origin name";
    goto LABEL_8;
  }

  if (v17 == v16)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = "Invalid challenge length";
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v25 = v20 + v16;
  v26 = v20 + v16;
  v29 = *v26;
  v27 = (v26 + 1);
  v28 = v29;
  v30 = &v17[~v16];
  v31 = v30 - v29;
  if (v30 < v29)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109376;
    LODWORD(v67[0]) = v28;
    WORD2(v67[0]) = 2048;
    *(v67 + 6) = v30;
    v12 = "Invalid nonce length %u, cannot fit in %zu";
    goto LABEL_37;
  }

  if (v28)
  {
    if (v28 != 32)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 67109120;
      LODWORD(v67[0]) = v28;
      v12 = "Invalid nonce length %u";
      goto LABEL_30;
    }

    v32 = [NSData dataWithBytes:v27 length:v28];
    objc_setProperty_atomic(v10, v33, v32, 32);

    v34 = [(NSPPrivateAccessTokenChallenge *)v10 redemptionContext];

    if (!v34)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v12 = "Invalid nonce";
      goto LABEL_8;
    }

    v27 = (v25 + 33);
    v30 = v31;
  }

  if ([(NSPPrivateAccessTokenChallenge *)v10 typeRequiresRedemptionNonce])
  {
    v35 = [(NSPPrivateAccessTokenChallenge *)v10 redemptionNonce];

    if (!v35)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v12 = "Redemption nonce is required";
      goto LABEL_8;
    }
  }

  if (v30 <= 1)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Invalid challenge length";
    goto LABEL_8;
  }

  v36 = __rev16(*v27);
  if (v30 - 2 < v36)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109376;
    LODWORD(v67[0]) = v36;
    WORD2(v67[0]) = 2048;
    *(v67 + 6) = v30 - 2;
    v12 = "Invalid origin info length %u, cannot fit in %zu";
    goto LABEL_37;
  }

  if (v36 >= 0xA01)
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 67109120;
    LODWORD(v67[0]) = v36;
    v12 = "Invalid origin info length %u";
    goto LABEL_30;
  }

  if (*v27)
  {
    v39 = malloc_type_calloc(1uLL, (v36 + 1), 0xCF19D43DuLL);
    if (!v39)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 67109120;
      LODWORD(v67[0]) = v36 + 1;
      v12 = "calloc of %u bytes failed";
      goto LABEL_30;
    }

    v40 = v39;
    memcpy(v39, v27 + 1, v36);
    v41 = [NSString stringWithUTF8String:v40];
    objc_setProperty_atomic(v10, v42, v41, 64);

    free(v40);
    v44 = [objc_getProperty(v10 v43];
    objc_setProperty_atomic(v10, v45, v44, 48);

    v46 = [(NSPPrivateAccessTokenChallenge *)v10 originNames];
    v47 = [v46 firstObject];
    objc_setProperty_atomic(v10, v48, v47, 40);
  }

  if ([(NSPPrivateAccessTokenChallenge *)v10 typeRequiresOriginName]&& !objc_getProperty(v10, v49, 64, 1))
  {
    v11 = nplog_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v12 = "Origin name is required";
    goto LABEL_8;
  }

  if ([(NSPPrivateAccessTokenChallenge *)v10 tokenType]== 58796)
  {
    if (v30 == 2)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v12 = "Invalid challenge length";
      goto LABEL_8;
    }

    v51 = *(v27 + 2);
    if (v30 - 3 < v51)
    {
      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 67109376;
      LODWORD(v67[0]) = v51;
      WORD2(v67[0]) = 2048;
      *(v67 + 6) = v30 - 3;
      v12 = "Invalid credential context length %u, cannot fit in %zu";
LABEL_37:
      v13 = v11;
      v14 = 18;
      goto LABEL_31;
    }

    if (*(v27 + 2))
    {
      if (v51 == 32)
      {
        v52 = [NSData dataWithBytes:v27 + 3 length:v51];
        objc_setProperty_atomic(v10, v53, v52, 56);

        v54 = [(NSPPrivateAccessTokenChallenge *)v10 credentialContext];

        if (!v54)
        {
          v11 = nplog_obj();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          *buf = 0;
          v12 = "Invalid credential context";
          goto LABEL_8;
        }

        goto LABEL_86;
      }

      v11 = nplog_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 67109120;
      LODWORD(v67[0]) = v51;
      v12 = "Invalid credential context length %u";
LABEL_30:
      v13 = v11;
      v14 = 8;
      goto LABEL_31;
    }
  }

LABEL_86:
  objc_setProperty_atomic(v10, v50, v5, 16);
  if (os_variant_allows_internal_security_policies())
  {
    v55 = [(NSPPrivateAccessTokenChallenge *)v10 issuerName];
    v56 = [v55 containsString:@";"];

    if (v56)
    {
      v57 = [(NSPPrivateAccessTokenChallenge *)v10 issuerName];
      v58 = [v57 componentsSeparatedByString:@""];;
      self = [v58 firstObject];

      LODWORD(v58) = [(NSPPrivateAccessTokenChallenge *)v10 tokenType];
      v59 = [(NSPPrivateAccessTokenChallenge *)v10 redemptionContext];
      v61 = objc_getProperty(v10, v60, 64, 1);
      v62 = [(NSPPrivateAccessTokenChallenge *)v10 credentialContext];
      v63 = sub_1000B1F10(v10, v58, self, v59, v61, v62);

      objc_setProperty_atomic(v10, v64, v63, 16);
      goto LABEL_16;
    }
  }

LABEL_17:

  return v10;
}

- (id)initRSABlindSignatureChallengeWithIssuerName:(id)a3 redemptionNonce:(id)a4 originNames:(id)a5
{
  v5 = self;
  if (a3)
  {
    v5 = sub_1000B2DEC(&self->super, 2u, a3, a4, a5, 0);
    v6 = v5;
  }

  else
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[NSPPrivateAccessTokenChallenge initRSABlindSignatureChallengeWithIssuerName:redemptionNonce:originNames:]";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)initRateLimitedRSABlindSignatureChallengeWithIssuerName:(id)a3 redemptionNonce:(id)a4 originNames:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315138;
      v17 = "[NSPPrivateAccessTokenChallenge initRateLimitedRSABlindSignatureChallengeWithIssuerName:redemptionNonce:originNames:]";
      v15 = "%s called with null issuerName";
      goto LABEL_13;
    }

LABEL_11:

    v12 = 0;
    goto LABEL_5;
  }

  if (!v9)
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315138;
      v17 = "[NSPPrivateAccessTokenChallenge initRateLimitedRSABlindSignatureChallengeWithIssuerName:redemptionNonce:originNames:]";
      v15 = "%s called with null redemptionNonce";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (![v10 count])
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v16 = 136315138;
    v17 = "[NSPPrivateAccessTokenChallenge initRateLimitedRSABlindSignatureChallengeWithIssuerName:redemptionNonce:originNames:]";
    v15 = "%s called with null originNames.count";
LABEL_13:
    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_11;
  }

  self = sub_1000B2DEC(&self->super, 3u, v8, v9, v11, 0);
  v12 = self;
LABEL_5:

  return v12;
}

- (id)initARCChallengeWithIssuerName:(id)a3 redemptionContext:(id)a4 originNames:(id)a5 credentialContext:(id)a6
{
  v6 = self;
  if (a3)
  {
    v6 = sub_1000B2DEC(&self->super, 0xE5ACu, a3, a4, a5, a6);
    v7 = v6;
  }

  else
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315138;
      v11 = "[NSPPrivateAccessTokenChallenge initARCChallengeWithIssuerName:redemptionContext:originNames:credentialContext:]";
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)initATHMChallengeWithIssuerName:(id)a3
{
  v3 = self;
  if (a3)
  {
    v3 = sub_1000B2DEC(&self->super, 0xC07Eu, a3, 0, 0, 0);
    v4 = v3;
  }

  else
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "[NSPPrivateAccessTokenChallenge initATHMChallengeWithIssuerName:]";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)initARCChallengeWithIssuerName:(id)a3
{
  v3 = self;
  if (a3)
  {
    v3 = sub_1000B2DEC(&self->super, 0xE5ACu, a3, 0, 0, 0);
    v4 = v3;
  }

  else
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "[NSPPrivateAccessTokenChallenge initARCChallengeWithIssuerName:]";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null issuerName", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end