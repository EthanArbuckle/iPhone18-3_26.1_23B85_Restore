@interface MCNewWebClipPayloadHandler
- (BOOL)_addWebClip:(id)a3;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)isInstalled;
- (id)_findInstalledClipWithIdentifier:(id)a3;
- (id)_installedWebClip;
- (id)_webclipFailedToCreateOnDiskError;
- (id)savedWebClipIdentifier;
- (void)_removeWebClip:(id)a3;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNewWebClipPayloadHandler

- (id)savedWebClipIdentifier
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 savedIdentifier];
  if (!v3)
  {
    v4 = [v2 fullScreen];
    v5 = [v2 UUID];
    v3 = v5;
    if (v4)
    {
      v6 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:&stru_10011E740];

      v3 = v6;
    }

    v7 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v2 friendlyName];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WebClipHandler missing saved ID for payload '%{public}@'. Falling back to identifier: %{public}@", &v11, 0x16u);
    }
  }

  return v3;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = a4;
  v9 = [(MCNewPayloadHandler *)self payload];
  v10 = [v8 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];

  v11 = [v10 BOOLValue];
  v12 = +[NSString MCMakeUUID];
  v13 = [v12 stringByReplacingOccurrencesOfString:@"-" withString:&stru_10011E740];

  v14 = [UIWebClip webClipWithIdentifier:v13];
  [v14 setFullScreen:{objc_msgSend(v9, "fullScreen")}];
  v15 = [v9 URL];
  [v14 setPageURL:v15];

  v16 = [v9 label];
  [v14 setTitle:v16];

  [v14 setRemovalDisallowed:{objc_msgSend(v9, "isRemovable") ^ 1}];
  if (objc_opt_respondsToSelector())
  {
    [v14 setConfigurationIsManaged:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setIgnoreManifestScope:{objc_msgSend(v9, "ignoreManifestScope")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v9 contentMode];
    [v14 setContentModeWithString:v17];
  }

  if (v11)
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = [v9 targetApplicationBundleIdentifier];
      [v14 setApplicationBundleIdentifier:v18];
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

    [v9 setTargetApplicationBundleIdentifier:0];
  }

  v20 = [v9 iconData];

  if (v20)
  {
    v21 = [v9 iconData];
    v22 = [UIImage imageWithData:v21];
    [v14 setIconImage:v22 isPrecomposed:{objc_msgSend(v9, "precomposed")}];
  }

  if ([(MCNewWebClipPayloadHandler *)self _addWebClip:v14])
  {
    [v9 setSavedIdentifier:v13];

LABEL_23:
    v35 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
      v37 = [v9 friendlyName];
      *buf = 138543362;
      v40 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "WebClipHandler successfully installed web clip for payload '%{public}@'", buf, 0xCu);
    }

    v34 = 1;
    goto LABEL_26;
  }

  v23 = [(MCNewWebClipPayloadHandler *)self _webclipFailedToCreateOnDiskError];

  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = MCInstallationErrorDomain;
  v25 = [(MCNewPayloadHandler *)self payload];
  v26 = [v25 friendlyName];
  v27 = MCErrorArray();
  v28 = [NSError MCErrorWithDomain:v24 code:4001 descriptionArray:v27 underlyingError:v23 errorType:MCErrorTypeFatal, v26, 0];

  if (a6)
  {
    v29 = v28;
    *a6 = v28;
  }

  v30 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    v31 = v30;
    v32 = [v9 friendlyName];
    v33 = [v28 MCVerboseDescription];
    *buf = 138543618;
    v40 = v32;
    v41 = 2114;
    v42 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "WebClipHandler cannot install webclip for payload '%{public}@' with error: %{public}@", buf, 0x16u);
  }

  v34 = 0;
LABEL_26:

  return v34;
}

- (id)_findInstalledClipWithIdentifier:(id)a3
{
  v3 = a3;
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
        v9 = [v8 identifier];
        v10 = [v9 isEqualToString:v3];

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
  v3 = [(MCNewWebClipPayloadHandler *)self savedWebClipIdentifier];
  v4 = [(MCNewWebClipPayloadHandler *)self _findInstalledClipWithIdentifier:v3];
  if (v4)
  {
    v5 = v4;
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WebClipHandler found webclip for saved ID: %{public}@", &v14, 0xCu);
    }

    v7 = v5;
  }

  else
  {
    v8 = [(MCNewPayloadHandler *)self payload];
    v9 = [v8 UUID];

    v7 = [(MCNewWebClipPayloadHandler *)self _findInstalledClipWithIdentifier:v9];
    v10 = _MCLogObjects[0];
    v11 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v11)
      {
        v14 = 138543362;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WebClipHandler found webclip for payload UUID: %{public}@", &v14, 0xCu);
      }

      v12 = v7;
    }

    else if (v11)
    {
      v14 = 138543618;
      v15 = v3;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WebClipHandler could not find webclip for saved ID '%{public}@' or payload UUID '%{public}@'", &v14, 0x16u);
    }
  }

  return v7;
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if (v4)
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
    v6 = [(MCNewWebClipPayloadHandler *)self _installedWebClip];
    if (v6)
    {
      [(MCNewWebClipPayloadHandler *)self _removeWebClip:v6];
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
  v2 = [(MCNewWebClipPayloadHandler *)self _installedWebClip];
  v3 = v2 != 0;

  return v3;
}

- (void)setAside
{
  v3 = [(MCNewWebClipPayloadHandler *)self _installedWebClip];
  setAsideClip = self->_setAsideClip;
  self->_setAsideClip = v3;

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

- (BOOL)_addWebClip:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 createOnDisk];

  if (v5)
  {
    MCSBSSpringBoardServerPort();
    [v4 UTF8String];
    MCSBAddWebClipToHomeScreen();
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
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
      v13 = v4;
      v7 = "WebClipHandler failed to create webclip on disk with identifier: %{public}@";
      v8 = v10;
      v9 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  return v5;
}

- (void)_removeWebClip:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  MCSBSSpringBoardServerPort();
  [v4 UTF8String];
  MCSBRemoveWebClipFromHomeScreen();
  v5 = [v3 removeFromDisk];

  v6 = _MCLogObjects[0];
  if (v5)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v4;
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
    v11 = v4;
    v7 = "WebClipHandler failed to remove webclip from disk with identifier: %{public}@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

@end