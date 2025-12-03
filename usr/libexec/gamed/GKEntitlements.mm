@interface GKEntitlements
- (GKEntitlements)initWithConnection:(id)connection;
- (id)description;
- (unint64_t)_applyPrivateTransitiveEntitlements:(unint64_t)entitlements forConnection:(id)connection;
- (unint64_t)_entitlementForName:(id)name;
- (unint64_t)_valuesForEntitlement:(id)entitlement forConnection:(id)connection;
@end

@implementation GKEntitlements

- (id)description
{
  v26.receiver = self;
  v26.super_class = GKEntitlements;
  v3 = [(GKEntitlements *)&v26 description];
  entitlements = self->_entitlements;
  v5 = "Account";
  if ((entitlements & 1) == 0)
  {
    v5 = "";
  }

  v6 = "Profile";
  if ((entitlements & 2) == 0)
  {
    v6 = "";
  }

  v7 = "Friends";
  if ((entitlements & 4) == 0)
  {
    v7 = "";
  }

  v8 = "Games";
  if ((entitlements & 0x10) == 0)
  {
    v8 = "";
  }

  v9 = "GameStats";
  if ((entitlements & 0x20) == 0)
  {
    v9 = "";
  }

  v10 = "Challenges";
  if ((entitlements & 0x40) == 0)
  {
    v10 = "";
  }

  v11 = "Multiplayer";
  if ((entitlements & 0x80) == 0)
  {
    v11 = "";
  }

  v12 = "TurnBasedMultiplayer";
  if ((entitlements & 0x100) == 0)
  {
    v12 = "";
  }

  v13 = "Media";
  if ((entitlements & 0x400) == 0)
  {
    v13 = "";
  }

  v14 = "BypassAuthentication";
  if ((entitlements & &_mh_execute_header) == 0)
  {
    v14 = "";
  }

  v15 = "AccountPrivate";
  if ((entitlements & 0x10000) == 0)
  {
    v15 = "";
  }

  v16 = "ProfilePrivate";
  if ((entitlements & 0x20000) == 0)
  {
    v16 = "";
  }

  v17 = "FriendsPrivate";
  if ((entitlements & 0x40000) == 0)
  {
    v17 = "";
  }

  v18 = "GamesPrivate";
  if ((entitlements & 0x100000) == 0)
  {
    v18 = "";
  }

  v19 = "GameStatsPrivate";
  if ((entitlements & 0x200000) == 0)
  {
    v19 = "";
  }

  v20 = "ChallengesPrivate";
  if ((entitlements & 0x400000) == 0)
  {
    v20 = "";
  }

  v21 = "MultiplayerPrivate";
  if ((entitlements & 0x800000) == 0)
  {
    v21 = "";
  }

  v22 = "TurnBasedMultiplayerPrivate";
  if ((entitlements & 0x1000000) == 0)
  {
    v22 = "";
  }

  if ((entitlements & 0x4000000) != 0)
  {
    v23 = "MediaPrivate";
  }

  else
  {
    v23 = "";
  }

  v24 = [v3 stringByAppendingFormat:@" -- (%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s)", v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23];

  return v24;
}

- (unint64_t)_entitlementForName:(id)name
{
  v3 = qword_1003B9180;
  nameCopy = name;
  if (v3 != -1)
  {
    sub_10028D2CC();
  }

  Value = CFDictionaryGetValue(qword_1003B9178, nameCopy);

  return Value;
}

- (unint64_t)_valuesForEntitlement:(id)entitlement forConnection:(id)connection
{
  v5 = [connection valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v9 |= [(GKEntitlements *)self _entitlementForName:*(*(&v13 + 1) + 8 * i), v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v9 = [(GKEntitlements *)self _entitlementForName:v5];
  }

  else if ([v5 BOOLValue])
  {
    v9 = 1527;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)_applyPrivateTransitiveEntitlements:(unint64_t)entitlements forConnection:(id)connection
{
  connectionCopy = connection;
  v6 = connectionCopy;
  if ((entitlements & 2) == 0)
  {
    v7 = [connectionCopy valueForEntitlement:@"com.apple.private.contacts"];
    if (v7)
    {
    }

    else
    {
      v8 = [v6 valueForEntitlement:@"com.apple.private.contactsui"];

      if (!v8)
      {
        goto LABEL_10;
      }
    }

    v9 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
      v9 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = v9;
      v12 = [NSBundle _gkBundleIdentifierFromConnection:v6];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Using private Contacts entitlement to imply private Game Center Profile entitlement for: %@", &v14, 0xCu);
    }

    entitlements |= 2uLL;
  }

LABEL_10:

  return entitlements;
}

- (GKEntitlements)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v21.receiver = self;
  v21.super_class = GKEntitlements;
  v5 = [(GKEntitlements *)&v21 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_25;
  }

  v7 = [(GKEntitlements *)v5 _valuesForEntitlement:@"com.apple.private.game-center" forConnection:connectionCopy];
  v8 = [(GKEntitlements *)v6 _valuesForEntitlement:@"com.apple.developer.game-center" forConnection:connectionCopy];
  v9 = [(GKEntitlements *)v6 _applyPrivateTransitiveEntitlements:v7 forConnection:connectionCopy];
  v6->_entitlements = v8 | (v9 << 16) | v9;
  v10 = [connectionCopy valueForEntitlement:@"com.apple.private.game-center.bypass-authentication"];
  if (([v10 BOOLValue] & 1) != 0 || -[GKEntitlements _shouldBypasAuthenticationForConnection:](v6, "_shouldBypasAuthenticationForConnection:", connectionCopy))
  {
    v6->_entitlements |= &_mh_execute_header;
  }

  v11 = [connectionCopy valueForEntitlement:@"com.apple.accounts.appleaccount.fullaccess"];
  if ([v11 BOOLValue])
  {

LABEL_8:
    v6->_entitlements |= 0x200000000uLL;
    goto LABEL_9;
  }

  v12 = [connectionCopy valueForEntitlement:@"com.apple.private.game-center.credential"];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (![(GKEntitlements *)v6 hasEntitlements:1527])
  {
    if (![(GKEntitlements *)v6 hasAnyPrivateEntitlement])
    {
      if (!os_log_GKGeneral)
      {
        v14 = GKOSLoggers();
      }

      v15 = os_log_GKDeveloper;
      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        sub_10028D2E0(v15);
      }

      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
      }

      v17 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028D324(v17, connectionCopy);
      }

      v18 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v19 = GKOSLoggers();
        v18 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10028D3E0(v18, connectionCopy);
      }
    }

    v6->_entitlements |= 0x5F7uLL;
  }

LABEL_25:
  return v6;
}

@end