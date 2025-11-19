@interface MIBUNFCCommand
+ (unsigned)expectedAPDULength:(id)a3;
- (BOOL)_deserializeAuthenticate;
- (BOOL)_deserializeChallenge;
- (BOOL)_deserializeConfigureNFC;
- (BOOL)_deserializeHeartbeat;
- (BOOL)_deserializeRetryAfter;
- (BOOL)_deserializeSSUpdate;
- (BOOL)_deserializeStartDiag;
- (BOOL)_deserializeStartUpdate;
- (BOOL)_deserializeTatsuPayload;
- (BOOL)_initWithAPDU:(id)a3;
- (BOOL)_initWithCommandCode:(int64_t)a3;
- (Class)getResponseClass;
- (MIBUNFCCommand)initWithAPDU:(id)a3;
- (MIBUNFCCommand)initWithCommandCode:(int64_t)a3 andPayload:(id)a4;
- (id)_serializeAuthenticate;
- (id)_serializeChallenge;
- (id)_serializeConfigureNFC;
- (id)_serializeHeartbeat;
- (id)_serializeRetryAfter;
- (id)_serializeSSUpdate;
- (id)_serializeStartDiag;
- (id)_serializeStartUpdate;
- (id)_serializeTatsuPayload:(id)a3;
@end

@implementation MIBUNFCCommand

+ (unsigned)expectedAPDULength:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  if ([v3 length] == 4 || objc_msgSend(v3, "length") == 5)
  {
    LOWORD(v5) = 4;
  }

  else
  {
    LOWORD(v5) = v4[4];
    if (!v4[4])
    {
      v5 = (bswap32(*(v4 + 5)) >> 16) + 7;
    }
  }

  return v5;
}

- (MIBUNFCCommand)initWithCommandCode:(int64_t)a3 andPayload:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MIBUNFCCommand;
  v7 = [(MIBUNFCCommand *)&v12 init];
  v8 = v7;
  if (v7 && (v7->_code = a3, v9 = [v6 mutableCopy], -[MIBUNFCCommand setMutablePayload:](v8, "setMutablePayload:", v9), v9, !-[MIBUNFCCommand _initWithCommandCode:](v8, "_initWithCommandCode:", a3)))
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (MIBUNFCCommand)initWithAPDU:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MIBUNFCCommand;
  v6 = [(MIBUNFCCommand *)&v11 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_apdu, a3), v8 = objc_opt_new(), [(MIBUNFCCommand *)v7 setMutablePayload:v8], v8, ![(MIBUNFCCommand *)v7 _initWithAPDU:v5]))
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (Class)getResponseClass
{
  v3 = off_100098928;
  objc_opt_class();
  v4 = [(MIBUNFCCommand *)self code]- 1;
  if (v4 <= 0xB)
  {
    v3 = (&off_10009EC98)[v4];
  }

  v5 = *v3;
  v6 = objc_opt_class();

  return v6;
}

