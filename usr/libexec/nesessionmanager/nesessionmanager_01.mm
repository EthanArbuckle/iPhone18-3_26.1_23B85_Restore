uint64_t sub_100021C04(void *a1)
{
  if (![a1 virtualInterface])
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v21 = 0;
      goto LABEL_17;
    }

    v8 = [a1 interfaceName];
    *buf = 138412802;
    v33 = a1;
    v34 = 2112;
    v35 = v8;
    v36 = 2080;
    v37 = "[NESMVPNSession applyTunnelRouteEnforcementPolicies]";
    v9 = "%@[%@]:%s: NULL virtual interface";
    v10 = v3;
    v11 = 32;
    goto LABEL_7;
  }

  v2 = NEVirtualInterfaceCopyName();
  if (!v2)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = [a1 interfaceName];
      *buf = 138412802;
      v33 = a1;
      v34 = 2112;
      v35 = v23;
      v36 = 2080;
      v37 = "[NESMVPNSession applyTunnelRouteEnforcementPolicies]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@[%@]:%s: NULL virtual interface name", buf, 0x20u);
    }

    v3 = 0;
    goto LABEL_16;
  }

  v3 = v2;
  v4 = [a1 server];
  v5 = [v4 primaryPhysicalInterface];
  v6 = [v5 interfaceName];

  if (!v6)
  {
    [a1 virtualInterface];
    v13 = NEVirtualInterfaceCopyDelegateInterfaceName();
    if (v13)
    {
      v7 = v3;
      v31 = v13;
      goto LABEL_13;
    }

    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 138412546;
    v33 = a1;
    v34 = 2080;
    v35 = "[NESMVPNSession applyTunnelRouteEnforcementPolicies]";
    v9 = "%@:%s: NULL delegate interface name";
    v10 = v8;
    v11 = 22;
LABEL_7:
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
LABEL_15:

    goto LABEL_16;
  }

  v7 = v3;
  v31 = v6;
LABEL_13:
  v14 = [a1 pluginConfigurationEntities];
  v27 = [a1 policySession];
  v15 = [a1 pluginPIDArray];
  v30 = [v14 IPv4Settings];
  v26 = [v30 includedRoutes];
  v29 = [v14 IPv6Settings];
  v24 = [v29 includedRoutes];
  v28 = [v14 IPv4Settings];
  v16 = [v28 excludedRoutes];
  v25 = [v14 IPv6Settings];
  v17 = [v25 excludedRoutes];
  v18 = [a1 configuration];
  v19 = [v18 VPN];
  v20 = [v19 protocol];
  v21 = sub_10003CECC(v27, v7, v31, v15, v26, v24, v16, v17, [v20 excludeLocalNetworks]);

  v3 = v7;
LABEL_17:

  return v21;
}

uint64_t sub_1000226B4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (![a1 virtualInterface])
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      return 0;
    }

    v11 = [a1 interfaceName];
    *buf = 138412802;
    *&buf[4] = a1;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2080;
    v42 = "[NESMVPNSession applyTunnelDataPolicies]";
    v12 = "%@[%@]:%s: NULL virtual interface";
LABEL_31:
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x20u);

    goto LABEL_9;
  }

  v2 = NEVirtualInterfaceCopyName();
  if (!v2)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v11 = [a1 interfaceName];
    *buf = 138412802;
    *&buf[4] = a1;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2080;
    v42 = "[NESMVPNSession applyTunnelDataPolicies]";
    v12 = "%@[%@]:%s: NULL virtual interface name";
    goto LABEL_31;
  }

  v3 = v2;
  v4 = [a1 server];
  v5 = [v4 primaryPhysicalInterface];
  v6 = [v5 interfaceName];
  if (v6)
  {
    v7 = [a1 server];
    v8 = [v7 primaryPhysicalInterface];
    v9 = [v8 interfaceName];
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    [a1 virtualInterface];
    v9 = NEVirtualInterfaceCopyDelegateInterfaceName();
    if (!v9)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2080;
        *&buf[14] = "[NESMVPNSession applyTunnelDataPolicies]";
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@:%s: NULL delegate interface name", buf, 0x16u);
      }

      myCFRelease();
      return 0;
    }
  }

  v40 = [a1 policySession];
  v39 = [a1 pluginConfigurationEntities];
  v14 = [v39 DNSSettings];
  v37 = [a1 pluginConfigurationEntities];
  v36 = [v37 proxySettings];
  v35 = [v36 enabled];
  if (v35)
  {
    v32 = 1;
  }

  else
  {
    v27 = [a1 protocol];
    v26 = [v27 proxySettings];
    v32 = [v26 enabled];
  }

  v38 = v14;
  v31 = v14 != 0;
  v34 = [a1 configuration];
  v33 = [v34 VPN];
  v15 = [v33 protocol];
  v30 = [v15 excludeLocalNetworks];
  v16 = [a1 configuration];
  v17 = [v16 VPN];
  v18 = [v17 protocol];
  v29 = [v18 excludeCellularServices];
  v19 = [a1 configuration];
  v20 = [v19 VPN];
  v21 = [v20 protocol];
  v28 = [v21 excludeDeviceCommunication];
  v22 = v3;
  v23 = v9;
  v13 = v40;
  if (v40)
  {
    if (isa_nsstring() && isa_nsstring() && v40[2] == 1)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10003BA9C;
      v42 = &unk_1000E9EF0;
      v43 = v40;
      v44 = v22;
      v46 = v30;
      v47 = v28;
      v48 = v29;
      v45 = v23;
      v49 = v32;
      v50 = v31;
      v13 = sub_100031500(NESMPolicyMasterSession, buf);
    }

    else
    {
      v13 = 0;
    }
  }

  if ((v35 & 1) == 0)
  {
  }

  myCFRelease();
  return v13;
}

void *sub_100022BCC(void *result)
{
  if (result)
  {
    v2 = result;
    if ([result virtualInterface])
    {
      v3 = NEVirtualInterfaceCopyName();
    }

    else
    {
      v3 = 0;
    }

    if (([v2 isSecondaryConnection] & 1) != 0 || objc_msgSend(v2, "tunnelKind") == 2)
    {
      v4 = 0;
      v5 = 0;
LABEL_20:
      v14 = [v2 policySession];
      v15 = sub_10004C268(v14, v3, v5, v4);

      return v15;
    }

    v6 = [v2 pluginConfigurationEntities];
    v7 = [v6 DNSSettings];
    v5 = [v7 matchDomains];

    if (!v5)
    {
      v8 = [v2 protocol];
      v1 = [v8 DNSSettings];
      v5 = [v1 matchDomains];
    }

    v9 = [v6 IPv4Settings];
    v10 = [v9 hasDefaultRoute];
    if ((v10 & 1) != 0 || ([v6 IPv6Settings], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "hasDefaultRoute")))
    {
      v11 = [v6 DNSSettings];
      if (v11)
      {
        v4 = 1;
      }

      else
      {
        v12 = [v2 protocol];
        v13 = [v12 DNSSettings];
        v4 = v13 != 0;
      }

      if (v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_19:
    goto LABEL_20;
  }

  return result;
}

id sub_100022D7C(uint64_t a1)
{
  kdebug_trace();
  result = [*(a1 + 32) virtualInterface];
  if (result)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      goto LABEL_34;
    }

    v4 = [*(a1 + 32) pluginConfigurationEntities];
    v5 = [v4 IPv4Settings];
    if (!v5)
    {
      v5 = [v3 pluginConfigurationEntities];
      v6 = [v5 IPv6Settings];
      if (!v6)
      {
        v22 = [v3 pluginConfigurationEntities];
        v23 = [v22 tunnelRemoteAddress];

        if (!v23)
        {
          goto LABEL_10;
        }

        goto LABEL_7;
      }
    }

LABEL_7:
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@: Resetting the virtual interface", buf, 0xCu);
    }

    [v3 virtualInterface];
    NEVirtualInterfaceRemoveAllAddresses();
    [v3 virtualInterface];
    NEVirtualInterfaceRemoveAllRoutes();
    [v3 virtualInterface];
    NEVirtualInterfaceSetIPv4Router();
    [v3 virtualInterface];
    NEVirtualInterfaceSetIPv6Router();
    [v3 virtualInterface];
    NEVirtualInterfaceSetAsPrimary();
LABEL_10:
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = [*(a1 + 32) pluginConfigurationEntities];
      v10 = [v9 proxySettings];
      if (!v10)
      {
        v11 = [v8 protocol];
        v10 = [v11 proxySettings];
      }

      if (![v10 enabled])
      {
        goto LABEL_27;
      }

      if (([v8 isSecondaryConnection] & 1) == 0)
      {
        v12 = [v10 matchDomains];
        if ([v12 count])
        {
LABEL_18:

          goto LABEL_19;
        }

        v13 = [v9 DNSSettings];
        v14 = [v13 matchDomains];
        v15 = [v14 count];

        if (v15)
        {
          v12 = [v9 DNSSettings];
          v16 = [v12 matchDomains];
          [v10 setMatchDomains:v16];

          goto LABEL_18;
        }
      }

LABEL_19:
      v17 = [v10 copyLegacyDictionary];
      if (v17)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v8;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@: Setting proxies", buf, 0xCu);
        }

        [v8 virtualInterface];
        if (!NEVirtualInterfaceSetProxies())
        {
          v19 = ne_log_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v8;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@: failed to set the proxy configuration", buf, 0xCu);
          }
        }
      }

LABEL_27:
      v20 = *(a1 + 32);
      goto LABEL_28;
    }

LABEL_34:
    v20 = 0;
LABEL_28:
    [v20 virtualInterface];
    v21 = *(a1 + 40);
    if (NEVirtualInterfaceUpdateAdHocServiceReturnChanges())
    {
      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_100023110(uint64_t a1)
{
  kdebug_trace();
  result = [*(a1 + 32) virtualInterface];
  if (result)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v43 = 0;
      goto LABEL_31;
    }

    v4 = [*(a1 + 32) pluginConfigurationEntities];
    v5 = [v4 DNSSettings];

    if (!v5)
    {
      sub_100020644(v3);
LABEL_30:

      v43 = *(a1 + 32);
LABEL_31:
      [v43 virtualInterface];
      v44 = *(a1 + 40);
      NEVirtualInterfaceUpdateAdHocServiceReturnChanges();
      [*(a1 + 32) virtualInterface];
      NEVirtualInterfaceRemoveAllRoutes();
      [*(a1 + 32) virtualInterface];
      NEVirtualInterfaceSetHasDefaultRoute();
      return 0;
    }

    v6 = [v4 DNSSettings];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

LABEL_8:
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: Setting Encrypted DNS", buf, 0xCu);
      }

      v10 = [NEDNSSettingsNetworkAgent alloc];
      v11 = [v3 configuration];
      v12 = [v11 identifier];
      v13 = [v10 initWithConfigUUID:v12 sessionType:objc_msgSend(v3 name:{"type"), 0}];
      [v3 setDnsAgent:v13];

      v14 = [v3 dnsAgent];
      [v14 setActive:1];

      v15 = [v4 DNSSettings];
      v16 = [v3 dnsAgent];
      [v16 setSettings:v15];

      v17 = +[NSUUID UUID];
      v18 = [v3 dnsAgent];
      [v18 setAgentUUID:v17];

      v19 = [NWNetworkAgentRegistration alloc];
      v20 = [v3 dnsAgent];
      v21 = [v19 initWithNetworkAgentClass:objc_opt_class()];
      [v3 setDnsAgentRegistration:v21];

      v22 = [v3 dnsAgentRegistration];
      LODWORD(v20) = [v22 isRegistered];

      v23 = ne_log_obj();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v20)
      {
        if (v24)
        {
          *buf = 138412290;
          *&buf[4] = v3;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Updated DNS network agent", buf, 0xCu);
        }

        v25 = [v3 dnsAgentRegistration];
        v26 = [v3 dnsAgent];
        [v25 updateNetworkAgent:v26];
      }

      else
      {
        if (v24)
        {
          *buf = 138412290;
          *&buf[4] = v3;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Registered DNS network agent", buf, 0xCu);
        }

        v25 = [v3 dnsAgentRegistration];
        v26 = [v3 dnsAgent];
        [v25 registerNetworkAgent:v26];
      }

      v27 = [v4 DNSSettings];
      v28 = [v27 matchDomains];

      if (v28)
      {
        v29 = [v4 DNSSettings];
        v30 = [v29 matchDomains];
      }

      else
      {
        v29 = [v3 protocol];
        v31 = [v29 DNSSettings];
        v30 = [v31 matchDomains];
      }

      if ([v3 tunnelKind] == 1)
      {
        v32 = [v3 isSecondaryConnection] ^ 1;
      }

      else
      {
        v32 = 0;
      }

      v33 = [v3 policySession];
      v34 = [v3 dnsAgent];
      v35 = [v34 agentUUID];
      [v3 virtualInterface];
      v36 = NEVirtualInterfaceCopyName();
      v37 = v35;
      v38 = v36;
      v39 = v30;
      if (v33 && v37 && v38 && v33[2] == 1)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10003B744;
        v85 = &unk_1000E9EC8;
        v86 = v33;
        v87 = v37;
        v88 = v39;
        v90 = v32;
        v89 = v38;
        sub_100031500(NESMPolicyMasterSession, buf);
      }

      v40 = 0;
      v41 = 0;
      v42 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v7 = [v4 DNSSettings];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_8;
    }

    v45 = ne_log_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "%@: Setting DNS", buf, 0xCu);
    }

    sub_100020644(v3);
    v46 = [v4 DNSSettings];
    v47 = [v46 domainName];

    if (v47)
    {
      v48 = [v4 DNSSettings];
      v42 = [v48 domainName];
    }

    else
    {
      v48 = [v3 protocol];
      v49 = [v48 DNSSettings];
      v42 = [v49 domainName];
    }

    [v3 virtualInterface];
    if (!NEVirtualInterfaceSetDNSDomain())
    {
      v50 = ne_log_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v3;
        _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%@: failed to set the DNS domain", buf, 0xCu);
      }
    }

    v51 = [v4 DNSSettings];
    v52 = [v51 servers];

    if (v52)
    {
      v53 = [v4 DNSSettings];
      v41 = [v53 servers];
    }

    else
    {
      v53 = [v3 protocol];
      v54 = [v53 DNSSettings];
      v41 = [v54 servers];
    }

    [v3 virtualInterface];
    if (!NEVirtualInterfaceSetDNSServers())
    {
      v55 = ne_log_obj();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v3;
        _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%@: failed to set the DNS servers", buf, 0xCu);
      }
    }

    v56 = [v4 DNSSettings];
    v57 = [v56 searchDomains];

    if (v57)
    {
      v58 = [v4 DNSSettings];
      v59 = [v58 searchDomains];
    }

    else
    {
      v58 = [v3 protocol];
      v60 = [v58 DNSSettings];
      v59 = [v60 searchDomains];
    }

    v61 = [v4 DNSSettings];
    v62 = [v61 matchDomains];

    if (v62)
    {
      v63 = [v4 DNSSettings];
      v39 = [v63 matchDomains];

      v64 = [v4 DNSSettings];
      v65 = [v64 matchDomainsNoSearch];
    }

    else
    {
      v66 = [v3 protocol];
      v67 = [v66 DNSSettings];
      v39 = [v67 matchDomains];

      v64 = [v3 protocol];
      v68 = [v64 DNSSettings];
      v65 = [v68 matchDomainsNoSearch];
    }

    if ([v3 type] != 2)
    {
      goto LABEL_62;
    }

    if (v59)
    {
      if ([v59 count] || !v39)
      {
LABEL_62:
        v40 = v59;
LABEL_63:
        [v3 virtualInterface];
        if (!NEVirtualInterfaceSetDNSSearchDomains())
        {
          v69 = ne_log_obj();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v3;
            _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%@: failed to set the DNS search domains", buf, 0xCu);
          }
        }

        if (([v3 isSecondaryConnection] & 1) == 0 && objc_msgSend(v3, "tunnelKind") != 2)
        {
          [v3 virtualInterface];
          if (!NEVirtualInterfaceSetDNSSupplementalMatchDomains())
          {
            v70 = ne_log_obj();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v3;
              _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%@: failed to set the supplemental match domains", buf, 0xCu);
            }
          }

          [v3 virtualInterface];
          if (!NEVirtualInterfaceSetDNSSupplementalMatchDomainsNoSearch())
          {
            v71 = ne_log_obj();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v3;
              _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%@: failed to set the supplemental match domains NoSearch flag", buf, 0xCu);
            }
          }
        }

        v72 = [v4 IPv4Settings];

        if (v72)
        {
          v73 = [v4 IPv4Settings];
          v74 = [v73 hasDefaultRoute];

          if (v74)
          {
            [v3 virtualInterface];
            NEVirtualInterfaceSetHasDefaultRoute();
          }

          else
          {
            v75 = [v4 IPv4Settings];
            v76 = [v75 includedRoutes];

            if (v76)
            {
              sub_1000251FC(v3, v76, 0, 2);
            }
          }
        }

        v77 = [v4 IPv6Settings];

        if (v77)
        {
          v78 = [v4 IPv6Settings];
          v79 = [v78 hasDefaultRoute];

          if (v79)
          {
            [v3 virtualInterface];
            NEVirtualInterfaceSetHasDefaultRoute();
          }

          else
          {
            v80 = [v4 IPv6Settings];
            v81 = [v80 includedRoutes];

            if (v81)
            {
              sub_1000251FC(v3, v81, 0, 30);
            }
          }
        }

        goto LABEL_29;
      }
    }

    else if (!v39)
    {
      v40 = 0;
      goto LABEL_63;
    }

    if (!(([v39 count] == 0) | v65 & 1))
    {
      v82 = [NSPredicate predicateWithBlock:&stru_1000E9B08];
      v40 = [v39 filteredArrayUsingPredicate:v82];

      v83 = ne_log_obj();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v3;
        *&buf[12] = 2112;
        *&buf[14] = v40;
        _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "%@: Using per-app match domains as search domains: %@", buf, 0x16u);
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

  return result;
}

id sub_100023DA8(uint64_t a1)
{
  kdebug_trace();
  result = [*(a1 + 32) virtualInterface];
  if (result)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v88 = 0;
LABEL_122:
      [v88 virtualInterface];
      v89 = *(a1 + 40);
      if (NEVirtualInterfaceUpdateAdHocServiceReturnChanges())
      {
        return 0;
      }

      else
      {
        return 0;
      }
    }

    v4 = [*(a1 + 32) pluginConfigurationEntities];
    [v3 virtualInterface];
    Type = NEVirtualInterfaceGetType();
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v106 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: Setting up the virtual interface", buf, 0xCu);
    }

    v6 = [v4 tunnelRemoteAddress];

    if (!v6)
    {
LABEL_19:
      v16 = [v4 IPv4Settings];

      v17 = CTBundle_ptr;
      v98 = a1;
      v99 = v4;
      if (!v16)
      {
        goto LABEL_67;
      }

      v18 = [v4 IPv4Settings];
      theArray = [v18 includedRoutes];

      v19 = [v4 IPv4Settings];
      v94 = [v19 excludedRoutes];

      v20 = [v4 IPv4Settings];
      number = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v20 hasDefaultRoute]);

      v21 = [v4 IPv4Settings];
      v22 = [v21 addresses];

      v23 = [v4 IPv4Settings];
      v24 = [v23 subnetMasks];

      if (v22)
      {
        Count = CFArrayGetCount(v22);
        if (v24)
        {
LABEL_22:
          v27 = CFArrayGetCount(v24);
          goto LABEL_25;
        }
      }

      else
      {
        Count = 0;
        if (v24)
        {
          goto LABEL_22;
        }
      }

      v27 = 0;
LABEL_25:
      if (Count < 1)
      {
        v51 = [v4 IPv4Settings];
        v52 = [v51 configMethod];

        if (v52 == 1)
        {
          [v3 virtualInterface];
          if (!NEVirtualInterfaceSetIPv4ConfigurationMethod())
          {
            v48 = ne_log_obj();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              [v3 virtualInterface];
              v90 = NEVirtualInterfaceGetType();
              *buf = 138412546;
              v106 = v3;
              v107 = 2048;
              v108 = v90;
              _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%@: failed to set the configuration method to DHCP for interface with type %ld", buf, 0x16u);
            }

            goto LABEL_59;
          }
        }
      }

      else
      {
        v28 = 0;
        v29 = 0;
        *&v25 = 138412546;
        v92 = v25;
        v30 = @"255.0.0.0";
        v100 = v24;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v22, v29);
          if (!v29 && Type == 1)
          {
            [v3 virtualInterface];
            if (!NEVirtualInterfaceSetIPv4Router())
            {
              v32 = ne_log_obj();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v106 = v3;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%@: failed to set the IPv4 router to remote address", buf, 0xCu);
              }

              v33 = ne_log_obj();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                *buf = v92;
                v106 = v3;
                v107 = 2112;
                v108 = ValueAtIndex;
                _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%@: failed to set the IPv4 router to %@", buf, 0x16u);
              }
            }
          }

          v34 = 0;
          if (v24 && v28 < v27)
          {
            v34 = CFArrayGetValueAtIndex(v24, v28++);
          }

          if (v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v30;
          }

          [v3 virtualInterface];
          if (!NEVirtualInterfaceAddAddress())
          {
            v36 = Count;
            v37 = v22;
            v38 = v27;
            v39 = v30;
            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v106 = v3;
              _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%@: failed to add IPv4 address and netmask", buf, 0xCu);
            }

            v41 = ne_log_obj();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v106 = v3;
              v107 = 2112;
              v108 = ValueAtIndex;
              v109 = 2112;
              v110 = v35;
              _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%@: failed to add address %@ netmask %@", buf, 0x20u);
            }

            v30 = v39;
            v27 = v38;
            v22 = v37;
            Count = v36;
            v24 = v100;
          }

          ++v29;
        }

        while (Count != v29);
        v4 = v99;
        v42 = [v99 IPv4Settings];
        v43 = [v42 router];

        v17 = CTBundle_ptr;
        if (v43)
        {
          if (Type == 3)
          {
            [v3 virtualInterface];
            v44 = [v99 IPv4Settings];
            v45 = [v44 router];
            v46 = NEVirtualInterfaceSetIPv4Router();

            if (!v46)
            {
              v47 = ne_log_obj();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v106 = v3;
                _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%@: failed to set the IPv4 router", buf, 0xCu);
              }

              v48 = ne_log_obj();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v49 = [v99 IPv4Settings];
                v50 = [v49 router];
                *buf = v92;
                v106 = v3;
                v107 = 2112;
                v108 = v50;
                _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%@: failed to set the IPv4 router to %@", buf, 0x16u);
              }

LABEL_59:
            }
          }
        }
      }

      if (([v3 isSecondaryConnection] & 1) == 0)
      {
        sub_1000251FC(v3, theArray, 0, 2);
        sub_1000251FC(v3, v94, 1, 2);
        if (number)
        {
          valuePtr = 0;
          CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
          v53 = valuePtr;
          v54 = valuePtr != 0;
          v55 = ne_log_obj();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = @"not primary";
            if (v53)
            {
              v56 = @"primary";
            }

            *buf = 138412546;
            v106 = v3;
            v107 = 2112;
            v108 = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%@: %@ for IPv4", buf, 0x16u);
          }

LABEL_68:
          v57 = [v4 IPv6Settings];

          if (!v57)
          {
            a1 = v98;
            goto LABEL_110;
          }

          v103 = v54;
          v58 = [v4 IPv6Settings];
          v101 = [v58 includedRoutes];

          v59 = [v4 IPv6Settings];
          theArraya = [v59 excludedRoutes];

          v60 = v17[147];
          v61 = [v4 IPv6Settings];
          v95 = [v60 numberWithBool:{objc_msgSend(v61, "hasDefaultRoute")}];

          v62 = [v4 IPv6Settings];
          v63 = [v62 addresses];

          v64 = [v4 IPv6Settings];
          v65 = [v64 networkPrefixLengths];

          if (v63)
          {
            v66 = CFArrayGetCount(v63);
            if (v65)
            {
LABEL_71:
              v67 = CFArrayGetCount(v65);
              goto LABEL_75;
            }
          }

          else
          {
            v66 = 0;
            if (v65)
            {
              goto LABEL_71;
            }
          }

          v67 = 0;
LABEL_75:
          if (v66 >= 1)
          {
            v68 = 0;
            v69 = 0;
            while (1)
            {
              v70 = CFArrayGetValueAtIndex(v63, v69);
              v71 = 0;
              if (v65 && v68 < v67)
              {
                v72 = CFArrayGetValueAtIndex(v65, v68);
                *buf = 128;
                CFNumberGetValue(v72, kCFNumberIntType, buf);
                v71 = NECreateIPv6AddressMaskStringFromPrefix();
                ++v68;
              }

              [v3 virtualInterface];
              if (!NEVirtualInterfaceAddAddress())
              {
                break;
              }

              if (v71)
              {
                goto LABEL_82;
              }

LABEL_83:
              if (v66 == ++v69)
              {
                goto LABEL_99;
              }
            }

            v73 = ne_log_obj();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v106 = v3;
              _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%@: failed to add IPv6 address and netmask", buf, 0xCu);
            }

            v74 = ne_log_obj();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v106 = v3;
              v107 = 2112;
              v108 = v70;
              v109 = 2112;
              v110 = v71;
              _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "%@: failed to add address %@ netmask %@", buf, 0x20u);
            }

            if (!v71)
            {
              goto LABEL_83;
            }

