@interface MCAppLayerVPNHandler
- (id)installService:(id)service;
@end

@implementation MCAppLayerVPNHandler

- (id)installService:(id)service
{
  serviceCopy = service;
  payload = [(MCNewPayloadHandler *)self payload];
  v6 = serviceCopy;
  vPNUUID = [payload VPNUUID];
  safariDomains = [payload SafariDomains];
  v9 = [v6 setPerAppUUID:vPNUUID andSafariDomains:safariDomains];

  if (v9)
  {
    sMBDomains = [payload SMBDomains];
    v11 = [v6 setSMBDomains:sMBDomains];

    if (v11)
    {
      mailDomains = [payload mailDomains];
      v13 = [v6 setMailDomains:mailDomains];

      if (v13)
      {
        calendarDomains = [payload calendarDomains];
        v15 = [v6 setCalendarDomains:calendarDomains];

        if (v15)
        {
          contactsDomains = [payload contactsDomains];
          v17 = [v6 setContactsDomains:contactsDomains];

          if (v17)
          {
            if ([v6 setRestrictDomains:{objc_msgSend(payload, "restrictDomains")}])
            {
              associatedDomains = [payload associatedDomains];
              v19 = [v6 setAssociatedDomains:associatedDomains];

              if (v19)
              {
                excludedDomains = [payload excludedDomains];
                v21 = [v6 setExcludedDomains:excludedDomains];

                if (v21)
                {
                  v22 = 0;
                  goto LABEL_34;
                }

                v30 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not set per-app VPN excluded domains", buf, 2u);
                }
              }

              else
              {
                v29 = _MCLogObjects[0];
                if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Could not set per-app VPN associated domains", buf, 2u);
                }
              }
            }

            else
            {
              v28 = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not set per-app VPN domain restrictions", buf, 2u);
              }
            }
          }

          else
          {
            v27 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not set per-app VPN contacts domains", buf, 2u);
            }
          }
        }

        else
        {
          v26 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Could not set per-app VPN calendar domains", buf, 2u);
          }
        }
      }

      else
      {
        v25 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not set per-app VPN mail domains", buf, 2u);
        }
      }
    }

    else
    {
      v24 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not set per-app VPN SMBDomains", buf, 2u);
      }
    }
  }

  else
  {
    v23 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not add Safari App VPN rules", buf, 2u);
    }
  }

  v31 = MCVPNErrorDomain;
  payload2 = [(MCNewPayloadHandler *)self payload];
  displayName = [payload2 displayName];
  v34 = MCErrorArray();
  v22 = [NSError MCErrorWithDomain:v31 code:15000 descriptionArray:v34 errorType:MCErrorTypeFatal, displayName, 0];

LABEL_34:

  return v22;
}

@end