- (BOOL)_initWithCommandCode:(int64_t)a3
{
  v5 = objc_opt_new();
  self->_cla = 0;
  serializedPayload = self->_serializedPayload;
  self->_serializedPayload = 0;

  switch(self->_code)
  {
    case 1:
      *&self->_ins = 458;
      self->_p2 = 0;
      goto LABEL_19;
    case 2:
      *&self->_ins = 474;
      self->_p2 = 1;
      v7 = [(MIBUNFCCommand *)self _serializeStartUpdate];
      goto LABEL_20;
    case 3:
      *&self->_ins = 458;
      v13 = 2;
      goto LABEL_18;
    case 4:
      *&self->_ins = 1188;
      self->_p2 = 0;
      v8 = [(MIBUNFCCommand *)self mutablePayload];
      v9 = [v8 objectForKey:@"ApplicationID"];
      v10 = self->_serializedPayload;
      self->_serializedPayload = v9;

      goto LABEL_21;
    case 6:
      *&self->_ins = 474;
      self->_p2 = 2;
      v7 = [(MIBUNFCCommand *)self _serializeRetryAfter];
      goto LABEL_20;
    case 7:
      *&self->_ins = 474;
      self->_p2 = 3;
      v7 = [(MIBUNFCCommand *)self _serializeHeartbeat];
      goto LABEL_20;
    case 8:
      *&self->_ins = 474;
      v13 = 4;
      goto LABEL_18;
    case 9:
      *&self->_ins = 458;
      v13 = 3;
LABEL_18:
      self->_p2 = v13;
LABEL_19:
      v7 = objc_opt_new();
      goto LABEL_20;
    case 0xALL:
      *&self->_ins = 474;
      self->_p2 = 5;
      v7 = [(MIBUNFCCommand *)self _serializeConfigureNFC];
      goto LABEL_20;
    case 0xBLL:
      *&self->_ins = 474;
      self->_p2 = 6;
      v7 = [(MIBUNFCCommand *)self _serializeStartDiag];
      goto LABEL_20;
    case 0xCLL:
      *&self->_ins = 474;
      self->_p2 = 7;
      v7 = [(MIBUNFCCommand *)self _serializeChallenge];
      goto LABEL_20;
    case 0xDLL:
      *&self->_ins = 474;
      self->_p2 = 8;
      v7 = [(MIBUNFCCommand *)self _serializeAuthenticate];
      goto LABEL_20;
    case 0xELL:
      *&self->_ins = 474;
      self->_p2 = 9;
      v7 = [(MIBUNFCCommand *)self _serializeSSUpdate];
LABEL_20:
      v8 = self->_serializedPayload;
      self->_serializedPayload = v7;
LABEL_21:

      v14 = self->_serializedPayload;
      if (v14)
      {
        v20 = *&self->_cla;
        if ([(NSData *)v14 length])
        {
          v15 = [(NSData *)self->_serializedPayload length];
          v16 = [(NSData *)self->_serializedPayload length];
          if (v15 > 0xFF)
          {
            v21 = 0;
            v22 = HIBYTE(v16);
            v23 = v16;
            v17 = v5;
            v18 = 7;
          }

          else
          {
            v21 = v16;
            v17 = v5;
            v18 = 5;
          }

          [v17 appendBytes:&v20 length:v18];
          [v5 appendData:self->_serializedPayload];
        }

        else
        {
          [v5 appendBytes:&v20 length:4];
        }

        objc_storeStrong(&self->_apdu, v5);
        v12 = 1;
      }

      else
      {
        sub_100060D60();
        v12 = v24;
      }

      break;
    default:
      if (qword_1000B84A8[0] != -1)
      {
        sub_100060E30();
      }

      v11 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100060E44(a3, v11);
      }

      v12 = 0;
      break;
  }

  return v12;
}

- (BOOL)_initWithAPDU:(id)a3
{
  v4 = a3;
  self->_code = 0;
  serializedPayload = self->_serializedPayload;
  self->_serializedPayload = 0;

  if ([v4 length] <= 3)
  {
    sub_100061680();
    v16 = v32[1];
    goto LABEL_50;
  }

  v6 = [v4 bytes];
  if (*v6)
  {
    sub_100060EBC(*v6, v23);
    v16 = v23[0];
    goto LABEL_50;
  }

  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  if ([v4 length] == 4)
  {
    goto LABEL_6;
  }

  v10 = [v4 length];
  v11 = v6[4];
  if (v10 == 5)
  {
    if (v6[4])
    {
      sub_100061170(&v24);
      v16 = v24;
      goto LABEL_50;
    }

LABEL_6:
    v12 = objc_opt_new();
    goto LABEL_13;
  }

  if (v6[4])
  {
    v13 = 5;
  }

  else
  {
    if ([v4 length] <= 6)
    {
      sub_100061094();
      v16 = v23[2];
      goto LABEL_50;
    }

    v11 = bswap32(*(v6 + 5)) >> 16;
    v13 = 7;
  }

  v14 = v11;
  if (v13 + v11 > [v4 length])
  {
    sub_100060F90(v14);
    v16 = v23[1];
    goto LABEL_50;
  }

  v12 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v4 bytes] + v13, v14, 0);