LABEL_82:
            CFRelease(v71);
            goto LABEL_83;
          }

          v75 = [v4 IPv6Settings];
          v76 = [v75 configMethod];

          if (v76 == 1)
          {
            [v3 virtualInterface];
            if (NEVirtualInterfaceSetIPv6ConfigurationMethod())
            {
              goto LABEL_99;
            }

            v77 = ne_log_obj();
            if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_98;
            }

            [v3 virtualInterface];
            v78 = NEVirtualInterfaceGetType();
            *buf = 138412546;
            v106 = v3;
            v107 = 2048;
            v108 = v78;
            v79 = "%@: failed to set the configuration method to Automatic for interface with type %ld";
          }

          else
          {
            v80 = [v4 IPv6Settings];
            v81 = [v80 configMethod];

            if (v81 != 3 || ([v3 virtualInterface], NEVirtualInterfaceSetIPv6ConfigurationMethod()))
            {
LABEL_99:
              if ([v3 isSecondaryConnection])
              {
                a1 = v98;
                v4 = v99;
                v54 = v103;
              }

              else
              {
                sub_1000251FC(v3, v101, 0, 30);
                sub_1000251FC(v3, theArraya, 1, 30);
                v54 = v103;
                if (v95)
                {
                  v82 = v103;
                }

                else
                {
                  v82 = 1;
                }

                a1 = v98;
                v4 = v99;
                if ((v82 & 1) == 0)
                {
                  valuePtr = 0;
                  CFNumberGetValue(v95, kCFNumberIntType, &valuePtr);
                  v83 = valuePtr;
                  v54 = valuePtr != 0;
                  v84 = ne_log_obj();
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                  {
                    v85 = @"not primary";
                    if (v83)
                    {
                      v85 = @"primary";
                    }

                    *buf = 138412546;
                    v106 = v3;
                    v107 = 2112;
                    v108 = v85;
                    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%@: %@ for IPv6", buf, 0x16u);
                  }
                }
              }

LABEL_110:
              if ([v3 isSecondaryConnection])
              {
                [v3 virtualInterface];
                NEVirtualInterfaceSetAsPrimary();
                [v3 virtualInterface];
              }

              else
              {
                v86 = [v3 tunnelKind];
                [v3 virtualInterface];
                if (!v54)
                {
                  NEVirtualInterfaceSetAsPrimary();
                  [v3 virtualInterface];
                  if (v86 == 1)
                  {
                    NEVirtualInterfaceSetRankLast();
                  }

                  else
                  {
                    NEVirtualInterfaceSetRankNever();
                  }

                  v87 = [v3 configuration];
                  [v87 grade];

                  [v3 virtualInterface];
                  NEVirtualInterfaceSetServiceIndex();
                  goto LABEL_121;
                }

                if (v86 != 1)
                {
                  NEVirtualInterfaceSetRankNever();
                  goto LABEL_121;
                }

                NEVirtualInterfaceSetAsPrimary();
                [v3 virtualInterface];
              }

              NEVirtualInterfaceSetRankLast();
LABEL_121:

              v88 = *(a1 + 32);
              goto LABEL_122;
            }

            v77 = ne_log_obj();
            if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
LABEL_98:

              goto LABEL_99;
            }

            [v3 virtualInterface];
            v91 = NEVirtualInterfaceGetType();
            *buf = 138412546;
            v106 = v3;
            v107 = 2048;
            v108 = v91;
            v79 = "%@: failed to set the configuration method to LinkLocalOnly for interface with type %ld";
          }

          _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, v79, buf, 0x16u);
          goto LABEL_98;
        }
      }

LABEL_67:
      v54 = 0;
      goto LABEL_68;
    }

    if (Type != 3)
    {
      v7 = [v4 tunnelOverheadBytes];
      v8 = [v7 intValue];

      v9 = [v3 getVirtualInterfaceMTU:v4];
      if (v9 >= 1)
      {
        v10 = v9;
        [v3 virtualInterface];
        if (NEVirtualInterfaceSetMTU())
        {
          goto LABEL_15;
        }

        v11 = ne_log_obj();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        *buf = 138412546;
        v106 = v3;
        v107 = 1024;
        LODWORD(v108) = v10;
        v12 = "%@: failed to set the MTU to %d";
        goto LABEL_127;
      }

      if (v8 >= 1)
      {
        [v3 virtualInterface];
        if (!NEVirtualInterfaceSetMTUOverhead())
        {
          v11 = ne_log_obj();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
LABEL_14:

            goto LABEL_15;
          }

          *buf = 138412546;
          v106 = v3;
          v107 = 1024;
          LODWORD(v108) = v8;
          v12 = "%@: failed to set the MTU overhead to %d";
LABEL_127:
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
          goto LABEL_14;
        }
      }
    }

LABEL_15:
    [v3 virtualInterface];
    v13 = [v4 tunnelRemoteAddress];
    v14 = NEVirtualInterfaceSetVPNServerAddress();

    if (!v14)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v106 = v3;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@: failed to set the VPN server's remote address", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

  return result;
}

void sub_100024C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v37 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v37;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: failed to set the tunnel configuration", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if ([*(a1 + 32) parentType] != 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [*(a1 + 32) pluginConfigurationEntities];
      v6 = xpc_dictionary_create(0, 0, 0);
      [v4 virtualInterface];
      if (NEVirtualInterfaceIsPrimary())
      {
        v7 = xpc_dictionary_create(0, 0, 0);
        v8 = [v5 IPv4Settings];
        if (v8)
        {
          v9 = [NESMSession copyDefaultRouteCacheIsIPv6:0];
        }

        else
        {
          v9 = 0;
        }

        *buf = v9;
        v23 = [v5 IPv6Settings];
        if (v23)
        {
          v24 = [NESMSession copyDefaultRouteCacheIsIPv6:1];
        }

        else
        {
          v24 = 0;
        }

        *uu = v24;
        if (v9)
        {
          v25 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(v7, "ipv4-subnets", v25);
        }

        if (v24)
        {
          v26 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(v7, "ipv6-subnets", v26);
        }

        myCFRelease();
        myCFRelease();
        xpc_dictionary_set_value(v6, "included-routes", v7);
      }

      else
      {
        [v4 virtualInterface];
        *buf = NEVirtualInterfaceCopyIPv4Routes();
        [v4 virtualInterface];
        *uu = NEVirtualInterfaceCopyIPv4Routes();
        [v4 virtualInterface];
        v39 = NEVirtualInterfaceCopyIPv6Routes();
        [v4 virtualInterface];
        v38 = NEVirtualInterfaceCopyIPv6Routes();
        v13 = [NESMSession copyRouteCacheFromRoutes:*buf isIPv6:0];
        v14 = [NESMSession copyRouteCacheFromRoutes:*uu isIPv6:0];
        v15 = [NESMSession copyRouteCacheFromRoutes:v39 isIPv6:1];
        v16 = [NESMSession copyRouteCacheFromRoutes:v38 isIPv6:1];
        myCFRelease();
        myCFRelease();
        myCFRelease();
        myCFRelease();
        if (v13 | v15)
        {
          v17 = xpc_dictionary_create(0, 0, 0);
          if (v13)
          {
            v18 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_dictionary_set_value(v17, "ipv4-subnets", v18);
          }

          if (v15)
          {
            v19 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_dictionary_set_value(v17, "ipv6-subnets", v19);
          }

          xpc_dictionary_set_value(v6, "included-routes", v17);
        }

        if (v14 | v16)
        {
          v20 = xpc_dictionary_create(0, 0, 0);
          if (v14)
          {
            v21 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_dictionary_set_value(v20, "ipv4-subnets", v21);
          }

          if (v16)
          {
            v22 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_dictionary_set_value(v20, "ipv6-subnets", v22);
          }

          xpc_dictionary_set_value(v6, "excluded-routes", v20);
        }

        myCFRelease();
        myCFRelease();
        myCFRelease();
        myCFRelease();
      }

      *uu = 0;
      v43 = 0;
      v27 = [v4 configuration];
      v28 = [v27 identifier];
      [v28 getUUIDBytes:uu];

      *buf = 0u;
      memset(v41, 0, sizeof(v41));
      uuid_unparse(uu, buf);
      NEHelperCacheSetRoutes();

      v29 = *(a1 + 32);
      if (v29)
      {
        if (([*(a1 + 32) isSecondaryConnection] & 1) == 0 && objc_msgSend(v29, "tunnelKind") != 2)
        {
          v10 = [v29 pluginConfigurationEntities];
          v30 = [v10 DNSSettings];
          v31 = [v30 matchDomains];

          if (!v31)
          {
            v32 = [v29 protocol];
            v33 = [v32 DNSSettings];
            v31 = [v33 matchDomains];
          }

          *uu = 0;
          v43 = 0;
          v34 = [v29 configuration];
          v35 = [v34 identifier];
          [v35 getUUIDBytes:uu];

          *buf = 0u;
          memset(v41, 0, sizeof(v41));
          uuid_unparse(uu, buf);
          v36 = _CFXPCCreateXPCObjectFromCFObject();
          NEHelperCacheSetMatchDomains();

LABEL_9:
        }
      }
    }
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    *buf = 138412290;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@: Finished setting the tunnel configuration", buf, 0xCu);
  }

  sub_1000213D8(*(a1 + 32), a2);
}

uint64_t sub_1000251FC(void *a1, CFArrayRef theArray, int a3, int a4)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      v10 = @"included";
      if (a3)
      {
        v10 = @"excluded";
      }

      v25 = v10;
      v11 = 1;
      while (a4 != 30)
      {
        if (a4 != 2)
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v28 = a1;
            v29 = 1024;
            LODWORD(v30) = a4;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: INET Family (%d) not supported", buf, 0x12u);
          }

          goto LABEL_22;
        }

        v12 = CFArrayGetValueAtIndex(theArray, v9);
        if (([v12 isDefaultRoute]& 1) != 0)
        {
          goto LABEL_23;
        }

        v13 = [v12 destinationAddress];

        v14 = [v12 destinationSubnetMask];

        v15 = [v12 gatewayAddress];

        [a1 virtualInterface];
        if (NEVirtualInterfaceAddIPv4Route())
        {
          goto LABEL_23;
        }

        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = a1;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: failed to add an IPv4 route", buf, 0xCu);
        }

        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413314;
          v28 = a1;
          v29 = 2112;
          v30 = v25;
          v31 = 2112;
          v32 = v13;
          v33 = 2112;
          v34 = v14;
          v35 = 2112;
          v36 = v15;
          v18 = v17;
          v19 = "%@: failed to add an IPv4 %@ route of %@/%@ -> %@";
LABEL_26:
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, v19, buf, 0x34u);
        }

LABEL_19:

LABEL_22:
        v11 = 0;
LABEL_23:

        if (v8 == ++v9)
        {
          return v11 & 1;
        }
      }

      v12 = CFArrayGetValueAtIndex(theArray, v9);
      if (([v12 isDefaultRoute]& 1) != 0)
      {
        goto LABEL_23;
      }

      v20 = [v12 destinationAddress];

      v21 = [v12 destinationNetworkPrefixLength];

      v22 = [v12 gatewayAddress];

      [a1 virtualInterface];
      if (NEVirtualInterfaceAddIPv6Route())
      {
        goto LABEL_23;
      }

      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = a1;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@: failed to add an IPv6 route", buf, 0xCu);
      }

      v17 = ne_log_obj();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      *buf = 138413314;
      v28 = a1;
      v29 = 2112;
      v30 = v25;
      v31 = 2112;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      v35 = 2112;
      v36 = v22;
      v18 = v17;
      v19 = "%@: failed to add an IPv6 %@ route of %@/%@ -> %@";
      goto LABEL_26;
    }
  }

  v11 = 1;
  return v11 & 1;
}

void sub_100025718(void *a1)
{
  if (a1)
  {
    v2 = [a1 setConfigurationCompletionHandlerArray];

    if (v2)
    {
      v3 = objc_alloc_init(NESetConfigurationCompletionOperation);
      v5 = [a1 pluginCompletionHandler];
      if (v3)
      {
        objc_setProperty_atomic_copy(v3, v4, v5, 8);
      }

      [a1 setPluginCompletionHandler:0];
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [a1 interfaceName];
        if (v3)
        {
          Property = objc_getProperty(v3, v7, 8, 1);
        }

        else
        {
          Property = 0;
        }

        v10 = objc_retainBlock(Property);
        v13 = 138412802;
        v14 = a1;
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: config request: pushing handler [%@] %@", &v13, 0x20u);
      }

      v11 = [a1 setConfigurationCompletionHandlerArray];
      [v11 addObject:v3];
    }

    else
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_ERROR))
      {
        v12 = [a1 interfaceName];
        v13 = 138412546;
        v14 = a1;
        v15 = 2112;
        v16 = v12;
        _os_log_error_impl(&_mh_execute_header, &v3->super, OS_LOG_TYPE_ERROR, "%@: config request (push) handler array nil [%@]", &v13, 0x16u);
      }
    }
  }
}

uint64_t sub_100026374(uint64_t a1)
{
  if ([*(a1 + 32) virtualInterface])
  {
    [*(a1 + 32) virtualInterface];
    v2 = *(a1 + 40);
    if (!NEVirtualInterfaceSetDelegateInterface())
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = v12;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: failed to set delegate interface to %@", &v14, 0x16u);
      }

      goto LABEL_13;
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v3;
      if (v4)
      {
        v6 = [v4 pluginConfigurationEntities];
        v7 = [v6 tunnelRemoteAddress];

        if (v7 && NEGetAddressFamilyFromString())
        {
          [v5 UTF8String];
          v8 = NECopyInterfaceAddress();
          [v4 setDelegateInterfaceAddress:v8];

          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v13 = [v4 delegateInterfaceAddress];
            v14 = 138412802;
            v15 = v4;
            v16 = 2112;
            v17 = v5;
            v18 = 2112;
            v19 = v13;
            _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%@: IP address for %@ is %@", &v14, 0x20u);
          }
        }
      }

LABEL_13:
    }
  }

  return 0;
}

void sub_10002655C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%@: failed to update the service in the dynamic store after manager set the delegate interface", &v5, 0xCu);
    }
  }
}

void sub_100026CA0(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = @"nil";
    if (v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = @"nil";
    }

    if (v11)
    {
      v15 = v11;
    }

    v54 = 138413570;
    v55 = v13;
    v56 = 2112;
    v57 = v14;
    v58 = 1024;
    *v59 = v9;
    *&v59[4] = 1024;
    *&v59[6] = a3;
    *v60 = 2112;
    *&v60[2] = v16;
    v61 = 2112;
    v62 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@: VPN Slice request callback - sliceUUID %@ : context %X type %d slice-ifname %@ error %@", &v54, 0x36u);
  }

  if (v11)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v46 = *(a1 + 32);
      v47 = *(a1 + 40);
      v48 = [v46 server];
      v49 = [v48 primaryPhysicalInterface];
      v50 = [v49 interfaceName];
      v54 = 138413058;
      v55 = v46;
      v56 = 2112;
      v57 = v47;
      v58 = 2112;
      *v59 = v50;
      *&v59[8] = 2112;
      *v60 = v11;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@: VPN Slice - Failed to request slice for sliceUUID %@ - fallback to default interface %@ <%@>", &v54, 0x2Au);
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 64);
    v22 = *(a1 + 48);
    v21 = *(a1 + 56);
    v23 = [v19 server];
    v24 = [v23 primaryPhysicalInterface];
    v25 = [v24 interfaceName];
    sub_10001BF94(v19, v22, v20, v21, v25);

    goto LABEL_30;
  }

  v26 = *(a1 + 32);
  if (v26)
  {
    *(v26 + 360) = a3;
    v27 = *(a1 + 32);
    if (v10)
    {
LABEL_14:
      if (v27)
      {
        objc_setProperty_atomic(v27, v17, v10, 496);
      }

      v28 = ne_log_obj();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v30 = *(a1 + 32);
        v31 = *(a1 + 40);
        if (v30)
        {
          Property = objc_getProperty(*(a1 + 32), v29, 496, 1);
        }

        else
        {
          Property = 0;
        }

        v54 = 138412802;
        v55 = v30;
        v56 = 2112;
        v57 = v31;
        v58 = 2112;
        *v59 = Property;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%@: VPN Slice request completed - sliceUUID %@ : %@ ", &v54, 0x20u);
      }

      v34 = *(a1 + 32);
      if (v34)
      {
        v35 = objc_getProperty(*(a1 + 32), v33, 496, 1);
      }

      else
      {
        v35 = 0;
      }

      [v34 setDelegateInterfaceName:v35];
      v37 = *(a1 + 32);
      v38 = *(a1 + 64);
      v40 = *(a1 + 48);
      v39 = *(a1 + 56);
      if (v37)
      {
        v41 = objc_getProperty(v37, v36, 496, 1);
        v42 = v37;
        v43 = v40;
        v44 = v38;
        v45 = v39;
      }

      else
      {
        v42 = 0;
        v43 = v40;
        v44 = v38;
        v45 = v39;
        v41 = 0;
      }

      sub_10001BF94(v42, v43, v44, v45, v41);
      goto LABEL_30;
    }
  }

  else
  {
    v27 = 0;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  if (v27)
  {
    objc_setProperty_atomic(v27, v17, *(a1 + 48), 504);
    v52 = *(a1 + 32);
    if (v52)
    {
      *(v52 + 364) = *(a1 + 64);
      v53 = *(a1 + 32);
      if (v53)
      {
        objc_setProperty_atomic(v53, v51, *(a1 + 56), 512);
      }
    }
  }

LABEL_30:
}

void sub_100027870(uint64_t a1)
{
  v2 = [*(a1 + 32) parentType];
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [*(a1 + 32) interfaceName];
    [v3 setDelegateInterfaceName:v4];
  }

  else
  {
    v5 = [*(a1 + 32) tunnelKind];
    v6 = *(a1 + 32);
    v7 = [v6 server];
    v8 = v7;
    if (v5 == 2)
    {
      [v7 primaryCellularInterface];
    }

    else
    {
      [v7 primaryPhysicalInterface];
    }
    v9 = ;
    v10 = [v9 interfaceName];
    [v6 setDelegateInterfaceName:v10];

    sub_100022BCC(*(a1 + 32));
  }

  [*(a1 + 32) virtualInterface];
  IsVPN = NEVirtualInterfaceIsVPN();
  v12 = ne_log_obj();
  v13 = v12;
  if (IsVPN)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Marked the virtual interface as VPN", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Failed to mark the virtual interface as VPN", v19, 2u);
  }

  v14 = [*(a1 + 32) protocol];
  v15 = [v14 identifier];
  v16 = [v15 UUIDString];

  if ([*(a1 + 32) tunnelKind] == 2)
  {
    v17 = [NSString stringWithFormat:@"%@-FB", v16];
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetServiceID();
  }

  else
  {
    [*(a1 + 32) virtualInterface];
    NEVirtualInterfaceSetServiceID();
  }
}

uint64_t sub_100027A6C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) queue];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) controlSocket];
    [v5 fileDescriptor];
    v6 = [*(a1 + 40) name];
    [v6 UTF8String];
    [*(a1 + 40) userEthernetController];
    [*(a1 + 32) setVirtualInterface:NEVirtualInterfaceCreateUserEthernet()];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create a user ethernet interface", v9, 2u);
    }
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 32) virtualInterface]);
}

void sub_10002866C(uint64_t a1)
{
  sub_10001E1D8(*(a1 + 32));
  v3 = [*(a1 + 32) policySession];
  sub_100030EC4(v3, v2);
}

uint64_t sub_100028A34(uint64_t a1)
{
  sub_10001DC34(*(a1 + 32));
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2080;
    v9 = inputNotification2String();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Handling a %s event", &v6, 0x16u);
  }

  return sub_10008F168(*(a1 + 32), *(a1 + 40) == 1);
}

