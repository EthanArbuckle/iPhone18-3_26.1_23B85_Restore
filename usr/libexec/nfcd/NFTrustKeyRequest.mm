@interface NFTrustKeyRequest
+ (id)keyRequestWithSubjectIdentifier:(id)identifier discretionaryData:(id)data localValidations:(id)validations counterLimit:(id)limit;
- (NFTrustKeyRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTrustKeyRequest

- (NFTrustKeyRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NFTrustKeyRequest;
  v5 = [(NFTrustObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [NFNSCheckedDecoder coder:coderCopy decodeArrayOfArrayOfClass:objc_opt_class() forKey:@"localValidations"];
    [(NFTrustKeyRequest *)v5 setValue:v6 forKey:@"localValidations"];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"counterLimit"];
    [(NFTrustKeyRequest *)v5 setValue:v7 forKey:@"counterLimit"];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subjectIdentifier"];
    [(NFTrustKeyRequest *)v5 setValue:v8 forKey:@"subjectIdentifier"];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discretionaryData"];
    [(NFTrustKeyRequest *)v5 setValue:v9 forKey:@"discretionaryData"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localValidations = [(NFTrustKeyRequest *)self localValidations];
  [coderCopy encodeObject:localValidations forKey:@"localValidations"];

  counterLimit = [(NFTrustKeyRequest *)self counterLimit];
  [coderCopy encodeObject:counterLimit forKey:@"counterLimit"];

  subjectIdentifier = [(NFTrustKeyRequest *)self subjectIdentifier];
  [coderCopy encodeObject:subjectIdentifier forKey:@"subjectIdentifier"];

  discretionaryData = [(NFTrustKeyRequest *)self discretionaryData];
  [coderCopy encodeObject:discretionaryData forKey:@"discretionaryData"];
}

+ (id)keyRequestWithSubjectIdentifier:(id)identifier discretionaryData:(id)data localValidations:(id)validations counterLimit:(id)limit
{
  identifierCopy = identifier;
  dataCopy = data;
  validationsCopy = validations;
  limitCopy = limit;
  if (!identifierCopy)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v23 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v27 = 45;
      if (isMetaClass)
      {
        v27 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyRequest with nil subjectIdentifier", v27, ClassName, Name, 272);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v28 = object_getClass(self);
    if (class_isMetaClass(v28))
    {
      v29 = 43;
    }

    else
    {
      v29 = 45;
    }

    *buf = 67109890;
    v71 = v29;
    v72 = 2082;
    v73 = object_getClassName(self);
    v74 = 2082;
    v75 = sel_getName(a2);
    v76 = 1024;
    v77 = 272;
    v30 = "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyRequest with nil subjectIdentifier";
    goto LABEL_54;
  }

  if (validationsCopy)
  {
    if (![validationsCopy count])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(self);
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(self);
        v63 = sel_getName(a2);
        v47 = 45;
        if (v45)
        {
          v47 = 43;
        }

        v43(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyRequest non nil but empty NFTrustOrLocalValidation", v47, v46, v63, 279);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      v48 = object_getClass(self);
      if (class_isMetaClass(v48))
      {
        v49 = 43;
      }

      else
      {
        v49 = 45;
      }

      *buf = 67109890;
      v71 = v49;
      v72 = 2082;
      v73 = object_getClassName(self);
      v74 = 2082;
      v75 = sel_getName(a2);
      v76 = 1024;
      v77 = 279;
      v30 = "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyRequest non nil but empty NFTrustOrLocalValidation";
      goto LABEL_54;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v15 = validationsCopy;
    v16 = [v15 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v66;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v66 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (![*(*(&v65 + 1) + 8 * i) count])
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v31 = NFLogGetLogger();
            if (v31)
            {
              v32 = v31;
              v33 = object_getClass(self);
              v34 = class_isMetaClass(v33);
              v35 = object_getClassName(self);
              v62 = sel_getName(a2);
              v36 = 45;
              if (v34)
              {
                v36 = 43;
              }

              v32(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyRequest with empty NFTrustAndLocalValidation", v36, v35, v62, 285, v65);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v37 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = object_getClass(self);
              if (class_isMetaClass(v38))
              {
                v39 = 43;
              }

              else
              {
                v39 = 45;
              }

              v40 = object_getClassName(self);
              v41 = sel_getName(a2);
              *buf = 67109890;
              v71 = v39;
              v72 = 2082;
              v73 = v40;
              v74 = 2082;
              v75 = v41;
              v76 = 1024;
              v77 = 285;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyRequest with empty NFTrustAndLocalValidation", buf, 0x22u);
            }

            goto LABEL_55;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }
  }

  if (limitCopy && ![limitCopy unsignedIntegerValue])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(self);
      v53 = class_isMetaClass(v52);
      v54 = object_getClassName(self);
      v64 = sel_getName(a2);
      v55 = 45;
      if (v53)
      {
        v55 = 43;
      }

      v51(3, "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyRequest with counterLimit of 0", v55, v54, v64, 294, v65);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v56 = object_getClass(self);
    if (class_isMetaClass(v56))
    {
      v57 = 43;
    }

    else
    {
      v57 = 45;
    }

    v58 = object_getClassName(self);
    v59 = sel_getName(a2);
    *buf = 67109890;
    v71 = v57;
    v72 = 2082;
    v73 = v58;
    v74 = 2082;
    v75 = v59;
    v76 = 1024;
    v77 = 294;
    v30 = "%c[%{public}s %{public}s]:%i Could not create NFTrustCreateKeyRequest with counterLimit of 0";
LABEL_54:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v30, buf, 0x22u);
LABEL_55:

    v21 = 0;
    goto LABEL_56;
  }

  v20 = [NFTrustKeyRequest alloc];
  v21 = v20;
  if (v20)
  {
    [(NFTrustKeyRequest *)v20 setDiscretionaryData:dataCopy];
    [(NFTrustKeyRequest *)v21 setSubjectIdentifier:identifierCopy];
    [(NFTrustKeyRequest *)v21 setLocalValidations:validationsCopy];
    [(NFTrustKeyRequest *)v21 setCounterLimit:limitCopy];
  }

LABEL_56:

  return v21;
}

@end