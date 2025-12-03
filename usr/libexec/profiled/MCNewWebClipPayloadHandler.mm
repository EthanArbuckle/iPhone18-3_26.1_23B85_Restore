@interface MCNewWebClipPayloadHandler
- (BOOL)_addWebClip:(id)clip;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)isInstalled;
- (id)_findInstalledClipWithIdentifier:(id)identifier;
- (id)_installedWebClip;
- (id)_webclipFailedToCreateOnDiskError;
- (id)savedWebClipIdentifier;
- (void)_removeWebClip:(id)clip;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNewWebClipPayloadHandler

- (id)savedWebClipIdentifier
{
  payload = [(MCNewPayloadHandler *)self payload];
  savedIdentifier = [payload savedIdentifier];
  if (!savedIdentifier)
  {
    fullScreen = [payload fullScreen];
    uUID = [payload UUID];
    savedIdentifier = uUID;
    if (fullScreen)
    {
      v6 = [uUID stringByReplacingOccurrencesOfString:@"-" withString:&stru_10011E740];

      savedIdentifier = v6;
    }

    v7 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      friendlyName = [payload friendlyName];
      v11 = 138543618;
      v12 = friendlyName;
      v13 = 2114;
      v14 = savedIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WebClipHandler missing saved ID for payload '%{public}@'. Falling back to identifier: %{public}@", &v11, 0x16u);
    }
  }

  return savedIdentifier;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  payload = [(MCNewPayloadHandler *)self payload];
  v10 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];

  bOOLValue = [v10 BOOLValue];
  v12 = +[NSString MCMakeUUID];
  v13 = [v12 stringByReplacingOccurrencesOfString:@"-" withString:&stru_10011E740];

  v14 = [UIWebClip webClipWithIdentifier:v13];
  [v14 setFullScreen:{objc_msgSend(payload, "fullScreen")}];
  v15 = [payload URL];
  [v14 setPageURL:v15];

  label = [payload label];
  [v14 setTitle:label];

  [v14 setRemovalDisallowed:{objc_msgSend(payload, "isRemovable") ^ 1}];
  if (objc_opt_respondsToSelector())
  {
    [v14 setConfigurationIsManaged:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setIgnoreManifestScope:{objc_msgSend(payload, "ignoreManifestScope")}];
  }

  if (objc_opt_respondsToSelector())
  {
    contentMode = [payload contentMode];
    [v14 setContentModeWithString:contentMode];
  }

  if (bOOLValue)
  {
    if (objc_opt_respondsToSelector())
    {
      targetApplicationBundleIdentifier = [payload targetApplicationBundleIdentifier];
      [v14 setApplicationBundleIdentifier:targetApplicationBundleIdentifier];
    }
  }

  else
  {
    v19 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "WebClipHandler ignoring target application identifier because the profile is not being installed by MDM", buf, 2u);
    }

    [payload setTargetApplicationBundleIdentifier:0];
  }

  iconData = [payload iconData];

  if (iconData)
  {
    iconData2 = [payload iconData];
    v22 = [UIImage imageWithData:iconData2];
    [v14 setIconImage:v22 isPrecomposed:{objc_msgSend(payload, "precomposed")}];
  }

  if ([(MCNewWebClipPayloadHandler *)self _addWebClip:v14])
  {
    [payload setSavedIdentifier:v13];

LABEL_23:
    v35 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
      friendlyName = [payload friendlyName];
      *buf = 138543362;
      v40 = friendlyName;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "WebClipHandler successfully installed web clip for payload '%{public}@'", buf, 0xCu);
    }

    v34 = 1;
    goto LABEL_26;
  }

  _webclipFailedToCreateOnDiskError = [(MCNewWebClipPayloadHandler *)self _webclipFailedToCreateOnDiskError];

  if (!_webclipFailedToCreateOnDiskError)
  {
    goto LABEL_23;
  }

  v24 = MCInstallationErrorDomain;
  payload2 = [(MCNewPayloadHandler *)self payload];
  friendlyName2 = [payload2 friendlyName];
  v27 = MCErrorArray();
  v28 = [NSError MCErrorWithDomain:v24 code:4001 descriptionArray:v27 underlyingError:_webclipFailedToCreateOnDiskError errorType:MCErrorTypeFatal, friendlyName2, 0];

  if (error)
  {
    v29 = v28;
    *error = v28;
  }

  v30 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v31 = v30;
    friendlyName3 = [payload friendlyName];
    mCVerboseDescription = [v28 MCVerboseDescription];
    *buf = 138543618;
    v40 = friendlyName3;
    v41 = 2114;
    v42 = mCVerboseDescription;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "WebClipHandler cannot install webclip for payload '%{public}@' with error: %{public}@", buf, 0x16u);
  }

  v34 = 0;