void sub_100028C78(uint64_t a1)
{
  if ([*(a1 + 32) parentType] == 1)
  {
    return;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_getProperty(v3, v2, 496, 1);
    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = v4;
      v7 = [*(a1 + 32) server];
      v8 = [v7 primaryPhysicalInterface];
      if ([v8 type] == 1)
      {
        v9 = [*(a1 + 32) server];
        v10 = [v9 primaryPhysicalInterface];
        v11 = [v10 interfaceName];
        v12 = *(a1 + 40);

        v14 = *(a1 + 32);
        if (v11 == v12)
        {
          v15 = *(a1 + 40);
          if (v14)
          {
            Property = objc_getProperty(*(a1 + 32), v13, 496, 1);
            v17 = *(a1 + 48);
            v18 = v14;
            v19 = v15;
          }

          else
          {
            v17 = *(a1 + 48);
            v18 = 0;
            v19 = *(a1 + 40);
            Property = 0;
          }

          sub_10002903C(v18, v19, Property, v17);
          return;
        }
      }

      else
      {

        v20 = *(a1 + 32);
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 32) tunnelKind] == 2)
  {
    v21 = [*(a1 + 32) server];
    v22 = [v21 primaryCellularInterface];
  }

  else
  {
    v21 = [*(a1 + 32) server];
    v22 = [v21 primaryPhysicalInterface];
  }

  v23 = v22;
  v39 = [v22 interfaceName];

  [*(a1 + 32) virtualInterface];
  v24 = NEVirtualInterfaceCopyDelegateInterfaceName();
  if (([v24 isEqualToString:v39] & 1) == 0)
  {
    v25 = v39;

    [*(a1 + 32) setDelegateInterfaceName:v25];
    v24 = v25;
  }

  v26 = [*(a1 + 32) primaryTunnelPlugin];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && sub_10001A2D4(v26))
  {
    v27 = [*(a1 + 32) server];
    v28 = [v27 primaryPhysicalInterface];
    v29 = [v28 interfaceName];
    sub_10001AA48(v26, v29);
  }

  v30 = [*(a1 + 32) proxyEnabled:*(a1 + 40)];
  v31 = *(a1 + 48);
  sub_10001C2F0(*(a1 + 32), (v31 & 4) != 0, v30, v39);
  if (([*(a1 + 40) hasPrefix:@"utun"] & 1) == 0 && (objc_msgSend(*(a1 + 40), "hasPrefix:", @"ipsec") & 1) == 0)
  {
    if ((v31 & 4) != 0)
    {
      v32 = [*(a1 + 32) configuration];
      v33 = [v32 VPN];
      if ([v33 isOnDemandEnabled])
      {
      }

      else
      {
        v34 = [*(a1 + 32) configuration];
        v35 = [v34 VPN];
        v36 = [v35 protocol];
        v37 = [v36 includeAllNetworks];

        if (v37)
        {
          sub_10001F404(*(a1 + 32), v38);
        }
      }
    }

    sub_10002903C(*(a1 + 32), *(a1 + 40), v24, *(a1 + 48));
  }
}

void sub_10002903C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a2;
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    if (v7)
    {
      v9 = [v7 isEqualToString:v13];
      v10 = v9;
      if ((a4 & 3) == 0 && v9)
      {
        v11 = [a1 stateHandler];
        [v11 handleInterfaceUnavailable:v13];
LABEL_12:

        goto LABEL_13;
      }

      if ((a4 & 3) == 0)
      {
        goto LABEL_13;
      }

      v11 = [a1 stateHandler];
      if (v10)
      {
        v12 = [a1 delegateInterfaceAddress];
        [v11 handleInterfaceAvailable:v13 changed:{objc_msgSend(a1, "interface:hasIPAddress:currentFlags:", v8, v12, a4) ^ 1}];

        goto LABEL_12;
      }
    }

    else
    {
      if ((a4 & 3) == 0)
      {
        goto LABEL_13;
      }

      v11 = [a1 stateHandler];
    }

    [v11 handleInterfaceAvailable:v13 changed:0];
    goto LABEL_12;
  }

LABEL_13:
}

void sub_100029674(uint64_t a1)
{
  sub_10008F168(*(a1 + 32), 1);
  v2 = [*(a1 + 32) stateHandler];
  [v2 handleUserSwitch];
}

void sub_10002975C(uint64_t a1)
{
  sub_10008F168(*(a1 + 32), 1);
  v2 = [*(a1 + 32) stateHandler];
  [v2 handleUserLogout];
}

void sub_100029840(uint64_t a1)
{
  sub_10008FE40(*(a1 + 32), 0);
  v2 = [*(a1 + 32) stateHandler];
  [v2 handleWakeup];
}

void sub_100029934(uint64_t a1)
{
  v5 = [*(a1 + 32) protocol];
  if ([v5 disconnectOnWake])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) protocol];
    v4 = [v3 disconnectOnWakeTimeout];

    if (v2 <= v4)
    {
      return;
    }

    [*(a1 + 32) setLastStopReason:2];
    v5 = [*(a1 + 32) stateHandler];
    [v5 handleStop];
  }
}

void sub_100029A80(uint64_t a1)
{
  v1 = [*(a1 + 32) stateHandler];
  [v1 handleSleep];
}

id *sub_10002AAF8(id *result)
{
  if (*(result + 10) == 32)
  {
    return [result[4] invalidate];
  }

  return result;
}

void sub_10002D200(uint64_t a1)
{
  v8 = [*(a1 + 32) policySession];
  v2 = *(a1 + 40);
  if (!v8)
  {

LABEL_5:
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *v10 = 138412546;
      *&v10[4] = v7;
      *&v10[12] = 2080;
      *&v10[14] = "[NESMVPNSession addDefaultDropPolicyForPluginUUIDs:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@:%s: Failed to add Drop Control Policies for VPN Session", v10, 0x16u);
    }

    return;
  }

  if (v2 && [v2 count])
  {
    *v10 = _NSConcreteStackBlock;
    *&v10[8] = 3221225472;
    *&v10[16] = sub_100047F30;
    v11 = &unk_1000E9CC0;
    v12 = v8;
    v3 = v2;
    v13 = v3;
    v4 = sub_100031500(NESMPolicyMasterSession, v10);

    if (v4)
    {
      return;
    }

    goto LABEL_5;
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Skip, no UUIDs", buf, 2u);
  }
}

id sub_10002D790(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 464, 1);
    v3 = *(a1 + 32);
    if (Property)
    {
      if (v3)
      {
        v3 = objc_getProperty(v3, v4, 464, 1);
      }

      v3[2]();
      v3 = *(a1 + 32);
      if (v3)
      {
        objc_setProperty_atomic_copy(v3, v6, 0, 464);
        v3 = *(a1 + 32);
      }
    }
  }

  v7 = *(a1 + 40);

  return [v3 setStatus:v7];
}

void sub_10002DF74(void *a1)
{
  if (a1)
  {
    v2 = [a1 setConfigurationCompletionHandlerArray];
    v3 = [v2 count];

    if (v3)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v27 = [a1 setConfigurationCompletionHandlerArray];
        *buf = 138412546;
        v30 = a1;
        v31 = 2048;
        v32 = [v27 count];
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: Disconnected session has %lu stale completionHandler(s)", buf, 0x16u);
      }

      [NEDiagnosticReport logInternalError:@"SessionManager" subType:@"StaleConfigCompletionHandler" context:0];
      v5 = [NSError errorWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
      v6 = [a1 setConfigurationCompletionHandlerArray];
      v7 = [v6 count];

      if (v7)
      {
        *&v8 = 138412546;
        v28 = v8;
        while (1)
        {
          v9 = [a1 setConfigurationCompletionHandlerArray];
          v10 = [v9 objectAtIndexedSubscript:0];

          if (!v10)
          {
            break;
          }

          v11 = ne_log_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [a1 interfaceName];
            Property = objc_getProperty(v10, v13, 8, 1);
            v15 = objc_retainBlock(Property);
            *buf = 138412802;
            v30 = a1;
            v31 = 2112;
            v32 = v12;
            v33 = 2112;
            v34 = v15;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: config request: popping handler [%@] %@", buf, 0x20u);
          }

          if (objc_getProperty(v10, v16, 8, 1))
          {
            v17 = ne_log_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v19 = objc_getProperty(v10, v18, 8, 1);
              v20 = objc_retainBlock(v19);
              *buf = v28;
              v30 = a1;
              v31 = 2112;
              v32 = v20;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: config request: calling completionHandler %@", buf, 0x16u);
            }

            v22 = objc_getProperty(v10, v21, 8, 1);
            v22[2](v22, v5);
          }

          v23 = [a1 setConfigurationCompletionHandlerArray];
          [v23 removeObject:v10];

          v24 = [a1 setConfigurationCompletionHandlerArray];
          v25 = [v24 count];

          if (!v25)
          {
            goto LABEL_17;
          }
        }

        v26 = [a1 setConfigurationCompletionHandlerArray];
        [v26 removeAllObjects];
      }

LABEL_17:
    }
  }
}

id sub_10002EB30(id self, const char *a2)
{
  v2 = self;
  if (!self)
  {
    return v2;
  }

  v3 = objc_getProperty(self, a2, 688, 1);
  v4 = [v3 controlUnit];
  if (![v4 unsignedIntValue])
  {

    return 0;
  }

  v5 = [v2 configuration];
  v6 = [v5 externalIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [v2 waitForPerApp];

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v32 = [v2 configuration];
    v33 = [v32 externalIdentifier];
    v34 = [v2 configuration];
    v35 = [v34 dnsProxy];
    v36 = [v35 perApp];
    v37 = [v36 copyCachedMachOUUIDs];
    *buf = 136315650;
    v44 = "[NESMDNSProxySession resetPolicies]";
    v45 = 2112;
    v46 = v33;
    v47 = 2112;
    v48 = v37;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s: resetPolicies - <%@> UUIDs %@", buf, 0x20u);
  }

  v10 = [v2 policySession];
  v11 = [v2 primaryTunnelPlugin];
  v41 = sub_100019700(v11, v12);
  v13 = [v41 firstObject];
  v15 = objc_getProperty(v2, v14, 688, 1);
  v16 = [v15 controlUnit];
  v17 = [v16 unsignedIntValue];
  Property = [v2 server];
  v20 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v19, 80, 1);
  }

  v21 = Property;
  v42 = objc_getProperty(v2, v22, 728, 1);
  v40 = [v2 configuration];
  v23 = [v40 externalIdentifier];
  if (v23)
  {
    [v2 configuration];
    v24 = v17;
    v25 = v21;
    v27 = v26 = v10;
    [v27 dnsProxy];
    v28 = v39 = v11;
    [v28 perApp];
    v38 = v20;
    v30 = v29 = v16;
    v2 = sub_10004A40C(v26, v13, v24, v25, v42, v30);

    v16 = v29;
    v20 = v38;

    v11 = v39;
    v10 = v26;
    v21 = v25;
  }

  else
  {
    v2 = sub_10004A40C(v10, v13, v17, v21, v42, 0);
  }

  return v2;
}

void sub_10002EF6C(void *a1)
{
  if (a1)
  {
    v2 = [a1 primaryTunnelPlugin];

    if (v2)
    {
      v3 = dns_configuration_copy();
      if (v3)
      {
        v4 = v3;
        v20 = a1;
        v21 = objc_alloc_init(NSMutableArray);
        if (*(v4 + 12) >= 1)
        {
          v5 = 0;
          do
          {
            v6 = *(*(v4 + 16) + 8 * v5);
            v7 = objc_alloc_init(NSMutableArray);
            if (*(v6 + 8) >= 1)
            {
              v8 = 0;
              do
              {
                v9 = *(*(v6 + 12) + 8 * v8);
                v10 = NECreateAddressString();
                if (v10)
                {
                  [v7 addObject:v10];
                }

                ++v8;
              }

              while (v8 < *(v6 + 8));
            }

            v11 = objc_alloc_init(NSMutableArray);
            v12 = *(v6 + 24);
            if (v12 >= 1)
            {
              for (i = 0; i < v12; ++i)
              {
                if (*(*(v6 + 28) + 8 * i))
                {
                  v14 = [[NSString alloc] initWithUTF8String:*(*(v6 + 28) + 8 * i)];
                  if (v14)
                  {
                    [v11 addObject:v14];
                  }

                  v12 = *(v6 + 24);
                }
              }
            }

            v15 = [[NEDNSSettings alloc] initWithServers:v7];
            if (v15)
            {
              if (*v6)
              {
                v16 = [[NSString alloc] initWithUTF8String:*v6];
                [v15 setDomainName:v16];
              }

              [v15 setSearchDomains:{v11, v20}];
              [v21 addObject:v15];
            }

            ++v5;
          }

          while (v5 < *(v4 + 12));
        }

        dns_configuration_free();
        if (v21)
        {
          v17 = [v20 primaryTunnelPlugin];
          if (v17)
          {
            v18 = v21;
            v19 = [v17 remotePluginObject];
            [v19 setSystemDNSSettings:v18];
          }
        }
      }
    }
  }
}

uint64_t sub_10002F624(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = *(a1 + 720);
    v9 = v5;
    if (v6)
    {
      v7 = v6 == v5;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      dispatch_source_cancel(v6);
    }

    objc_storeStrong((a1 + 720), a2);
    v5 = v9;
  }

  return _objc_release_x1(v4, v5);
}

void sub_10002FDA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained status] == 1)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: restarting", &v4, 0xCu);
    }

    [v2 restartSession];
  }
}

void sub_10002FE70(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    if (info.numer)
    {
      v1 = info.denom == 0;
    }

    else
    {
      v1 = 1;
    }

    if (!v1)
    {
      qword_1000FCD28 = 1000000000 * info.denom / info.numer;
    }
  }
}

void sub_100030058(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 696) & 1) != 0)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [v4 configuration];
      v6 = [v5 name];
      v13 = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Re-setting policies because the installed apps or configuration changed for %@", &v13, 0x16u);
    }

    if ((sub_10002EB30(*(a1 + 32), v7) & 1) == 0)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        v11 = [v10 configuration];
        v12 = [v11 name];
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v12;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: failed to update the DNSProxy policies after installed applications or configuration changed for %@", &v13, 0x16u);
      }

      v9 = [*(a1 + 32) stateHandler];
      [v9 handleStop];
    }
  }
}

uint64_t sub_100030CC4(uint64_t result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_1000334DC;
    v1[3] = &unk_1000E9C98;
    v1[4] = result;
    return sub_100031500(NESMPolicyMasterSession, v1);
  }

  return result;
}

uint64_t sub_100030D44(uint64_t result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_100033128;
    v1[3] = &unk_1000E9C98;
    v1[4] = result;
    return sub_100031500(NESMPolicyMasterSession, v1);
  }

  return result;
}

uint64_t sub_100030DC4(uint64_t result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_100032F44;
    v1[3] = &unk_1000E9C98;
    v1[4] = result;
    return sub_100031500(NESMPolicyMasterSession, v1);
  }

  return result;
}

uint64_t sub_100030E44(uint64_t result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_100032D60;
    v1[3] = &unk_1000E9C98;
    v1[4] = result;
    return sub_100031500(NESMPolicyMasterSession, v1);
  }

  return result;
}

id sub_100030EC4(id result, const char *a2)
{
  if (result)
  {
    v2 = result;
    result = [objc_getProperty(result a2];
    if (result)
    {
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_100032C4C;
      v3[3] = &unk_1000E9C98;
      v3[4] = v2;
      return sub_100031500(NESMPolicyMasterSession, v3);
    }
  }

  return result;
}

uint64_t sub_100030F60(uint64_t result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_10003290C;
    v1[3] = &unk_1000E9C98;
    v1[4] = result;
    return sub_100031500(NESMPolicyMasterSession, v1);
  }

  return result;
}

id sub_100030FE0(id result, const char *a2)
{
  if (result)
  {
    v2 = result;
    result = [objc_getProperty(result a2];
    if (result)
    {
      v3 = ne_log_large_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        Property = objc_getProperty(v2, v4, 136, 1);
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "DNS policy IDs to be removed: %@", buf, 0xCu);
      }

      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10003289C;
      v5[3] = &unk_1000E9C98;
      v5[4] = v2;
      return sub_100031500(NESMPolicyMasterSession, v5);
    }
  }

  return result;
}

uint64_t sub_100031108(uint64_t result)
{
  if (result)
  {
    sub_100031148(result);

    return sub_100031500(NESMPolicyMasterSession, &stru_1000E9D00);
  }

  return result;
}

uint64_t sub_100031148(uint64_t result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_100032394;
    v1[3] = &unk_1000E9C98;
    v1[4] = result;
    return sub_100031500(NESMPolicyMasterSession, v1);
  }

  return result;
}

void sub_1000311C8(void *a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    if (v3)
    {
      v6 = [objc_getProperty(a1 v4];

      if (v6)
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100032244;
        v7[3] = &unk_1000E9CC0;
        v8 = v5;
        v9 = a1;
        sub_100031500(NESMPolicyMasterSession, v7);
      }
    }
  }
}

void sub_10003129C(void *a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    if (v3)
    {
      v6 = [objc_getProperty(a1 v4];

      if (v6)
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_1000320F4;
        v7[3] = &unk_1000E9CC0;
        v8 = v5;
        v9 = a1;
        sub_100031500(NESMPolicyMasterSession, v7);
      }
    }
  }
}

void sub_100031370(void *a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    if (v3)
    {
      v6 = [objc_getProperty(a1 v4];

      if (v6)
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100031FA4;
        v7[3] = &unk_1000E9CC0;
        v8 = v5;
        v9 = a1;
        sub_100031500(NESMPolicyMasterSession, v7);
      }
    }
  }
}

void sub_100031444(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000314F0;
    v5[3] = &unk_1000E9CC0;
    v5[4] = a1;
    v6 = v3;
    sub_100031500(NESMPolicyMasterSession, v5);
  }
}

uint64_t sub_100031500(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (qword_1000FD530 != -1)
  {
    dispatch_once(&qword_1000FD530, &stru_1000E9C70);
  }

  if (qword_1000FD528)
  {
    os_unfair_lock_lock(&unk_1000FD520);
    v3 = v2[2](v2, qword_1000FD528);
    os_unfair_lock_unlock(&unk_1000FD520);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000315AC(id a1)
{
  v1 = [NESMPolicyMasterSession alloc];
  if (v1)
  {
    v43.receiver = v1;
    v43.super_class = NESMPolicyMasterSession;
    v2 = objc_msgSendSuper2(&v43, "init");
    if (!v2)
    {
LABEL_6:
      v41 = v2;
      v2 = v41;
      goto LABEL_8;
    }

    v3 = objc_alloc_init(NSMutableArray);
    v4 = v2[4];
    v2[4] = v3;

    v5 = objc_alloc_init(NSMutableArray);
    v6 = v2[5];
    v2[5] = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = v2[6];
    v2[6] = v7;

    v9 = [[NEPolicySession alloc] initWithSessionName:@"MasterSession"];
    v10 = v2[2];
    v2[2] = v9;

    v11 = v2[2];
    if (v11)
    {
      [v11 lockSessionToCurrentProcess];
      [v2[2] setPriority:200];
      v12 = [[NEPolicySession alloc] initWithSessionName:@"LowPrioritySession"];
      v13 = v2[3];
      v2[3] = v12;

      v14 = v2[3];
      if (v14)
      {
        [v14 lockSessionToCurrentProcess];
        [v2[3] setPriority:500];
        os_unfair_lock_lock(&unk_1000FD520);
        v15 = [NEPolicyResult skipWithOrder:40];
        v16 = [NEPolicy alloc];
        v17 = +[NEPolicyCondition allInterfaces];
        v46 = v17;
        v18 = [NSArray arrayWithObjects:&v46 count:1];
        v19 = [v16 initWithOrder:15 result:v15 conditions:v18];
        Property = objc_getProperty(v2, v20, 40, 1);
        sub_1000319D0(v2, v19, Property);

        v22 = [NSString stringWithUTF8String:nw_proxy_config_get_agent_domain()];
        v23 = [NSString stringWithUTF8String:nw_proxy_config_get_system_privacy_proxy_agent_type()];
        v24 = [NEPolicyResult removeNetworkAgentDomain:v22 agentType:v23];
        v25 = [NEPolicy alloc];
        v26 = +[NEPolicyCondition allInterfaces];
        v45 = v26;
        v27 = [NSArray arrayWithObjects:&v45 count:1];
        v28 = [v25 initWithOrder:25 result:v24 conditions:v27];
        v30 = objc_getProperty(v2, v29, 40, 1);
        sub_1000319D0(v2, v28, v30);

        v31 = [NSString stringWithUTF8String:nw_resolver_config_get_system_private_dns_agent_type()];
        v32 = [NEPolicyResult removeNetworkAgentDomain:&stru_1000EBA68 agentType:v31];
        v33 = [NEPolicy alloc];
        v34 = +[NEPolicyCondition allInterfaces];
        v44 = v34;
        v35 = [NSArray arrayWithObjects:&v44 count:1];
        v36 = [v33 initWithOrder:35 result:v32 conditions:v35];
        v38 = objc_getProperty(v2, v37, 40, 1);
        sub_1000319D0(v2, v36, v38);

        os_unfair_lock_unlock(&unk_1000FD520);
        v39 = +[NSPointerArray weakObjectsPointerArray];
        v40 = v2[7];
        v2[7] = v39;

        goto LABEL_6;
      }
    }

    v41 = 0;
  }

  else
  {
    v41 = 0;
    v2 = 0;
  }

LABEL_8:

  v42 = qword_1000FD528;
  qword_1000FD528 = v41;
}

BOOL sub_1000319D0(_BOOL8 a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_assert_owner(&unk_1000FD520);
    v8 = [objc_getProperty(a1 v7];
    a1 = v8 != 0;
    is_debug_logging_enabled = nelog_is_debug_logging_enabled();
    v10 = is_debug_logging_enabled;
    if (v8)
    {
      if (is_debug_logging_enabled)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v16 = 134218242;
          v17 = v8;
          v18 = 2112;
          v19 = v5;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Added policy ID %lu to Low priority: %@", &v16, 0x16u);
        }
      }

      v12 = [NSNumber numberWithUnsignedInteger:v8];
      [v6 addObject:v12];
    }

    else
    {
      v12 = ne_log_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        if (v13)
        {
          v16 = 138412290;
          v17 = v5;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to add policy to Low priority: %@", &v16, 0xCu);
        }
      }

      else if (v13)
      {
        v15 = [v5 descriptionWithIndent:0 options:2];
        v16 = 138412290;
        v17 = v15;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to add policy to Low priority: %@", &v16, 0xCu);
      }
    }
  }

  return a1;
}

void *sub_100031BD4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  v8 = 0;
  if (a1)
  {
    if (v5)
    {
      v8 = [objc_getProperty(a1 v6];

      if (v8)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v14 = [objc_getProperty(a1 v10];
          v15 = 138412546;
          v16 = v5;
          v17 = 2112;
          v18 = v14;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Policy IDs to be removed for %@: %@", &v15, 0x16u);
        }

        v12 = [objc_getProperty(a1 v11];
        if (sub_100031D58(v7, v12))
        {
          v8 = sub_100031EB4(v7);
        }

        else
        {
          v8 = 0;
        }
      }
    }
  }

  return v8;
}

