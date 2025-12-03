@interface MCFontPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (id)_errorFontAlreadyInstalled;
- (id)_errorFontCollection;
- (id)_errorFontInvalid;
- (id)_errorFontUnknownWithUnderlyingError:(id)error;
- (void)remove;
@end

@implementation MCFontPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  optionsCopy = options;
  clientCopy = client;
  payload = [(MCNewPayloadHandler *)self payload];
  cf = 0;
  fontData = [payload fontData];

  if (!fontData)
  {
    _errorFontInvalid = [(MCFontPayloadHandler *)self _errorFontInvalid];
    v20 = 0;
    v15 = 0;
    v21 = 0;
    v22 = 0;
    FontDescriptorsFromURL = 0;
LABEL_20:
    if (cf)
    {
      CFRelease(cf);
    }

    if (_errorFontInvalid)
    {
      v27 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v28 = v27;
        mCVerboseDescription = [_errorFontInvalid MCVerboseDescription];
        *buf = 138543362;
        *v95 = mCVerboseDescription;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Cannot install font. Error: %{public}@", buf, 0xCu);
      }

      LOBYTE(v24) = 0;
      if (error)
      {
        *error = [_errorFontInvalid MCCopyAsPrimaryError];
      }
    }

    else
    {
      LOBYTE(v24) = 1;
    }

    goto LABEL_28;
  }

  v12 = NSTemporaryDirectory();
  v13 = +[NSString MCMakeUUID];
  v14 = [v12 stringByAppendingPathComponent:v13];
  v15 = [NSURL fileURLWithPath:v14];

  v16 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    *v95 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Writing font to temporary URL %{public}@", buf, 0xCu);
  }

  fontData2 = [payload fontData];
  v88 = 0;
  [fontData2 writeToURL:v15 options:268435457 error:&v88];
  _errorFontInvalid = v88;

  v78 = installerCopy;
  if (_errorFontInvalid)
  {
    goto LABEL_5;
  }

  FontDescriptorsFromURL = MCCTFontManagerCreateFontDescriptorsFromURL();
  if (![FontDescriptorsFromURL count])
  {
    _errorFontInvalid2 = [(MCFontPayloadHandler *)self _errorFontInvalid];
    goto LABEL_11;
  }

  if ([FontDescriptorsFromURL count] >= 2)
  {
    _errorFontInvalid2 = [(MCFontPayloadHandler *)self _errorFontCollection];
LABEL_11:
    _errorFontInvalid = _errorFontInvalid2;
    goto LABEL_12;
  }

  v31 = MCCGDataProviderCreateWithURL();
  if (!v31)
  {
    v34 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Could not specify font as data provider.", buf, 2u);
    }

    _errorFontInvalid = [(MCFontPayloadHandler *)self _errorFontInvalid];
LABEL_5:
    FontDescriptorsFromURL = 0;
LABEL_12:
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v24 = 0;
    v25 = 0;
LABEL_13:
    if (v15)
    {
      v26 = +[NSFileManager defaultManager];
      [v26 removeItemAtURL:v15 error:0];
    }

    if (v25)
    {
      CFRelease(v25);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    installerCopy = v78;
    goto LABEL_20;
  }

  v25 = v31;
  v32 = MCCGFontCreateWithDataProvider();
  if (!v32)
  {
    v35 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Could not create font for introspection.", buf, 2u);
    }

    _errorFontInvalid = [(MCFontPayloadHandler *)self _errorFontInvalid];
    FontDescriptorsFromURL = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v24 = 0;
    goto LABEL_13;
  }

  v24 = v32;
  v33 = MCCGFontCopyFullName();
  if (v33)
  {
    v20 = v33;
  }

  else
  {
    v20 = MCCGFontCopyPostScriptName();
    if (!v20)
    {
      goto LABEL_41;
    }
  }

  [payload setName:v20];
LABEL_41:
  v36 = GSFontCopyPersistentPostscriptURL();
  if (!v36)
  {
    v44 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Could not create persistent URL for font.", buf, 2u);
    }

    _errorFontInvalid = [(MCFontPayloadHandler *)self _errorFontInvalid];
    FontDescriptorsFromURL = 0;
    v22 = 0;
    v21 = 0;
    goto LABEL_13;
  }

  v21 = v36;
  [payload setPersistentURL:v36];
  v37 = +[MCDependencyManager sharedManager];
  v70 = kMCDMFontURLToProfileIdentifierKey;
  v22 = [v37 parentsInDomain:?];

  absoluteString = [v21 absoluteString];
  v39 = [v22 containsObject:absoluteString];

  v40 = _MCLogObjects[0];
  if (v39)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v95 = v20;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "The font “%{public}@” has already been installed. Not installing again.", buf, 0xCu);
    }

    _errorFontInvalid = 0;
