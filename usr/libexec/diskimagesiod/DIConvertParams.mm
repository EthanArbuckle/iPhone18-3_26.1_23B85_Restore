@interface DIConvertParams
- (BOOL)onConvertCompletionWithInError:(id)error outError:(id *)outError;
- (BOOL)openExistingImageWithError:(id *)error;
- (BOOL)prepareParamsForSquashWithError:(id *)error;
- (BOOL)prepareParamsWithError:(id *)error;
- (BOOL)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method error:(id *)error;
- (BOOL)shouldPerformInplaceSquash;
- (BOOL)shouldValidateShadows;
- (BOOL)validateDeserializationWithError:(id *)error;
- (BOOL)validateFileWithURL:(id)l error:(id *)error;
- (BOOL)validateSquashFormats;
- (DIConvertParams)initWithCoder:(id)coder;
- (DIConvertParams)initWithInputURL:(id)l outputURL:(id)rL error:(id *)error;
- (DIConvertParams)initWithInputURL:(id)l outputURL:(id)rL shadowURLs:(id)ls error:(id *)error;
- (id)convertWithCompletionBlock:(id)block;
- (id)copyUpdatedOutputURLWithError:(id *)error;
- (id)initForInplaceWithExistingParams:(id)params error:(id *)error;
- (id)initForInplaceWithURL:(id)l error:(id *)error;
- (id)prepareConvertWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation DIConvertParams

- (BOOL)validateFileWithURL:(id)l error:(id *)error
{
  lCopy = l;
  if ([lCopy isFileURL] && (stat(objc_msgSend(lCopy, "fileSystemRepresentation"), &v8) || !sub_100151E40(&v8)))
  {
    v6 = 1;
  }

  else
  {
    v6 = [DIError failWithPOSIXCode:22 description:@"Output of disk image conversion must be a file" error:error];
  }

  return v6;
}

- (DIConvertParams)initWithInputURL:(id)l outputURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v10 = +[NSArray array];
  v11 = [(DIConvertParams *)self initWithInputURL:lCopy outputURL:rLCopy shadowURLs:v10 error:error];

  return v11;
}

- (DIConvertParams)initWithInputURL:(id)l outputURL:(id)rL shadowURLs:(id)ls error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  lsCopy = ls;
  v13 = [(DIBaseParams *)self initWithURL:lCopy error:error];
  v14 = v13;
  if (v13)
  {
    if (![(DIConvertParams *)v13 validateFileWithURL:rLCopy error:error])
    {
      v17 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v14->_shadowURLs, ls);
    v15 = [DIURL newDIURLWithNSURL:rLCopy];
    outputURL = v14->_outputURL;
    v14->_outputURL = v15;

    v14->_sparseBundleBandSize = 0x4000000;
  }

  v17 = v14;
LABEL_6:

  return v17;
}

- (id)initForInplaceWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [(DIBaseParams *)self initWithURL:lCopy error:error];
  v8 = v7;
  if (v7)
  {
    if (![(DIConvertParams *)v7 validateFileWithURL:lCopy error:error])
    {
      v9 = 0;
      goto LABEL_6;
    }

    [(DIConvertParams *)v8 setConversionMethod:1];
  }

  v9 = v8;
LABEL_6:

  return v9;
}