BOOL sub_100031D58(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner(&unk_1000FD520);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = objc_getProperty(a1, v6, 16, 1);
          [v11 removePolicyWithID:{objc_msgSend(v10, "unsignedIntegerValue", v13)}];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v4 removeAllObjects];
  }

  return a1 != 0;
}

uint64_t sub_100031EB4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_assert_owner(&unk_1000FD520);
  if (([objc_getProperty(a1 v2] & 1) == 0)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Failed to apply policies";
      v7 = buf;
      goto LABEL_11;
    }

LABEL_7:

    return 0;
  }

  v4 = 1;
  if (([objc_getProperty(a1 v3] & 1) == 0)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v6 = "Failed to apply policies with Low priority";
      v7 = &v9;
LABEL_11:
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_100031FA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_large_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 160, 1);
    }

    v13 = [Property objectForKeyedSubscript:*(a1 + 32)];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "drop control Policy IDs to be removed for %@: %@", &v14, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v7 = objc_getProperty(v7, v6, 160, 1);
  }

  v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];
  if (sub_100031D58(v3, v8))
  {
    v9 = sub_100031EB4(v3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1000320F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 176, 1);
    }

    v13 = [Property objectForKeyedSubscript:*(a1 + 32)];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Policy IDs to be removed for %@: %@", &v14, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v7 = objc_getProperty(v7, v6, 176, 1);
  }

  v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];
  if (sub_100031D58(v3, v8))
  {
    v9 = sub_100031EB4(v3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_100032244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_large_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 168, 1);
    }

    v13 = [Property objectForKeyedSubscript:*(a1 + 32)];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "control Policy IDs to be removed for %@: %@", &v14, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v7 = objc_getProperty(v7, v6, 168, 1);
  }

  v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];
  if (sub_100031D58(v3, v8))
  {
    v9 = sub_100031EB4(v3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL sub_10003239C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 224);
    if (v4)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = a1;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Removing all trie entries for session %@", buf, 0xCu);
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = *(a1 + 224);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            sub_100032524(v3, [*(*(&v12 + 1) + 8 * v10) intValue]);
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      v4 = *(a1 + 224);
    }

    *(a1 + 224) = 0;
  }

  return a1 != 0;
}

void sub_100032524(void *a1, uint64_t a2)
{
  if (a1)
  {
    os_unfair_lock_assert_owner(&unk_1000FD520);
    if ([objc_getProperty(a1 v4])
    {
      if (!nelog_is_debug_logging_enabled())
      {
        return;
      }

      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = 138413058;
        v8 = a1;
        v9 = 2080;
        v10 = "[NESMPolicyMasterSession removeDomainTrieWithID:ids:]";
        v11 = 2048;
        v12 = a2;
        v13 = 2112;
        Property = objc_getProperty(a1, v6, 48, 1);
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@: %s - Deleted domain trie - ID %lu %@", &v7, 0x2Au);
      }
    }

    else
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 138412802;
        v8 = a1;
        v9 = 2080;
        v10 = "[NESMPolicyMasterSession removeDomainTrieWithID:ids:]";
        v11 = 2048;
        v12 = a2;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@: %s - Failed to delete domain trie - ID %lu", &v7, 0x20u);
      }
    }
  }
}

BOOL sub_1000326B8(id a1, NESMPolicyMasterSession *a2)
{
  Property = a2;
  v4 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  if ([(NESMPolicyMasterSession *)Property count]&& v4)
  {
    if (nelog_is_debug_logging_enabled())
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v20 = v4;
        v21 = 2080;
        v22 = "[NESMPolicyMasterSession removeAllDomainTries]";
        v23 = 2112;
        v24 = objc_getProperty(v4, v6, 48, 1);
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@: %s - deleting all IDs %@", buf, 0x20u);
      }
    }

    os_unfair_lock_assert_owner(&unk_1000FD520);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [objc_getProperty(v4 v7];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:buf count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          sub_100032524(v4, [*(*(&v15 + 1) + 8 * v12) integerValue]);
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:buf count:16];
      }

      while (v10);
    }

    [objc_getProperty(v4 v13];
  }

  return 1;
}

uint64_t sub_10003289C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 136, 1);
  }

  else
  {
    Property = 0;
  }

  if (sub_100031D58(v4, Property))
  {
    v7 = sub_100031EB4(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10003290C(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 112, 1);
  }

  v7 = [Property count];
  if (v7)
  {
    v8 = ne_log_large_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = objc_getProperty(v21, v9, 112, 1);
      }

      v23 = 138412290;
      v24 = v21;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Skip policy IDs to be removed: %@", &v23, 0xCu);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = objc_getProperty(v11, v10, 112, 1);
    }

    else
    {
      v12 = 0;
    }

    sub_100031D58(v4, v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v6, 120, 1);
  }

  if ([v13 count])
  {
    v14 = ne_log_large_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 32);
      if (v22)
      {
        v22 = objc_getProperty(v22, v15, 120, 1);
      }

      v23 = 138412290;
      v24 = v22;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Low skip policy IDs to be removed: %@", &v23, 0xCu);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = objc_getProperty(v17, v16, 120, 1);
    }

    else
    {
      v18 = 0;
    }

    sub_100032AF0(v4, v18);
  }

  else if (!v7)
  {
    v19 = 1;
    goto LABEL_17;
  }

  v19 = sub_100031EB4(v4);
LABEL_17:

  return v19;
}

BOOL sub_100032AF0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner(&unk_1000FD520);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = objc_getProperty(a1, v6, 24, 1);
          [v11 removePolicyWithID:{objc_msgSend(v10, "unsignedIntegerValue", v13)}];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v4 removeAllObjects];
  }

  return a1 != 0;
}

uint64_t sub_100032C4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_large_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 104, 1);
    }

    v12 = 138412290;
    v13 = Property;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "drop control Policy IDs to be removed: %@", &v12, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_getProperty(v7, v6, 104, 1);
  }

  else
  {
    v8 = 0;
  }

  if (sub_100031D58(v3, v8))
  {
    v9 = sub_100031EB4(v3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_100032D60(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 88, 1);
  }

  v7 = [Property count];
  if (v7)
  {
    v8 = ne_log_large_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = objc_getProperty(v21, v9, 88, 1);
      }

      v23 = 138412290;
      v24 = v21;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "On Demand Policy IDs to be removed for %@", &v23, 0xCu);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = objc_getProperty(v11, v10, 88, 1);
    }

    else
    {
      v12 = 0;
    }

    sub_100031D58(v4, v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v6, 96, 1);
  }

  if ([v13 count])
  {
    v14 = ne_log_large_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 32);
      if (v22)
      {
        v22 = objc_getProperty(v22, v15, 96, 1);
      }

      v23 = 138412290;
      v24 = v22;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Low On Demand Policy IDs to be removed for %@", &v23, 0xCu);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = objc_getProperty(v17, v16, 96, 1);
    }

    else
    {
      v18 = 0;
    }

    sub_100032AF0(v4, v18);
  }

  else if (!v7)
  {
    v19 = 1;
    goto LABEL_17;
  }

  v19 = sub_100031EB4(v4);
LABEL_17:

  return v19;
}

uint64_t sub_100032F44(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 64, 1);
  }

  v7 = [Property count];
  if (v7)
  {
    v8 = ne_log_large_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = objc_getProperty(v21, v9, 64, 1);
      }

      v23 = 138412290;
      v24 = v21;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Control Policy IDs to be removed: %@", &v23, 0xCu);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = objc_getProperty(v11, v10, 64, 1);
    }

    else
    {
      v12 = 0;
    }

    sub_100031D58(v4, v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v6, 72, 1);
  }

  if ([v13 count])
  {
    v14 = ne_log_large_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 32);
      if (v22)
      {
        v22 = objc_getProperty(v22, v15, 72, 1);
      }

      v23 = 138412290;
      v24 = v22;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Low control Policy IDs to be removed: %@", &v23, 0xCu);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = objc_getProperty(v17, v16, 72, 1);
    }

    else
    {
      v18 = 0;
    }

    sub_100032AF0(v4, v18);
  }

  else if (!v7)
  {
    v19 = 1;
    goto LABEL_17;
  }

  v19 = sub_100031EB4(v4);
LABEL_17:

  return v19;
}

uint64_t sub_100033128(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  v7 = [Property count];
  if (v7)
  {
    v8 = ne_log_large_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      if (v19)
      {
        v19 = objc_getProperty(v19, v9, 48, 1);
      }

      v21 = 138412290;
      v22 = v19;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Policy IDs to be removed: %@", &v21, 0xCu);
    }

    v10 = *(a1 + 32);
    if (v4)
    {
      sub_10003331C(v4, v10, 0);
      v10 = *(a1 + 32);
    }

    if (v10)
    {
      v10 = objc_getProperty(v10, v10, 48, 1);
    }

    sub_100031D58(v4, v10);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = objc_getProperty(v11, v6, 56, 1);
  }

  if ([v11 count])
  {
    v12 = ne_log_large_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      if (v20)
      {
        v20 = objc_getProperty(v20, v13, 56, 1);
      }

      v21 = 138412290;
      v22 = v20;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Low Policy IDs to be removed: %@", &v21, 0xCu);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = objc_getProperty(v15, v14, 56, 1);
    }

    else
    {
      v16 = 0;
    }

    sub_100032AF0(v4, v16);
  }

  else if (!v7)
  {
    v17 = 1;
    goto LABEL_19;
  }

  v17 = sub_100031EB4(v4);
LABEL_19:

  return v17;
}

void sub_10003331C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  os_unfair_lock_assert_owner(&unk_1000FD520);
  [*(a1 + 56) compact];
  if (![*(a1 + 56) count])
  {
LABEL_5:
    if ((a3 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  v6 = 0;
  while (1)
  {
    v7 = [*(a1 + 56) pointerAtIndex:v6];

    if (v7 == v5)
    {
      break;
    }

    if (++v6 >= [*(a1 + 56) count])
    {
      goto LABEL_5;
    }
  }

  if ((v6 != 0x7FFFFFFFFFFFFFFFLL) != a3)
  {
    if (!a3)
    {
      [*(a1 + 56) removePointerAtIndex:v6];
      if ([*(a1 + 56) count])
      {
        goto LABEL_15;
      }

      v8 = 1;
LABEL_8:
      v13 = v8;
      if (sysctlbyname("net.necp.pass_loopback", 0, 0, &v13, 4uLL))
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = v13;
          v11 = __error();
          v12 = strerror(*v11);
          *buf = 67109378;
          v15 = v10;
          v16 = 2080;
          v17 = v12;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set the loopback pass mode to %u: %s", buf, 0x12u);
        }
      }

      goto LABEL_15;
    }

LABEL_6:
    [*(a1 + 56) addPointer:v5];
    if ([*(a1 + 56) count] != 1)
    {
      goto LABEL_15;
    }

    v8 = 2;
    goto LABEL_8;
  }

LABEL_15:
}

uint64_t sub_1000334DC(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 184, 1);
  }

  v6 = [Property count];
  v8 = v6 != 0;
  if (v6)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = objc_getProperty(v9, v7, 184, 1);
    }

    v10 = [v9 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v66;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v66 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v65 + 1) + 8 * i);
          v17 = *(a1 + 32);
          if (v17)
          {
            v17 = objc_getProperty(v17, v12, 184, 1);
          }

          v18 = [v17 objectForKeyedSubscript:v16];
          sub_100031D58(v4, v18);
        }

        v13 = [v10 countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v13);
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      v20 = objc_getProperty(v20, v19, 184, 1);
    }

    [v20 removeAllObjects];
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v21 = objc_getProperty(v21, v7, 192, 1);
  }

  if ([v21 count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v23 = *(a1 + 32);
    if (v23)
    {
      v23 = objc_getProperty(v23, v22, 192, 1);
    }

    v24 = [v23 allKeys];
    v25 = [v24 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v25)
    {
      v27 = v25;
      v28 = *v62;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v62 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v61 + 1) + 8 * j);
          v31 = *(a1 + 32);
          if (v31)
          {
            v31 = objc_getProperty(v31, v26, 192, 1);
          }

          v32 = [v31 objectForKeyedSubscript:v30];
          sub_100031D58(v4, v32);
        }

        v27 = [v24 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v27);
    }

    v34 = *(a1 + 32);
    if (v34)
    {
      v34 = objc_getProperty(v34, v33, 192, 1);
    }

    [v34 removeAllObjects];
    v8 = 1;
  }

  v35 = *(a1 + 32);
  if (v35)
  {
    v35 = objc_getProperty(v35, v22, 200, 1);
  }

  if ([v35 count])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v37 = *(a1 + 32);
    if (v37)
    {
      v37 = objc_getProperty(v37, v36, 200, 1);
    }

    v38 = [v37 allKeys];
    v39 = [v38 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v39)
    {
      v41 = v39;
      v42 = *v58;
      do
      {
        for (k = 0; k != v41; k = k + 1)
        {
          if (*v58 != v42)
          {
            objc_enumerationMutation(v38);
          }

          v44 = *(*(&v57 + 1) + 8 * k);
          v45 = *(a1 + 32);
          if (v45)
          {
            v45 = objc_getProperty(v45, v40, 200, 1);
          }

          v46 = [v45 objectForKeyedSubscript:v44];
          sub_100031D58(v4, v46);
        }

        v41 = [v38 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v41);
    }

    v48 = *(a1 + 32);
    if (v48)
    {
      v48 = objc_getProperty(v48, v47, 200, 1);
    }

    [v48 removeAllObjects];
    v8 = 1;
  }

  v49 = *(a1 + 32);
  if (v49)
  {
    v49 = objc_getProperty(v49, v36, 208, 1);
  }

  [v49 removeAllObjects];
  v51 = *(a1 + 32);
  if (v51)
  {
    v51 = objc_getProperty(v51, v50, 48, 1);
  }

  if ([v51 count])
  {
    v53 = *(a1 + 32);
    if (v53)
    {
      v54 = objc_getProperty(v53, v52, 48, 1);
    }

    else
    {
      v54 = 0;
    }

    sub_100031D58(v4, v54);
  }

  else if (!v8)
  {
    v55 = 1;
    goto LABEL_62;
  }

  v55 = sub_100031EB4(v4);
LABEL_62:

  return v55;
}

void sub_100033920(_BOOL8 a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v8 = [NEPolicyResult skipWithOrder:20];
    v7 = [[NEPolicy alloc] initWithOrder:10 result:v8 conditions:v6];

    sub_1000319D0(a1, v7, v5);
  }
}

void sub_1000339D8(_BOOL8 a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v8 = [NEPolicyResult skipWithOrder:30];
    v7 = [[NEPolicy alloc] initWithOrder:10 result:v8 conditions:v6];

    sub_1000319D0(a1, v7, v5);
  }
}

BOOL sub_100033A90(_BOOL8 a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_assert_owner(&unk_1000FD520);
    v8 = [objc_getProperty(a1 v7];
    a1 = v8 != 0;
    is_debug_logging_enabled = nelog_is_debug_logging_enabled();
    v10 = is_debug_logging_enabled;
    if (v8)
    {
      if (is_debug_logging_enabled)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v16 = 134218242;
          v17 = v8;
          v18 = 2112;
          v19 = v5;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Added policy ID %lu: %@", &v16, 0x16u);
        }
      }

      v12 = [NSNumber numberWithUnsignedInteger:v8];
      [v6 addObject:v12];
    }

    else
    {
      v12 = ne_log_obj();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v10)
      {
        if (v13)
        {
          v16 = 138412290;
          v17 = v5;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", &v16, 0xCu);
        }
      }

      else if (v13)
      {
        v15 = [v5 descriptionWithIndent:0 options:2];
        v16 = 138412290;
        v17 = v15;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to add policy: %@", &v16, 0xCu);
      }
    }
  }

  return a1;
}

uint64_t sub_100033C94(void *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_assert_owner(&unk_1000FD520);
  v5 = [objc_getProperty(a1 v4];

  if (v5 && [v5 unsignedIntValue])
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id *sub_100033D18(id *a1, void *a2, int a3, void *a4, void *a5, void *a6)
{
  v12 = a2;
  if (a1)
  {
    v57.receiver = a1;
    v57.super_class = NESMPolicySession;
    v13 = objc_msgSendSuper2(&v57, "init");
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 2, a2);
      *(a1 + 2) = a3;
      a1[3] = a4;
      a1[4] = a5;
      a1[5] = a6;
      v14 = objc_alloc_init(NSMutableArray);
      v15 = a1[6];
      a1[6] = v14;

      v16 = objc_alloc_init(NSMutableArray);
      v17 = a1[7];
      a1[7] = v16;

      v18 = objc_alloc_init(NSMutableArray);
      v19 = a1[8];
      a1[8] = v18;

      v20 = objc_alloc_init(NSMutableArray);
      v21 = a1[9];
      a1[9] = v20;

      v22 = objc_alloc_init(NSMutableArray);
      v23 = a1[10];
      a1[10] = v22;

      v24 = objc_alloc_init(NSMutableArray);
      v25 = a1[11];
      a1[11] = v24;

      v26 = objc_alloc_init(NSMutableArray);
      v27 = a1[12];
      a1[12] = v26;

      v28 = objc_alloc_init(NSMutableArray);
      v29 = a1[13];
      a1[13] = v28;

      v30 = objc_alloc_init(NSMutableArray);
      v31 = a1[14];
      a1[14] = v30;

      v32 = objc_alloc_init(NSMutableArray);
      v33 = a1[15];
      a1[15] = v32;

      v34 = objc_alloc_init(NSMutableArray);
      v35 = a1[17];
      a1[17] = v34;

      v36 = objc_alloc_init(NSMutableArray);
      v37 = a1[18];
      a1[18] = v36;

      v38 = objc_alloc_init(NSMutableArray);
      v39 = a1[19];
      a1[19] = v38;

      v40 = objc_alloc_init(NSMutableDictionary);
      v41 = a1[20];
      a1[20] = v40;

      v42 = objc_alloc_init(NSMutableDictionary);
      v43 = a1[21];
      a1[21] = v42;

      v44 = objc_alloc_init(NSMutableDictionary);
      v45 = a1[22];
      a1[22] = v44;

      v46 = objc_alloc_init(NSMutableDictionary);
      v47 = a1[23];
      a1[23] = v46;

      v48 = objc_alloc_init(NSMutableDictionary);
      v49 = a1[24];
      a1[24] = v48;

      v50 = objc_alloc_init(NSMutableDictionary);
      v51 = a1[25];
      a1[25] = v50;

      v52 = objc_alloc_init(NSMutableDictionary);
      v53 = a1[26];
      a1[26] = v52;

      v54 = objc_alloc_init(NSMutableDictionary);
      v55 = a1[27];
      a1[27] = v54;
    }
  }

  return a1;
}

uint64_t sub_100033F68(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1 > 4)
    {
      if (v1 > 6)
      {
        if (v1 != 7)
        {
          if (v1 == 9)
          {
            return 5000;
          }

          return 20000;
        }

        v3 = *(result + 24) == 1;
        v4 = 19700;
        v5 = 19500;
        goto LABEL_20;
      }

      if (v1 == 5)
      {
        return 0;
      }

      else
      {
        return 19000;
      }
    }

    else if (v1 > 2)
    {
      if (v1 == 3)
      {
        return 250;
      }

      else
      {
        return 1500;
      }
    }

    else
    {
      if (v1 != 1)
      {
        if (v1 == 2)
        {
          return 500;
        }

        return 20000;
      }

      v2 = *(result + 24);
      if (*(result + 32) == 2)
      {
        v3 = v2 == 1;
        v4 = 15500;
        v5 = 10000;
LABEL_20:
        if (v3)
        {
          return v5;
        }

        else
        {
          return v4;
        }
      }

      if (*(result + 40) == 1)
      {
        v6 = 16300;
      }

      else
      {
        v6 = 17000;
      }

      if (*(result + 40) == 1)
      {
        v7 = 10800;
      }

      else
      {
        v7 = 14000;
      }

      if (v2 == 1)
      {
        return v7;
      }

      else
      {
        return v6;
      }
    }
  }

  return result;
}

uint64_t sub_100034060(uint64_t result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_1000340E0;
    v1[3] = &unk_1000E9C98;
    v1[4] = result;
    return sub_100031500(NESMPolicyMasterSession, v1);
  }

  return result;
}

uint64_t sub_1000340E0(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 80, 1);
  }

  if ([Property count])
  {
    v6 = ne_log_large_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = objc_getProperty(v13, v7, 80, 1);
      }

      v14 = 138412290;
      v15 = v13;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Tunnel Policy IDs to be removed: %@", &v14, 0xCu);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = objc_getProperty(v9, v8, 80, 1);
    }

    else
    {
      v10 = 0;
    }

    sub_100031D58(v4, v10);
    v11 = sub_100031EB4(v4);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

BOOL sub_10003420C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_large_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      Property = objc_getProperty(v22, v5, 48, 1);
      if (v3)
      {
LABEL_27:
        v24 = objc_getProperty(v3, v5, 32, 1);
LABEL_28:
        v26 = 138412546;
        v27 = Property;
        v28 = 2112;
        v29 = v24;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Policy IDs to be removed: %@, plus pathRule filter policies %@", &v26, 0x16u);
        goto LABEL_2;
      }
    }

    else
    {
      Property = 0;
      if (v3)
      {
        goto LABEL_27;
      }
    }

    v24 = 0;
    goto LABEL_28;
  }

LABEL_2:

  v6 = ne_log_large_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    if (v25)
    {
      v25 = objc_getProperty(v25, v7, 56, 1);
    }

    v26 = 138412290;
    v27 = v25;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Policy IDs to be removed: %@ from Low Priority", &v26, 0xCu);
  }

  if (!v3 || (v3[2] = 0, v9 = objc_getProperty(v3, v8, 32, 1), !sub_100031D58(v3, v9)))
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to remove pathRule filter policies", &v26, 2u);
    }
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_getProperty(v12, v10, 48, 1);
  }

  else
  {
    v13 = 0;
  }

  v15 = sub_100031D58(v3, v13);
  if (!v15)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to remove filter policies", &v26, 2u);
    }
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = objc_getProperty(v17, v14, 56, 1);
  }

  else
  {
    v18 = 0;
  }

  if (!sub_100032AF0(v3, v18))
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to remove Low priority filter policies", &v26, 2u);
    }

    v15 = 0;
  }

  if ((sub_100031EB4(v3) & 1) == 0)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to apply filter policies", &v26, 2u);
    }

    v15 = 0;
  }

  return v15;
}

uint64_t sub_100034538(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 1;
  if ([objc_getProperty(a1 a2])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000345E4;
    v5[3] = &unk_1000E9C98;
    v5[4] = a1;
    return sub_100031500(NESMPolicyMasterSession, v5);
  }

  return v3;
}