LABEL_46:
    v74 = +[MCDependencyManager sharedManager];
    absoluteString2 = [v21 absoluteString];
    profile = [payload profile];
    identifier = [profile identifier];
    [v74 addDependent:absoluteString2 ofParent:identifier inDomain:kMCDMProfileIdentifierToFontURLKey reciprocalDomain:v70];

    v43 = v74;
LABEL_57:

    FontDescriptorsFromURL = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    *v95 = v20;
    *&v95[8] = 2114;
    *&v95[10] = v21;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Installing font “%{public}@” to URL %{public}@", buf, 0x16u);
  }

  v45 = +[NSFileManager defaultManager];
  path = [v21 path];
  v66 = v45;
  LODWORD(v45) = [v45 fileExistsAtPath:path];

  if (v45)
  {
    [v66 removeItemAtURL:v21 error:0];
  }

  v47 = +[NSFileManager defaultManager];
  v87 = 0;
  [v47 copyItemAtURL:v15 toURL:v21 error:&v87];
  _errorFontInvalid = v87;

  if (_errorFontInvalid)
  {
    goto LABEL_56;
  }

  v75 = +[NSFileManager defaultManager];
  v92 = NSFileProtectionKey;
  v93 = NSFileProtectionNone;
  v72 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
  path2 = [v21 path];
  v86 = 0;
  [v75 setAttributes:v72 ofItemAtPath:path2 error:&v86];
  _errorFontInvalid = v86;

  if (_errorFontInvalid)
  {
LABEL_56:
    v43 = v66;
    goto LABEL_57;
  }

  v91 = v21;
  [NSArray arrayWithObjects:&v91 count:1];
  GSFontRegisterPersistentURLs();
  if (!cf)
  {
    _errorFontInvalid = 0;
    goto LABEL_85;
  }

  v49 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    *v95 = cf;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Results: %{public}@", buf, 0xCu);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = cf;
  v65 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
  _errorFontInvalid = 0;
  if (!v65)
  {
LABEL_82:

LABEL_85:
    v58 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v95 = v20;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Installed font “%{public}@”.", buf, 0xCu);
    }

    goto LABEL_46;
  }

  v64 = *v83;
  *&v50 = 67240450;
  v61 = v50;
LABEL_63:
  v51 = 0;
  while (1)
  {
    if (*v83 != v64)
    {
      objc_enumerationMutation(obj);
    }

    v73 = v51;
    v67 = *(*(&v82 + 1) + 8 * v51);
    v52 = [v67 objectForKeyedSubscript:{@"result", v61}];
    intValue = [v52 intValue];

    if (!intValue || intValue == 105)
    {
      v55 = _MCLogObjects[0];
      v69 = 1;
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v69 = 1;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Successfully installed font.", buf, 2u);
      }

      v54 = 0;
    }

    else
    {
      if (intValue == 305)
      {
        v77 = [v67 objectForKeyedSubscript:@"error"];
        v59 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *v95 = v77;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to install font with 305 'Font Already Installed' error: %{public}@", buf, 0xCu);
        }

        _errorFontAlreadyInstalled = [(MCFontPayloadHandler *)self _errorFontAlreadyInstalled];

        _errorFontInvalid = _errorFontAlreadyInstalled;
        goto LABEL_56;
      }

      v68 = [v67 objectForKeyedSubscript:@"error"];
      v53 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = v61;
        *v95 = intValue;
        *&v95[4] = 2114;
        *&v95[6] = v68;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to install font with %{public}d error: %{public}@", buf, 0x12u);
      }

      v63 = [(MCFontPayloadHandler *)self _errorFontUnknownWithUnderlyingError:v68];

      v69 = 0;
      v54 = 1;
      _errorFontInvalid = v63;
    }

    if (intValue != 105 && intValue != 0)
    {
      break;
    }

    v51 = v73 + 1;
    if (v65 == (v73 + 1))
    {
      v65 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
      if (v65)
      {
        goto LABEL_63;
      }

      goto LABEL_82;
    }
  }

  v57 = v54;

  if (v69)
  {
    goto LABEL_85;
  }

  FontDescriptorsFromURL = 0;
  if (v57)
  {
    goto LABEL_13;
  }

  installerCopy = v78;
LABEL_28:

  return v24 & 1;
}

- (void)remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  v2 = +[MCDependencyManager sharedManager];
  persistentURL = [payload persistentURL];
  absoluteString = [persistentURL absoluteString];
  profile = [payload profile];
  identifier = [profile identifier];
  [v2 removeDependent:absoluteString fromParent:identifier inDomain:kMCDMProfileIdentifierToFontURLKey reciprocalDomain:kMCDMFontURLToProfileIdentifierKey];
}

- (id)_errorFontInvalid
{
  v2 = MCFontErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:35000 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_errorFontCollection
{
  v2 = MCFontErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:35002 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_errorFontAlreadyInstalled
{
  v2 = MCFontErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:35003 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)_errorFontUnknownWithUnderlyingError:(id)error
{
  v3 = MCFontErrorDomain;
  errorCopy = error;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:35001 descriptionArray:v5 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];

  return v6;
}

@end