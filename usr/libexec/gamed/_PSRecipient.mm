@interface _PSRecipient
- (id)_gkPrefixedURIHandle;
@end

@implementation _PSRecipient

- (id)_gkPrefixedURIHandle
{
  v3 = [(_PSRecipient *)self handle];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(_PSRecipient *)self handle];
    v6 = [IDSURI URIWithUnprefixedURI:v5];
    v7 = [v6 prefixedURI];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end