- (id)initForInplaceWithExistingParams:(id)params error:(id *)error
{
  paramsCopy = params;
  inputURL = [paramsCopy inputURL];
  v14.receiver = self;
  v14.super_class = DIConvertParams;
  v8 = [(DIBaseParams *)&v14 initWithURL:inputURL error:error];

  if (v8)
  {
    inputURL2 = [paramsCopy inputURL];
    v10 = [(DIConvertParams *)v8 validateFileWithURL:inputURL2 error:error];

    if ((v10 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_6;
    }

    diskImageParamsXPC = [paramsCopy diskImageParamsXPC];
    [(DIBaseParams *)v8 setDiskImageParamsXPC:diskImageParamsXPC];

    [(DIConvertParams *)v8 setConversionMethod:1];
  }

  v12 = v8;
LABEL_6:

  return v12;
}

- (BOOL)validateSquashFormats
{
  outputFormat = [(DIConvertParams *)self outputFormat];
  if (outputFormat == 2 || outputFormat == 1)
  {
    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)shouldPerformInplaceSquash
{
  if ([(DIConvertParams *)self validateSquashFormats])
  {
    outputURL = [(DIConvertParams *)self outputURL];
    uRLByDeletingLastPathComponent = [outputURL URLByDeletingLastPathComponent];

    sub_100010B0C(&__p, [uRLByDeletingLastPathComponent fileSystemRepresentation]);
    v5 = sub_100150D40(&__p, 0);
    sub_100056CC8(&v8, v5, 0);
  }

  return 0;
}

- (BOOL)prepareParamsForSquashWithError:(id *)error
{
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v37 = 51;
    v38 = 2080;
    v39 = "[DIConvertParams prepareParamsForSquashWithError:]";
    LODWORD(v35) = 18;
    v34 = buf;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(__stderrp, "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = sub_1000E957C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v37 = 51;
      v38 = 2080;
      v39 = "[DIConvertParams prepareParamsForSquashWithError:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: Performing in-place squash optimization", buf, 0x12u);
    }
  }

  *__error() = v5;
  v9 = [(DIConvertParams *)self copyUpdatedOutputURLWithError:error];
  if (!v9)
  {
    goto LABEL_15;
  }

  if (![DICreateParams eraseIfExistingWithURL:v9 error:error])
  {
    v27 = *__error();
    if (!sub_1000E95F0())
    {
      v30 = sub_1000E957C();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v37 = 51;
        v38 = 2080;
        v39 = "[DIConvertParams prepareParamsForSquashWithError:]";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%.*s: Failed to erase output URL", buf, 0x12u);
      }

      goto LABEL_29;
    }

    v28 = sub_1000E957C();
    os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v37 = 51;
    v38 = 2080;
    v39 = "[DIConvertParams prepareParamsForSquashWithError:]";
    v29 = _os_log_send_and_compose_impl();

    if (v29)
    {
LABEL_25:
      fprintf(__stderrp, "%s\n", v29);
      free(v29);
    }

LABEL_29:
    v26 = 0;
    *__error() = v27;
    goto LABEL_30;
  }

  v10 = +[NSFileManager defaultManager];
  inputURL = [(DIBaseParams *)self inputURL];
  v12 = [v10 copyItemAtURL:inputURL toURL:v9 error:error];

  if ((v12 & 1) == 0)
  {
    v27 = *__error();
    if (!sub_1000E95F0())
    {
      v32 = sub_1000E957C();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v37 = 51;
        v38 = 2080;
        v39 = "[DIConvertParams prepareParamsForSquashWithError:]";
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%.*s: Failed to copy source disk image to temporary URL", buf, 0x12u);
      }

      goto LABEL_29;
    }

    v31 = sub_1000E957C();
    os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v37 = 51;
    v38 = 2080;
    v39 = "[DIConvertParams prepareParamsForSquashWithError:]";
    v29 = _os_log_send_and_compose_impl();

    if (v29)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v13 = [[DIBaseParams alloc] initWithURL:v9 error:error];
  [(DIConvertParams *)self setOutputParams:v13];

  outputParams = [(DIConvertParams *)self outputParams];
  v15 = [outputParams openExistingImageWithFlags:2 error:error];

  if ((v15 & 1) == 0)
  {
LABEL_15:
    v26 = 0;
    goto LABEL_30;
  }

  v16 = [(NSArray *)self->_shadowURLs objectAtIndex:0];
  v17 = [DIURL newDIURLWithNSURL:v16];
  [(DIBaseParams *)self setInputURL:v17];

  inputURL2 = [(DIBaseParams *)self inputURL];
  path = [inputURL2 path];
  if (!path)
  {

    goto LABEL_32;
  }

  inputURL3 = [(DIBaseParams *)self inputURL];
  v21 = [NSURLComponents componentsWithURL:inputURL3 resolvingAgainstBaseURL:1];
  v22 = v21 == 0;

  if (v22)
  {
LABEL_32:
    v26 = [DIError failWithPOSIXCode:22 description:@"Malformed URL format" error:error, v34, v35];
    goto LABEL_30;
  }

  v23 = [NSMutableArray arrayWithArray:self->_shadowURLs];
  [v23 removeObjectAtIndex:0];
  shadowChain = [(DIBaseParams *)self shadowChain];
  v25 = [shadowChain addShadowURLs:v23 error:error];

  if (v25)
  {
    [(DIBaseParams *)self setDiskImageParamsXPC:0];
    v26 = [(DIBaseParams *)self openExistingImageWithFlags:0 error:error];
  }

  else
  {
    v26 = 0;
  }

