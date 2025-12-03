@interface NFAppletExtraInfo
+ (id)infoWithDictionary:(id)dictionary applet:(id)applet;
- (id)debugDescription;
@end

@implementation NFAppletExtraInfo

+ (id)infoWithDictionary:(id)dictionary applet:(id)applet
{
  dictionaryCopy = dictionary;
  appletCopy = applet;
  v9 = objc_opt_new();
  objc_storeStrong(v9 + 1, applet);
  identifier = [appletCopy identifier];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"appletAid"];
  v12 = [identifier isEqual:v11];

  if (v12)
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:@"associatedSSD"];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [NSData NF_dataWithHexString:v13];
        if (v14)
        {
          objc_storeStrong(v9 + 2, v14);
        }
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"obgk"];

    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [NSData NF_dataWithHexString:v15];
        if (v16)
        {
          objc_storeStrong(v9 + 3, v16);
        }
      }
    }

    v17 = v9;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v23 = 45;
      if (isMetaClass)
      {
        v23 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i AID does not match", v23, ClassName, Name, 683);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(self);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      *buf = 67109890;
      v30 = v26;
      v31 = 2082;
      v32 = object_getClassName(self);
      v33 = 2082;
      v34 = sel_getName(a2);
      v35 = 1024;
      v36 = 683;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i AID does not match", buf, 0x22u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)debugDescription
{
  v3 = objc_opt_new();
  v4 = [(NFApplet *)self->_applet debugDescription];
  [v3 appendFormat:@"%@", v4];

  nF_asHexString = [(NSData *)self->_ssdAID NF_asHexString];
  nF_asHexString2 = [(NSData *)self->_obgk NF_asHexString];
  [v3 appendFormat:@", { ssdID=%@, OBGK=%@ }", nF_asHexString, nF_asHexString2];

  return v3;
}

@end