LABEL_13:
  v15 = self->_serializedPayload;
  self->_serializedPayload = v12;

  v16 = 1;
  if (v7 > 201)
  {
    if (v7 == 202)
    {
      if (v8 == 1 && !v9)
      {
        v16 = 1;
        self->_code = 1;
        goto LABEL_50;
      }

      if (v8 == 1 && v9 == 2)
      {
        v21 = 3;
      }

      else
      {
        v16 = 1;
        if (v8 != 1 || v9 != 3)
        {
          goto LABEL_50;
        }

        v21 = 9;
      }
    }

    else
    {
      if (v7 != 218)
      {
        goto LABEL_50;
      }

      if (v8 == 1 && v9 == 1)
      {
        self->_code = 2;
        if ([(MIBUNFCCommand *)self _deserializeStartUpdate])
        {
          goto LABEL_49;
        }

        sub_1000615F0(v32);
        v16 = v32[0];
        goto LABEL_50;
      }

      if (v8 == 1 && v9 == 2)
      {
        self->_code = 6;
        if ([(MIBUNFCCommand *)self _deserializeRetryAfter])
        {
          goto LABEL_49;
        }

        sub_100061560(&v31);
        v16 = v31;
        goto LABEL_50;
      }

      if (v8 == 1 && v9 == 3)
      {
        self->_code = 7;
        if ([(MIBUNFCCommand *)self _deserializeHeartbeat])
        {
          goto LABEL_49;
        }

        sub_1000614D0(&v30);
        v16 = v30;
        goto LABEL_50;
      }

      if (v8 != 1 || v9 != 4)
      {
        if (v8 == 1 && v9 == 5)
        {
          self->_code = 10;
          if (![(MIBUNFCCommand *)self _deserializeConfigureNFC])
          {
            sub_100061440(&v29);
            v16 = v29;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        if (v8 == 1 && v9 == 6)
        {
          self->_code = 11;
          if (![(MIBUNFCCommand *)self _deserializeStartDiag])
          {
            sub_1000613B0(&v28);
            v16 = v28;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        if (v8 == 1 && v9 == 7)
        {
          self->_code = 12;
          if (![(MIBUNFCCommand *)self _deserializeChallenge])
          {
            sub_100061320(&v27);
            v16 = v27;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        if (v8 == 1 && v9 == 8)
        {
          self->_code = 13;
          if (![(MIBUNFCCommand *)self _deserializeAuthenticate])
          {
            sub_100061290(&v26);
            v16 = v26;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        v16 = 1;
        if (v8 == 1 && v9 == 9)
        {
          self->_code = 14;
          if (![(MIBUNFCCommand *)self _deserializeSSUpdate])
          {
            sub_100061200(&v25);
            v16 = v25;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        goto LABEL_50;
      }

      v21 = 8;
    }

    self->_code = v21;
    goto LABEL_49;
  }

  if (v7 == 164)
  {
    v16 = 1;
    if (v8 == 4 && !v9)
    {
      self->_code = 4;
      v17 = [(MIBUNFCCommand *)self mutablePayload];
      v18 = v17;
      v19 = self->_serializedPayload;
      v20 = @"ApplicationID";
      goto LABEL_27;
    }
  }

  else if (v7 == 194)
  {
    if (!(v8 | v9))
    {
      self->_code = 5;
      v17 = [(MIBUNFCCommand *)self mutablePayload];
      v18 = v17;
      v19 = self->_serializedPayload;
      v20 = @"EvelopedAPDU";
LABEL_27:
      [v17 setObject:v19 forKey:v20];
    }

LABEL_49:
    v16 = 1;
  }

LABEL_50:

  return v16;
}

- (id)_serializeStartUpdate
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10006175C();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Serializing startUpdate command", v7, 2u);
  }

  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [(MIBUNFCCommand *)self _serializeTatsuPayload:v4];

  return v5;
}

- (id)_serializeRetryAfter
{
  v3 = objc_opt_new();
  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [v4 objectForKey:@"RetryAfter"];

  if (v5)
  {
    v11 = v5;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v7 = [v3 serialize:&off_1000A9C38 withValue:v6];

    if (v7)
    {
      v8 = [v3 serializedData];
      goto LABEL_4;
    }

    sub_100061770();
  }

  else
  {
    sub_100061844();
  }

  v8 = v10;
LABEL_4:

  return v8;
}

- (id)_serializeHeartbeat
{
  v3 = objc_opt_new();
  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [v4 objectForKey:@"HeartbeatPeriod"];

  if (v5)
  {
    v6 = [(MIBUNFCCommand *)self payload];
    v7 = [v6 objectForKey:@"HeartbeatTimeout"];

    v16 = v5;
    v8 = [NSArray arrayWithObjects:&v16 count:1];
    v9 = [v3 serialize:&off_1000A9C50 withValue:v8];

    if (v9)
    {
      v15 = v7;
      v10 = [NSArray arrayWithObjects:&v15 count:1];
      v11 = [v3 serialize:&off_1000A9C68 withValue:v10];

      if (v11)
      {
        v12 = [v3 serializedData];

        goto LABEL_5;
      }

      sub_1000619E8(v7);
    }

    else
    {
      sub_100061910();
    }

    v12 = 0;
  }

  else
  {
    sub_100061AC4();
    v12 = v14;
  }

LABEL_5:

  return v12;
}

- (id)_serializeConfigureNFC
{
  v3 = objc_opt_new();
  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [v4 objectForKey:@"NFCInactivityTimeout"];

  if (v5)
  {
    v11 = v5;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v7 = [v3 serialize:&off_1000A9C80 withValue:v6];

    if (v7)
    {
      v8 = [v3 serializedData];
      goto LABEL_4;
    }

    sub_100061B90();
  }

  else
  {
    sub_100061C64();
  }

  v8 = v10;
LABEL_4:

  return v8;
}

- (id)_serializeStartDiag
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100061D30();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Serializing startDiag command", v7, 2u);
  }

  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [(MIBUNFCCommand *)self _serializeTatsuPayload:v4];

  return v5;
}

- (id)_serializeTatsuPayload:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKey:@"TatsuTicket"];
  v6 = [v3 objectForKey:@"TimeStamp"];

  if (v6)
  {
    if (v5)
    {
      v15 = v5;
      v7 = [NSArray arrayWithObjects:&v15 count:1];
      v8 = [v4 serialize:&off_1000A9C98 withValue:v7];

      if (v8)
      {
        v14 = v6;
        v9 = [NSArray arrayWithObjects:&v14 count:1];
        v10 = [v4 serialize:&off_1000A9CB0 withValue:v9];

        if (v10)
        {
          v11 = [v4 serializedData];
          goto LABEL_6;
        }

        sub_100061E18();
      }

      else
      {
        sub_100061D44();
      }
    }

    else
    {
      sub_100061EEC();
    }
  }

  else
  {
    sub_100061FB8();
  }

  v11 = v13;
LABEL_6:

  return v11;
}

- (id)_serializeChallenge
{
  v3 = objc_opt_new();
  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [v4 objectForKey:@"ChallengeBlob"];

  if (v5)
  {
    v11 = v5;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    v7 = [v3 serialize:&off_1000A9CC8 withValue:v6];

    if (v7)
    {
      v8 = [v3 serializedData];
      goto LABEL_4;
    }

    sub_100062084();
  }

  else
  {
    sub_100062158();
  }

  v8 = v10;
LABEL_4:

  return v8;
}

- (id)_serializeAuthenticate
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100062224();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Serializing authenticate command", v7, 2u);
  }

  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [(MIBUNFCCommand *)self _serializeTatsuPayload:v4];

  return v5;
}

- (id)_serializeSSUpdate
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100062238();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Serializing SSUpdate command", buf, 2u);
  }

  v4 = objc_opt_new();
  v5 = [(MIBUNFCCommand *)self payload];
  v6 = [v5 objectForKey:@"HostPort"];

  v7 = [(MIBUNFCCommand *)self payload];
  v8 = [v7 objectForKey:@"GroupAddress"];

  v9 = [(MIBUNFCCommand *)self payload];
  v10 = [v9 objectForKey:@"GroupPort"];

  v11 = [(MIBUNFCCommand *)self payload];
  v12 = [v11 objectForKey:@"InterfaceName"];

  v13 = [(MIBUNFCCommand *)self payload];
  v14 = [v13 objectForKey:@"ServiceName"];

  v15 = [(MIBUNFCCommand *)self payload];
  v84 = [v15 objectForKey:@"RQBasicParameters"];

  v16 = [(MIBUNFCCommand *)self payload];
  v83 = [v16 objectForKey:@"RQExtendedParameters"];

  v17 = [(MIBUNFCCommand *)self payload];
  v82 = [v17 objectForKey:@"RQThreshold"];

  v18 = [(MIBUNFCCommand *)self payload];
  v80 = [v18 objectForKey:@"TCPAddress"];

  v19 = [(MIBUNFCCommand *)self payload];
  v79 = [v19 objectForKey:@"TCPPort"];

  v20 = [(MIBUNFCCommand *)self payload];
  v81 = [v20 objectForKey:@"TCPPingInterval"];

  v21 = [(MIBUNFCCommand *)self payload];
  v78 = [v21 objectForKey:@"CountryCode"];

  v22 = [(MIBUNFCCommand *)self payload];
  v77 = [v22 objectForKey:@"ChannelName"];

  v23 = [(MIBUNFCCommand *)self payload];
  v76 = [v23 objectForKey:@"Band"];

  v24 = [(MIBUNFCCommand *)self payload];
  v75 = [v24 objectForKey:@"Bandwidth"];

  v25 = [(MIBUNFCCommand *)self payload];
  v74 = [v25 objectForKey:@"WiFiSSID"];

  v26 = [(MIBUNFCCommand *)self payload];
  v73 = [v26 objectForKey:@"WiFiChannel"];

  v27 = [(MIBUNFCCommand *)self payload];
  v28 = [v27 objectForKey:@"EnableRateAdapter"];

  v29 = [(MIBUNFCCommand *)self payload];
  v30 = [v29 objectForKey:@"OperationTimeout"];

  if (!v6)
  {
    sub_1000637A4();
    v70 = *buf;
    goto LABEL_45;
  }

  v31 = v81;
  if (!v8)
  {
    sub_1000636D8();
LABEL_57:
    v70 = *buf;
    goto LABEL_46;
  }

  if (!v10)
  {
    sub_10006360C();
    goto LABEL_57;
  }

  if (!v12)
  {
    sub_100063540();
    goto LABEL_57;
  }

  if (!v14)
  {
    sub_100063474();
    goto LABEL_57;
  }

  if (!v84)
  {
    sub_1000633A8();
    goto LABEL_57;
  }

  if (!v83)
  {
    sub_1000632DC();
    goto LABEL_57;
  }

  if (!v82)
  {
    sub_100063210();
    goto LABEL_57;
  }

  v72 = v6;
  v104 = v6;
  v32 = [NSArray arrayWithObjects:&v104 count:1];
  v33 = [v4 serialize:&off_1000A9CE0 withValue:v32];

  if ((v33 & 1) == 0)
  {
    v6 = v72;
    sub_10006224C();
    v70 = *buf;
    goto LABEL_45;
  }

  v103 = v8;
  v34 = [NSArray arrayWithObjects:&v103 count:1];
  v35 = [v4 serialize:&off_1000A9CF8 withValue:v34];

  if ((v35 & 1) == 0)
  {
    sub_100062320();
    v70 = *buf;
    v6 = v72;
    goto LABEL_45;
  }

  v102 = v10;
  v36 = [NSArray arrayWithObjects:&v102 count:1];
  v37 = [v4 serialize:&off_1000A9D10 withValue:v36];

  if ((v37 & 1) == 0)
  {
    sub_1000623F4();
    goto LABEL_77;
  }

  v101 = v12;
  v38 = [NSArray arrayWithObjects:&v101 count:1];
  v39 = [v4 serialize:&off_1000A9D28 withValue:v38];

  if ((v39 & 1) == 0)
  {
    sub_1000624C8();
    v70 = *buf;
    v6 = v72;
    goto LABEL_45;
  }

  v100 = v14;
  v40 = [NSArray arrayWithObjects:&v100 count:1];
  v41 = [v4 serialize:&off_1000A9D40 withValue:v40];

  if ((v41 & 1) == 0)
  {
    sub_10006259C();
    goto LABEL_77;
  }

  v99 = v84;
  v42 = [NSArray arrayWithObjects:&v99 count:1];
  v43 = [v4 serialize:&off_1000A9D58 withValue:v42];

  if ((v43 & 1) == 0)
  {
    sub_100062670();
    goto LABEL_77;
  }

  v98 = v83;
  v44 = [NSArray arrayWithObjects:&v98 count:1];
  v45 = [v4 serialize:&off_1000A9D70 withValue:v44];

  if ((v45 & 1) == 0)
  {
    sub_100062744();
    goto LABEL_77;
  }

  v97 = v82;
  v46 = [NSArray arrayWithObjects:&v97 count:1];
  v47 = [v4 serialize:&off_1000A9D88 withValue:v46];

  if ((v47 & 1) == 0)
  {
    sub_100062818();
    goto LABEL_77;
  }

  if (v80 && v79)
  {
    v96 = v80;
    v48 = [NSArray arrayWithObjects:&v96 count:1];
    v49 = [v4 serialize:&off_1000A9DA0 withValue:v48];

    if ((v49 & 1) == 0)
    {
      sub_1000628EC();
      goto LABEL_77;
    }

    v95 = v79;
    v50 = [NSArray arrayWithObjects:&v95 count:1];
    v51 = [v4 serialize:&off_1000A9DB8 withValue:v50];

    if ((v51 & 1) == 0)
    {
      sub_1000629C0();
      goto LABEL_77;
    }
  }

  v31 = v81;
  if (!v81 || (v94 = v81, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v94, 1), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v4 serialize:&off_1000A9DD0 withValue:v52], v52, (v53 & 1) != 0))
  {
    if (v78 && (v93 = v78, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v93, 1), v54 = objc_claimAutoreleasedReturnValue(), v55 = [v4 serialize:&off_1000A9DE8 withValue:v54], v54, (v55 & 1) == 0))
    {
      sub_100062B68();
    }

    else if (v77 && (v92 = v77, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v92, 1), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v4 serialize:&off_1000A9E00 withValue:v56], v56, (v57 & 1) == 0))
    {
      sub_100062C3C();
    }

    else if (v76 && (v91 = v76, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v91, 1), v58 = objc_claimAutoreleasedReturnValue(), v59 = [v4 serialize:&off_1000A9E18 withValue:v58], v58, (v59 & 1) == 0))
    {
      sub_100062D10();
    }

    else if (v75 && (v90 = v75, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v90, 1), v60 = objc_claimAutoreleasedReturnValue(), v61 = [v4 serialize:&off_1000A9E30 withValue:v60], v60, (v61 & 1) == 0))
    {
      sub_100062DE4();
    }

    else if (v74 && (v89 = v74, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v89, 1), v62 = objc_claimAutoreleasedReturnValue(), v63 = [v4 serialize:&off_1000A9E48 withValue:v62], v62, (v63 & 1) == 0))
    {
      sub_100062EB8();
    }

    else if (v73 && (v88 = v73, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v88, 1), v64 = objc_claimAutoreleasedReturnValue(), v65 = [v4 serialize:&off_1000A9E60 withValue:v64], v64, (v65 & 1) == 0))
    {
      sub_100062F8C();
    }

    else if (v28 && (v87 = v28, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v87, 1), v66 = objc_claimAutoreleasedReturnValue(), v67 = [v4 serialize:&off_1000A9E78 withValue:v66], v66, (v67 & 1) == 0))
    {
      sub_100063060();
    }

    else
    {
      if (!v30 || (v86 = v30, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v86, 1), v68 = objc_claimAutoreleasedReturnValue(), v69 = [v4 serialize:&off_1000A9E90 withValue:v68], v68, (v69 & 1) != 0))
      {
        v70 = [v4 serializedData];
LABEL_44:
        v6 = v72;
LABEL_45:
        v31 = v81;
        goto LABEL_46;
      }

      sub_100063134();
    }

