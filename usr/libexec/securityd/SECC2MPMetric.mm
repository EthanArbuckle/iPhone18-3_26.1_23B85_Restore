@interface SECC2MPMetric
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMetricType:(id)a3;
- (int)metricType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMetricType:(BOOL)a3;
- (void)setHasReportFrequencyBase:(BOOL)a3;
- (void)setHasTriggers:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECC2MPMetric

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[20] & 8) != 0)
  {
    self->_metricType = v4[14];
    *&self->_has |= 8u;
  }

  deviceInfo = self->_deviceInfo;
  v7 = *(v5 + 5);
  v17 = v5;
  if (deviceInfo)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(SECC2MPDeviceInfo *)deviceInfo mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(SECC2MPMetric *)self setDeviceInfo:?];
  }

  v5 = v17;
LABEL_9:
  cloudkitInfo = self->_cloudkitInfo;
  v9 = *(v5 + 4);
  if (cloudkitInfo)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(SECC2MPCloudKitInfo *)cloudkitInfo mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(SECC2MPMetric *)self setCloudkitInfo:?];
  }

  v5 = v17;
LABEL_15:
  serverInfo = self->_serverInfo;
  v11 = *(v5 + 9);
  if (serverInfo)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(SECC2MPServerInfo *)serverInfo mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(SECC2MPMetric *)self setServerInfo:?];
  }

  v5 = v17;
LABEL_21:
  v12 = *(v5 + 80);
  if ((v12 & 4) != 0)
  {
    self->_triggers = *(v5 + 3);
    *&self->_has |= 4u;
    v12 = *(v5 + 80);
    if ((v12 & 1) == 0)
    {
LABEL_23:
      if ((v12 & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v5[20] & 1) == 0)
  {
    goto LABEL_23;
  }

  self->_reportFrequency = *(v5 + 1);
  *&self->_has |= 1u;
  if ((v5[20] & 2) != 0)
  {
LABEL_24:
    self->_reportFrequencyBase = *(v5 + 2);
    *&self->_has |= 2u;
  }

LABEL_25:
  networkEvent = self->_networkEvent;
  v14 = *(v5 + 8);
  if (networkEvent)
  {
    if (!v14)
    {
      goto LABEL_34;
    }

    [(SECC2MPNetworkEvent *)networkEvent mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_34;
    }

    [(SECC2MPMetric *)self setNetworkEvent:?];
  }

  v5 = v17;
LABEL_34:
  genericEvent = self->_genericEvent;
  v16 = *(v5 + 6);
  if (genericEvent)
  {
    if (v16)
    {
      [(SECC2MPGenericEvent *)genericEvent mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(SECC2MPMetric *)self setGenericEvent:?];
  }

  _objc_release_x1();
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_metricType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SECC2MPDeviceInfo *)self->_deviceInfo hash];
  v5 = [(SECC2MPCloudKitInfo *)self->_cloudkitInfo hash];
  v6 = [(SECC2MPServerInfo *)self->_serverInfo hash];
  if ((*&self->_has & 4) == 0)
  {
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v7 = 2654435761u * self->_triggers;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v8 = 2654435761u * self->_reportFrequency;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = 2654435761u * self->_reportFrequencyBase;
LABEL_11:
  v10 = v4 ^ v3 ^ v5 ^ v6;
  v11 = v7 ^ v8 ^ v9 ^ [(SECC2MPNetworkEvent *)self->_networkEvent hash];
  return v10 ^ v11 ^ [(SECC2MPGenericEvent *)self->_genericEvent hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = *(v4 + 80);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 80) & 8) == 0 || self->_metricType != *(v4 + 14))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 80) & 8) != 0)
  {
LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

  deviceInfo = self->_deviceInfo;
  if (deviceInfo | *(v4 + 5) && ![(SECC2MPDeviceInfo *)deviceInfo isEqual:?])
  {
    goto LABEL_32;
  }

  cloudkitInfo = self->_cloudkitInfo;
  if (cloudkitInfo | *(v4 + 4))
  {
    if (![(SECC2MPCloudKitInfo *)cloudkitInfo isEqual:?])
    {
      goto LABEL_32;
    }
  }

  serverInfo = self->_serverInfo;
  if (serverInfo | *(v4 + 9))
  {
    if (![(SECC2MPServerInfo *)serverInfo isEqual:?])
    {
      goto LABEL_32;
    }
  }

  v9 = *(v4 + 80);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_triggers != *(v4 + 3))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
    goto LABEL_32;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_reportFrequency != *(v4 + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_reportFrequencyBase != *(v4 + 2))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_32;
  }

  networkEvent = self->_networkEvent;
  if (networkEvent | *(v4 + 8) && ![(SECC2MPNetworkEvent *)networkEvent isEqual:?])
  {
    goto LABEL_32;
  }

  genericEvent = self->_genericEvent;
  if (genericEvent | *(v4 + 6))
  {
    v12 = [(SECC2MPGenericEvent *)genericEvent isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_33:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    v5[14] = self->_metricType;
    *(v5 + 80) |= 8u;
  }

  v7 = [(SECC2MPDeviceInfo *)self->_deviceInfo copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(SECC2MPCloudKitInfo *)self->_cloudkitInfo copyWithZone:a3];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(SECC2MPServerInfo *)self->_serverInfo copyWithZone:a3];
  v12 = v6[9];
  v6[9] = v11;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v6[1] = self->_reportFrequency;
    *(v6 + 80) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6[3] = self->_triggers;
  *(v6 + 80) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    v6[2] = self->_reportFrequencyBase;
    *(v6 + 80) |= 2u;
  }