uint64_t sub_1000345E4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 128, 1);
  }

  else
  {
    Property = 0;
  }

  if (sub_100031D58(v4, Property))
  {
    v7 = sub_100031EB4(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_100034654(id a1, NESMPolicyMasterSession *a2)
{
  if (a2)
  {
    Property = objc_getProperty(a2, a2, 48, 1);
  }

  else
  {
    Property = 0;
  }

  return [Property count] != 0;
}

uint64_t sub_100034690(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 88, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100031D58(v4, Property);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_getProperty(v8, v7, 96, 1);
  }

  else
  {
    v9 = 0;
  }

  sub_100032AF0(v4, v9);
  v10 = CTBundle_ptr;
  v11 = [NEPolicyCondition uid:*(a1 + 88)];
  obj = v4;
  v212 = v11;
  v12 = a1;
  if ((*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL) == 2 || [*(a1 + 40) action] == 4 || objc_msgSend(*(a1 + 40), "action") == 2)
  {
    if ([*(a1 + 40) action] == 2 && objc_msgSend(*(a1 + 48), "count"))
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Adding Disconnect On Demand policies to skip privacy proxies for internal domains", buf, 2u);
      }

      if (*(a1 + 56))
      {
        v14 = [NEPolicyCondition scopedInterface:?];
      }

      else
      {
        v14 = 0;
      }

      v28 = [NEPolicyCondition clientFlags:0x10000];
      [v28 setNegative:1];
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      obja = *(v12 + 48);
      v29 = [obja countByEnumeratingWithState:&v245 objects:v282 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v246;
        do
        {
          v32 = 0;
          do
          {
            if (*v246 != v31)
            {
              objc_enumerationMutation(obja);
            }

            v33 = [NEPolicyCondition domain:*(*(&v245 + 1) + 8 * v32)];
            v34 = v33;
            if (v212)
            {
              v281[0] = v212;
              v281[1] = v33;
              v281[2] = v28;
              v35 = v281;
              v36 = 3;
            }

            else
            {
              v280[0] = v33;
              v280[1] = v28;
              v35 = v280;
              v36 = 2;
            }

            v38 = [NSArray arrayWithObjects:v35 count:v36];
            v39 = *(v12 + 32);
            if (v39)
            {
              v40 = objc_getProperty(v39, v37, 96, 1);
            }

            else
            {
              v40 = 0;
            }

            sub_100033920(v4, v38, v40);
            if (v14)
            {
              v41 = [v38 arrayByAddingObject:v14];

              v43 = *(v12 + 32);
              if (v43)
              {
                v44 = objc_getProperty(v43, v42, 96, 1);
              }

              else
              {
                v44 = 0;
              }

              sub_100033920(v4, v41, v44);
              v38 = v41;
            }

            v32 = v32 + 1;
          }

          while (v30 != v32);
          v45 = [obja countByEnumeratingWithState:&v245 objects:v282 count:16];
          v30 = v45;
        }

        while (v45);
      }

      v11 = v212;
    }

    else
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 80);
        v16 = [*(a1 + 40) action];
        *buf = 134218240;
        v277 = v15;
        v278 = 2048;
        v279 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No On Demand policies (pause %ld, action %ld)", buf, 0x16u);
      }
    }

    sub_100031EB4(v4);
    v46 = 1;
    goto LABEL_45;
  }

  v17 = [*(a1 + 40) action];
  if (v17 == 3)
  {
    v48 = *(a1 + 40);
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v200 = v48;
    v201 = [v48 connectionRules];
    v203 = [v201 countByEnumeratingWithState:&v241 objects:v269 count:16];
    if (!v203)
    {
      goto LABEL_158;
    }

    v206 = 0;
    v49 = 0;
    v202 = *v242;
    v50 = CTBundle_ptr;
    while (1)
    {
      for (i = 0; i != v203; i = v103 + 1)
      {
        v219 = v49;
        if (*v242 != v202)
        {
          objc_enumerationMutation(v201);
        }

        v204 = i;
        v52 = *(*(&v241 + 1) + 8 * i);
        v215 = +[NSMutableArray array];
        v237 = 0u;
        v238 = 0u;
        v239 = 0u;
        v240 = 0u;
        v53 = [v52 matchDomains];
        v54 = [v53 countByEnumeratingWithState:&v237 objects:v268 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v238;
          do
          {
            for (j = 0; j != v55; j = j + 1)
            {
              if (*v238 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v237 + 1) + 8 * j);
              v59 = [v50[138] characterSetWithCharactersInString:@"*."];
              v60 = [v58 stringByTrimmingCharactersInSet:v59];
              if (v60)
              {
                [v215 addObject:v60];
              }
            }

            v55 = [v53 countByEnumeratingWithState:&v237 objects:v268 count:16];
          }

          while (v55);
        }

        if ([v52 action] == 1)
        {
          v61 = [NEPolicyResult netAgentUUID:*(a1 + 64)];
          v233 = 0u;
          v234 = 0u;
          v235 = 0u;
          v236 = 0u;
          v216 = v215;
          v4 = obj;
          v11 = v212;
          v49 = v219;
          v213 = [v216 countByEnumeratingWithState:&v233 objects:v267 count:16];
          if (v213)
          {
            v210 = *v234;
            do
            {
              v62 = 0;
              do
              {
                if (*v234 != v210)
                {
                  objc_enumerationMutation(v216);
                }

                v217 = v62;
                v63 = *(*(&v233 + 1) + 8 * v62);
                v221 = [NEPolicyCondition domain:v63];
                v220 = v49;
                v64 = sub_100033F68(*(a1 + 32)) + 2 * v49 + 2110;
                v229 = 0u;
                v230 = 0u;
                v231 = 0u;
                v232 = 0u;
                v65 = *(a1 + 72);
                v66 = [v65 countByEnumeratingWithState:&v229 objects:v266 count:16];
                if (v66)
                {
                  v67 = v66;
                  v68 = *v230;
                  do
                  {
                    v69 = 0;
                    do
                    {
                      if (*v230 != v68)
                      {
                        objc_enumerationMutation(v65);
                      }

                      v70 = *(*(&v229 + 1) + 8 * v69);
                      if (isa_nsstring() && [v70 hasSuffix:v63])
                      {
                        v71 = [NEPolicyCondition domain:v70];
                        v265 = v71;
                        v72 = [NSArray arrayWithObjects:&v265 count:1];

                        v74 = [[NEPolicy alloc] initWithOrder:v64 result:v61 conditions:v72];
                        v75 = *(v12 + 32);
                        if (v75)
                        {
                          v76 = objc_getProperty(v75, v73, 88, 1);
                        }

                        else
                        {
                          v76 = 0;
                        }

                        sub_100033A90(obj, v74, v76);

                        v64 = (v64 + 1);
                      }

                      v69 = v69 + 1;
                    }

                    while (v67 != v69);
                    v77 = [v65 countByEnumeratingWithState:&v229 objects:v266 count:16];
                    v67 = v77;
                  }

                  while (v77);
                }

                v11 = v212;
                if (v212)
                {
                  v264[0] = v221;
                  v264[1] = v212;
                  objc_opt_self();
                  v78 = [NEPolicyCondition trafficClassStart:0 end:0];
                  v264[2] = v78;
                  v79 = [NSArray arrayWithObjects:v264 count:3];

                  v81 = [[NEPolicy alloc] initWithOrder:v64 result:v61 conditions:v79];
                  a1 = v12;
                  v82 = *(v12 + 32);
                  v4 = obj;
                  if (v82)
                  {
                    v83 = objc_getProperty(v82, v80, 88, 1);
                  }

                  else
                  {
                    v83 = 0;
                  }

                  sub_100033A90(obj, v81, v83);

                  if (*(v12 + 80) == 1)
                  {
                    v263 = v221;
                    v84 = &v263;
                    v85 = 300;
                  }

                  else
                  {
                    v262 = v221;
                    v84 = &v262;
                    v85 = 200;
                  }

                  v84[1] = v212;
                  objc_opt_self();
                  v93 = [NEPolicyCondition trafficClassStart:v85 end:899];
                  v84[2] = v93;
                  v94 = v84;
                  v95 = 3;
                }

                else
                {
                  v261[0] = v221;
                  objc_opt_self();
                  v86 = [NEPolicyCondition trafficClassStart:0 end:0];
                  v261[1] = v86;
                  v79 = [NSArray arrayWithObjects:v261 count:2];

                  v88 = [[NEPolicy alloc] initWithOrder:v64 result:v61 conditions:v79];
                  a1 = v12;
                  v89 = *(v12 + 32);
                  v4 = obj;
                  if (v89)
                  {
                    v90 = objc_getProperty(v89, v87, 88, 1);
                  }

                  else
                  {
                    v90 = 0;
                  }

                  sub_100033A90(obj, v88, v90);

                  if (*(v12 + 80) == 1)
                  {
                    v260 = v221;
                    v91 = &v260;
                    v92 = 300;
                  }

                  else
                  {
                    v259 = v221;
                    v91 = &v259;
                    v92 = 200;
                  }

                  objc_opt_self();
                  v93 = [NEPolicyCondition trafficClassStart:v92 end:899];
                  v91[1] = v93;
                  v94 = v91;
                  v95 = 2;
                }

                v96 = [NSArray arrayWithObjects:v94 count:v95];

                v98 = [[NEPolicy alloc] initWithOrder:(v64 + 1) result:v61 conditions:v96];
                v99 = *(a1 + 32);
                if (v99)
                {
                  v100 = objc_getProperty(v99, v97, 88, 1);
                }

                else
                {
                  v100 = 0;
                }

                sub_100033A90(v4, v98, v100);

                v49 = v220 + 1;
                v62 = v217 + 1;
              }

              while ((v217 + 1) != v213);
              v101 = [v216 countByEnumeratingWithState:&v233 objects:v267 count:16];
              v213 = v101;
            }

            while (v101);
          }

LABEL_154:

          v10 = CTBundle_ptr;
          v50 = CTBundle_ptr;
          v103 = v204;
          goto LABEL_156;
        }

        v102 = [v52 action];
        v4 = obj;
        v11 = v212;
        v49 = v219;
        v103 = v204;
        if (v102 == 2)
        {
          if (*(a1 + 32))
          {
            v104 = 20000;
          }

          else
          {
            v104 = 0;
          }

          v61 = [NEPolicyResult skipWithOrder:v104];
          v216 = [NEPolicyResult removeNetworkAgentUUID:*(a1 + 64)];
          v209 = +[NEPolicyResult scopeToDirectInterface];
          if (*(a1 + 32))
          {
            v105 = 20100;
          }

          else
          {
            v105 = 100;
          }

          v205 = v105;
          v225 = 0u;
          v226 = 0u;
          v227 = 0u;
          v228 = 0u;
          v207 = v215;
          v106 = [v207 countByEnumeratingWithState:&v225 objects:v258 count:16];
          if (v106)
          {
            v208 = *v226;
            do
            {
              v107 = 0;
              v108 = (v205 + 2 * v206);
              v109 = 2 * v206 + 11;
              v206 += v106;
              v211 = v106;
              do
              {
                if (*v226 != v208)
                {
                  objc_enumerationMutation(v207);
                }

                v214 = v107;
                v110 = [NEPolicyCondition domain:*(*(&v225 + 1) + 8 * v107)];
                v111 = sub_100033F68(*(a1 + 32));
                v218 = v109;
                v112 = (v111 + v109 - 1);
                v222 = v110;
                if (v212)
                {
                  v257[0] = v110;
                  v257[1] = v212;
                  objc_opt_self();
                  v113 = [NEPolicyCondition trafficClassStart:0 end:0];
                  v257[2] = v113;
                  v114 = [NSArray arrayWithObjects:v257 count:3];

                  v116 = [[NEPolicy alloc] initWithOrder:v112 result:v61 conditions:v114];
                  v117 = *(a1 + 32);
                  if (v117)
                  {
                    v118 = objc_getProperty(v117, v115, 88, 1);
                  }

                  else
                  {
                    v118 = 0;
                  }

                  sub_100033A90(obj, v116, v118);

                  v120 = [[NEPolicy alloc] initWithOrder:v108 result:v216 conditions:v114];
                  v121 = *(a1 + 32);
                  if (v121)
                  {
                    v122 = objc_getProperty(v121, v119, 88, 1);
                  }

                  else
                  {
                    v122 = 0;
                  }

                  sub_100033A90(obj, v120, v122);

                  if (*(a1 + 80) == 1)
                  {
                    v256 = v222;
                    v123 = &v256;
                    v124 = 300;
                  }

                  else
                  {
                    v255 = v222;
                    v123 = &v255;
                    v124 = 200;
                  }

                  v123[1] = v212;
                  objc_opt_self();
                  v137 = [NEPolicyCondition trafficClassStart:v124 end:899];
                  v123[2] = v137;
                  v138 = [NSArray arrayWithObjects:v123 count:3];

                  v140 = [[NEPolicy alloc] initWithOrder:(v111 + v218) result:v61 conditions:v138];
                  a1 = v12;
                  v141 = *(v12 + 32);
                  if (v141)
                  {
                    v142 = objc_getProperty(v141, v139, 88, 1);
                  }

                  else
                  {
                    v142 = 0;
                  }

                  sub_100033A90(obj, v140, v142);

                  v144 = [[NEPolicy alloc] initWithOrder:(v108 + 1) result:v216 conditions:v138];
                  v145 = *(v12 + 32);
                  if (v145)
                  {
                    v146 = objc_getProperty(v145, v143, 88, 1);
                  }

                  else
                  {
                    v146 = 0;
                  }

                  sub_100033A90(obj, v144, v146);

                  v147 = [NEPolicy alloc];
                  v254[0] = v222;
                  v254[1] = v212;
                  v148 = v254;
                  v149 = 2;
                }

                else
                {
                  v253[0] = v110;
                  objc_opt_self();
                  v125 = [NEPolicyCondition trafficClassStart:0 end:0];
                  v253[1] = v125;
                  v126 = [NSArray arrayWithObjects:v253 count:2];

                  v128 = [[NEPolicy alloc] initWithOrder:v112 result:v61 conditions:v126];
                  v129 = *(a1 + 32);
                  if (v129)
                  {
                    v130 = objc_getProperty(v129, v127, 88, 1);
                  }

                  else
                  {
                    v130 = 0;
                  }

                  sub_100033A90(obj, v128, v130);

                  v132 = [[NEPolicy alloc] initWithOrder:v108 result:v216 conditions:v126];
                  v133 = *(a1 + 32);
                  if (v133)
                  {
                    v134 = objc_getProperty(v133, v131, 88, 1);
                  }

                  else
                  {
                    v134 = 0;
                  }

                  sub_100033A90(obj, v132, v134);

                  if (*(a1 + 80) == 1)
                  {
                    v252 = v222;
                    v135 = &v252;
                    v136 = 300;
                  }

                  else
                  {
                    v251 = v222;
                    v135 = &v251;
                    v136 = 200;
                  }

                  objc_opt_self();
                  v150 = [NEPolicyCondition trafficClassStart:v136 end:899];
                  v135[1] = v150;
                  v138 = [NSArray arrayWithObjects:v135 count:2];

                  v152 = [[NEPolicy alloc] initWithOrder:(v111 + v218) result:v61 conditions:v138];
                  a1 = v12;
                  v153 = *(v12 + 32);
                  if (v153)
                  {
                    v154 = objc_getProperty(v153, v151, 88, 1);
                  }

                  else
                  {
                    v154 = 0;
                  }

                  sub_100033A90(obj, v152, v154);

                  v156 = [[NEPolicy alloc] initWithOrder:(v108 + 1) result:v216 conditions:v138];
                  v157 = *(v12 + 32);
                  if (v157)
                  {
                    v158 = objc_getProperty(v157, v155, 88, 1);
                  }

                  else
                  {
                    v158 = 0;
                  }

                  sub_100033A90(obj, v156, v158);

                  v147 = [NEPolicy alloc];
                  v250 = v222;
                  v148 = &v250;
                  v149 = 1;
                }

                v159 = [NSArray arrayWithObjects:v148 count:v149];
                v161 = [v147 initWithOrder:80 result:v209 conditions:v159];
                v162 = *(a1 + 32);
                if (v162)
                {
                  v163 = objc_getProperty(v162, v160, 96, 1);
                }

                else
                {
                  v163 = 0;
                }

                sub_1000319D0(obj, v161, v163);

                v107 = v214 + 1;
                v108 = (v108 + 2);
                v109 = v218 + 2;
              }

              while (v211 != (v214 + 1));
              v106 = [v207 countByEnumeratingWithState:&v225 objects:v258 count:16];
            }

            while (v106);
          }

          v49 = v219;
          goto LABEL_154;
        }

        v10 = CTBundle_ptr;
LABEL_156:
      }

      v203 = [v201 countByEnumeratingWithState:&v241 objects:v269 count:16];
      if (!v203)
      {
LABEL_158:
        v19 = v200;
        v164 = v201;
        goto LABEL_170;
      }
    }
  }

  if (v17 != 1)
  {
    v46 = 0;
    goto LABEL_45;
  }

  v18 = sub_100033F68(*(a1 + 32));
  v19 = [NEPolicyResult netAgentUUID:*(a1 + 64)];
  if (v11)
  {
    v275[0] = v11;
    objc_opt_self();
    v20 = [NEPolicyCondition trafficClassStart:0 end:0];
    v275[1] = v20;
    v21 = [NSArray arrayWithObjects:v275 count:2];

    v23 = [[NEPolicy alloc] initWithOrder:(v18 + 10) result:v19 conditions:v21];
    v24 = *(a1 + 32);
    if (v24)
    {
      v25 = objc_getProperty(v24, v22, 88, 1);
    }

    else
    {
      v25 = 0;
    }

    sub_100033A90(v4, v23, v25);

    if (*(a1 + 80) == 1)
    {
      v274 = v11;
      v26 = 300;
      v27 = &v274;
    }

    else
    {
      v273 = v11;
      v26 = 200;
      v27 = &v273;
    }

    objc_opt_self();
    v174 = [NEPolicyCondition trafficClassStart:v26 end:899];
    v27[1] = v174;
    v175 = [NSArray arrayWithObjects:v27 count:2];

    v177 = [[NEPolicy alloc] initWithOrder:(v18 + 11) result:v19 conditions:v175];
    v178 = *(a1 + 32);
    v179 = v175;
    if (v178)
    {
      v180 = objc_getProperty(v178, v176, 88, 1);
    }

    else
    {
      v180 = 0;
    }

    v4 = obj;
    sub_100033A90(obj, v177, v180);

    v182 = *(a1 + 32);
    v10 = CTBundle_ptr;
    if (v182)
    {
LABEL_168:
      v183 = objc_getProperty(v182, v181, 96, 1);
      goto LABEL_169;
    }
  }

  else
  {
    objc_opt_self();
    v165 = [NEPolicyCondition trafficClassStart:0 end:0];
    v272 = v165;
    v166 = [NSArray arrayWithObjects:&v272 count:1];

    v168 = [[NEPolicy alloc] initWithOrder:(v18 + 10) result:v19 conditions:v166];
    v169 = *(a1 + 32);
    if (v169)
    {
      v170 = objc_getProperty(v169, v167, 88, 1);
    }

    else
    {
      v170 = 0;
    }

    sub_100033A90(v4, v168, v170);

    v171 = *(a1 + 80);
    objc_opt_self();
    v10 = CTBundle_ptr;
    if (v171 == 1)
    {
      v172 = [NEPolicyCondition trafficClassStart:300 end:899];
      v271 = v172;
      v173 = &v271;
    }

    else
    {
      v172 = [NEPolicyCondition trafficClassStart:200 end:899];
      v270 = v172;
      v173 = &v270;
    }

    v193 = [NSArray arrayWithObjects:v173 count:1];

    v194 = [NEPolicy alloc];
    v195 = (v18 + 11);
    v179 = v193;
    v197 = [v194 initWithOrder:v195 result:v19 conditions:v193];
    v198 = *(a1 + 32);
    if (v198)
    {
      v199 = objc_getProperty(v198, v196, 88, 1);
    }

    else
    {
      v199 = 0;
    }

    v11 = v212;
    sub_100033A90(v4, v197, v199);

    v182 = *(a1 + 32);
    if (v182)
    {
      goto LABEL_168;
    }
  }

  v183 = 0;
LABEL_169:
  v164 = v179;
  sub_100033920(v4, v179, v183);
LABEL_170:

  if (*(a1 + 92) == 1)
  {
    v184 = [v10[44] localNetworks];
    v185 = [NEPolicyResult removeNetworkAgentUUID:*(a1 + 64)];
    v186 = [NEPolicy alloc];
    v187 = sub_100033F68(*(a1 + 32));
    v249 = v184;
    v188 = [NSArray arrayWithObjects:&v249 count:1];
    v190 = [v186 initWithOrder:(v187 + 30) result:v185 conditions:v188];
    v191 = *(a1 + 32);
    if (v191)
    {
      v192 = objc_getProperty(v191, v189, 88, 1);
    }

    else
    {
      v192 = 0;
    }

    sub_100033A90(v4, v190, v192);

    v11 = v212;
  }

  v46 = sub_100031EB4(v4);
LABEL_45:

  return v46;
}