LABEL_77:
    v70 = *buf;
    goto LABEL_44;
  }

  sub_100062A94();
  v70 = *buf;
  v6 = v72;
LABEL_46:

  return v70;
}

- (BOOL)_deserializeStartUpdate
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100063870();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deserialize startUpdate command", v5, 2u);
  }

  return [(MIBUNFCCommand *)self _deserializeTatsuPayload];
}

- (BOOL)_deserializeRetryAfter
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (v4)
  {
    v5 = [v4 objectForKey:&off_1000A8610];
    if (v5)
    {
      v6 = v5;
      [v5 doubleValue];
      if (v7 <= 0.0 || ([v6 doubleValue], v8 >= 300.0))
      {
        sub_100063884(v6);
        v10 = 0;
      }

      else
      {
        v9 = [(MIBUNFCCommand *)self mutablePayload];
        [v9 setObject:v6 forKey:@"RetryAfter"];

        v10 = 1;
      }
    }

    else
    {
      sub_10006395C(&v12);
      v10 = v12;
    }
  }

  else
  {
    sub_1000639EC(&v13);
    v10 = v13;
  }

  return v10;
}

- (BOOL)_deserializeHeartbeat
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (!v4)
  {
    sub_100063D54(&v18);
    v15 = v18;
    goto LABEL_9;
  }

  v5 = [v4 objectForKey:&off_1000A8628];
  if (!v5)
  {
    sub_100063CC4(&v17);
    v15 = v17;
    goto LABEL_9;
  }

  v6 = v5;
  [v5 doubleValue];
  if (v7 < 0.0 || ([v6 doubleValue], v8 >= 300.0))
  {
    sub_100063BEC(v6);
LABEL_15:
    v15 = 0;
    goto LABEL_9;
  }

  v9 = [v4 objectForKey:&off_1000A8640];
  if (!v9)
  {
    sub_100063B5C(v6);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 doubleValue];
  if (v11 < 0.0 || ([v6 doubleValue], v12 >= 300.0))
  {
    sub_100063A7C();
    goto LABEL_15;
  }

  v13 = [(MIBUNFCCommand *)self mutablePayload];
  [v13 setObject:v6 forKey:@"HeartbeatPeriod"];

  v14 = [(MIBUNFCCommand *)self mutablePayload];
  [v14 setObject:v10 forKey:@"HeartbeatTimeout"];

  v15 = 1;
