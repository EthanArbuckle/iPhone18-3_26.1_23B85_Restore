@interface IndoorRequestInfo
+ (id)indoorRequestInfoFromRequest:(id)request;
+ (id)indoorRequestInfoFromTask:(id)task;
- (IndoorRequestInfo)initWithCoder:(id)coder;
- (id)description;
- (id)initFloor:(id)floor inVenue:(id)venue withContext:(int64_t)context requestFor:(int)for withinSession:(int)session lastRelevant:(id)relevant allowCellularDownloadTile:(BOOL)tile requestUUID:(id)self0;
- (id)initFromRequest:(id)request updatedRelevancy:(id)relevancy;
- (void)encodeWithCoder:(id)coder;
- (void)setOnRequest:(id)request;
@end

@implementation IndoorRequestInfo

+ (id)indoorRequestInfoFromRequest:(id)request
{
  requestCopy = request;
  v4 = [NSURLProtocol propertyForKey:@"com.apple.pipelined.RequestInfo" inRequest:requestCopy];
  v5 = [requestCopy description];
  uTF8String = [v5 UTF8String];
  if (!v4)
  {
    sub_1000474A4(v22, "");
    sub_1001CCEE8("No indoor request information in NSURLRequest: ", &v24);
    sub_1002C60F8(&uTF8String, &v25);
    sub_1000E661C(v22, &v24, 2);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_26:
        operator delete(v22[0]);
LABEL_11:
        sub_10003F5D0(__p);
      }
    }

    else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v24.__r_.__value_.__l.__data_);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = [objc_opt_class() description];
  v8 = v7;
  uTF8String = [v7 UTF8String];
  if ((isKindOfClass & 1) == 0)
  {
    sub_1000474A4(v22, "");
    sub_10020E0B8("Invalid indoor request information in NSURLRequest. Type = ", &v24);
    sub_1002C60F8(&uTF8String, &v25);
    sub_1000E661C(v22, &v24, 2);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_14:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_29:
        operator delete(v22[0]);
LABEL_15:
        sub_10003F5D0(__p);
      }
    }

    else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(v24.__r_.__value_.__l.__data_);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  v19 = 0;
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v19];
  v10 = v19;
  v11 = [v10 description];
  v12 = v11;
  uTF8String = [v11 UTF8String];
  if (!v9)
  {
    sub_1000474A4(v22, "");
    sub_1000D36B0("Hit an error while unarchiving: %s", &v24);
    sub_1002C60F8(&uTF8String, &v25);
    sub_1000E661C(v22, &v24, 2);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_18:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

LABEL_32:
        operator delete(v22[0]);
LABEL_19:
        sub_10003F5D0(__p);
      }
    }

    else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v24.__r_.__value_.__l.__data_);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

  v13 = [requestCopy description];
  v14 = v13;
  uTF8String = [v13 UTF8String];

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();
  v16 = [objc_opt_class() description];
  v17 = v16;
  uTF8String = [v16 UTF8String];
  if ((v15 & 1) == 0)
  {
    sub_1000474A4(v22, "");
    sub_10020E0B8("Invalid indoor request information in NSURLRequest. Type = ", &v24);
    sub_1002C60F8(&uTF8String, &v25);
    sub_1000E661C(v22, &v24, 2);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_22:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_35:
        operator delete(v22[0]);
LABEL_23:
        sub_10003F5D0(__p);
      }
    }

    else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v24.__r_.__value_.__l.__data_);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  return v9;
}

+ (id)indoorRequestInfoFromTask:(id)task
{
  originalRequest = [task originalRequest];
  v4 = [IndoorRequestInfo indoorRequestInfoFromRequest:originalRequest];

  return v4;
}

- (IndoorRequestInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"venueUuid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"floorUuid"];
  v7 = [coderCopy decodeIntForKey:@"locationContext"];
  v8 = [coderCopy decodeBoolForKey:@"isFloorMetadata"];
  v9 = [coderCopy decodeIntForKey:@"session"];
  v10 = [NSDate alloc];
  [coderCopy decodeDoubleForKey:@"lastRelevant"];
  v11 = [v10 initWithTimeIntervalSinceReferenceDate:?];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
  LOBYTE(v15) = [coderCopy decodeBoolForKey:@"allowCellularDownloadTile"];
  v13 = [(IndoorRequestInfo *)self initFloor:v6 inVenue:v5 withContext:v7 requestFor:v8 ^ 1 withinSession:v9 lastRelevant:v11 allowCellularDownloadTile:v15 requestUUID:v12];

  return v13;
}