uint64_t sub_100035BAC(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 88, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100031D58(v4, Property);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_getProperty(v8, v7, 96, 1);
  }

  else
  {
    v9 = 0;
  }

  sub_100032AF0(v4, v9);
  if ((*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2 || [*(a1 + 40) action] == 4 || objc_msgSend(*(a1 + 40), "action") == 2)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 72);
      v12 = [*(a1 + 40) action];
      *buf = 134218240;
      v234 = v11;
      v235 = 2048;
      v236 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No On Demand policies (pause %ld, action %ld)", buf, 0x16u);
    }

    sub_100031EB4(v4);
    v13 = 1;
    goto LABEL_11;
  }

  v15 = CTBundle_ptr;
  v16 = [NEPolicyCondition uid:*(a1 + 80)];
  v186 = +[NEPolicyCondition fallbackTraffic];
  v185 = [NEPolicyCondition scopedInterface:*(a1 + 48)];
  v17 = [*(a1 + 40) action];
  v184 = v4;
  v173 = v16;
  if (v17 == 3)
  {
    v29 = *(a1 + 40);
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v162 = v29;
    obj = [v29 connectionRules];
    v165 = [obj countByEnumeratingWithState:&v203 objects:v226 count:16];
    if (!v165)
    {
      goto LABEL_130;
    }

    v168 = 0;
    v30 = 0;
    v164 = *v204;
    while (1)
    {
      v31 = 0;
      do
      {
        if (*v204 != v164)
        {
          objc_enumerationMutation(obj);
        }

        v166 = v31;
        v32 = *(*(&v203 + 1) + 8 * v31);
        v176 = +[NSMutableArray array];
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        v33 = [v32 matchDomains];
        v34 = [v33 countByEnumeratingWithState:&v199 objects:v225 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v200;
          do
          {
            for (i = 0; i != v35; i = i + 1)
            {
              if (*v200 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v199 + 1) + 8 * i);
              v39 = [NSCharacterSet characterSetWithCharactersInString:@"*."];
              v40 = [v38 stringByTrimmingCharactersInSet:v39];
              if (v40)
              {
                [v176 addObject:v40];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v199 objects:v225 count:16];
          }

          while (v35);
        }

        if ([v32 action] == 1)
        {
          v41 = [NEPolicyResult netAgentUUID:*(a1 + 56)];
          v195 = 0u;
          v196 = 0u;
          v197 = 0u;
          v198 = 0u;
          v177 = v176;
          v4 = v184;
          v16 = v173;
          v174 = [v177 countByEnumeratingWithState:&v195 objects:v224 count:16];
          if (v174)
          {
            v171 = *v196;
            do
            {
              v42 = 0;
              do
              {
                if (*v196 != v171)
                {
                  objc_enumerationMutation(v177);
                }

                v180 = v42;
                v43 = *(*(&v195 + 1) + 8 * v42);
                v178 = [v15[44] domain:v43];
                v182 = v30;
                v44 = sub_100033F68(*(a1 + 32)) + 2 * v30 + 2110;
                v191 = 0u;
                v192 = 0u;
                v193 = 0u;
                v194 = 0u;
                v45 = *(a1 + 64);
                v46 = [v45 countByEnumeratingWithState:&v191 objects:v223 count:16];
                if (v46)
                {
                  v47 = v46;
                  v48 = *v192;
                  do
                  {
                    v49 = 0;
                    do
                    {
                      if (*v192 != v48)
                      {
                        objc_enumerationMutation(v45);
                      }

                      v50 = *(*(&v191 + 1) + 8 * v49);
                      if (isa_nsstring() && [v50 hasSuffix:v43])
                      {
                        v222[0] = v186;
                        v51 = [v15[44] domain:v50];
                        v222[1] = v51;
                        v222[2] = v185;
                        v52 = [NSArray arrayWithObjects:v222 count:3];

                        v54 = [[NEPolicy alloc] initWithOrder:v44 result:v41 conditions:v52];
                        v55 = *(a1 + 32);
                        if (v55)
                        {
                          v56 = objc_getProperty(v55, v53, 88, 1);
                        }

                        else
                        {
                          v56 = 0;
                        }

                        sub_100033A90(v184, v54, v56);

                        v44 = (v44 + 1);
                        v15 = CTBundle_ptr;
                      }

                      v49 = v49 + 1;
                    }

                    while (v47 != v49);
                    v57 = [v45 countByEnumeratingWithState:&v191 objects:v223 count:16];
                    v47 = v57;
                  }

                  while (v57);
                }

                v16 = v173;
                if (v173)
                {
                  v221[0] = v186;
                  v58 = v178;
                  v221[1] = v178;
                  v221[2] = v173;
                  objc_opt_self();
                  v59 = [v15[44] trafficClassStart:0 end:0];
                  v221[3] = v59;
                  v221[4] = v185;
                  v60 = [NSArray arrayWithObjects:v221 count:5];

                  v62 = [[NEPolicy alloc] initWithOrder:v44 result:v41 conditions:v60];
                  v63 = *(a1 + 32);
                  v4 = v184;
                  if (v63)
                  {
                    v64 = objc_getProperty(v63, v61, 88, 1);
                  }

                  else
                  {
                    v64 = 0;
                  }

                  sub_100033A90(v184, v62, v64);

                  if (*(a1 + 72) == 1)
                  {
                    v220 = v186;
                    v65 = &v220;
                    v66 = 300;
                  }

                  else
                  {
                    v219 = v186;
                    v65 = &v219;
                    v66 = 200;
                  }

                  v65[1] = v178;
                  v65[2] = v173;
                  objc_opt_self();
                  v74 = [v15[44] trafficClassStart:v66 end:899];
                  v65[3] = v74;
                  v65[4] = v185;
                  v75 = v65;
                  v76 = 5;
                }

                else
                {
                  v218[0] = v186;
                  v58 = v178;
                  v218[1] = v178;
                  objc_opt_self();
                  v67 = [v15[44] trafficClassStart:0 end:0];
                  v218[2] = v67;
                  v218[3] = v185;
                  v60 = [NSArray arrayWithObjects:v218 count:4];

                  v69 = [[NEPolicy alloc] initWithOrder:v44 result:v41 conditions:v60];
                  v70 = *(a1 + 32);
                  v4 = v184;
                  if (v70)
                  {
                    v71 = objc_getProperty(v70, v68, 88, 1);
                  }

                  else
                  {
                    v71 = 0;
                  }

                  sub_100033A90(v184, v69, v71);

                  if (*(a1 + 72) == 1)
                  {
                    v217 = v186;
                    v72 = &v217;
                    v73 = 300;
                  }

                  else
                  {
                    v216 = v186;
                    v72 = &v216;
                    v73 = 200;
                  }

                  v72[1] = v178;
                  objc_opt_self();
                  v74 = [v15[44] trafficClassStart:v73 end:899];
                  v72[2] = v74;
                  v72[3] = v185;
                  v75 = v72;
                  v76 = 4;
                }

                v77 = [NSArray arrayWithObjects:v75 count:v76];

                v79 = [[NEPolicy alloc] initWithOrder:(v44 + 1) result:v41 conditions:v77];
                v80 = *(a1 + 32);
                if (v80)
                {
                  v81 = objc_getProperty(v80, v78, 88, 1);
                }

                else
                {
                  v81 = 0;
                }

                sub_100033A90(v4, v79, v81);

                v30 = v182 + 1;
                v42 = v180 + 1;
              }

              while ((v180 + 1) != v174);
              v82 = [v177 countByEnumeratingWithState:&v195 objects:v224 count:16];
              v174 = v82;
            }

            while (v82);
          }
        }

        else
        {
          v4 = v184;
          v16 = v173;
          if ([v32 action] != 2)
          {
            goto LABEL_128;
          }

          v183 = v30;
          if (*(a1 + 32))
          {
            v83 = 20000;
          }

          else
          {
            v83 = 0;
          }

          v41 = [NEPolicyResult skipWithOrder:v83];
          v177 = [NEPolicyResult removeNetworkAgentUUID:*(a1 + 56)];
          v172 = +[NEPolicyResult scopeToDirectInterface];
          if (*(a1 + 32))
          {
            v84 = 20200;
          }

          else
          {
            v84 = 200;
          }

          v167 = v84;
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          v190 = 0u;
          v169 = v176;
          v85 = [v169 countByEnumeratingWithState:&v187 objects:v215 count:16];
          if (v85)
          {
            v170 = *v188;
            do
            {
              v86 = 0;
              v87 = (v167 + 2 * v168);
              v88 = 2 * v168 + 11;
              v168 += v85;
              v175 = v85;
              do
              {
                if (*v188 != v170)
                {
                  objc_enumerationMutation(v169);
                }

                v179 = v86;
                v89 = [NEPolicyCondition domain:*(*(&v187 + 1) + 8 * v86)];
                v90 = sub_100033F68(*(a1 + 32));
                v91 = (v90 + v88 - 1);
                v181 = v89;
                if (v173)
                {
                  v214[0] = v186;
                  v214[1] = v89;
                  v214[2] = v173;
                  objc_opt_self();
                  v92 = [NEPolicyCondition trafficClassStart:0 end:0];
                  v214[3] = v92;
                  v214[4] = v185;
                  v93 = [NSArray arrayWithObjects:v214 count:5];

                  v95 = [[NEPolicy alloc] initWithOrder:v91 result:v41 conditions:v93];
                  v96 = *(a1 + 32);
                  if (v96)
                  {
                    v97 = objc_getProperty(v96, v94, 88, 1);
                  }

                  else
                  {
                    v97 = 0;
                  }

                  sub_100033A90(v184, v95, v97);

                  v99 = [[NEPolicy alloc] initWithOrder:v87 result:v177 conditions:v93];
                  v100 = *(a1 + 32);
                  if (v100)
                  {
                    v101 = objc_getProperty(v100, v98, 88, 1);
                  }

                  else
                  {
                    v101 = 0;
                  }

                  sub_100033A90(v184, v99, v101);

                  if (*(a1 + 72) == 1)
                  {
                    v213 = v186;
                    v102 = &v213;
                    v103 = 300;
                  }

                  else
                  {
                    v212 = v186;
                    v102 = &v212;
                    v103 = 200;
                  }

                  v102[1] = v181;
                  v102[2] = v173;
                  objc_opt_self();
                  v116 = [NEPolicyCondition trafficClassStart:v103 end:899];
                  v102[3] = v116;
                  v102[4] = v185;
                  v117 = [NSArray arrayWithObjects:v102 count:5];

                  v119 = [[NEPolicy alloc] initWithOrder:(v90 + v88) result:v41 conditions:v117];
                  v120 = *(a1 + 32);
                  if (v120)
                  {
                    v121 = objc_getProperty(v120, v118, 88, 1);
                  }

                  else
                  {
                    v121 = 0;
                  }

                  sub_100033A90(v184, v119, v121);

                  v123 = [[NEPolicy alloc] initWithOrder:(v87 + 1) result:v177 conditions:v117];
                  v124 = *(a1 + 32);
                  if (v124)
                  {
                    v125 = objc_getProperty(v124, v122, 88, 1);
                  }

                  else
                  {
                    v125 = 0;
                  }

                  sub_100033A90(v184, v123, v125);

                  v126 = [NEPolicy alloc];
                  v211[0] = v186;
                  v211[1] = v181;
                  v211[2] = v173;
                  v211[3] = v185;
                  v127 = v211;
                  v128 = 4;
                }

                else
                {
                  v210[0] = v186;
                  v210[1] = v89;
                  objc_opt_self();
                  v104 = [NEPolicyCondition trafficClassStart:0 end:0];
                  v210[2] = v104;
                  v210[3] = v185;
                  v105 = [NSArray arrayWithObjects:v210 count:4];

                  v107 = [[NEPolicy alloc] initWithOrder:v91 result:v41 conditions:v105];
                  v108 = *(a1 + 32);
                  if (v108)
                  {
                    v109 = objc_getProperty(v108, v106, 88, 1);
                  }

                  else
                  {
                    v109 = 0;
                  }

                  sub_100033A90(v184, v107, v109);

                  v111 = [[NEPolicy alloc] initWithOrder:v87 result:v177 conditions:v105];
                  v112 = *(a1 + 32);
                  if (v112)
                  {
                    v113 = objc_getProperty(v112, v110, 88, 1);
                  }

                  else
                  {
                    v113 = 0;
                  }

                  sub_100033A90(v184, v111, v113);

                  if (*(a1 + 72) == 1)
                  {
                    v209 = v186;
                    v114 = &v209;
                    v115 = 300;
                  }

                  else
                  {
                    v208 = v186;
                    v114 = &v208;
                    v115 = 200;
                  }

                  v114[1] = v181;
                  objc_opt_self();
                  v129 = [NEPolicyCondition trafficClassStart:v115 end:899];
                  v114[2] = v129;
                  v114[3] = v185;
                  v117 = [NSArray arrayWithObjects:v114 count:4];

                  v131 = [[NEPolicy alloc] initWithOrder:(v90 + v88) result:v41 conditions:v117];
                  v132 = *(a1 + 32);
                  if (v132)
                  {
                    v133 = objc_getProperty(v132, v130, 88, 1);
                  }

                  else
                  {
                    v133 = 0;
                  }

                  sub_100033A90(v184, v131, v133);

                  v135 = [[NEPolicy alloc] initWithOrder:(v87 + 1) result:v177 conditions:v117];
                  v136 = *(a1 + 32);
                  if (v136)
                  {
                    v137 = objc_getProperty(v136, v134, 88, 1);
                  }

                  else
                  {
                    v137 = 0;
                  }

                  sub_100033A90(v184, v135, v137);

                  v126 = [NEPolicy alloc];
                  v207[0] = v186;
                  v207[1] = v181;
                  v207[2] = v185;
                  v127 = v207;
                  v128 = 3;
                }

                v138 = [NSArray arrayWithObjects:v127 count:v128];
                v140 = [v126 initWithOrder:80 result:v172 conditions:v138];
                v141 = *(a1 + 32);
                if (v141)
                {
                  v142 = objc_getProperty(v141, v139, 96, 1);
                }

                else
                {
                  v142 = 0;
                }

                sub_1000319D0(v184, v140, v142);

                v86 = v179 + 1;
                v87 = (v87 + 2);
                v88 += 2;
              }

              while (v175 != (v179 + 1));
              v85 = [v169 countByEnumeratingWithState:&v187 objects:v215 count:16];
            }

            while (v85);
          }

          v15 = CTBundle_ptr;
          v30 = v183;
        }

LABEL_128:
        v31 = v166 + 1;
      }

      while ((v166 + 1) != v165);
      v165 = [obj countByEnumeratingWithState:&v203 objects:v226 count:16];
      if (!v165)
      {
LABEL_130:
        v22 = v162;
        goto LABEL_145;
      }
    }
  }

  if (v17 == 1)
  {
    v18 = sub_100033F68(*(a1 + 32));
    v19 = [NEPolicyResult netAgentUUID:*(a1 + 56)];
    if (v16)
    {
      v232[0] = v186;
      v232[1] = v16;
      objc_opt_self();
      v20 = [NEPolicyCondition trafficClassStart:0 end:0];
      v232[2] = v20;
      v232[3] = v185;
      v21 = [NSArray arrayWithObjects:v232 count:4];

      v22 = v19;
      v24 = [[NEPolicy alloc] initWithOrder:(v18 + 10) result:v19 conditions:v21];
      v25 = *(a1 + 32);
      if (v25)
      {
        v26 = objc_getProperty(v25, v23, 88, 1);
      }

      else
      {
        v26 = 0;
      }

      sub_100033A90(v4, v24, v26);

      if (*(a1 + 72) == 1)
      {
        v231 = v186;
        v27 = 300;
        v28 = &v231;
      }

      else
      {
        v230 = v186;
        v27 = 200;
        v28 = &v230;
      }

      v28[1] = v16;
      objc_opt_self();
      v151 = [NEPolicyCondition trafficClassStart:v27 end:899];
      v28[2] = v151;
      v28[3] = v185;
      v152 = [NSArray arrayWithObjects:v28 count:4];

      obj = v152;
      v154 = [[NEPolicy alloc] initWithOrder:(v18 + 11) result:v22 conditions:v152];
      v155 = *(a1 + 32);
      if (v155)
      {
        v156 = objc_getProperty(v155, v153, 88, 1);
      }

      else
      {
        v156 = 0;
      }

      sub_100033A90(v4, v154, v156);
      v16 = v173;
    }

    else
    {
      v229[0] = v186;
      objc_opt_self();
      v143 = [NEPolicyCondition trafficClassStart:0 end:0];
      v229[1] = v143;
      v229[2] = v185;
      v144 = [NSArray arrayWithObjects:v229 count:3];

      v22 = v19;
      v146 = [[NEPolicy alloc] initWithOrder:(v18 + 10) result:v19 conditions:v144];
      v147 = *(a1 + 32);
      if (v147)
      {
        v148 = objc_getProperty(v147, v145, 88, 1);
      }

      else
      {
        v148 = 0;
      }

      sub_100033A90(v4, v146, v148);

      if (*(a1 + 72) == 1)
      {
        v228 = v186;
        v149 = 300;
        v150 = &v228;
      }

      else
      {
        v227 = v186;
        v149 = 200;
        v150 = &v227;
      }

      objc_opt_self();
      v157 = [NEPolicyCondition trafficClassStart:v149 end:899];
      v150[1] = v157;
      v150[2] = v185;
      v158 = [NSArray arrayWithObjects:v150 count:3];

      obj = v158;
      v154 = [[NEPolicy alloc] initWithOrder:(v18 + 11) result:v22 conditions:v158];
      v160 = *(a1 + 32);
      if (v160)
      {
        v161 = objc_getProperty(v160, v159, 88, 1);
      }

      else
      {
        v161 = 0;
      }

      sub_100033A90(v4, v154, v161);
    }

LABEL_145:
    v13 = sub_100031EB4(v4);
  }

  else
  {
    v13 = 0;
  }

LABEL_11:
  return v13;
}

uint64_t sub_100036E40(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 88, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100031D58(v4, Property);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_getProperty(v8, v7, 96, 1);
  }

  else
  {
    v9 = 0;
  }

  sub_100032AF0(v4, v9);
  if ([*(a1 + 40) action] == 4 || objc_msgSend(*(a1 + 40), "action") == 2)
  {
    if ([*(a1 + 40) action] == 2)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_100037300;
      v58[3] = &unk_1000E9D98;
      v13 = v4;
      v14 = *(a1 + 32);
      v59 = v13;
      v60 = v14;
      sub_100037370(v10, v11, 0, 1, 0, v12, v13, v58, &stru_1000E9DD8);
    }

    sub_100031EB4(v4);
    v15 = 1;
  }

  else
  {
    v44 = v4;
    v42 = [NEPolicyResult netAgentUUID:*(a1 + 64)];
    v43 = +[NEPolicyCondition allInterfaces];
    v40 = [NEPolicyResult skipWithOrder:sub_100033F68(*(a1 + 32)) + 250];
    v41 = sub_100033F68(*(a1 + 32)) + 10;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v16 = a1;
    v17 = *(a1 + 72);
    v18 = [v17 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v55;
      do
      {
        v21 = 0;
        do
        {
          if (*v55 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v54 + 1) + 8 * v21);
          if (isa_nsstring())
          {
            v23 = [NSCharacterSet characterSetWithCharactersInString:@"*."];
            v24 = [v22 stringByTrimmingCharactersInSet:v23];
            if ([v24 length])
            {
              v61[0] = v43;
              v25 = [NEPolicyCondition domain:v24];
              v61[1] = v25;
              v26 = [NSArray arrayWithObjects:v61 count:2];

              v28 = [[NEPolicy alloc] initWithOrder:v41 result:v42 conditions:v26];
              v29 = v16[4];
              if (v29)
              {
                v30 = objc_getProperty(v29, v27, 88, 1);
              }

              else
              {
                v30 = 0;
              }

              sub_100033A90(v44, v28, v30);
            }
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v31 = [v17 countByEnumeratingWithState:&v54 objects:v62 count:16];
        v19 = v31;
      }

      while (v31);
    }

    v32 = v16[4];
    v34 = v16[6];
    v33 = v16[7];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100038684;
    v49[3] = &unk_1000E9E00;
    v4 = v44;
    v53 = v41;
    v50 = v44;
    v51 = v42;
    v52 = v16[4];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100038754;
    v45[3] = &unk_1000E9E28;
    v35 = v50;
    v36 = v16[4];
    v46 = v35;
    v47 = v36;
    v48 = v40;
    v37 = v40;
    v38 = v42;
    sub_100037370(v32, v34, 0, 1, 0, v33, v35, v49, v45);
    v15 = sub_100031EB4(v35);
  }

  return v15;
}

void sub_100037300(uint64_t a1, void *a2)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    Property = objc_getProperty(v4, v3, 96, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100033920(v5, v7, Property);
}