LABEL_9:

  return v15;
}

- (BOOL)_deserializeConfigureNFC
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (v4)
  {
    v5 = [v4 objectForKey:&off_1000A8658];
    if (v5)
    {
      v6 = v5;
      [v5 doubleValue];
      if (v7 < 0.0)
      {
        sub_100063DE4(v6);
        v9 = 0;
      }

      else
      {
        v8 = [(MIBUNFCCommand *)self mutablePayload];
        [v8 setObject:v6 forKey:@"NFCInactivityTimeout"];

        v9 = 1;
      }
    }

    else
    {
      sub_100063EBC(&v11);
      v9 = v11;
    }
  }

  else
  {
    sub_100063F4C(&v12);
    v9 = v12;
  }

  return v9;
}

- (BOOL)_deserializeStartDiag
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100063FDC();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deserialize startDiag command", v5, 2u);
  }

  return [(MIBUNFCCommand *)self _deserializeTatsuPayload];
}

- (BOOL)_deserializeTatsuPayload
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (v4)
  {
    v5 = [v4 objectForKey:&off_1000A8670];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 objectForKey:&off_1000A8688];
      if (v7)
      {
        v8 = v7;
        v9 = [(MIBUNFCCommand *)self mutablePayload];
        [v9 setObject:v6 forKey:@"TatsuTicket"];

        v10 = [(MIBUNFCCommand *)self mutablePayload];
        [v10 setObject:v8 forKey:@"TimeStamp"];

        v11 = 1;
      }

      else
      {
        sub_100063FF0(v6);
        v11 = 0;
      }
    }

    else
    {
      sub_100064080(&v13);
      v11 = v13;
    }
  }

  else
  {
    sub_100064110(&v14);
    v11 = v14;
  }

  return v11;
}

