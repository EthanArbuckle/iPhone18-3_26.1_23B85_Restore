@interface NRBabelPrefix
- (BOOL)isContainedInPrefix:(id)prefix;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesPrefix:(const in6_addr *)prefix plen:(unsigned __int8)plen;
- (id)description;
- (id)descriptionWithoutPlen;
- (in6_addr)prefixInner;
- (unsigned)writeToAE:(char *)e plen:(char *)plen prefix:(char *)prefix;
@end

@implementation NRBabelPrefix

- (in6_addr)prefixInner
{
  v2 = *&self->_prefixInner.__u6_addr32[2];
  v3 = *self->_prefixInner.__u6_addr8;
  *&result.__u6_addr32[2] = v2;
  *result.__u6_addr8 = v3;
  return result;
}

- (unsigned)writeToAE:(char *)e plen:(char *)plen prefix:(char *)prefix
{
  *prefix = 0;
  *(prefix + 1) = 0;
  plen = self->_plen;
  if (plen < 0x81)
  {
    if (!self->_plen)
    {
      LOBYTE(v12) = 0;
      *e = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }

    plen = 128;
  }

  v10 = plen + 7;
  p_prefixInner = &self->_prefixInner;
  if (!self->_prefixInner.__u6_addr32[0] && !self->_prefixInner.__u6_addr32[1])
  {
    v14 = self->_prefixInner.__u6_addr32[2];
    if (v14)
    {
      if (v14 == -65536)
      {
        LOBYTE(plen) = plen - 96;
        v12 = (v10 >> 3) - 12;
        *e = 1;
        p_prefixInner = &self->_prefixInner.__u6_addr32[3];
        goto LABEL_13;
      }
    }

    else if (self->_prefixInner.__u6_addr32[3] == 0x1000000)
    {
      *e = 3;
      v12 = (v10 >> 3) - 8;
      p_prefixInner = &self->_prefixInner.__u6_addr32[2];
      goto LABEL_13;
    }
  }

  v12 = v10 >> 3;
  *e = 2;
LABEL_13:
  memcpy(prefix, p_prefixInner, v12);
LABEL_14:
  *plen = plen;
  return v12;
}

- (BOOL)isContainedInPrefix:(id)prefix
{
  prefixCopy = prefix;
  plen = self->_plen;
  if (plen >= [prefixCopy plen])
  {
    v6 = [prefixCopy matchesPrefix:&self->_prefixInner plen:{objc_msgSend(prefixCopy, "plen")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy matchesPrefix:&self->_prefixInner plen:self->_plen];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)descriptionWithoutPlen
{
  if (self->_prefixInner.__u6_addr32[0] || self->_prefixInner.__u6_addr32[1] || self->_prefixInner.__u6_addr32[2] != -65536)
  {
    IPv6AddrString = createIPv6AddrString();
  }

  else
  {
    IPv6AddrString = 0;
  }

  return IPv6AddrString;
}

- (id)description
{
  plen = self->_plen;
  if (!self->_prefixInner.__u6_addr32[0] && !self->_prefixInner.__u6_addr32[1] && self->_prefixInner.__u6_addr32[2] == -65536)
  {
    plen -= 96;
  }

  v3 = [NSString alloc];
  IPv6AddrString = createIPv6AddrString();
  plen = [v3 initWithFormat:@"%@/%u", IPv6AddrString, plen];

  return plen;
}

- (BOOL)matchesPrefix:(const in6_addr *)prefix plen:(unsigned __int8)plen
{
  if (self->_plen != plen)
  {
    return 0;
  }

  plenCopy = plen;
  p_prefixInner = &self->_prefixInner;
  if (plen >= 0x81u)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }

    plenCopy = 128;
  }

  v7 = plenCopy;
  v8 = plenCopy >> 3;
  if (memcmp(p_prefixInner, prefix, v8))
  {
    return 0;
  }

  if ((v7 & 7) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      return (prefix->__u6_addr8[v8] ^ p_prefixInner->__u6_addr8[v8]) >> (8 - (v7 & 7)) == 0;
    }

    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }
  }

  return 1;
}

@end