- (id)initFloor:(id)floor inVenue:(id)venue withContext:(int64_t)context requestFor:(int)for withinSession:(int)session lastRelevant:(id)relevant allowCellularDownloadTile:(BOOL)tile requestUUID:(id)self0
{
  floorCopy = floor;
  venueCopy = venue;
  relevantCopy = relevant;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = IndoorRequestInfo;
  v19 = [(IndoorRequestInfo *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_floorUuid, floor);
    objc_storeStrong(&v20->_venueUuid, venue);
    v20->_context = context;
    v20->_session = session;
    v20->_kind = for;
    objc_storeStrong(&v20->_lastRelevant, relevant);
    objc_storeStrong(&v20->_requestUUID, d);
    v20->_allowCellularDownloadTile = tile;
    v21 = v20;
  }

  return v20;
}

- (id)initFromRequest:(id)request updatedRelevancy:(id)relevancy
{
  requestCopy = request;
  relevancyCopy = relevancy;
  floorUuid = [requestCopy floorUuid];
  venueUuid = [requestCopy venueUuid];
  context = [requestCopy context];
  kind = [requestCopy kind];
  session = [requestCopy session];
  allowCellularDownloadTile = [requestCopy allowCellularDownloadTile];
  requestUUID = [requestCopy requestUUID];
  LOBYTE(v17) = allowCellularDownloadTile;
  v15 = [(IndoorRequestInfo *)self initFloor:floorUuid inVenue:venueUuid withContext:context requestFor:kind withinSession:session lastRelevant:relevancyCopy allowCellularDownloadTile:v17 requestUUID:requestUUID];

  return v15;
}

- (void)setOnRequest:(id)request
{
  requestCopy = request;
  allowCellularDownloadTile = [IndoorRequestInfo isMetadata:[(IndoorRequestInfo *)self kind]]|| [(IndoorRequestInfo *)self allowCellularDownloadTile];
  [requestCopy setAllowsCellularAccess:allowCellularDownloadTile];
  v6 = [NSKeyedArchiver archivedDataWithRootObject:self];
  if (!v6)
  {
    sub_1000474A4(v8, "");
    sub_100259F9C("Couldn't serialize self", &__p);
    sub_1000E661C(v8, &__p, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }

    sub_1000BA6B0(&v7);
  }

  [NSURLProtocol setProperty:v6 forKey:@"com.apple.pipelined.RequestInfo" inRequest:requestCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_venueUuid forKey:@"venueUuid"];
  [coderCopy encodeObject:self->_floorUuid forKey:@"floorUuid"];
  [coderCopy encodeInt:LODWORD(self->_context) forKey:@"locationContext"];
  [coderCopy encodeBool:+[IndoorRequestInfo isMetadata:](IndoorRequestInfo forKey:{"isMetadata:", self->_kind), @"isFloorMetadata"}];
  [coderCopy encodeInt:self->_session forKey:@"session"];
  [(NSDate *)self->_lastRelevant timeIntervalSinceReferenceDate];
  [coderCopy encodeDouble:@"lastRelevant" forKey:?];
  requestUUID = [(IndoorRequestInfo *)self requestUUID];
  [coderCopy encodeObject:requestUUID forKey:@"requestUUID"];

  [coderCopy encodeBool:-[IndoorRequestInfo allowCellularDownloadTile](self forKey:{"allowCellularDownloadTile"), @"allowCellularDownloadTile"}];
}

- (id)description
{
  v3 = 0;
  v4 = @"T";
  session = self->_session;
  kind = self->_kind;
  if (kind != 1)
  {
    v4 = 0;
  }

  if (kind)
  {
    v7 = v4;
  }

  else
  {
    v7 = @"C";
  }

  if (session <= 2)
  {
    v3 = *(&off_10044B738 + session);
  }

  context = self->_context;
  v9 = [NSString alloc];
  venueUuid = self->_venueUuid;
  floorUuid = self->_floorUuid;
  requestUUID = [(IndoorRequestInfo *)self requestUUID];
  uUIDString = [requestUUID UUIDString];
  v14 = uUIDString;
  v15 = @"I";
  if (context)
  {
    v15 = 0;
  }

  if (context == 1)
  {
    v15 = @"R";
  }

  v16 = [v9 initWithFormat:@"%@|%@|%@|%@|%@|%@", v3, v7, v15, venueUuid, floorUuid, uUIDString];

  return v16;
}

@end