- (BOOL)_deserializeChallenge
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (v4)
  {
    v5 = [v4 objectForKey:&off_1000A86A0];
    if (v5)
    {
      v6 = v5;
      v7 = [(MIBUNFCCommand *)self mutablePayload];
      [v7 setObject:v6 forKey:@"ChallengeBlob"];

      v8 = 1;
    }

    else
    {
      sub_1000641A0(&v10);
      v8 = v10;
    }
  }

  else
  {
    sub_100064230(&v11);
    v8 = v11;
  }

  return v8;
}

- (BOOL)_deserializeAuthenticate
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000642C0();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deserialize authenticate command", v5, 2u);
  }

  return [(MIBUNFCCommand *)self _deserializeTatsuPayload];
}

- (BOOL)_deserializeSSUpdate
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (!v4)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100064514();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100064528();
    }

    goto LABEL_41;
  }

  v51 = [v4 objectForKey:&off_1000A86B8];
  if (!v51)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000644CC();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000644E0();
    }

LABEL_41:
    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
LABEL_63:
    v34 = 0;
    goto LABEL_32;
  }

  v50 = [v4 objectForKey:&off_1000A86D0];
  if (!v50)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100064484();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100064498();
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    goto LABEL_62;
  }

  v49 = [v4 objectForKey:&off_1000A86E8];
  if (!v49)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10006443C();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100064450();
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_62;
  }

  v48 = [v4 objectForKey:&off_1000A8700];
  if (!v48)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000643F4();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100064408();
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
    v48 = 0;
    goto LABEL_62;
  }

  v47 = [v4 objectForKey:&off_1000A8718];
  if (!v47)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000643AC();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000643C0();
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
LABEL_62:
    v47 = 0;
    goto LABEL_63;
  }

  v46 = [v4 objectForKey:&off_1000A8730];
  if (!v46)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100064364();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100064378();
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
    goto LABEL_63;
  }

  v43 = [v4 objectForKey:&off_1000A8748];
  if (!v43)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10006431C();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100064330();
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    goto LABEL_63;
  }

  v5 = [v4 objectForKey:&off_1000A8760];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 objectForKey:&off_1000A8778];
    v8 = [v4 objectForKey:&off_1000A8790];
    v9 = [v4 objectForKey:&off_1000A87A8];
    v10 = [v4 objectForKey:&off_1000A87C0];
    v11 = [v4 objectForKey:&off_1000A87D8];
    v12 = [v4 objectForKey:&off_1000A87F0];
    v44 = [v4 objectForKey:&off_1000A8808];
    v42 = [v4 objectForKey:&off_1000A8820];
    v52 = [v4 objectForKey:&off_1000A8838];
    v45 = [v4 objectForKey:&off_1000A8850];
    v38 = [v4 objectForKey:&off_1000A8868];
    v13 = [(MIBUNFCCommand *)self mutablePayload];
    [v13 setObject:v51 forKey:@"HostPort"];

    v14 = [(MIBUNFCCommand *)self mutablePayload];
    [v14 setObject:v50 forKey:@"GroupAddress"];

    v15 = [(MIBUNFCCommand *)self mutablePayload];
    [v15 setObject:v49 forKey:@"GroupPort"];

    v16 = [(MIBUNFCCommand *)self mutablePayload];
    [v16 setObject:v48 forKey:@"InterfaceName"];

    v17 = [(MIBUNFCCommand *)self mutablePayload];
    [v17 setObject:v47 forKey:@"ServiceName"];

    v18 = [(MIBUNFCCommand *)self mutablePayload];
    [v18 setObject:v46 forKey:@"RQBasicParameters"];

    v19 = [(MIBUNFCCommand *)self mutablePayload];
    [v19 setObject:v43 forKey:@"RQExtendedParameters"];

    v20 = [(MIBUNFCCommand *)self mutablePayload];
    v39 = v6;
    [v20 setObject:v6 forKey:@"RQThreshold"];

    v41 = v7;
    if (v7 && v8)
    {
      v21 = [(MIBUNFCCommand *)self mutablePayload];
      [v21 setObject:v7 forKey:@"TCPAddress"];

      v22 = [(MIBUNFCCommand *)self mutablePayload];
      [v22 setObject:v8 forKey:@"TCPPort"];
    }

    v40 = v8;
    if (v9)
    {
      v23 = [(MIBUNFCCommand *)self mutablePayload];
      [v23 setObject:v9 forKey:@"TCPPingInterval"];
    }

    if (v10)
    {
      v24 = [(MIBUNFCCommand *)self mutablePayload];
      [v24 setObject:v10 forKey:@"CountryCode"];
    }

    if (v11)
    {
      v25 = [(MIBUNFCCommand *)self mutablePayload];
      [v25 setObject:v11 forKey:@"ChannelName"];
    }

    if (v12)
    {
      v26 = [(MIBUNFCCommand *)self mutablePayload];
      [v26 setObject:v12 forKey:@"Band"];
    }

    if (v44)
    {
      v27 = [(MIBUNFCCommand *)self mutablePayload];
      [v27 setObject:v44 forKey:@"Bandwidth"];
    }

    if (v42)
    {
      v28 = [(MIBUNFCCommand *)self mutablePayload];
      [v28 setObject:v42 forKey:@"WiFiSSID"];
    }

    v29 = v52;
    if (v52)
    {
      v30 = [(MIBUNFCCommand *)self mutablePayload];
      [v30 setObject:v52 forKey:@"WiFiChannel"];

      v29 = v52;
    }

    if (v45)
    {
      v31 = [(MIBUNFCCommand *)self mutablePayload];
      [v31 setObject:v45 forKey:@"EnableRateAdapter"];

      v29 = v52;
    }

    v32 = v38;
    if (v38)
    {
      v33 = [(MIBUNFCCommand *)self mutablePayload];
      [v33 setObject:v38 forKey:@"OperationTimeout"];
    }

    v34 = 1;
    v35 = v42;
    v36 = v43;
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000642D4();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_1000642E8();
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v34 = 0;
    v36 = v43;
    v9 = 0;
  }

LABEL_32:

  return v34;
}

@end