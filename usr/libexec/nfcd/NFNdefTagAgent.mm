@interface NFNdefTagAgent
- (NFNdefTagAgent)init;
- (id)handleAPDU:(id)u;
- (id)handleSelect:(id)select;
@end

@implementation NFNdefTagAgent

- (NFNdefTagAgent)init
{
  v6.receiver = self;
  v6.super_class = NFNdefTagAgent;
  v2 = [(NFNdefTagAgent *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    *(v2 + 12) = -28672;
    *(v2 + 30) = 0x2000;
  }

  return v2;
}

- (id)handleSelect:(id)select
{
  selectCopy = select;
  v6 = [NSData NF_dataWithHexString:@"D2760000850101"];
  payload = [selectCopy payload];

  LODWORD(selectCopy) = [v6 isEqualToData:payload];
  if (selectCopy)
  {
    *&self->_isSelected = 1;
    self->_tagWritten = 0;
    *buf = 144;
    self->_lastStatus = 144;
    v8 = [[NSData alloc] initWithBytes:buf length:2];
    v9 = [NFResponseAPDU responseWithData:v8];
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i unhandled AID", v15, ClassName, Name, 91);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67109890;
      v22 = v18;
      v23 = 2082;
      v24 = object_getClassName(self);
      v25 = 2082;
      v26 = sel_getName(a2);
      v27 = 1024;
      v28 = 91;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i unhandled AID", buf, 0x22u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)handleAPDU:(id)u
{
  uCopy = u;
  self->_lastStatus = -28672;
  v6 = uCopy;
  if (![v6 clss] && objc_msgSend(v6, "instruction") == 164 && !objc_msgSend(v6, "p1") && objc_msgSend(v6, "p2") == 12)
  {

    payload = [v6 payload];
    nF_asHexString = [payload NF_asHexString];

    if (([nF_asHexString isEqualToString:@"E103"] & 1) != 0 || objc_msgSend(nF_asHexString, "isEqualToString:", @"E104"))
    {
      objc_storeStrong(&self->_selectedFile, nF_asHexString);
      v9 = 36864;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v89 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName("_handleSelectCommand:");
        v93 = 45;
        if (isMetaClass)
        {
          v93 = 43;
        }

        v89(4, "%c[%{public}s %{public}s]:%i Unsupported file id requested", v93, ClassName, Name, 144);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v94 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        v95 = object_getClass(self);
        if (class_isMetaClass(v95))
        {
          v96 = 43;
        }

        else
        {
          v96 = 45;
        }

        *buf = 67109890;
        v105 = v96;
        v106 = 2082;
        v107 = object_getClassName(self);
        v108 = 2082;
        v109 = sel_getName("_handleSelectCommand:");
        v110 = 1024;
        v111 = 144;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unsupported file id requested", buf, 0x22u);
      }

      v9 = 27266;
    }

    self->_lastStatus = v9;
    *buf = __rev16(v9);
    v97 = [[NSData alloc] initWithBytes:buf length:2];
    v34 = [NFResponseAPDU responseWithData:v97];

    goto LABEL_79;
  }

  v10 = v6;
  if (![v10 clss] && objc_msgSend(v10, "instruction") == 176)
  {

    nF_asHexString = v10;
    v103 = -28672;
    v11 = [nF_asHexString p1];
    v12 = [nF_asHexString p2];
    lengthExpected = [nF_asHexString lengthExpected];
    if (self->_selectedFile)
    {
      v14 = lengthExpected;
      v15 = [(NSMutableDictionary *)self->_files objectForKeyedSubscript:?];
      v16 = objc_opt_new();
      if (v15)
      {
        v17 = v12 | (v11 << 8);
        if ([v15 length] > v17 && objc_msgSend(v15, "length") < v17 + v14)
        {
          v14 = [v15 length] - v17;
        }

        if (v14)
        {
          v18 = [v15 subdataWithRange:{v17, v14}];
          [v16 appendData:v18];

          if ([(NSString *)self->_selectedFile isEqualToString:@"E104"])
          {
            self->_tagRead = 1;
            if (v14 + v17 >= self->_ndefPayloadSize)
            {
              [(NFNdefTagAgentDelegate *)self->_delegate handleNdefTagRead];
            }
          }
        }

        v19 = 36864;
LABEL_46:
        self->_lastStatus = v19;
        v103 = __rev16(v19);
        [v16 appendBytes:&v103 length:2];
        v34 = [NFResponseAPDU responseWithData:v16];

        goto LABEL_79;
      }
    }

    else
    {
      v16 = objc_opt_new();
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v35 = NFLogGetLogger();
    if (v35)
    {
      v36 = v35;
      v37 = object_getClass(self);
      v38 = class_isMetaClass(v37);
      v39 = object_getClassName(self);
      v100 = sel_getName("_handleReadBinaryCommand:");
      v40 = 45;
      if (v38)
      {
        v40 = 43;
      }

      v36(3, "%c[%{public}s %{public}s]:%i no file selected", v40, v39, v100, 176);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v41 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = object_getClass(self);
      if (class_isMetaClass(v42))
      {
        v43 = 43;
      }

      else
      {
        v43 = 45;
      }

      *buf = 67109890;
      v105 = v43;
      v106 = 2082;
      v107 = object_getClassName(self);
      v108 = 2082;
      v109 = sel_getName("_handleReadBinaryCommand:");
      v110 = 1024;
      v111 = 176;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i no file selected", buf, 0x22u);
    }

    v15 = 0;
    v19 = 27266;
    goto LABEL_46;
  }

  v20 = v10;
  if (![v20 clss] && objc_msgSend(v20, "instruction") == 214)
  {

    nF_asHexString = v20;
    v103 = -28672;
    v21 = [nF_asHexString p1];
    v22 = [nF_asHexString p2];
    selectedFile = self->_selectedFile;
    if (selectedFile)
    {
      v24 = [(NSString *)selectedFile isEqualToString:@"E104"];
      if (v24)
      {
        v25 = 36864;
      }

      else
      {
        v25 = 27266;
        v103 = 27266;
      }

      v45 = [(NSMutableDictionary *)self->_files objectForKeyedSubscript:self->_selectedFile];
      v44 = objc_opt_new();
      if (!v24)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v44 = objc_opt_new();
      v45 = 0;
      v25 = 36864;
    }

    v46 = v22 | (v21 << 8);
    if ([nF_asHexString payloadLength] + v46 > self->_maxTagSize)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFLogGetLogger();
      if (v47)
      {
        v48 = v47;
        v49 = object_getClass(self);
        v50 = class_isMetaClass(v49);
        v51 = object_getClassName(self);
        v52 = sel_getName("_handleUpdateBinaryCommand:");
        v53 = 45;
        if (v50)
        {
          v53 = 43;
        }

        v48(3, "%c[%{public}s %{public}s]:%i Payload exceeds max tag size: %d", v53, v51, v52, 233, self->_maxTagSize);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = object_getClass(self);
        if (class_isMetaClass(v55))
        {
          v56 = 43;
        }

        else
        {
          v56 = 45;
        }

        v57 = object_getClassName(self);
        v58 = sel_getName("_handleUpdateBinaryCommand:");
        maxTagSize = self->_maxTagSize;
        *buf = 67110146;
        v105 = v56;
        v106 = 2082;
        v107 = v57;
        v108 = 2082;
        v109 = v58;
        v110 = 1024;
        v111 = 233;
        v112 = 1024;
        LODWORD(v113[0]) = maxTagSize;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Payload exceeds max tag size: %d", buf, 0x28u);
      }

LABEL_77:

      v25 = 27264;
LABEL_78:
      self->_lastStatus = v25;
      v103 = __rev16(v25);
      [v44 appendBytes:&v103 length:2];
      v34 = [NFResponseAPDU responseWithData:v44];

      goto LABEL_79;
    }

    v60 = [v45 length];
    payloadLength = [nF_asHexString payloadLength];
    v102 = v45;
    if (v60 >= v46)
    {
      v62 = payloadLength + v46;
      v63 = [v45 length];
      v64 = [NSMutableData alloc];
      v65 = v64;
      if (v63 <= v62)
      {
        v70 = [v45 subdataWithRange:{0, v46}];
        v54 = [v65 initWithData:v70];

        payload2 = [nF_asHexString payload];
        [v54 appendData:payload2];
        goto LABEL_66;
      }

      v54 = [v64 initWithData:v45];
    }

    else
    {
      v54 = [[NSMutableData alloc] initWithLength:(v46 + payloadLength)];
      -[NSObject replaceBytesInRange:withBytes:](v54, "replaceBytesInRange:withBytes:", 0, [v45 length], objc_msgSend(v45, "bytes"));
    }

    payloadLength2 = [nF_asHexString payloadLength];
    payload2 = [nF_asHexString payload];
    bytes = [payload2 bytes];
    v69 = payloadLength2;
    v45 = v102;
    [v54 replaceBytesInRange:v46 withBytes:v69, bytes];
LABEL_66:

    [(NSMutableDictionary *)self->_files setObject:v54 forKey:@"E104"];
    v71 = [[NSData alloc] initWithBytes:-[NSObject bytes](v54 length:{"bytes"), 2}];
    v72 = __rev16(*[v71 bytes]);
    if (v72 <= self->_maxTagSize)
    {
      self->_ndefPayloadSize = v72;

      if (v25 == 36864)
      {
        self->_tagWritten = 1;
      }

      goto LABEL_78;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v73 = NFLogGetLogger();
    if (v73)
    {
      v74 = v73;
      v75 = object_getClass(self);
      v76 = class_isMetaClass(v75);
      v77 = object_getClassName(self);
      v78 = sel_getName("_handleUpdateBinaryCommand:");
      v79 = !v76;
      v45 = v102;
      v80 = 45;
      if (!v79)
      {
        v80 = 43;
      }

      v74(3, "%c[%{public}s %{public}s]:%i Payload length %d exceeds max tag size: %d", v80, v77, v78, 276, v72, self->_maxTagSize);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v81 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v82 = object_getClass(self);
      if (class_isMetaClass(v82))
      {
        v83 = 43;
      }

      else
      {
        v83 = 45;
      }

      v84 = object_getClassName(self);
      v85 = sel_getName("_handleUpdateBinaryCommand:");
      v86 = self->_maxTagSize;
      *buf = 67110402;
      v105 = v83;
      v45 = v102;
      v106 = 2082;
      v107 = v84;
      v108 = 2082;
      v109 = v85;
      v110 = 1024;
      v111 = 276;
      v112 = 1024;
      LODWORD(v113[0]) = v72;
      WORD2(v113[0]) = 1024;
      *(v113 + 6) = v86;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Payload length %d exceeds max tag size: %d", buf, 0x2Eu);
    }

    self->_ndefPayloadSize = 0;
    goto LABEL_77;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v26 = NFLogGetLogger();
  if (v26)
  {
    v27 = v26;
    v28 = object_getClass(self);
    v29 = class_isMetaClass(v28);
    v98 = object_getClassName(self);
    v99 = sel_getName(a2);
    v30 = 45;
    if (v29)
    {
      v30 = 43;
    }

    v27(3, "%c[%{public}s %{public}s]:%i Unhandled command: %{public}@", v30, v98, v99, 109, v20);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v31 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = object_getClass(self);
    if (class_isMetaClass(v32))
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    *buf = 67110146;
    v105 = v33;
    v106 = 2082;
    v107 = object_getClassName(self);
    v108 = 2082;
    v109 = sel_getName(a2);
    v110 = 1024;
    v111 = 109;
    v112 = 2114;
    v113[0] = v20;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unhandled command: %{public}@", buf, 0x2Cu);
  }

  *buf = -32406;
  nF_asHexString = [[NSData alloc] initWithBytes:buf length:2];
  v34 = [NFResponseAPDU responseWithData:nF_asHexString];
LABEL_79:

  return v34;
}

@end