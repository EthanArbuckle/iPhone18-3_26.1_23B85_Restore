@interface RequestTemplateURL
- (RequestTemplateURL)urlWithString:(id)string;
- (id)_substituteNonAuthenticatedURLPlaceholders:(id)placeholders;
- (id)_substituteStandardURLPlaceholders:(id)placeholders account:(id)account udid:(id)udid;
- (id)unauthenticatedURLFromTemplate:(id)template;
- (id)urlFromTemplate:(id)template account:(id)account udid:(id)udid;
@end

@implementation RequestTemplateURL

- (id)urlFromTemplate:(id)template account:(id)account udid:(id)udid
{
  v6 = [(RequestTemplateURL *)self _substituteStandardURLPlaceholders:template account:account udid:udid];
  v7 = [(RequestTemplateURL *)self urlWithString:v6];

  return v7;
}

- (id)unauthenticatedURLFromTemplate:(id)template
{
  v4 = [(RequestTemplateURL *)self _substituteNonAuthenticatedURLPlaceholders:template];
  v5 = [(RequestTemplateURL *)self urlWithString:v4];

  return v5;
}

- (RequestTemplateURL)urlWithString:(id)string
{
  stringCopy = string;
  v4 = [[NSURL alloc] initWithString:stringCopy];
  if (!v4)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = stringCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Could not create an NSURL from the url string %@", &v7, 0xCu);
    }
  }

  return v4;
}

- (id)_substituteNonAuthenticatedURLPlaceholders:(id)placeholders
{
  placeholdersCopy = placeholders;
  nonAuthenticatedSchemeInURL = [(RequestTemplateURL *)self nonAuthenticatedSchemeInURL];
  v6 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:nonAuthenticatedSchemeInURL];

  nonAuthenticatedHostNameInURL = [(RequestTemplateURL *)self nonAuthenticatedHostNameInURL];
  v8 = [v6 stringByReplacingOccurrencesOfString:@"${hostname}" withString:nonAuthenticatedHostNameInURL];

  nonAuthenticatedServiceInURL = [(RequestTemplateURL *)self nonAuthenticatedServiceInURL];
  v10 = [v8 stringByReplacingOccurrencesOfString:@"${service}" withString:nonAuthenticatedServiceInURL];

  return v10;
}

- (id)_substituteStandardURLPlaceholders:(id)placeholders account:(id)account udid:(id)udid
{
  placeholdersCopy = placeholders;
  accountCopy = account;
  udidCopy = udid;
  v11 = +[FMDPreferencesMgr hostportOverride];
  if ([v11 length])
  {
    v12 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${hostname}" withString:v11];
  }

  else
  {
    serverHost = [accountCopy serverHost];

    if (!serverHost)
    {
      goto LABEL_6;
    }

    serverHost2 = [accountCopy serverHost];
    v12 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${hostname}" withString:serverHost2];

    placeholdersCopy = serverHost2;
  }

  placeholdersCopy = v12;
LABEL_6:
  v15 = +[FMDPreferencesMgr protocolSchemeOverride];
  if ([v15 length])
  {
    v16 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:v15];
  }

  else
  {
    serverProtocolScheme = [accountCopy serverProtocolScheme];

    if (!serverProtocolScheme)
    {
      goto LABEL_11;
    }

    serverProtocolScheme2 = [accountCopy serverProtocolScheme];
    v16 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${scheme}" withString:serverProtocolScheme2];

    placeholdersCopy = serverProtocolScheme2;
  }

  placeholdersCopy = v16;
LABEL_11:
  serviceIdentifierInURL = [(RequestTemplateURL *)self serviceIdentifierInURL];

  if (serviceIdentifierInURL)
  {
    serviceIdentifierInURL2 = [(RequestTemplateURL *)self serviceIdentifierInURL];
    v21 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${service}" withString:serviceIdentifierInURL2];

    placeholdersCopy = v21;
  }

  authId = [accountCopy authId];

  if (authId)
  {
    authId2 = [accountCopy authId];
    v24 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${dsid}" withString:authId2];

    placeholdersCopy = v24;
  }

  if (udidCopy)
  {
    v25 = [placeholdersCopy stringByReplacingOccurrencesOfString:@"${udid}" withString:udidCopy];

    placeholdersCopy = v25;
  }

  return placeholdersCopy;
}

@end