void sub_100037370(uint64_t a1, void *a2, int a3, int a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v131 = a2;
  v15 = a5;
  v132 = a6;
  v144 = a7;
  v16 = a8;
  v17 = v15;
  v164 = a9;
  v145 = a1;
  if (a1)
  {
    if (a4)
    {
      v165 = +[NEPolicyCondition allInterfaces];
    }

    else
    {
      v165 = 0;
    }

    v235 = 0u;
    v234 = 0u;
    v233 = 0u;
    v232 = 0u;
    obj = v131;
    v134 = [obj countByEnumeratingWithState:&v232 objects:v252 count:16];
    if (v134)
    {
      v133 = *v233;
      v141 = v15;
      do
      {
        v18 = 0;
        do
        {
          if (*v233 != v133)
          {
            v19 = v18;
            objc_enumerationMutation(obj);
            v18 = v19;
          }

          v135 = v18;
          v20 = *(*(&v232 + 1) + 8 * v18);
          v139 = objc_alloc_init(NSMutableArray);
          v21 = objc_alloc_init(NSMutableArray);
          v22 = objc_alloc_init(NSMutableArray);
          v138 = objc_alloc_init(NSMutableArray);
          v23 = v20;
          v152 = objc_alloc_init(NSMutableArray);
          v24 = [v20 cachedMachOUUIDs];
          v147 = v20;
          if ([v24 count] && objc_msgSend(v17, "count"))
          {
            v230[0] = _NSConcreteStackBlock;
            v230[1] = 3221225472;
            v230[2] = sub_100038808;
            v230[3] = &unk_1000EA0A8;
            v231 = v17;
            v25 = [NSPredicate predicateWithBlock:v230];
            v26 = [v24 filteredArrayUsingPredicate:v25];

            v23 = v147;
            v27 = v26;
          }

          else
          {
            v27 = v24;
          }

          v136 = v27;
          v154 = v21;
          if (isa_nsarray())
          {
            v229 = 0u;
            v228 = 0u;
            v227 = 0u;
            v226 = 0u;
            v28 = v136;
            v29 = [v28 countByEnumeratingWithState:&v226 objects:v251 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v227;
              do
              {
                for (i = 0; i != v30; i = i + 1)
                {
                  if (*v227 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = [NEPolicyCondition effectiveApplication:*(*(&v226 + 1) + 8 * i)];
                  [v139 addObject:v33];
                }

                v30 = [v28 countByEnumeratingWithState:&v226 objects:v251 count:16];
              }

              while (v30);
            }

            v17 = v141;
            v21 = v154;
            v23 = v147;
          }

          if ([v139 count])
          {
            [v23 matchDomains];
            v35 = v34 = v23;
            v36 = isa_nsarray();

            if (v36)
            {
              v37 = [v34 matchDomains];
              v38 = [v37 count];

              if (v38 <= 0xFA)
              {
                v225 = 0u;
                v224 = 0u;
                v223 = 0u;
                v222 = 0u;
                v39 = [v34 matchDomains];
                v40 = [v39 countByEnumeratingWithState:&v222 objects:v250 count:16];
                if (v40)
                {
                  v41 = v40;
                  v42 = *v223;
                  do
                  {
                    for (j = 0; j != v41; j = j + 1)
                    {
                      if (*v223 != v42)
                      {
                        objc_enumerationMutation(v39);
                      }

                      v44 = [NEPolicyCondition domain:*(*(&v222 + 1) + 8 * j)];
                      [v154 addObject:v44];
                    }

                    v41 = [v39 countByEnumeratingWithState:&v222 objects:v250 count:16];
                  }

                  while (v41);
                }

                v149 = 0;
                v17 = v141;
                v21 = v154;
              }

              else
              {
                v149 = 1;
              }
            }

            else
            {
              v149 = 0;
            }

            v45 = [v147 matchAccountIdentifiers];
            v46 = isa_nsarray();

            if (v46)
            {
              v221 = 0u;
              v220 = 0u;
              v219 = 0u;
              v218 = 0u;
              v47 = [v147 matchAccountIdentifiers];
              v48 = [v47 countByEnumeratingWithState:&v218 objects:v249 count:16];
              if (v48)
              {
                v49 = v48;
                v50 = *v219;
                do
                {
                  for (k = 0; k != v49; k = k + 1)
                  {
                    if (*v219 != v50)
                    {
                      objc_enumerationMutation(v47);
                    }

                    v52 = [NEPolicyCondition accountIdentifier:*(*(&v218 + 1) + 8 * k)];
                    [v22 addObject:v52];
                  }

                  v49 = [v47 countByEnumeratingWithState:&v218 objects:v249 count:16];
                }

                while (v49);
              }

              v17 = v141;
              v21 = v154;
            }

            v53 = isa_nsarray();
            if (v164 && v53)
            {
              v217 = 0u;
              v216 = 0u;
              v215 = 0u;
              v214 = 0u;
              v54 = v132;
              v55 = [v54 countByEnumeratingWithState:&v214 objects:v248 count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v215;
                do
                {
                  for (m = 0; m != v56; m = m + 1)
                  {
                    if (*v215 != v57)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v59 = [NEPolicyCondition domain:*(*(&v214 + 1) + 8 * m)];
                    [v152 addObject:v59];
                  }

                  v56 = [v54 countByEnumeratingWithState:&v214 objects:v248 count:16];
                }

                while (v56);
              }

              v17 = v141;
              v21 = v154;
            }

            v213 = 0u;
            v212 = 0u;
            v210 = 0u;
            v211 = 0u;
            v137 = v139;
            v60 = v138;
            v142 = [v137 countByEnumeratingWithState:&v210 objects:v247 count:16];
            if (v142)
            {
              v140 = *v211;
              v159 = v22;
              do
              {
                v61 = 0;
                do
                {
                  if (*v211 != v140)
                  {
                    objc_enumerationMutation(v137);
                  }

                  v143 = v61;
                  v62 = *(*(&v210 + 1) + 8 * v61);
                  if (![v60 count])
                  {
                    if ([v154 count])
                    {
                      v184 = 0u;
                      v185 = 0u;
                      v182 = 0u;
                      v183 = 0u;
                      v100 = v154;
                      v163 = [v100 countByEnumeratingWithState:&v182 objects:v240 count:16];
                      if (v163)
                      {
                        v101 = *v183;
                        v161 = v100;
                        v158 = *v183;
                        do
                        {
                          for (n = 0; n != v163; n = n + 1)
                          {
                            if (*v183 != v101)
                            {
                              objc_enumerationMutation(v100);
                            }

                            v103 = *(*(&v182 + 1) + 8 * n);
                            if ([v22 count])
                            {
                              v180 = 0u;
                              v181 = 0u;
                              v178 = 0u;
                              v179 = 0u;
                              v104 = v22;
                              v105 = [v104 countByEnumeratingWithState:&v178 objects:v239 count:16];
                              if (v105)
                              {
                                v106 = v105;
                                v107 = *v179;
                                do
                                {
                                  for (ii = 0; ii != v106; ii = ii + 1)
                                  {
                                    if (*v179 != v107)
                                    {
                                      objc_enumerationMutation(v104);
                                    }

                                    v109 = [[NSArray alloc] initWithObjects:{v62, v103, *(*(&v178 + 1) + 8 * ii), v165, 0}];
                                    v16[2](v16, v109, 0);
                                  }

                                  v106 = [v104 countByEnumeratingWithState:&v178 objects:v239 count:16];
                                }

                                while (v106);
                                v22 = v159;
                                v100 = v161;
                                v101 = v158;
                              }
                            }

                            else
                            {
                              v104 = [[NSArray alloc] initWithObjects:{v62, v103, v165, 0}];
                              v16[2](v16, v104, 0);
                            }
                          }

                          v163 = [v100 countByEnumeratingWithState:&v182 objects:v240 count:16];
                        }

                        while (v163);
                      }

                      goto LABEL_170;
                    }

                    if (v149)
                    {
                      v110 = [v147 matchDomains];
                      v111 = [v147 matchSigningIdentifier];
                      v112 = sub_10003882C(v145, v110, 0, v111, obj, v144);

                      if (v112)
                      {
                        v100 = [NEPolicyCondition domainFilter:v112];
                        if ([v22 count])
                        {
                          v176 = 0u;
                          v177 = 0u;
                          v174 = 0u;
                          v175 = 0u;
                          v113 = v22;
                          v114 = [v113 countByEnumeratingWithState:&v174 objects:v238 count:16];
                          if (v114)
                          {
                            v115 = v114;
                            v116 = *v175;
                            do
                            {
                              for (jj = 0; jj != v115; jj = jj + 1)
                              {
                                if (*v175 != v116)
                                {
                                  objc_enumerationMutation(v113);
                                }

                                v118 = [[NSArray alloc] initWithObjects:{v62, v100, *(*(&v174 + 1) + 8 * jj), v165, 0}];
                                v16[2](v16, v118, 0);
                              }

                              v115 = [v113 countByEnumeratingWithState:&v174 objects:v238 count:16];
                            }

                            while (v115);
                          }
                        }

                        else
                        {
                          v113 = [[NSArray alloc] initWithObjects:{v62, v100, v165, 0}];
                          v16[2](v16, v113, 0);
                        }

                        goto LABEL_170;
                      }
                    }

                    else
                    {
                      if ([v22 count])
                      {
                        v172 = 0u;
                        v173 = 0u;
                        v170 = 0u;
                        v171 = 0u;
                        v100 = v22;
                        v119 = [v100 countByEnumeratingWithState:&v170 objects:v237 count:16];
                        if (v119)
                        {
                          v120 = v119;
                          v121 = *v171;
                          do
                          {
                            for (kk = 0; kk != v120; kk = kk + 1)
                            {
                              if (*v171 != v121)
                              {
                                objc_enumerationMutation(v100);
                              }

                              v123 = [[NSArray alloc] initWithObjects:{v62, *(*(&v170 + 1) + 8 * kk), v165, 0}];
                              v16[2](v16, v123, 0);
                            }

                            v120 = [v100 countByEnumeratingWithState:&v170 objects:v237 count:16];
                          }

                          while (v120);
                        }
                      }

                      else
                      {
                        v100 = [[NSArray alloc] initWithObjects:{v62, v165, 0}];
                        v16[2](v16, v100, 0);
                      }

LABEL_170:
                    }

                    if (a3)
                    {
                      v124 = [v154 count] ? 1 : v149;
                      if ((v124 & 1) != 0 || [v22 count])
                      {
                        v125 = [[NSArray alloc] initWithObjects:{v62, v165, 0}];
                        v16[2](v16, v125, 1);
                      }
                    }

                    v168 = 0u;
                    v169 = 0u;
                    v166 = 0u;
                    v167 = 0u;
                    v148 = v152;
                    v126 = [v148 countByEnumeratingWithState:&v166 objects:v236 count:16];
                    if (v126)
                    {
                      v127 = v126;
                      v128 = *v167;
                      do
                      {
                        for (mm = 0; mm != v127; mm = mm + 1)
                        {
                          if (*v167 != v128)
                          {
                            objc_enumerationMutation(v148);
                          }

                          v130 = [[NSArray alloc] initWithObjects:{v62, *(*(&v166 + 1) + 8 * mm), v165, 0}];
                          v164[2](v164, v130);
                        }

                        v127 = [v148 countByEnumeratingWithState:&v166 objects:v236 count:16];
                      }

                      while (v127);
                    }

                    v17 = v141;
                    v21 = v154;
LABEL_186:
                    v60 = v138;
                    goto LABEL_187;
                  }

                  v208 = 0u;
                  v209 = 0u;
                  v206 = 0u;
                  v207 = 0u;
                  v148 = v60;
                  v153 = [v148 countByEnumeratingWithState:&v206 objects:v246 count:16];
                  if (v153)
                  {
                    v151 = *v207;
                    while (1)
                    {
                      v63 = 0;
                      do
                      {
                        if (*v207 != v151)
                        {
                          objc_enumerationMutation(v148);
                        }

                        v155 = v63;
                        v64 = *(*(&v206 + 1) + 8 * v63);
                        v65 = v159;
                        if ([v154 count])
                        {
                          v204 = 0u;
                          v205 = 0u;
                          v202 = 0u;
                          v203 = 0u;
                          v66 = v154;
                          v160 = [v66 countByEnumeratingWithState:&v202 objects:v245 count:16];
                          if (v160)
                          {
                            v67 = *v203;
                            v156 = *v203;
                            v157 = v66;
                            do
                            {
                              for (nn = 0; nn != v160; nn = nn + 1)
                              {
                                if (*v203 != v67)
                                {
                                  objc_enumerationMutation(v66);
                                }

                                v69 = *(*(&v202 + 1) + 8 * nn);
                                if ([v65 count])
                                {
                                  v162 = nn;
                                  v200 = 0u;
                                  v201 = 0u;
                                  v198 = 0u;
                                  v199 = 0u;
                                  v70 = v65;
                                  v71 = [v70 countByEnumeratingWithState:&v198 objects:v244 count:16];
                                  if (v71)
                                  {
                                    v72 = v71;
                                    v73 = *v199;
                                    do
                                    {
                                      for (i1 = 0; i1 != v72; i1 = i1 + 1)
                                      {
                                        if (*v199 != v73)
                                        {
                                          objc_enumerationMutation(v70);
                                        }

                                        v75 = [[NSArray alloc] initWithObjects:{v62, v64, v69, *(*(&v198 + 1) + 8 * i1), v165, 0}];
                                        v16[2](v16, v75, 0);
                                      }

                                      v72 = [v70 countByEnumeratingWithState:&v198 objects:v244 count:16];
                                    }

                                    while (v72);
                                    v66 = v157;
                                    v65 = v159;
                                    v67 = v156;
                                  }

                                  nn = v162;
                                }

                                else
                                {
                                  v70 = [[NSArray alloc] initWithObjects:{v62, v64, v69, v165, 0}];
                                  v16[2](v16, v70, 0);
                                }
                              }

                              v160 = [v66 countByEnumeratingWithState:&v202 objects:v245 count:16];
                            }

                            while (v160);
                          }

LABEL_109:

                          goto LABEL_110;
                        }

                        if (!v149)
                        {
                          if ([v159 count])
                          {
                            v192 = 0u;
                            v193 = 0u;
                            v190 = 0u;
                            v191 = 0u;
                            v66 = v159;
                            v86 = [v66 countByEnumeratingWithState:&v190 objects:v242 count:16];
                            if (v86)
                            {
                              v87 = v86;
                              v88 = *v191;
                              do
                              {
                                v89 = v66;
                                for (i2 = 0; i2 != v87; i2 = i2 + 1)
                                {
                                  if (*v191 != v88)
                                  {
                                    objc_enumerationMutation(v89);
                                  }

                                  v91 = [[NSArray alloc] initWithObjects:{v62, v64, *(*(&v190 + 1) + 8 * i2), v165, 0}];
                                  v16[2](v16, v91, 0);
                                }

                                v66 = v89;
                                v87 = [v89 countByEnumeratingWithState:&v190 objects:v242 count:16];
                              }

                              while (v87);
                            }
                          }

                          else
                          {
                            v66 = [[NSArray alloc] initWithObjects:{v62, v64, v165, 0}];
                            v16[2](v16, v66, 0);
                          }

                          goto LABEL_109;
                        }

                        v76 = [v147 matchDomains];
                        v77 = [v147 matchSigningIdentifier];
                        v78 = sub_10003882C(v145, v76, 0, v77, obj, v144);

                        if (v78)
                        {
                          v66 = [NEPolicyCondition domainFilter:v78];
                          if ([v159 count])
                          {
                            v196 = 0u;
                            v197 = 0u;
                            v194 = 0u;
                            v195 = 0u;
                            v79 = v159;
                            v80 = [v79 countByEnumeratingWithState:&v194 objects:v243 count:16];
                            if (v80)
                            {
                              v81 = v80;
                              v82 = v66;
                              v83 = *v195;
                              do
                              {
                                for (i3 = 0; i3 != v81; i3 = i3 + 1)
                                {
                                  if (*v195 != v83)
                                  {
                                    objc_enumerationMutation(v79);
                                  }

                                  v85 = [[NSArray alloc] initWithObjects:{v62, v64, v82, *(*(&v194 + 1) + 8 * i3), v165, 0}];
                                  v16[2](v16, v85, 0);
                                }

                                v81 = [v79 countByEnumeratingWithState:&v194 objects:v243 count:16];
                              }

                              while (v81);
                              v65 = v159;
                              v66 = v82;
                            }
                          }

                          else
                          {
                            v79 = [[NSArray alloc] initWithObjects:{v62, v64, v66, v165, 0}];
                            v16[2](v16, v79, 0);
                          }

                          goto LABEL_109;
                        }

LABEL_110:
                        if (a3)
                        {
                          v92 = [v154 count] ? 1 : v149;
                          if ((v92 & 1) != 0 || [v65 count])
                          {
                            v93 = [[NSArray alloc] initWithObjects:{v62, v64, v165, 0}];
                            v16[2](v16, v93, 1);
                          }
                        }

                        v188 = 0u;
                        v189 = 0u;
                        v186 = 0u;
                        v187 = 0u;
                        v94 = v152;
                        v95 = [v94 countByEnumeratingWithState:&v186 objects:v241 count:16];
                        if (v95)
                        {
                          v96 = v95;
                          v97 = *v187;
                          do
                          {
                            for (i4 = 0; i4 != v96; i4 = i4 + 1)
                            {
                              if (*v187 != v97)
                              {
                                objc_enumerationMutation(v94);
                              }

                              v99 = [[NSArray alloc] initWithObjects:{v62, v64, *(*(&v186 + 1) + 8 * i4), v165, 0}];
                              v164[2](v164, v99);
                            }

                            v96 = [v94 countByEnumeratingWithState:&v186 objects:v241 count:16];
                          }

                          while (v96);
                        }

                        v63 = v155 + 1;
                      }

                      while ((v155 + 1) != v153);
                      v153 = [v148 countByEnumeratingWithState:&v206 objects:v246 count:16];
                      if (!v153)
                      {
                        v17 = v141;
                        v21 = v154;
                        v22 = v159;
                        goto LABEL_186;
                      }
                    }
                  }

                  v17 = v141;
                  v21 = v154;
LABEL_187:

                  v61 = v143 + 1;
                }

                while ((v143 + 1) != v142);
                v142 = [v137 countByEnumeratingWithState:&v210 objects:v247 count:16];
              }

              while (v142);
            }
          }

          v18 = v135 + 1;
        }

        while ((v135 + 1) != v134);
        v134 = [obj countByEnumeratingWithState:&v232 objects:v252 count:16];
      }

      while (v134);
    }
  }
}

void sub_100038684(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(a1 + 32);
  v5 = [[NEPolicy alloc] initWithOrder:*(a1 + 56) result:*(a1 + 40) conditions:v12];
  v6 = *(a1 + 48);
  if (v6)
  {
    Property = objc_getProperty(v6, v4, 88, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100033A90(v3, v5, Property);

  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = objc_getProperty(v10, v8, 96, 1);
  }

  else
  {
    v11 = 0;
  }

  sub_100033920(v9, v12, v11);
}

void sub_100038754(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v8 = [[NEPolicy alloc] initWithOrder:sub_100033F68(a1[5]) + 5 result:a1[6] conditions:v4];

  v6 = a1[5];
  if (v6)
  {
    Property = objc_getProperty(v6, v5, 88, 1);
  }

  else
  {
    Property = 0;
  }

  sub_100033A90(v3, v8, Property);
}

uint64_t sub_10003882C(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (!v13)
  {
    goto LABEL_49;
  }

  v17 = sub_100033C94(v13, v11);
  if (v17)
  {
    goto LABEL_50;
  }

  if (v16)
  {
    os_unfair_lock_assert_owner(&unk_1000FD520);
    if ([objc_getProperty(v14 v18])
    {
      v19 = 0;
      *__strerrbuf = 0;
      while (1)
      {
        v20 = v19;
        v19 = [NEVPNApp findRuleWithSameDomains:v12 matchSigningIdentifier:v11 startIndex:__strerrbuf];

        if (!v19)
        {
          break;
        }

        v21 = sub_100033C94(v14, v19);
        if (v21)
        {
          v17 = v21;
          v22 = v11;
          os_unfair_lock_assert_owner(&unk_1000FD520);
          v23 = [NSNumber numberWithUnsignedInteger:v17];
          [objc_getProperty(v14 v24];

          goto LABEL_50;
        }
      }
    }
  }

  if (!v10 || ![v10 count])
  {
LABEL_49:
    v17 = 0;
    goto LABEL_50;
  }

  v89 = a3;
  v90 = v14;
  v91 = v12;
  v92 = v11;
  v93 = v10;
  v25 = v10;
  v98 = objc_alloc_init(NSMutableDictionary);
  v99 = objc_alloc_init(NSMutableDictionary);
  v26 = objc_alloc_init(NSMutableDictionary);
  memset(v152, 0, sizeof(v152));
  v151 = 0u;
  v150 = 0u;
  v149 = 0u;
  v148 = 0u;
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  memset(__strerrbuf, 0, sizeof(__strerrbuf));
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v25;
  v27 = [obj countByEnumeratingWithState:&v118 objects:v138 count:16];
  if (!v27)
  {
    v95 = 0;
    goto LABEL_52;
  }

  v28 = v27;
  v95 = 0;
  v29 = *v119;
  do
  {
    for (i = 0; i != v28; i = i + 1)
    {
      if (*v119 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v31 = [*(*(&v118 + 1) + 8 * i) lowercaseString];
      v32 = [v31 UTF8String];
      v33 = strlen(v32);
      v34 = ne_log_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        *v135 = a1;
        *&v135[8] = 2080;
        *&v135[10] = v32;
        v136 = 1024;
        v137 = v33;
        _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%@ perApp VPN domain %s <%d>", buf, 0x1Cu);
      }

      v35 = *v32 == 46;
      if (*v32 == 46)
      {
        ++v32;
      }

      v36 = v33 - v35;
      LODWORD(v114) = 0;
      if (!ne_trie_has_high_ascii())
      {
        goto LABEL_34;
      }

      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *v135 = v32;
        *&v135[8] = 1024;
        *&v135[10] = v36;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "perApp VPN domain - puny-coding %s <%d>", buf, 0x12u);
      }

      if (ne_tracker_validate_domain() && (v114 - 1) < 0xFD)
      {
        buf[v114] = 0;
        v38 = ne_log_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *v130 = 136315394;
          v131 = v32;
          v132 = 2080;
          v133 = buf;
          _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "perApp VPN domain - puny-coded %s -> %s", v130, 0x16u);
        }

        v32 = buf;
LABEL_34:
        v39 = strlen(v32);
        if ((v39 - 255) >= 0xFFFFFF02)
        {
          v41 = __strerrbuf;
          v42 = v39;
          do
          {
            *v41++ = v32[--v42];
          }

          while (v42);
          v40 = __strerrbuf;
          __strerrbuf[v39] = 0;
        }

        else
        {
          v40 = 0;
        }

        v43 = [[NSString alloc] initWithCString:v40 encoding:4];
        v44 = [[NSString alloc] initWithCString:v32 encoding:4];
        v45 = [v99 objectForKeyedSubscript:v43];

        if (!v45)
        {
          [v99 setObject:v44 forKeyedSubscript:v43];
        }

        v46 = [v98 objectForKeyedSubscript:v44];

        if (!v46)
        {
          [v98 setObject:v44 forKeyedSubscript:v44];
          v95 += [v44 length];
        }

        goto LABEL_46;
      }

      v43 = ne_log_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *v130 = 0;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to puny-code domain", v130, 2u);
      }

LABEL_46:
    }

    v28 = [obj countByEnumeratingWithState:&v118 objects:v138 count:16];
  }

  while (v28);
LABEL_52:

  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v96 = [v99 keyEnumerator];
  v48 = [v96 countByEnumeratingWithState:&v114 objects:buf count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v115;
    do
    {
      for (j = 0; j != v49; j = j + 1)
      {
        if (*v115 != v50)
        {
          objc_enumerationMutation(v96);
        }

        v52 = *(*(&v114 + 1) + 8 * j);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v53 = [v99 keyEnumerator];
        v54 = [v53 countByEnumeratingWithState:&v110 objects:v130 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v111;
          do
          {
            for (k = 0; k != v55; k = k + 1)
            {
              if (*v111 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v110 + 1) + 8 * k);
              if (([v52 isEqual:v58] & 1) == 0)
              {
                v59 = [v52 commonPrefixWithString:v58 options:2];
                if ([v59 length])
                {
                  [v26 setObject:v59 forKeyedSubscript:v59];
                }
              }
            }

            v55 = [v53 countByEnumeratingWithState:&v110 objects:v130 count:16];
          }

          while (v55);
        }
      }

      v49 = [v96 countByEnumeratingWithState:&v114 objects:buf count:16];
    }

    while (v49);
  }

  if (![v26 count] && objc_msgSend(v99, "count") == 1)
  {
    v60 = [v99 allKeys];
    v61 = [v60 objectAtIndexedSubscript:0];

    [v26 setObject:v61 forKeyedSubscript:v61];
  }

  v62 = ne_log_obj();
  v14 = v90;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    v85 = [v26 count];
    v86 = [v98 count];
    v87 = [v99 count];
    *v122 = 134218752;
    v123 = v85;
    v124 = 2048;
    v125 = v86;
    v126 = 2048;
    v127 = v87;
    v128 = 2048;
    v129 = v95;
    _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "perApp VPN domain - Derived %lu unique prefixes, %lu unique domains, %lu reversed domains, %lu total bytes", v122, 0x2Au);
  }

  if ([v98 count])
  {
    v63 = [v26 count];
    v64 = [v98 allKeys];
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v65 = [[NETrie alloc] initWithDomains:v64 prefixCount:v63 reverse:1 partialSearchAllowed:1 partialSearchTerminator:46 extra_bytes:40];
  v66 = v65;
  if (v65)
  {
    v67 = v64;
    [(NETrie *)v65 trie];
    [(NETrie *)v66 trie];
    v109[1] = v108 - 40;
    [(NETrie *)v66 trie];
    v109[2] = v107;
    [(NETrie *)v66 trie];
    v109[3] = v106;
    [(NETrie *)v66 trie];
    v109[4] = v105;
    [(NETrie *)v66 trie];
    v109[5] = v104;
    [(NETrie *)v66 trie];
    v109[6] = v103;
    [(NETrie *)v66 trie];
    v109[7] = v102;
    v109[8] = 46;
    if (v89)
    {
      v68 = 1;
    }

    else
    {
      v68 = 3;
    }

    v109[9] = v68;
    v69 = [NSData alloc];
    [(NETrie *)v66 trie];
    v70 = [v69 initWithBytes:v109 length:v101];
    v11 = v92;
    v71 = v92;
    os_unfair_lock_assert_owner(&unk_1000FD520);
    v73 = [objc_getProperty(v90 v72];
    v10 = v93;
    v12 = v91;
    if (v73)
    {
      v17 = v73;
      if (nelog_is_debug_logging_enabled())
      {
        v74 = ne_log_obj();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          Property = objc_getProperty(v90, v75, 48, 1);
          *__strerrbuf = 138413058;
          *&__strerrbuf[4] = v90;
          *&__strerrbuf[12] = 2080;
          *&__strerrbuf[14] = "[NESMPolicyMasterSession addDomainTrieWithData:matchSigningIdentifier:]";
          *&__strerrbuf[22] = 2048;
          *&__strerrbuf[24] = v17;
          LOWORD(v140) = 2112;
          *(&v140 + 2) = Property;
          _os_log_debug_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEBUG, "%@: %s - Added domain trie - ID %lu %@", __strerrbuf, 0x2Au);
        }
      }

      if (v71)
      {
        v76 = [NSNumber numberWithUnsignedInteger:v17];
        [objc_getProperty(v90 v77];
        goto LABEL_95;
      }

LABEL_102:
      v80 = ne_log_obj();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        [(NETrie *)v66 trie];
        *__strerrbuf = 134218240;
        *&__strerrbuf[4] = v100;
        *&__strerrbuf[12] = 2048;
        *&__strerrbuf[14] = v17;
        _os_log_debug_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEBUG, "Added domain trie of length %zu <id %lu>", __strerrbuf, 0x16u);
      }
    }

    else
    {
      v76 = ne_log_obj();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *__strerrbuf = 138412546;
        *&__strerrbuf[4] = v90;
        *&__strerrbuf[12] = 2080;
        *&__strerrbuf[14] = "[NESMPolicyMasterSession addDomainTrieWithData:matchSigningIdentifier:]";
        _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%@: %s - Failed to add domain trie", __strerrbuf, 0x16u);
      }

      v17 = 0;
