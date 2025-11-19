@interface NRBabelPrefix
- (BOOL)isContainedInPrefix:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesPrefix:(const in6_addr *)a3 plen:(unsigned __int8)a4;
- (id)description;
- (id)descriptionWithoutPlen;
- (in6_addr)prefixInner;
- (unsigned)writeToAE:(char *)a3 plen:(char *)a4 prefix:(char *)a5;
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

- (unsigned)writeToAE:(char *)a3 plen:(char *)a4 prefix:(char *)a5
{
  *a5 = 0;
  *(a5 + 1) = 0;
  plen = self->_plen;
  if (plen < 0x81)
  {
    if (!self->_plen)
    {
      LOBYTE(v12) = 0;
      *a3 = 0;
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
        *a3 = 1;
        p_prefixInner = &self->_prefixInner.__u6_addr32[3];
        goto LABEL_13;
      }
    }

    else if (self->_prefixInner.__u6_addr32[3] == 0x1000000)
    {
      *a3 = 3;
      v12 = (v10 >> 3) - 8;
      p_prefixInner = &self->_prefixInner.__u6_addr32[2];
      goto LABEL_13;
    }
  }

  v12 = v10 >> 3;
  *a3 = 2;
LABEL_13:
  memcpy(a5, p_prefixInner, v12);
LABEL_14:
  *a4 = plen;
  return v12;
}

- (BOOL)isContainedInPrefix:(id)a3
{
  v4 = a3;
  plen = self->_plen;
  if (plen >= [v4 plen])
  {
    v6 = [v4 matchesPrefix:&self->_prefixInner plen:{objc_msgSend(v4, "plen")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 matchesPrefix:&self->_prefixInner plen:self->_plen];
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
  v5 = [v3 initWithFormat:@"%@/%u", IPv6AddrString, plen];

  return v5;
}

- (BOOL)matchesPrefix:(const in6_addr *)a3 plen:(unsigned __int8)a4
{
  if (self->_plen != a4)
  {
    return 0;
  }

  v4 = a4;
  p_prefixInner = &self->_prefixInner;
  if (a4 >= 0x81u)
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

    v4 = 128;
  }

  v7 = v4;
  v8 = v4 >> 3;
  if (memcmp(p_prefixInner, a3, v8))
  {
    return 0;
  }

  if ((v7 & 7) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      return (a3->__u6_addr8[v8] ^ p_prefixInner->__u6_addr8[v8]) >> (8 - (v7 & 7)) == 0;
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