LABEL_7:
  v14 = [(SECC2MPNetworkEvent *)self->_networkEvent copyWithZone:a3];
  v15 = v6[8];
  v6[8] = v14;

  v16 = [(SECC2MPGenericEvent *)self->_genericEvent copyWithZone:a3];
  v17 = v6[6];
  v6[6] = v16;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 8) != 0)
  {
    v4[14] = self->_metricType;
    *(v4 + 80) |= 8u;
  }

  v6 = v4;
  if (self->_deviceInfo)
  {
    [v4 setDeviceInfo:?];
    v4 = v6;
  }

  if (self->_cloudkitInfo)
  {
    [v6 setCloudkitInfo:?];
    v4 = v6;
  }

  if (self->_serverInfo)
  {
    [v6 setServerInfo:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 3) = self->_triggers;
    *(v4 + 80) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 1) = self->_reportFrequency;
  *(v4 + 80) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_12:
    *(v4 + 2) = self->_reportFrequencyBase;
    *(v4 + 80) |= 2u;
  }

LABEL_13:
  if (self->_networkEvent)
  {
    [v6 setNetworkEvent:?];
    v4 = v6;
  }

  if (self->_genericEvent)
  {
    [v6 setGenericEvent:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if ((*&self->_has & 8) != 0)
  {
    metricType = self->_metricType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

  if (self->_deviceInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_cloudkitInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_serverInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    triggers = self->_triggers;
    PBDataWriterWriteUint64Field();
    v4 = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  reportFrequency = self->_reportFrequency;
  PBDataWriterWriteUint64Field();
  v4 = v10;
  if ((*&self->_has & 2) != 0)
  {
LABEL_12:
    reportFrequencyBase = self->_reportFrequencyBase;
    PBDataWriterWriteUint64Field();
    v4 = v10;
  }

LABEL_13:
  if (self->_networkEvent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_genericEvent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v45 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v45 & 0x7F) << v6;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 99)
      {
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v15 = objc_alloc_init(SECC2MPCloudKitInfo);
            objc_storeStrong(&self->_cloudkitInfo, v15);
            v45 = 0xAAAAAAAAAAAAAAAALL;
            v46 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !sub_1001A3B58(v15, a3))
            {
LABEL_101:

              return 0;
            }

            goto LABEL_79;
          }

          if (v14 == 4)
          {
            v15 = objc_alloc_init(SECC2MPServerInfo);
            objc_storeStrong(&self->_serverInfo, v15);
            v45 = 0xAAAAAAAAAAAAAAAALL;
            v46 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !sub_100200E68(v15, a3))
            {
              goto LABEL_101;
            }

            goto LABEL_79;
          }
        }

        else
        {
          if (v14 == 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *&self->_has |= 8u;
            while (1)
            {
              LOBYTE(v45) = 0;
              v26 = [a3 position] + 1;
              if (v26 >= [a3 position] && (v27 = objc_msgSend(a3, "position") + 1, v27 <= objc_msgSend(a3, "length")))
              {
                v28 = [a3 data];
                [v28 getBytes:&v45 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v25 |= (v45 & 0x7F) << v23;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v12 = v24++ >= 9;
              if (v12)
              {
                v29 = 0;
                goto LABEL_89;
              }
            }

            if ([a3 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_89:
            self->_metricType = v29;
            goto LABEL_99;
          }

          if (v14 == 2)
          {
            v15 = objc_alloc_init(SECC2MPDeviceInfo);
            objc_storeStrong(&self->_deviceInfo, v15);
            v45 = 0xAAAAAAAAAAAAAAAALL;
            v46 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !sub_1001F3078(v15, a3))
            {
              goto LABEL_101;
            }

            goto LABEL_79;
          }
        }
      }

      else if (v14 <= 101)
      {
        if (v14 == 100)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *&self->_has |= 4u;
          while (1)
          {
            LOBYTE(v45) = 0;
            v39 = [a3 position] + 1;
            if (v39 >= [a3 position] && (v40 = objc_msgSend(a3, "position") + 1, v40 <= objc_msgSend(a3, "length")))
            {
              v41 = [a3 data];
              [v41 getBytes:&v45 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v38 |= (v45 & 0x7F) << v36;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_97;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v38;
          }

LABEL_97:
          v42 = 24;
          goto LABEL_98;
        }

        if (v14 == 101)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v45) = 0;
            v19 = [a3 position] + 1;
            if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
            {
              v21 = [a3 data];
              [v21 getBytes:&v45 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v18 |= (v45 & 0x7F) << v16;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v12 = v17++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_85;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_85:
          v42 = 8;
          goto LABEL_98;
        }
      }

      else
      {
        switch(v14)
        {
          case 0x66:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *&self->_has |= 2u;
            while (1)
            {
              LOBYTE(v45) = 0;
              v33 = [a3 position] + 1;
              if (v33 >= [a3 position] && (v34 = objc_msgSend(a3, "position") + 1, v34 <= objc_msgSend(a3, "length")))
              {
                v35 = [a3 data];
                [v35 getBytes:&v45 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v32 |= (v45 & 0x7F) << v30;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v12 = v31++ >= 9;
              if (v12)
              {
                v22 = 0;
                goto LABEL_93;
              }
            }

            if ([a3 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v32;
            }

LABEL_93:
            v42 = 16;
LABEL_98:
            *&self->PBCodable_opaque[v42] = v22;
            goto LABEL_99;
          case 0xC8:
            v15 = objc_alloc_init(SECC2MPNetworkEvent);
            objc_storeStrong(&self->_networkEvent, v15);
            v45 = 0xAAAAAAAAAAAAAAAALL;
            v46 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !sub_1001E03CC(v15, a3))
            {
              goto LABEL_101;
            }

            goto LABEL_79;
          case 0xC9:
            v15 = objc_alloc_init(SECC2MPGenericEvent);
            objc_storeStrong(&self->_genericEvent, v15);
            v45 = 0xAAAAAAAAAAAAAAAALL;
            v46 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !sub_10010EF20(v15, a3))
            {
              goto LABEL_101;
            }

LABEL_79:
            PBReaderRecallMark();

            goto LABEL_99;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_99:
      v43 = [a3 position];
    }

    while (v43 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 8) != 0)
  {
    metricType = self->_metricType;
    if (metricType)
    {
      if (metricType == 201)
      {
        v5 = @"generic_event_type";
      }

      else if (metricType == 200)
      {
        v5 = @"network_event_type";
      }

      else
      {
        v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_metricType];
      }
    }

    else
    {
      v5 = @"none_type";
    }

    [v3 setObject:v5 forKey:@"metric_type"];
  }

  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    v7 = [(SECC2MPDeviceInfo *)deviceInfo dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"device_info"];
  }

  cloudkitInfo = self->_cloudkitInfo;
  if (cloudkitInfo)
  {
    v9 = [(SECC2MPCloudKitInfo *)cloudkitInfo dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"cloudkit_info"];
  }

  serverInfo = self->_serverInfo;
  if (serverInfo)
  {
    v11 = [(SECC2MPServerInfo *)serverInfo dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"server_info"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v19 = [NSNumber numberWithUnsignedLongLong:self->_triggers];
    [v3 setObject:v19 forKey:@"triggers"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_18:
      if ((has & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_18;
  }

  v20 = [NSNumber numberWithUnsignedLongLong:self->_reportFrequency];
  [v3 setObject:v20 forKey:@"report_frequency"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_19:
    v13 = [NSNumber numberWithUnsignedLongLong:self->_reportFrequencyBase];
    [v3 setObject:v13 forKey:@"report_frequency_base"];
  }

LABEL_20:
  networkEvent = self->_networkEvent;
  if (networkEvent)
  {
    v15 = [(SECC2MPNetworkEvent *)networkEvent dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"network_event"];
  }

  genericEvent = self->_genericEvent;
  if (genericEvent)
  {
    v17 = [(SECC2MPGenericEvent *)genericEvent dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"generic_event"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPMetric;
  v3 = [(SECC2MPMetric *)&v7 description];
  v4 = [(SECC2MPMetric *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasReportFrequencyBase:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTriggers:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsMetricType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"none_type"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"network_event_type"])
  {
    v4 = 200;
  }

  else if ([v3 isEqualToString:@"generic_event_type"])
  {
    v4 = 201;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMetricType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)metricType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_metricType;
  }

  else
  {
    return 0;
  }
}

@end