LABEL_95:

      if (v17)
      {
        goto LABEL_102;
      }

      v78 = *__error();
      if (strerror_r(v78, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      v79 = ne_log_obj();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109378;
        *v135 = v78;
        *&v135[4] = 2080;
        *&v135[6] = __strerrbuf;
        _os_log_fault_impl(&_mh_execute_header, v79, OS_LOG_TYPE_FAULT, "Failed to add domain trie: [%d] %s", buf, 0x12u);
      }

      v17 = 0;
    }

    if (!v71)
    {
      v81 = *(a1 + 224);
      if (!v81)
      {
        v82 = objc_alloc_init(NSMutableArray);
        v83 = *(a1 + 224);
        *(a1 + 224) = v82;

        v81 = *(a1 + 224);
      }

      v84 = [[NSNumber alloc] initWithLong:v17];
      [v81 addObject:v84];
    }

    v64 = v67;
  }

  else
  {
    v70 = ne_log_obj();
    v11 = v92;
    v10 = v93;
    v12 = v91;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *__strerrbuf = 138412546;
      *&__strerrbuf[4] = a1;
      *&__strerrbuf[12] = 2080;
      *&__strerrbuf[14] = "[NESMPolicySession getDomainTrie:exactMatch:matchSigningIdentifier:appRules:masterSession:]";
      _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%@: %s - failed to build domain trie", __strerrbuf, 0x16u);
    }

    v17 = 0;
  }

LABEL_50:
  return v17;
}

uint64_t sub_100039578(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100033F68(*(a1 + 32));
  v5 = ne_log_large_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    v75 = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 64, 1);
    }

    LODWORD(buffer[0]) = 138412546;
    *(buffer + 4) = v75;
    WORD6(buffer[0]) = 2112;
    *(buffer + 14) = Property;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "control Policy IDs to be removed %@: %@", buffer, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = objc_getProperty(v8, v7, 64, 1);
  }

  else
  {
    v9 = 0;
  }

  sub_100031D58(v3, v9);
  v10 = ne_log_large_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v76 = *(a1 + 32);
    v77 = *(a1 + 40);
    if (v76)
    {
      v76 = objc_getProperty(v76, v11, 72, 1);
    }

    LODWORD(buffer[0]) = 138412546;
    *(buffer + 4) = v77;
    WORD6(buffer[0]) = 2112;
    *(buffer + 14) = v76;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "low control Policy IDs to be removed %@: %@", buffer, 0x16u);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = objc_getProperty(v13, v12, 72, 1);
  }

  else
  {
    v14 = 0;
  }

  sub_100032AF0(v3, v14);
  v15 = *(a1 + 48);
  if (isa_nsarray() && [*(a1 + 48) count] && *(a1 + 40))
  {
    v87 = [NEPolicyResult scopeSocketToInterfaceName:?];
    v86 = [NEPolicyResult tunnelIPToInterfaceName:*(a1 + 40) secondaryResultType:1];
    if (*(a1 + 56) == 1)
    {
      v81 = sub_100039DEC(*(a1 + 32), *(a1 + 40), @"DNSAgent");
      v85 = [NEPolicyResult netAgentUUID:?];
    }

    else
    {
      v85 = 0;
      v81 = 0;
    }

    if (*(a1 + 57) == 1)
    {
      v80 = sub_100039DEC(*(a1 + 32), *(a1 + 40), @"ProxyAgent");
      v84 = [NEPolicyResult netAgentUUID:?];
    }

    else
    {
      v84 = 0;
      v80 = 0;
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = *(a1 + 48);
    v19 = [obj countByEnumeratingWithState:&v91 objects:v100 count:16];
    v88 = v3;
    if (v19)
    {
      v20 = v19;
      v21 = *v92;
      v22 = CTBundle_ptr;
      v83 = v4;
      v82 = *v92;
      do
      {
        v23 = 0;
        v89 = v20;
        do
        {
          if (*v92 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v91 + 1) + 8 * v23);
          v99 = 0;
          memset(buffer, 0, sizeof(buffer));
          if (proc_pidinfo([v24 intValue], 17, 1uLL, buffer, 56) == 56)
          {
            v25 = [[NSUUID alloc] initWithUUIDBytes:buffer];
            v26 = +[NEPolicyCondition effectivePID:](NEPolicyCondition, "effectivePID:", [v24 intValue]);
            v97[0] = v26;
            v27 = [NEPolicyCondition effectiveApplication:v25];
            v97[1] = v27;
            v28 = [NSArray arrayWithObjects:v97 count:2];

            if (*(a1 + 56) == 1)
            {
              v30 = [objc_alloc(v22[43]) initWithOrder:v4 result:v85 conditions:v28];
              v31 = *(a1 + 32);
              if (v31)
              {
                v32 = objc_getProperty(v31, v29, 64, 1);
              }

              else
              {
                v32 = 0;
              }

              sub_100033A90(v3, v30, v32);
            }

            if (*(a1 + 57) == 1)
            {
              v34 = [objc_alloc(v22[43]) initWithOrder:(v4 + 2) result:v84 conditions:v28];
              v35 = *(a1 + 32);
              if (v35)
              {
                v36 = objc_getProperty(v35, v33, 64, 1);
              }

              else
              {
                v36 = 0;
              }

              sub_100033A90(v3, v34, v36);
            }

            v38 = [objc_alloc(v22[43]) initWithOrder:(v4 + 6) result:v87 conditions:v28];
            v39 = *(a1 + 32);
            if (v39)
            {
              v40 = objc_getProperty(v39, v37, 64, 1);
            }

            else
            {
              v40 = 0;
            }

            sub_100033A90(v3, v38, v40);

            v41 = +[NEPolicyCondition effectivePID:](NEPolicyCondition, "effectivePID:", [v24 intValue]);
            v96[0] = v41;
            v42 = [NEPolicyCondition effectiveApplication:v25];
            v96[1] = v42;
            v43 = [NEPolicyCondition scopedInterface:*(a1 + 40)];
            v96[2] = v43;
            v44 = [NSArray arrayWithObjects:v96 count:3];

            if (*(a1 + 56) == 1)
            {
              v46 = [[NEPolicy alloc] initWithOrder:v4 result:v85 conditions:v44];
              v47 = *(a1 + 32);
              if (v47)
              {
                v48 = objc_getProperty(v47, v45, 64, 1);
              }

              else
              {
                v48 = 0;
              }

              sub_100033A90(v3, v46, v48);
            }

            if (*(a1 + 57) == 1)
            {
              v50 = [[NEPolicy alloc] initWithOrder:(v4 + 2) result:v84 conditions:v44];
              v51 = *(a1 + 32);
              if (v51)
              {
                v52 = objc_getProperty(v51, v49, 64, 1);
              }

              else
              {
                v52 = 0;
              }

              sub_100033A90(v3, v50, v52);
            }

            v54 = [[NEPolicy alloc] initWithOrder:(v4 + 6) result:v86 conditions:v44];
            v55 = *(a1 + 32);
            if (v55)
            {
              v56 = objc_getProperty(v55, v53, 64, 1);
            }

            else
            {
              v56 = 0;
            }

            sub_100033A90(v3, v54, v56);

            v58 = *(a1 + 32);
            if (v58)
            {
              v59 = objc_getProperty(v58, v57, 72, 1);
            }

            else
            {
              v59 = 0;
            }

            sub_100033920(v3, v44, v59);
            v60 = [NEPolicy alloc];
            if (*(a1 + 32))
            {
              v61 = 18000;
            }

            else
            {
              v61 = 0;
            }

            if (*(a1 + 32))
            {
              v62 = 18120;
            }

            else
            {
              v62 = 0;
            }

            v63 = [NEPolicyResult skipWithOrder:v62];
            v64 = [NEPolicyCondition effectiveApplication:v25];
            v95[0] = v64;
            v65 = +[NEPolicyCondition allInterfaces];
            v95[1] = v65;
            v66 = [NSArray arrayWithObjects:v95 count:2];
            v68 = [v60 initWithOrder:v61 result:v63 conditions:v66];
            v69 = *(a1 + 32);
            if (v69)
            {
              v70 = objc_getProperty(v69, v67, 64, 1);
            }

            else
            {
              v70 = 0;
            }

            v3 = v88;
            sub_100033A90(v88, v68, v70);

            v4 = v83;
            v20 = v89;
            v21 = v82;
            v22 = CTBundle_ptr;
          }

          v23 = v23 + 1;
        }

        while (v20 != v23);
        v71 = [obj countByEnumeratingWithState:&v91 objects:v100 count:16];
        v20 = v71;
      }

      while (v71);
    }

    v17 = sub_100031EB4(v3);
    if (v17)
    {
      v72 = ne_log_large_obj();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        v78 = *(a1 + 32);
        v79 = *(a1 + 40);
        if (v78)
        {
          v78 = objc_getProperty(v78, v73, 64, 1);
        }

        LODWORD(buffer[0]) = 138412546;
        *(buffer + 4) = v79;
        WORD6(buffer[0]) = 2112;
        *(buffer + 14) = v78;
        _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "control Policy IDs added %@: %@", buffer, 0x16u);
      }
    }

    v16 = v88;
  }

  else
  {
    sub_100031EB4(v3);
    v16 = v3;
    v17 = 1;
  }

  return v17;
}

id sub_100039DEC(uint64_t a1, void *a2, void *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v5 = a3;
    v6 = a2;
    v7 = [[NSString alloc] initWithFormat:@"%@-@%@", v5, v6];

    v8 = [v7 UTF8String];
    v9 = strlen(v8);
    CC_SHA256(v8, v9, md);
    v3 = [[NSUUID alloc] initWithUUIDBytes:md];
  }

  return v3;
}

void sub_100039EE0(uint64_t a1, int a2, void *a3, char a4, char a5)
{
  v9 = a3;
  v10 = v9;
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 8) == 1)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10003A008;
        v12[3] = &unk_1000E9EA0;
        v12[4] = a1;
        v13 = v9;
        v15 = a4;
        v16 = a5;
        v14 = a2;
        sub_100031500(NESMPolicyMasterSession, v12);
      }
    }

    else
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No pid or mach-O UUIDs available for VPN plugin, cannot install VPN control pass policies", buf, 2u);
      }
    }
  }
}

uint64_t sub_10003A008(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 64, 1);
  }

  v6 = Property;
  v7 = ne_log_large_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v84 = *(a1 + 32);
    v85 = *(a1 + 40);
    if (v84)
    {
      v84 = objc_getProperty(v84, v8, 64, 1);
    }

    LODWORD(buffer[0]) = 138412546;
    *(buffer + 4) = v85;
    WORD6(buffer[0]) = 2112;
    *(buffer + 14) = v84;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "control pass Policy IDs to be removed %@: %@", buffer, 0x16u);
  }

  sub_100031D58(v4, v6);
  v9 = ne_log_large_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v86 = *(a1 + 32);
    v87 = *(a1 + 40);
    if (v86)
    {
      v86 = objc_getProperty(v86, v10, 72, 1);
    }

    LODWORD(buffer[0]) = 138412546;
    *(buffer + 4) = v87;
    WORD6(buffer[0]) = 2112;
    *(buffer + 14) = v86;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "low control Policy IDs to be removed %@: %@", buffer, 0x16u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = objc_getProperty(v12, v11, 72, 1);
  }

  else
  {
    v13 = 0;
  }

  sub_100032AF0(v4, v13);
  v14 = +[NEProcessInfo copyDNSUUIDs];
  if (v14)
  {
    v15 = +[NEProcessInfo copyNEHelperUUIDs];
    if (!v15)
    {
      v17 = 0;
LABEL_77:

      goto LABEL_78;
    }

    v102 = sub_100033F68(*(a1 + 32));
    v113 = v102 + 2;
    v104 = [NEPolicyResult tunnelIPToInterfaceName:*(a1 + 40) secondaryResultType:1];
    v16 = [NEPolicyResult scopeSocketToInterfaceName:*(a1 + 40)];
    if (*(a1 + 52) == 1)
    {
      v99 = sub_100039DEC(*(a1 + 32), *(a1 + 40), @"DNSAgent");
      v100 = [NEPolicyResult netAgentUUID:?];
    }

    else
    {
      v99 = 0;
      v100 = 0;
    }

    if (*(a1 + 53) == 1)
    {
      v18 = sub_100039DEC(*(a1 + 32), *(a1 + 40), @"ProxyAgent");
      v19 = [NEPolicyResult netAgentUUID:v18];
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    v124 = 0;
    memset(buffer, 0, sizeof(buffer));
    if (proc_pidinfo(*(a1 + 48), 17, 1uLL, buffer, 56) != 56 || (v20 = [[NSUUID alloc] initWithUUIDBytes:buffer]) == 0)
    {
      v17 = 0;
      v82 = v99;
LABEL_76:

      goto LABEL_77;
    }

    v21 = v20;
    v96 = v19;
    v97 = v16;
    v22 = objc_alloc_init(NSMutableArray);
    v23 = [NEPolicyCondition effectiveApplication:v21];
    [v22 addObject:v23];

    v24 = [NEPolicyCondition realApplication:v21];
    [v22 addObject:v24];

    v25 = [NEPolicyCondition scopedInterface:*(a1 + 40)];
    [v22 addObject:v25];

    v26 = [NEPolicyCondition effectivePID:*(a1 + 48)];
    [v22 addObject:v26];

    v27 = [[NEPolicy alloc] initWithOrder:v102 + 2 result:v104 conditions:v22];
    v28 = sub_100033A90(v4, v27, v6);

    v101 = v21;
    if (v28)
    {
      v113 = v102 + 3;
      v29 = objc_alloc_init(NSMutableArray);

      v30 = [NEPolicyCondition effectiveApplication:v21];
      [v29 addObject:v30];

      v31 = [NEPolicyCondition realApplication:v21];
      [v29 addObject:v31];

      v32 = +[NEPolicyCondition allInterfaces];
      [v29 addObject:v32];

      v33 = [NEPolicyCondition effectivePID:*(a1 + 48)];
      [v29 addObject:v33];

      v93 = v29;
      v34 = [[NEPolicy alloc] initWithOrder:v102 + 3 result:v97 conditions:v29];
      v35 = sub_100033A90(v4, v34, v6);

      if (v35)
      {
        v92 = v14;
        v36 = CTBundle_ptr;
        if (v100)
        {
          v38 = [[NEPolicy alloc] initWithOrder:v102 result:v100 conditions:v93];
          v39 = *(a1 + 32);
          if (v39)
          {
            v40 = objc_getProperty(v39, v37, 64, 1);
          }

          else
          {
            v40 = 0;
          }

          sub_100033A90(v4, v38, v40);
        }

        if (v96)
        {
          v42 = [[NEPolicy alloc] initWithOrder:v102 + 1 result:v96 conditions:v93];
          v43 = *(a1 + 32);
          if (v43)
          {
            v44 = objc_getProperty(v43, v41, 64, 1);
          }

          else
          {
            v44 = 0;
          }

          sub_100033A90(v4, v42, v44);
        }

        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v90 = v15;
        obj = v15;
        v45 = [obj countByEnumeratingWithState:&v109 objects:v122 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v110;
          while (2)
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v110 != v47)
              {
                objc_enumerationMutation(obj);
              }

              v49 = *(*(&v109 + 1) + 8 * i);
              v50 = objc_alloc_init(NSMutableArray);
              v51 = [NEPolicyCondition effectiveApplication:v101];
              [v50 addObject:v51];

              v52 = [NEPolicyCondition realApplication:v49];
              [v50 addObject:v52];

              v53 = +[NEPolicyCondition allInterfaces];
              [v50 addObject:v53];

              v54 = +[NEPolicyCondition entitlement];
              [v50 addObject:v54];

              v55 = [NEPolicyCondition effectivePID:*(a1 + 48)];
              [v50 addObject:v55];

              v56 = [[NEPolicy alloc] initWithOrder:v102 + 4 result:v104 conditions:v50];
              LODWORD(v49) = sub_100033A90(v4, v56, v6);

              if (!v49)
              {
                v17 = 0;
                v14 = v92;
LABEL_72:
                v15 = v90;
                v82 = v99;
                v19 = v96;
                v16 = v97;
                goto LABEL_73;
              }

              v36 = CTBundle_ptr;
            }

            v46 = [obj countByEnumeratingWithState:&v109 objects:v122 count:16];
            if (v46)
            {
              continue;
            }

            break;
          }
        }

        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v14 = v92;
        obj = v92;
        v95 = [obj countByEnumeratingWithState:&v105 objects:v121 count:16];
        if (v95)
        {
          v94 = *v106;
          while (2)
          {
            for (j = 0; j != v95; j = j + 1)
            {
              if (*v106 != v94)
              {
                objc_enumerationMutation(obj);
              }

              v58 = *(*(&v105 + 1) + 8 * j);
              v59 = objc_alloc_init(v36[180]);
              v60 = [NEPolicyCondition effectiveApplication:v101];
              [v59 addObject:v60];

              v61 = [NEPolicyCondition realApplication:v58];
              [v59 addObject:v61];

              v62 = +[NEPolicyCondition allInterfaces];
              [v59 addObject:v62];

              v63 = +[NEPolicyCondition entitlement];
              [v59 addObject:v63];

              v64 = [NEPolicyCondition effectivePID:*(a1 + 48)];
              [v59 addObject:v64];

              v65 = [[NEPolicy alloc] initWithOrder:v102 + 5 result:v104 conditions:v59];
              LODWORD(v60) = sub_100033A90(v4, v65, v6);

              if (!v60)
              {

                v17 = 0;
                goto LABEL_72;
              }

              if (v100)
              {
                v66 = [[NEPolicy alloc] initWithOrder:v102 result:v100 conditions:v59];
                sub_100033A90(v4, v66, v6);
              }

              v36 = CTBundle_ptr;
            }

            v95 = [obj countByEnumeratingWithState:&v105 objects:v121 count:16];
            if (v95)
            {
              continue;
            }

            break;
          }
        }

        v113 = v102 + 6;
        v67 = [NEPolicyCondition effectivePID:*(a1 + 48)];
        v120[0] = v67;
        v68 = +[NEPolicyCondition allInterfaces];
        v120[1] = v68;
        v70 = [NSArray arrayWithObjects:v120 count:2];
        v71 = *(a1 + 32);
        if (v71)
        {
          v72 = objc_getProperty(v71, v69, 72, 1);
        }

        else
        {
          v72 = 0;
        }

        sub_100033920(v4, v70, v72);

        v103 = [NEPolicy alloc];
        if (*(a1 + 32))
        {
          v73 = 18000;
        }

        else
        {
          v73 = 0;
        }

        if (*(a1 + 32))
        {
          v74 = 18120;
        }

        else
        {
          v74 = 0;
        }

        v75 = [NEPolicyResult skipWithOrder:v74, v90];
        v76 = [NEPolicyCondition effectiveApplication:v101];
        v119[0] = v76;
        v77 = +[NEPolicyCondition allInterfaces];
        v119[1] = v77;
        v78 = [NSArray arrayWithObjects:v119 count:2];
        v79 = [v103 initWithOrder:v73 result:v75 conditions:v78];
        sub_100033A90(v4, v79, v6);

        v80 = *(a1 + 32);
        LODWORD(v79) = *(a1 + 48);
        v118 = v101;
        v81 = [NSArray arrayWithObjects:&v118 count:1];
        LODWORD(v80) = sub_10003ABF8(v80, v4, v79, v81, v104, v6, &v113);

        if (v80)
        {
          v14 = v92;
          v19 = v96;
          v16 = v97;
          if (sub_100031EB4(v4))
          {
            obj = ne_log_large_obj();
            if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
            {
              v89 = *(a1 + 40);
              *buf = 138412546;
              v115 = v89;
              v116 = 2112;
              v117 = v6;
              _os_log_debug_impl(&_mh_execute_header, obj, OS_LOG_TYPE_DEBUG, "control pass Policy IDs added %@: %@", buf, 0x16u);
            }

            v17 = 1;
            v15 = v91;
            v82 = v99;
LABEL_73:
          }

          else
          {
            v17 = 0;
            v15 = v91;
            v82 = v99;
          }
        }

        else
        {
          v17 = 0;
          v15 = v91;
          v14 = v92;
          v82 = v99;
          v19 = v96;
          v16 = v97;
        }

        v83 = v93;
        goto LABEL_75;
      }

      v17 = 0;
      v19 = v96;
      v16 = v97;
      v83 = v29;
    }

    else
    {
      v17 = 0;
      v83 = v22;
      v19 = v96;
      v16 = v97;
    }

    v82 = v99;
LABEL_75:

    goto LABEL_76;
  }

  v17 = 0;
LABEL_78:

  return v17;
}