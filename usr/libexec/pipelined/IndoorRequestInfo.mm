@interface IndoorRequestInfo
+ (id)indoorRequestInfoFromRequest:(id)a3;
+ (id)indoorRequestInfoFromTask:(id)a3;
- (IndoorRequestInfo)initWithCoder:(id)a3;
- (id)description;
- (id)initFloor:(id)a3 inVenue:(id)a4 withContext:(int64_t)a5 requestFor:(int)a6 withinSession:(int)a7 lastRelevant:(id)a8 allowCellularDownloadTile:(BOOL)a9 requestUUID:(id)a10;
- (id)initFromRequest:(id)a3 updatedRelevancy:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setOnRequest:(id)a3;
@end

@implementation IndoorRequestInfo

+ (id)indoorRequestInfoFromRequest:(id)a3
{
  v3 = a3;
  v4 = [NSURLProtocol propertyForKey:@"com.apple.pipelined.RequestInfo" inRequest:v3];
  v5 = [v3 description];
  v20 = [v5 UTF8String];
  if (!v4)
  {
    sub_1000474A4(v22, "");
    sub_1001CCEE8("No indoor request information in NSURLRequest: ", &v24);
    sub_1002C60F8(&v20, &v25);
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
  v20 = [v7 UTF8String];
  if ((isKindOfClass & 1) == 0)
  {
    sub_1000474A4(v22, "");
    sub_10020E0B8("Invalid indoor request information in NSURLRequest. Type = ", &v24);
    sub_1002C60F8(&v20, &v25);
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
  v20 = [v11 UTF8String];
  if (!v9)
  {
    sub_1000474A4(v22, "");
    sub_1000D36B0("Hit an error while unarchiving: %s", &v24);
    sub_1002C60F8(&v20, &v25);
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

  v13 = [v3 description];
  v14 = v13;
  v20 = [v13 UTF8String];

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();
  v16 = [objc_opt_class() description];
  v17 = v16;
  v20 = [v16 UTF8String];
  if ((v15 & 1) == 0)
  {
    sub_1000474A4(v22, "");
    sub_10020E0B8("Invalid indoor request information in NSURLRequest. Type = ", &v24);
    sub_1002C60F8(&v20, &v25);
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

+ (id)indoorRequestInfoFromTask:(id)a3
{
  v3 = [a3 originalRequest];
  v4 = [IndoorRequestInfo indoorRequestInfoFromRequest:v3];

  return v4;
}

- (IndoorRequestInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"venueUuid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"floorUuid"];
  v7 = [v4 decodeIntForKey:@"locationContext"];
  v8 = [v4 decodeBoolForKey:@"isFloorMetadata"];
  v9 = [v4 decodeIntForKey:@"session"];
  v10 = [NSDate alloc];
  [v4 decodeDoubleForKey:@"lastRelevant"];
  v11 = [v10 initWithTimeIntervalSinceReferenceDate:?];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
  LOBYTE(v15) = [v4 decodeBoolForKey:@"allowCellularDownloadTile"];
  v13 = [(IndoorRequestInfo *)self initFloor:v6 inVenue:v5 withContext:v7 requestFor:v8 ^ 1 withinSession:v9 lastRelevant:v11 allowCellularDownloadTile:v15 requestUUID:v12];

  return v13;
}

- (id)initFloor:(id)a3 inVenue:(id)a4 withContext:(int64_t)a5 requestFor:(int)a6 withinSession:(int)a7 lastRelevant:(id)a8 allowCellularDownloadTile:(BOOL)a9 requestUUID:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v24 = a10;
  v25.receiver = self;
  v25.super_class = IndoorRequestInfo;
  v19 = [(IndoorRequestInfo *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_floorUuid, a3);
    objc_storeStrong(&v20->_venueUuid, a4);
    v20->_context = a5;
    v20->_session = a7;
    v20->_kind = a6;
    objc_storeStrong(&v20->_lastRelevant, a8);
    objc_storeStrong(&v20->_requestUUID, a10);
    v20->_allowCellularDownloadTile = a9;
    v21 = v20;
  }

  return v20;
}

- (id)initFromRequest:(id)a3 updatedRelevancy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 floorUuid];
  v9 = [v6 venueUuid];
  v10 = [v6 context];
  v11 = [v6 kind];
  v12 = [v6 session];
  v13 = [v6 allowCellularDownloadTile];
  v14 = [v6 requestUUID];
  LOBYTE(v17) = v13;
  v15 = [(IndoorRequestInfo *)self initFloor:v8 inVenue:v9 withContext:v10 requestFor:v11 withinSession:v12 lastRelevant:v7 allowCellularDownloadTile:v17 requestUUID:v14];

  return v15;
}

- (void)setOnRequest:(id)a3
{
  v4 = a3;
  v5 = [IndoorRequestInfo isMetadata:[(IndoorRequestInfo *)self kind]]|| [(IndoorRequestInfo *)self allowCellularDownloadTile];
  [v4 setAllowsCellularAccess:v5];
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

  [NSURLProtocol setProperty:v6 forKey:@"com.apple.pipelined.RequestInfo" inRequest:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_venueUuid forKey:@"venueUuid"];
  [v5 encodeObject:self->_floorUuid forKey:@"floorUuid"];
  [v5 encodeInt:LODWORD(self->_context) forKey:@"locationContext"];
  [v5 encodeBool:+[IndoorRequestInfo isMetadata:](IndoorRequestInfo forKey:{"isMetadata:", self->_kind), @"isFloorMetadata"}];
  [v5 encodeInt:self->_session forKey:@"session"];
  [(NSDate *)self->_lastRelevant timeIntervalSinceReferenceDate];
  [v5 encodeDouble:@"lastRelevant" forKey:?];
  v4 = [(IndoorRequestInfo *)self requestUUID];
  [v5 encodeObject:v4 forKey:@"requestUUID"];

  [v5 encodeBool:-[IndoorRequestInfo allowCellularDownloadTile](self forKey:{"allowCellularDownloadTile"), @"allowCellularDownloadTile"}];
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
  v12 = [(IndoorRequestInfo *)self requestUUID];
  v13 = [v12 UUIDString];
  v14 = v13;
  v15 = @"I";
  if (context)
  {
    v15 = 0;
  }

  if (context == 1)
  {
    v15 = @"R";
  }

  v16 = [v9 initWithFormat:@"%@|%@|%@|%@|%@|%@", v3, v7, v15, venueUuid, floorUuid, v13];

  return v16;
}

@end