LABEL_26:

  return v34;
}

- (id)_findInstalledClipWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  +[UIWebClip webClips];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        identifier = [v8 identifier];
        v10 = [identifier isEqualToString:identifierCopy];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)_installedWebClip
{
  savedWebClipIdentifier = [(MCNewWebClipPayloadHandler *)self savedWebClipIdentifier];
  v4 = [(MCNewWebClipPayloadHandler *)self _findInstalledClipWithIdentifier:savedWebClipIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = savedWebClipIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WebClipHandler found webclip for saved ID: %{public}@", &v14, 0xCu);
    }

    v7 = v5;
  }

  else
  {
    payload = [(MCNewPayloadHandler *)self payload];
    uUID = [payload UUID];

    v7 = [(MCNewWebClipPayloadHandler *)self _findInstalledClipWithIdentifier:uUID];
    v10 = _MCLogObjects[0];
    v11 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v11)
      {
        v14 = 138543362;
        v15 = uUID;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WebClipHandler found webclip for payload UUID: %{public}@", &v14, 0xCu);
      }

      v12 = v7;
    }

    else if (v11)
    {
      v14 = 138543618;
      v15 = savedWebClipIdentifier;
      v16 = 2114;
      v17 = uUID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WebClipHandler could not find webclip for saved ID '%{public}@' or payload UUID '%{public}@'", &v14, 0x16u);
    }
  }

  return v7;
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if (isSetAside)
  {
    v5 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WebClipHandler ignoring remove because profile is set aside.", buf, 2u);
    }
  }

  else
  {
    _installedWebClip = [(MCNewWebClipPayloadHandler *)self _installedWebClip];
    if (_installedWebClip)
    {
      [(MCNewWebClipPayloadHandler *)self _removeWebClip:_installedWebClip];
    }

    else
    {
      v7 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WebClipHandler ignoring remove because webclip is not installed.", v8, 2u);
      }
    }
  }
}

- (BOOL)isInstalled
{
  _installedWebClip = [(MCNewWebClipPayloadHandler *)self _installedWebClip];
  v3 = _installedWebClip != 0;

  return v3;
}

- (void)setAside
{
  _installedWebClip = [(MCNewWebClipPayloadHandler *)self _installedWebClip];
  setAsideClip = self->_setAsideClip;
  self->_setAsideClip = _installedWebClip;

  if (self->_setAsideClip)
  {

    [(MCNewWebClipPayloadHandler *)self _removeWebClip:?];
  }

  else
  {
    v5 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WebClipHandler ignoring set aside because webclip is not installed.", v6, 2u);
    }
  }
}

- (void)unsetAside
{
  setAsideClip = self->_setAsideClip;
  if (setAsideClip && ([(UIWebClip *)setAsideClip identifier], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    if ([(MCNewWebClipPayloadHandler *)self _addWebClip:self->_setAsideClip])
    {
      v5 = self->_setAsideClip;
      self->_setAsideClip = 0;
    }
  }

  else
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WebClipHandler ignoring unset aside because webclip is not set aside.", v7, 2u);
    }
  }
}

- (id)_webclipFailedToCreateOnDiskError
{
  v2 = MCWebClipErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:8000 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (BOOL)_addWebClip:(id)clip
{
  clipCopy = clip;
  identifier = [clipCopy identifier];
  createOnDisk = [clipCopy createOnDisk];

  if (createOnDisk)
  {
    MCSBSSpringBoardServerPort();
    [identifier UTF8String];
    MCSBAddWebClipToHomeScreen();
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = identifier;
      v7 = "WebClipHandler added webclip with identifier: %{public}@";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v12, 0xCu);
    }
  }

  else
  {
    v10 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = identifier;
      v7 = "WebClipHandler failed to create webclip on disk with identifier: %{public}@";
      v8 = v10;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  return createOnDisk;
}

- (void)_removeWebClip:(id)clip
{
  clipCopy = clip;
  identifier = [clipCopy identifier];
  MCSBSSpringBoardServerPort();
  [identifier UTF8String];
  MCSBRemoveWebClipFromHomeScreen();
  removeFromDisk = [clipCopy removeFromDisk];

  v6 = _MCLogObjects[0];
  if (removeFromDisk)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = identifier;
      v7 = "WebClipHandler removed webclip with identifier: %{public}@";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = identifier;
    v7 = "WebClipHandler failed to remove webclip from disk with identifier: %{public}@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

@end