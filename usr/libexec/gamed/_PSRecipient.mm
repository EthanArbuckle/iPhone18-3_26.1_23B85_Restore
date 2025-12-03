@interface _PSRecipient
- (id)_gkPrefixedURIHandle;
@end

@implementation _PSRecipient

- (id)_gkPrefixedURIHandle
{
  handle = [(_PSRecipient *)self handle];
  v4 = [handle length];

  if (v4)
  {
    handle2 = [(_PSRecipient *)self handle];
    v6 = [IDSURI URIWithUnprefixedURI:handle2];
    prefixedURI = [v6 prefixedURI];
  }

  else
  {
    prefixedURI = 0;
  }

  return prefixedURI;
}

@end