LABEL_30:
  return v26;
}

- (BOOL)prepareParamsWithError:(id *)error
{
  v5 = [(DIConvertParams *)self openExistingImageWithError:?];
  if (v5)
  {
    if ([(DIConvertParams *)self inPlaceConversion])
    {
LABEL_3:
      LOBYTE(v5) = 1;
      return v5;
    }

    if ([(DIConvertParams *)self shouldPerformInplaceSquash])
    {
      [(DIConvertParams *)self setConversionMethod:2];

      LOBYTE(v5) = [(DIConvertParams *)self prepareParamsForSquashWithError:error];
    }

    else
    {
      [(DIConvertParams *)self setConversionMethod:0];
      shadowChain = [(DIBaseParams *)self shadowChain];
      v7 = [shadowChain addShadowURLs:self->_shadowURLs error:error];

      if (v7)
      {
        goto LABEL_3;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (DIConvertParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DIConvertParams;
  v5 = [(DIBaseParams *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_conversionMethod = [coderCopy decodeIntegerForKey:@"conversionMethod"];
    v5->_outputFormat = [coderCopy decodeIntegerForKey:@"outputFormat"];
    v5->_maxRawUDIFRunSize = [coderCopy decodeIntegerForKey:@"maxRawUDIFRunSize"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputParams"];
    outputParams = v5->_outputParams;
    v5->_outputParams = v6;

    v5->_useFormatMappingInfo = [coderCopy decodeBoolForKey:@"useFormatMappingInfo"];
  }

  return v5;
}

- (BOOL)shouldValidateShadows
{
  shadowChain = [(DIBaseParams *)self shadowChain];
  shouldValidate = [shadowChain shouldValidate];

  return shouldValidate;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = DIConvertParams;
  [(DIBaseParams *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[DIConvertParams conversionMethod](self forKey:{"conversionMethod"), @"conversionMethod"}];
  [coderCopy encodeInteger:-[DIConvertParams outputFormat](self forKey:{"outputFormat"), @"outputFormat"}];
  [coderCopy encodeInteger:-[DIConvertParams maxRawUDIFRunSize](self forKey:{"maxRawUDIFRunSize"), @"maxRawUDIFRunSize"}];
  outputParams = [(DIConvertParams *)self outputParams];
  [coderCopy encodeObject:outputParams forKey:@"outputParams"];

  [coderCopy encodeBool:-[DIConvertParams useFormatMappingInfo](self forKey:{"useFormatMappingInfo"), @"useFormatMappingInfo"}];
}

- (BOOL)validateDeserializationWithError:(id *)error
{
  v10.receiver = self;
  v10.super_class = DIConvertParams;
  if ([(DIBaseParams *)&v10 validateDeserializationWithError:?])
  {
    outputParams = [(DIConvertParams *)self outputParams];
    if (outputParams)
    {
      v6 = outputParams;
      outputParams2 = [(DIConvertParams *)self outputParams];
      v8 = [outputParams2 validateDeserializationWithError:error];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)copyUpdatedOutputURLWithError:(id *)error
{
  inputURL = [(DIBaseParams *)self inputURL];
  if ([inputURL isFileURL])
  {
    outputURL = [(DIConvertParams *)self outputURL];
    v6 = access([outputURL fileSystemRepresentation], 0);

    if (!v6)
    {
      [(DIConvertParams *)self outputURL];
      fileSystemRepresentation = [objc_claimAutoreleasedReturnValue() fileSystemRepresentation];
      v8 = sub_100010B0C(buf, fileSystemRepresentation);
      v9 = sub_100150D40(v8, 0);
      sub_100056CC8(&v11, v9, 0);
    }
  }

  else
  {
  }

  [(DIConvertParams *)self outputURL];
  return objc_claimAutoreleasedReturnValue();
}

- (BOOL)onConvertCompletionWithInError:(id)error outError:(id *)outError
{
  errorCopy = error;
  if (errorCopy)
  {
    outputParams = [(DIConvertParams *)self outputParams];

    if (outputParams)
    {
      v8 = *__error();
      if (sub_1000E95F0())
      {
        v9 = sub_1000E957C();
        os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        *buf = 68157954;
        v52 = 59;
        v53 = 2080;
        v54 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
        LODWORD(v49) = 18;
        v48 = buf;
        v10 = _os_log_send_and_compose_impl();

        if (v10)
        {
          fprintf(__stderrp, "%s\n", v10);
          free(v10);
        }
      }

      else
      {
        v17 = sub_1000E957C();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 68157954;
          v52 = 59;
          v53 = 2080;
          v54 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%.*s: Due to the conversion error, erasing the output file", buf, 0x12u);
        }
      }

      *__error() = v8;
      outputParams2 = [(DIConvertParams *)self outputParams];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        outputParams3 = [(DIConvertParams *)self outputParams];
        [outputParams3 onErrorCleanup];
LABEL_17:

        goto LABEL_18;
      }

      outputURL = [(DIConvertParams *)self outputURL];
      outputParams4 = [(DIConvertParams *)self outputParams];
      inputURL = [outputParams4 inputURL];
      v24 = [outputURL isEqual:inputURL];

      if ((v24 & 1) == 0)
      {
        outputParams3 = +[NSFileManager defaultManager];
        outputParams5 = [(DIConvertParams *)self outputParams];
        inputURL2 = [outputParams5 inputURL];
        [outputParams3 removeItemAtURL:inputURL2 error:0];

        goto LABEL_17;
      }
    }

LABEL_18:
    v16 = [DIError failWithInError:errorCopy outError:outError, v48, v49];
    goto LABEL_19;
  }

  if ([(DIConvertParams *)self inPlaceConversion])
  {
    goto LABEL_9;
  }

  outputParams6 = [(DIConvertParams *)self outputParams];

  if (!outputParams6)
  {
    goto LABEL_9;
  }

  outputURL2 = [(DIConvertParams *)self outputURL];
  outputParams7 = [(DIConvertParams *)self outputParams];
  inputURL3 = [outputParams7 inputURL];
  v15 = [outputURL2 isEqual:inputURL3];

  if (v15)
  {
    goto LABEL_9;
  }

  v50 = *__error();
  if (sub_1000E95F0())
  {
    v28 = sub_1000E957C();
    os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    outputParams8 = [(DIConvertParams *)self outputParams];
    inputURL4 = [outputParams8 inputURL];
    path = [inputURL4 path];
    outputURL3 = [(DIConvertParams *)self outputURL];
    [outputURL3 path];
    *buf = 68158467;
    v52 = 59;
    v53 = 2080;
    v54 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
    v55 = 2113;
    v56 = path;
    v58 = v57 = 2113;
    v33 = _os_log_send_and_compose_impl();

    if (v33)
    {
      fprintf(__stderrp, "%s\n", v33);
      free(v33);
    }
  }

  else
  {
    v34 = sub_1000E957C();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      outputParams9 = [(DIConvertParams *)self outputParams];
      inputURL5 = [outputParams9 inputURL];
      path2 = [inputURL5 path];
      outputURL4 = [(DIConvertParams *)self outputURL];
      path3 = [outputURL4 path];
      *buf = 68158467;
      v52 = 59;
      v53 = 2080;
      v54 = "[DIConvertParams onConvertCompletionWithInError:outError:]";
      v55 = 2113;
      v56 = path2;
      v57 = 2113;
      v58 = path3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%.*s: Moving %{private}@ to %{private}@", buf, 0x26u);
    }
  }

  *__error() = v50;
  v40 = +[NSFileManager defaultManager];
  outputURL5 = [(DIConvertParams *)self outputURL];
  v42 = [v40 removeItemAtURL:outputURL5 error:outError];

  if ((v42 & 1) == 0)
  {
    goto LABEL_28;
  }

  v43 = +[NSFileManager defaultManager];
  outputParams10 = [(DIConvertParams *)self outputParams];
  inputURL6 = [outputParams10 inputURL];
  outputURL6 = [(DIConvertParams *)self outputURL];
  v47 = [v43 moveItemAtURL:inputURL6 toURL:outputURL6 error:outError];

  if (v47)
  {
LABEL_9:
    v16 = 1;
  }

  else
  {
LABEL_28:
    v16 = 0;
  }

LABEL_19:

  return v16;
}

- (id)prepareConvertWithError:(id *)error
{
  if (![(DIConvertParams *)self prepareParamsWithError:?])
  {
    v6 = 0;
    goto LABEL_7;
  }

  if ([(DIConvertParams *)self outputFormat]< 1 || [(DIConvertParams *)self outputFormat]> 12)
  {
    v5 = @"Invalid output format argument";
LABEL_5:
    v6 = [DIError nilWithPOSIXCode:22 verboseInfo:v5 error:error];
    goto LABEL_7;
  }

  if ([(DIConvertParams *)self maxRawUDIFRunSize]&& [(DIConvertParams *)self maxRawUDIFRunSize]< 0x100000)
  {
    v5 = @"Invalid raw UDIF run size limit";
    goto LABEL_5;
  }

  if ([(DIConvertParams *)self inPlaceConversion]&& [(DIConvertParams *)self encryptionMethod])
  {
    v5 = @"In-place conversion maintains the encryption passphrase and method. It's not allowed to specify encryption arguments";
    goto LABEL_5;
  }

  v9 = objc_alloc_init(DIClient2Controller_XPCHandler);
  v10 = *__error();
  if (sub_1000E95F0())
  {
    v11 = sub_1000E957C();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v28 = 43;
    v29 = 2080;
    v30 = "[DIConvertParams prepareConvertWithError:]";
    v31 = 2114;
    selfCopy2 = self;
    LODWORD(v26) = 28;
    v25 = buf;
    v12 = _os_log_send_and_compose_impl();

    if (v12)
    {
      fprintf(__stderrp, "%s\n", v12);
      free(v12);
    }
  }

  else
  {
    v13 = sub_1000E957C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v28 = 43;
      v29 = 2080;
      v30 = "[DIConvertParams prepareConvertWithError:]";
      v31 = 2114;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v10;
  if (![(DIClient2Controller_XPCHandler *)v9 connectWithError:error]|| ![(DIBaseParams *)self prepareImageWithXpcHandler:v9 fileMode:2 error:error])
  {
    goto LABEL_30;
  }

  if (![(DIConvertParams *)self conversionMethod])
  {
    v14 = [(DIConvertParams *)self copyUpdatedOutputURLWithError:error];
    if (v14)
    {
      if ([(DIConvertParams *)self outputFormat]== 9)
      {
        v15 = [(DICreateParams *)[DICreateUDSBParams alloc] initWithURL:v14 error:error];
        if (!v15)
        {
          goto LABEL_42;
        }

        [(DICreateUDSBParams *)v15 setSparseBundleBandSize:[(DIConvertParams *)self sparseBundleBandSize]];
      }

      else
      {
        if ([(DIConvertParams *)self outputFormat]== 2)
        {
          v16 = [(DICreateParams *)[DICreateASIFParams alloc] initWithURL:v14 error:error];
        }

        else
        {
          v16 = [(DICreateParams *)[DICreateRAWParams alloc] initWithURL:v14 error:error];
        }

        v15 = v16;
        if (!v16)
        {
          goto LABEL_42;
        }
      }

      [(DICreateParams *)v15 setEncryptionMethod:[(DIConvertParams *)self encryptionMethod:v25]];
      [(DIBaseParams *)v15 setReadPassphraseFlags:[(DIBaseParams *)self readPassphraseFlags]];
      shouldValidateShadows = [(DIConvertParams *)self shouldValidateShadows];
      shadowChain = [(DIBaseParams *)v15 shadowChain];
      [shadowChain setShouldValidate:shouldValidateShadows];

      [(DICreateParams *)v15 setPassphrase:[(DIConvertParams *)self passphrase]];
      publicKey = [(DIConvertParams *)self publicKey];
      [(DICreateParams *)v15 setPublicKey:publicKey];

      certificate = [(DIConvertParams *)self certificate];
      [(DICreateParams *)v15 setCertificate:certificate];

      [(DIBaseParams *)v15 setBlockSize:[(DIBaseParams *)self blockSize]];
      temporaryPassphrase = [(DIConvertParams *)self temporaryPassphrase];
      if (!temporaryPassphrase || (-[DIConvertParams temporaryPassphrase](self, "temporaryPassphrase"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[DICreateParams setPassphrase:encryptionMethod:error:](v15, "setPassphrase:encryptionMethod:error:", [v22 buf], -[DIConvertParams encryptionMethod](self, "encryptionMethod"), error), v22, temporaryPassphrase, (v23 & 1) != 0))
      {
        temporaryPassphrase = self->_temporaryPassphrase;
        self->_temporaryPassphrase = 0;

        if (![(DICreateParams *)v15 validateBlockSizeSupport])
        {
          v6 = [DIError nilWithPOSIXCode:22 verboseInfo:@"Cannot create target image format with the block size of the source image" error:error];
          goto LABEL_44;
        }

        if ([(DICreateParams *)v15 createDiskImageParamsWithError:error]&& [(DICreateParams *)v15 createEncryptionWithXPCHandler:v9 error:error])
        {
          [(DIConvertParams *)self setOutputParams:v15];

          goto LABEL_25;
        }
      }

LABEL_42:
      v6 = 0;
LABEL_44:

      goto LABEL_31;
    }

LABEL_30:
    v6 = 0;
    goto LABEL_31;
  }

LABEL_25:
  v6 = v9;
LABEL_31:

LABEL_7:
  v7 = self->_temporaryPassphrase;
  self->_temporaryPassphrase = 0;

  return v6;
}

- (id)convertWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = [NSProgress progressWithTotalUnitCount:100];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005666C;
  v11[3] = &unk_1001FCB70;
  v11[4] = self;
  v6 = blockCopy;
  v13 = v6;
  v7 = v5;
  v12 = v7;
  v8 = objc_retainBlock(v11);
  if (sub_1000F0DBC())
  {
    (v8[2])(v8);
  }

  else
  {
    v9 = dispatch_queue_create("DiskImageConvert", 0);
    dispatch_async(v9, v8);
  }

  return v7;
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = DIConvertParams;
  [(DIBaseParams *)&v5 invalidate];
  outputParams = [(DIConvertParams *)self outputParams];

  if (outputParams)
  {
    outputParams2 = [(DIConvertParams *)self outputParams];
    [outputParams2 invalidate];
  }
}

- (BOOL)setPassphrase:(const char *)passphrase encryptionMethod:(unint64_t)method error:(id *)error
{
  if (passphrase)
  {
    v8 = [[DITemporaryPassphrase alloc] initWithPassphrase:passphrase];
    temporaryPassphrase = self->_temporaryPassphrase;
    self->_temporaryPassphrase = v8;

    self->_encryptionMethod = method;
    return 1;
  }

  else
  {

    return [DIError failWithPOSIXCode:22 error:error];
  }
}

- (BOOL)openExistingImageWithError:(id *)error
{
  if ([(DIConvertParams *)self inPlaceConversion])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return [(DIBaseParams *)self openExistingImageWithFlags:v5 error:error];
}

@end