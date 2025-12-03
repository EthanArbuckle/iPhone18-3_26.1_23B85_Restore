@interface SECC2MPNetworkEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNetworkConnectionReused:(BOOL)reused;
- (void)setHasNetworkPreviousAttemptCount:(BOOL)count;
- (void)setHasNetworkRequestHeaderSize:(BOOL)size;
- (void)setHasNetworkResponseBodyBytesReceived:(BOOL)received;
- (void)setHasNetworkResponseHeaderSize:(BOOL)size;
- (void)setHasNetworkStatusCode:(BOOL)code;
- (void)setHasOptionsAllowExpensiveAccess:(BOOL)access;
- (void)setHasOptionsAllowPowerNapScheduling:(BOOL)scheduling;
- (void)setHasOptionsAppleIdContext:(BOOL)context;
- (void)setHasOptionsOutOfProcess:(BOOL)process;
- (void)setHasOptionsOutOfProcessForceDiscretionary:(BOOL)discretionary;
- (void)setHasOptionsTimeoutIntervalForRequest:(BOOL)request;
- (void)setHasOptionsTimeoutIntervalForResource:(BOOL)resource;
- (void)setHasOptionsTlsPinningRequired:(BOOL)required;
- (void)setHasReportFrequency:(BOOL)frequency;
- (void)setHasReportFrequencyBase:(BOOL)base;
- (void)setHasTimestampC2Init:(BOOL)init;
- (void)setHasTimestampC2Now:(BOOL)now;
- (void)setHasTimestampC2Start:(BOOL)start;
- (void)setHasTimestampDnsEnd:(BOOL)end;
- (void)setHasTimestampDnsStart:(BOOL)start;
- (void)setHasTimestampRequestEnd:(BOOL)end;
- (void)setHasTimestampRequestStart:(BOOL)start;
- (void)setHasTimestampResponseEnd:(BOOL)end;
- (void)setHasTimestampResponseStart:(BOOL)start;
- (void)setHasTimestampSslStart:(BOOL)start;
- (void)setHasTimestampTcpEnd:(BOOL)end;
- (void)setHasTimestampTcpStart:(BOOL)start;
- (void)setHasTriggers:(BOOL)triggers;
- (void)writeTo:(id)to;
@end

@implementation SECC2MPNetworkEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 70);
  if ((v6 & 0x20000) != 0)
  {
    self->_triggers = fromCopy[18];
    *&self->_has |= 0x20000u;
    v6 = *(fromCopy + 70);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_reportFrequency = fromCopy[4];
  *&self->_has |= 8u;
  if ((fromCopy[35] & 0x10) != 0)
  {
LABEL_4:
    self->_reportFrequencyBase = fromCopy[5];
    *&self->_has |= 0x10u;
  }

LABEL_5:
  v13 = fromCopy;
  if (fromCopy[29])
  {
    [(SECC2MPNetworkEvent *)self setNetworkTaskDescription:?];
    v5 = v13;
  }

  if (v5[21])
  {
    [(SECC2MPNetworkEvent *)self setNetworkHostname:?];
    v5 = v13;
  }

  if (v5[25])
  {
    [(SECC2MPNetworkEvent *)self setNetworkRemoteAddresssAndPort:?];
    v5 = v13;
  }

  if (v5[19])
  {
    [(SECC2MPNetworkEvent *)self setNetworkConnectionUuid:?];
    v5 = v13;
  }

  if ((*(v5 + 282) & 0x80) != 0)
  {
    self->_networkConnectionReused = *(v5 + 272);
    *&self->_has |= 0x800000u;
  }

  if (v5[22])
  {
    [(SECC2MPNetworkEvent *)self setNetworkInterfaceIdentifier:?];
    v5 = v13;
  }

  if (v5[24])
  {
    [(SECC2MPNetworkEvent *)self setNetworkProtocolName:?];
    v5 = v13;
  }

  v7 = *(v5 + 70);
  if ((v7 & 0x80000) != 0)
  {
    self->_networkRequestHeaderSize = *(v5 + 52);
    *&self->_has |= 0x80000u;
    v7 = *(v5 + 70);
    if ((v7 & 1) == 0)
    {
LABEL_21:
      if ((v7 & 0x100000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_21;
  }

  self->_networkRequestBodyBytesSent = v5[1];
  *&self->_has |= 1u;
  v7 = *(v5 + 70);
  if ((v7 & 0x100000) == 0)
  {
LABEL_22:
    if ((v7 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_networkResponseHeaderSize = *(v5 + 56);
  *&self->_has |= 0x100000u;
  v7 = *(v5 + 70);
  if ((v7 & 2) == 0)
  {
LABEL_23:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_34:
  self->_networkResponseBodyBytesReceived = v5[2];
  *&self->_has |= 2u;
  if ((v5[35] & 0x40000) != 0)
  {
LABEL_24:
    self->_networkPreviousAttemptCount = *(v5 + 46);
    *&self->_has |= 0x40000u;
  }

LABEL_25:
  networkFatalError = self->_networkFatalError;
  v9 = v5[20];
  if (networkFatalError)
  {
    if (!v9)
    {
      goto LABEL_39;
    }

    [(SECC2MPError *)networkFatalError mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_39;
    }

    [(SECC2MPNetworkEvent *)self setNetworkFatalError:?];
  }

  v5 = v13;
LABEL_39:
  if ((v5[35] & 4) != 0)
  {
    self->_networkStatusCode = v5[3];
    *&self->_has |= 4u;
  }

  if (v5[27])
  {
    [(SECC2MPNetworkEvent *)self setNetworkRequestUri:?];
    v5 = v13;
  }

  v10 = *(v5 + 70);
  if ((v10 & 0x20) != 0)
  {
    self->_timestampC2Init = v5[6];
    *&self->_has |= 0x20u;
    v10 = *(v5 + 70);
    if ((v10 & 0x80) == 0)
    {
LABEL_45:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_78;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_45;
  }

  self->_timestampC2Start = v5[8];
  *&self->_has |= 0x80u;
  v10 = *(v5 + 70);
  if ((v10 & 0x40) == 0)
  {
LABEL_46:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_timestampC2Now = v5[7];
  *&self->_has |= 0x40u;
  v10 = *(v5 + 70);
  if ((v10 & 0x200) == 0)
  {
LABEL_47:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_timestampDnsStart = v5[10];
  *&self->_has |= 0x200u;
  v10 = *(v5 + 70);
  if ((v10 & 0x100) == 0)
  {
LABEL_48:
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_timestampDnsEnd = v5[9];
  *&self->_has |= 0x100u;
  v10 = *(v5 + 70);
  if ((v10 & 0x10000) == 0)
  {
LABEL_49:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_timestampTcpStart = v5[17];
  *&self->_has |= 0x10000u;
  v10 = *(v5 + 70);
  if ((v10 & 0x8000) == 0)
  {
LABEL_50:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_timestampTcpEnd = v5[16];
  *&self->_has |= 0x8000u;
  v10 = *(v5 + 70);
  if ((v10 & 0x4000) == 0)
  {
LABEL_51:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_timestampSslStart = v5[15];
  *&self->_has |= 0x4000u;
  v10 = *(v5 + 70);
  if ((v10 & 0x800) == 0)
  {
LABEL_52:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_timestampRequestStart = v5[12];
  *&self->_has |= 0x800u;
  v10 = *(v5 + 70);
  if ((v10 & 0x400) == 0)
  {
LABEL_53:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_timestampRequestEnd = v5[11];
  *&self->_has |= 0x400u;
  v10 = *(v5 + 70);
  if ((v10 & 0x2000) == 0)
  {
LABEL_54:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_86:
  self->_timestampResponseStart = v5[14];
  *&self->_has |= 0x2000u;
  if ((v5[35] & 0x1000) != 0)
  {
LABEL_55:
    self->_timestampResponseEnd = v5[13];
    *&self->_has |= 0x1000u;
  }

LABEL_56:
  if (v5[30])
  {
    [(SECC2MPNetworkEvent *)self setOptionsQualityOfService:?];
    v5 = v13;
  }

  v11 = *(v5 + 70);
  if ((v11 & 0x8000000) != 0)
  {
    self->_optionsOutOfProcess = *(v5 + 276);
    *&self->_has |= 0x8000000u;
    v11 = *(v5 + 70);
    if ((v11 & 0x10000000) == 0)
    {
LABEL_60:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_90;
    }
  }

  else if ((v11 & 0x10000000) == 0)
  {
    goto LABEL_60;
  }

  self->_optionsOutOfProcessForceDiscretionary = *(v5 + 277);
  *&self->_has |= 0x10000000u;
  v11 = *(v5 + 70);
  if ((v11 & 0x1000000) == 0)
  {
LABEL_61:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_optionsAllowExpensiveAccess = *(v5 + 273);
  *&self->_has |= 0x1000000u;
  v11 = *(v5 + 70);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_62:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_optionsAllowPowerNapScheduling = *(v5 + 274);
  *&self->_has |= 0x2000000u;
  v11 = *(v5 + 70);
  if ((v11 & 0x200000) == 0)
  {
LABEL_63:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_92:
  self->_optionsTimeoutIntervalForRequest = *(v5 + 66);
  *&self->_has |= 0x200000u;
  if ((v5[35] & 0x400000) != 0)
  {
LABEL_64:
    self->_optionsTimeoutIntervalForResource = *(v5 + 67);
    *&self->_has |= 0x400000u;
  }

LABEL_65:
  if (v5[31])
  {
    [(SECC2MPNetworkEvent *)self setOptionsSourceApplicationBundleIdentifier:?];
    v5 = v13;
  }

  if (v5[32])
  {
    [(SECC2MPNetworkEvent *)self setOptionsSourceApplicationSecondaryIdentifier:?];
    v5 = v13;
  }

  v12 = *(v5 + 70);
  if ((v12 & 0x4000000) != 0)
  {
    self->_optionsAppleIdContext = *(v5 + 275);
    *&self->_has |= 0x4000000u;
    v12 = *(v5 + 70);
  }

  if ((v12 & 0x20000000) != 0)
  {
    self->_optionsTlsPinningRequired = *(v5 + 278);
    *&self->_has |= 0x20000000u;
  }

  _objc_release_x1();
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
    v50 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v49 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v50 = 2654435761u * self->_triggers;
  if ((*&has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v49 = 2654435761u * self->_reportFrequency;
  if ((*&has & 0x10) != 0)
  {
LABEL_4:
    v48 = 2654435761u * self->_reportFrequencyBase;
    goto LABEL_8;
  }

LABEL_7:
  v48 = 0;
LABEL_8:
  v47 = [(NSString *)self->_networkTaskDescription hash];
  v46 = [(NSString *)self->_networkHostname hash];
  v45 = [(NSString *)self->_networkRemoteAddresssAndPort hash];
  v44 = [(NSString *)self->_networkConnectionUuid hash];
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v43 = 2654435761 * self->_networkConnectionReused;
  }

  else
  {
    v43 = 0;
  }

  v42 = [(NSString *)self->_networkInterfaceIdentifier hash];
  v41 = [(NSString *)self->_networkProtocolName hash];
  v4 = self->_has;
  if ((*&v4 & 0x80000) != 0)
  {
    v40 = 2654435761 * self->_networkRequestHeaderSize;
    if (*&v4)
    {
LABEL_13:
      v39 = 2654435761u * self->_networkRequestBodyBytesSent;
      if ((*&v4 & 0x100000) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v40 = 0;
    if (*&v4)
    {
      goto LABEL_13;
    }
  }

  v39 = 0;
  if ((*&v4 & 0x100000) != 0)
  {
LABEL_14:
    v38 = 2654435761 * self->_networkResponseHeaderSize;
    if ((*&v4 & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v37 = 0;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

LABEL_19:
  v38 = 0;
  if ((*&v4 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v37 = 2654435761u * self->_networkResponseBodyBytesReceived;
  if ((*&v4 & 0x40000) != 0)
  {
LABEL_16:
    v36 = 2654435761 * self->_networkPreviousAttemptCount;
    goto LABEL_22;
  }

LABEL_21:
  v36 = 0;
LABEL_22:
  v35 = [(SECC2MPError *)self->_networkFatalError hash];
  if ((*&self->_has & 4) != 0)
  {
    v34 = 2654435761u * self->_networkStatusCode;
  }

  else
  {
    v34 = 0;
  }

  v33 = [(NSString *)self->_networkRequestUri hash];
  v5 = self->_has;
  if ((*&v5 & 0x20) != 0)
  {
    v32 = 2654435761u * self->_timestampC2Init;
    if ((*&v5 & 0x80) != 0)
    {
LABEL_27:
      v31 = 2654435761u * self->_timestampC2Start;
      if ((*&v5 & 0x40) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v32 = 0;
    if ((*&v5 & 0x80) != 0)
    {
      goto LABEL_27;
    }
  }

  v31 = 0;
  if ((*&v5 & 0x40) != 0)
  {
LABEL_28:
    v30 = 2654435761u * self->_timestampC2Now;
    if ((*&v5 & 0x200) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_40:
  v30 = 0;
  if ((*&v5 & 0x200) != 0)
  {
LABEL_29:
    v29 = 2654435761u * self->_timestampDnsStart;
    if ((*&v5 & 0x100) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_41:
  v29 = 0;
  if ((*&v5 & 0x100) != 0)
  {
LABEL_30:
    v28 = 2654435761u * self->_timestampDnsEnd;
    if ((*&v5 & 0x10000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

LABEL_42:
  v28 = 0;
  if ((*&v5 & 0x10000) != 0)
  {
LABEL_31:
    v27 = 2654435761u * self->_timestampTcpStart;
    if ((*&v5 & 0x8000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_44;
  }

LABEL_43:
  v27 = 0;
  if ((*&v5 & 0x8000) != 0)
  {
LABEL_32:
    v26 = 2654435761u * self->_timestampTcpEnd;
    if ((*&v5 & 0x4000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_44:
  v26 = 0;
  if ((*&v5 & 0x4000) != 0)
  {
LABEL_33:
    v25 = 2654435761u * self->_timestampSslStart;
    if ((*&v5 & 0x800) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_46;
  }

LABEL_45:
  v25 = 0;
  if ((*&v5 & 0x800) != 0)
  {
LABEL_34:
    v24 = 2654435761u * self->_timestampRequestStart;
    if ((*&v5 & 0x400) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = 0;
  if ((*&v5 & 0x400) != 0)
  {
LABEL_35:
    v23 = 2654435761u * self->_timestampRequestEnd;
    if ((*&v5 & 0x2000) != 0)
    {
      goto LABEL_36;
    }

LABEL_48:
    v22 = 0;
    if ((*&v5 & 0x1000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_49;
  }

LABEL_47:
  v23 = 0;
  if ((*&v5 & 0x2000) == 0)
  {
    goto LABEL_48;
  }

LABEL_36:
  v22 = 2654435761u * self->_timestampResponseStart;
  if ((*&v5 & 0x1000) != 0)
  {
LABEL_37:
    v21 = 2654435761u * self->_timestampResponseEnd;
    goto LABEL_50;
  }

LABEL_49:
  v21 = 0;
LABEL_50:
  v19 = [(NSString *)self->_optionsQualityOfService hash];
  v6 = self->_has;
  if ((*&v6 & 0x8000000) != 0)
  {
    v7 = 2654435761 * self->_optionsOutOfProcess;
    if ((*&v6 & 0x10000000) != 0)
    {
LABEL_52:
      v8 = 2654435761 * self->_optionsOutOfProcessForceDiscretionary;
      if ((*&v6 & 0x1000000) != 0)
      {
        goto LABEL_53;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v7 = 0;
    if ((*&v6 & 0x10000000) != 0)
    {
      goto LABEL_52;
    }
  }

  v8 = 0;
  if ((*&v6 & 0x1000000) != 0)
  {
LABEL_53:
    v9 = 2654435761 * self->_optionsAllowExpensiveAccess;
    if ((*&v6 & 0x2000000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_60;
  }

LABEL_59:
  v9 = 0;
  if ((*&v6 & 0x2000000) != 0)
  {
LABEL_54:
    v10 = 2654435761 * self->_optionsAllowPowerNapScheduling;
    if ((*&v6 & 0x200000) != 0)
    {
      goto LABEL_55;
    }

LABEL_61:
    v11 = 0;
    if ((*&v6 & 0x400000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_62;
  }

LABEL_60:
  v10 = 0;
  if ((*&v6 & 0x200000) == 0)
  {
    goto LABEL_61;
  }

LABEL_55:
  v11 = 2654435761 * self->_optionsTimeoutIntervalForRequest;
  if ((*&v6 & 0x400000) != 0)
  {
LABEL_56:
    v12 = 2654435761 * self->_optionsTimeoutIntervalForResource;
    goto LABEL_63;
  }

LABEL_62:
  v12 = 0;
LABEL_63:
  v13 = [(NSString *)self->_optionsSourceApplicationBundleIdentifier hash];
  v14 = [(NSString *)self->_optionsSourceApplicationSecondaryIdentifier hash];
  v15 = self->_has;
  if ((*&v15 & 0x4000000) != 0)
  {
    v16 = 2654435761 * self->_optionsAppleIdContext;
    if ((*&v15 & 0x20000000) != 0)
    {
      goto LABEL_65;
    }

LABEL_67:
    v17 = 0;
    return v49 ^ v50 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17;
  }

  v16 = 0;
  if ((*&v15 & 0x20000000) == 0)
  {
    goto LABEL_67;
  }

LABEL_65:
  v17 = 2654435761 * self->_optionsTlsPinningRequired;
  return v49 ^ v50 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  has = self->_has;
  v6 = *(equalCopy + 70);
  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_triggers != *(equalCopy + 18))
    {
      goto LABEL_35;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_reportFrequency != *(equalCopy + 4))
    {
      goto LABEL_35;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_35;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_reportFrequencyBase != *(equalCopy + 5))
    {
      goto LABEL_35;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_35;
  }

  networkTaskDescription = self->_networkTaskDescription;
  if (networkTaskDescription | *(equalCopy + 29) && ![(NSString *)networkTaskDescription isEqual:?])
  {
    goto LABEL_35;
  }

  networkHostname = self->_networkHostname;
  if (networkHostname | *(equalCopy + 21))
  {
    if (![(NSString *)networkHostname isEqual:?])
    {
      goto LABEL_35;
    }
  }

  networkRemoteAddresssAndPort = self->_networkRemoteAddresssAndPort;
  if (networkRemoteAddresssAndPort | *(equalCopy + 25))
  {
    if (![(NSString *)networkRemoteAddresssAndPort isEqual:?])
    {
      goto LABEL_35;
    }
  }

  networkConnectionUuid = self->_networkConnectionUuid;
  if (networkConnectionUuid | *(equalCopy + 19))
  {
    if (![(NSString *)networkConnectionUuid isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v11 = *(equalCopy + 70);
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    v18 = *(equalCopy + 272);
    if (self->_networkConnectionReused)
    {
      if ((*(equalCopy + 272) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 272))
    {
      goto LABEL_35;
    }
  }

  else if ((v11 & 0x800000) != 0)
  {
    goto LABEL_35;
  }

  networkInterfaceIdentifier = self->_networkInterfaceIdentifier;
  if (networkInterfaceIdentifier | *(equalCopy + 22) && ![(NSString *)networkInterfaceIdentifier isEqual:?])
  {
    goto LABEL_35;
  }

  networkProtocolName = self->_networkProtocolName;
  if (networkProtocolName | *(equalCopy + 24))
  {
    if (![(NSString *)networkProtocolName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v14 = self->_has;
  v15 = *(equalCopy + 70);
  if ((*&v14 & 0x80000) != 0)
  {
    if ((v15 & 0x80000) == 0 || self->_networkRequestHeaderSize != *(equalCopy + 52))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x80000) != 0)
  {
    goto LABEL_35;
  }

  if (*&v14)
  {
    if ((v15 & 1) == 0 || self->_networkRequestBodyBytesSent != *(equalCopy + 1))
    {
      goto LABEL_35;
    }
  }

  else if (v15)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x100000) != 0)
  {
    if ((v15 & 0x100000) == 0 || self->_networkResponseHeaderSize != *(equalCopy + 56))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x100000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 2) != 0)
  {
    if ((v15 & 2) == 0 || self->_networkResponseBodyBytesReceived != *(equalCopy + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 2) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x40000) != 0)
  {
    if ((v15 & 0x40000) == 0 || self->_networkPreviousAttemptCount != *(equalCopy + 46))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x40000) != 0)
  {
    goto LABEL_35;
  }

  networkFatalError = self->_networkFatalError;
  if (networkFatalError | *(equalCopy + 20))
  {
    if (![(SECC2MPError *)networkFatalError isEqual:?])
    {
      goto LABEL_35;
    }

    v14 = self->_has;
    v15 = *(equalCopy + 70);
  }

  if ((*&v14 & 4) != 0)
  {
    if ((v15 & 4) == 0 || self->_networkStatusCode != *(equalCopy + 3))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 4) != 0)
  {
    goto LABEL_35;
  }

  networkRequestUri = self->_networkRequestUri;
  if (networkRequestUri | *(equalCopy + 27))
  {
    if (![(NSString *)networkRequestUri isEqual:?])
    {
      goto LABEL_35;
    }

    v14 = self->_has;
    v15 = *(equalCopy + 70);
  }

  if ((*&v14 & 0x20) != 0)
  {
    if ((v15 & 0x20) == 0 || self->_timestampC2Init != *(equalCopy + 6))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x20) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x80) != 0)
  {
    if ((v15 & 0x80) == 0 || self->_timestampC2Start != *(equalCopy + 8))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x80) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x40) != 0)
  {
    if ((v15 & 0x40) == 0 || self->_timestampC2Now != *(equalCopy + 7))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x40) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x200) != 0)
  {
    if ((v15 & 0x200) == 0 || self->_timestampDnsStart != *(equalCopy + 10))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x200) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x100) != 0)
  {
    if ((v15 & 0x100) == 0 || self->_timestampDnsEnd != *(equalCopy + 9))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x100) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x10000) != 0)
  {
    if ((v15 & 0x10000) == 0 || self->_timestampTcpStart != *(equalCopy + 17))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x10000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x8000) != 0)
  {
    if ((v15 & 0x8000) == 0 || self->_timestampTcpEnd != *(equalCopy + 16))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x8000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x4000) != 0)
  {
    if ((v15 & 0x4000) == 0 || self->_timestampSslStart != *(equalCopy + 15))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x4000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x800) != 0)
  {
    if ((v15 & 0x800) == 0 || self->_timestampRequestStart != *(equalCopy + 12))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x800) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x400) != 0)
  {
    if ((v15 & 0x400) == 0 || self->_timestampRequestEnd != *(equalCopy + 11))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x400) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x2000) != 0)
  {
    if ((v15 & 0x2000) == 0 || self->_timestampResponseStart != *(equalCopy + 14))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x2000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x1000) != 0)
  {
    if ((v15 & 0x1000) == 0 || self->_timestampResponseEnd != *(equalCopy + 13))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x1000) != 0)
  {
    goto LABEL_35;
  }

  optionsQualityOfService = self->_optionsQualityOfService;
  if (optionsQualityOfService | *(equalCopy + 30))
  {
    if (![(NSString *)optionsQualityOfService isEqual:?])
    {
      goto LABEL_35;
    }

    v14 = self->_has;
    v15 = *(equalCopy + 70);
  }

  if ((*&v14 & 0x8000000) != 0)
  {
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_35;
    }

    v22 = *(equalCopy + 276);
    if (self->_optionsOutOfProcess)
    {
      if ((*(equalCopy + 276) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 276))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x8000000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x10000000) != 0)
  {
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    v23 = *(equalCopy + 277);
    if (self->_optionsOutOfProcessForceDiscretionary)
    {
      if ((*(equalCopy + 277) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 277))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x10000000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x1000000) != 0)
  {
    if ((v15 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    v24 = *(equalCopy + 273);
    if (self->_optionsAllowExpensiveAccess)
    {
      if ((*(equalCopy + 273) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 273))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x1000000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x2000000) != 0)
  {
    if ((v15 & 0x2000000) == 0)
    {
      goto LABEL_35;
    }

    v25 = *(equalCopy + 274);
    if (self->_optionsAllowPowerNapScheduling)
    {
      if ((*(equalCopy + 274) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 274))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x2000000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x200000) != 0)
  {
    if ((v15 & 0x200000) == 0 || self->_optionsTimeoutIntervalForRequest != *(equalCopy + 66))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x200000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x400000) != 0)
  {
    if ((v15 & 0x400000) == 0 || self->_optionsTimeoutIntervalForResource != *(equalCopy + 67))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x400000) != 0)
  {
    goto LABEL_35;
  }

  optionsSourceApplicationBundleIdentifier = self->_optionsSourceApplicationBundleIdentifier;
  if (optionsSourceApplicationBundleIdentifier | *(equalCopy + 31) && ![(NSString *)optionsSourceApplicationBundleIdentifier isEqual:?])
  {
    goto LABEL_35;
  }

  optionsSourceApplicationSecondaryIdentifier = self->_optionsSourceApplicationSecondaryIdentifier;
  if (optionsSourceApplicationSecondaryIdentifier | *(equalCopy + 32))
  {
    if (![(NSString *)optionsSourceApplicationSecondaryIdentifier isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v28 = self->_has;
  v29 = *(equalCopy + 70);
  if ((*&v28 & 0x4000000) != 0)
  {
    if ((v29 & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    v30 = *(equalCopy + 275);
    if (self->_optionsAppleIdContext)
    {
      if ((*(equalCopy + 275) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(equalCopy + 275))
    {
      goto LABEL_35;
    }
  }

  else if ((v29 & 0x4000000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v28 & 0x20000000) == 0)
  {
    v16 = (v29 & 0x20000000) == 0;
    goto LABEL_36;
  }

  if ((v29 & 0x20000000) != 0)
  {
    if (self->_optionsTlsPinningRequired)
    {
      if (*(equalCopy + 278))
      {
        goto LABEL_199;
      }
    }

    else if (!*(equalCopy + 278))
    {
LABEL_199:
      v16 = 1;
      goto LABEL_36;
    }
  }

LABEL_35:
  v16 = 0;
LABEL_36:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    v5[18] = self->_triggers;
    *(v5 + 70) |= 0x20000u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  v5[4] = self->_reportFrequency;
  *(v5 + 70) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5[5] = self->_reportFrequencyBase;
    *(v5 + 70) |= 0x10u;
  }

LABEL_5:
  v8 = [(NSString *)self->_networkTaskDescription copyWithZone:zone];
  v9 = v6[29];
  v6[29] = v8;

  v10 = [(NSString *)self->_networkHostname copyWithZone:zone];
  v11 = v6[21];
  v6[21] = v10;

  v12 = [(NSString *)self->_networkRemoteAddresssAndPort copyWithZone:zone];
  v13 = v6[25];
  v6[25] = v12;

  v14 = [(NSString *)self->_networkConnectionUuid copyWithZone:zone];
  v15 = v6[19];
  v6[19] = v14;

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(v6 + 272) = self->_networkConnectionReused;
    *(v6 + 70) |= 0x800000u;
  }

  v16 = [(NSString *)self->_networkInterfaceIdentifier copyWithZone:zone];
  v17 = v6[22];
  v6[22] = v16;

  v18 = [(NSString *)self->_networkProtocolName copyWithZone:zone];
  v19 = v6[24];
  v6[24] = v18;

  v20 = self->_has;
  if ((*&v20 & 0x80000) != 0)
  {
    *(v6 + 52) = self->_networkRequestHeaderSize;
    *(v6 + 70) |= 0x80000u;
    v20 = self->_has;
    if ((*&v20 & 1) == 0)
    {
LABEL_9:
      if ((*&v20 & 0x100000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_45;
    }
  }

  else if ((*&v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6[1] = self->_networkRequestBodyBytesSent;
  *(v6 + 70) |= 1u;
  v20 = self->_has;
  if ((*&v20 & 0x100000) == 0)
  {
LABEL_10:
    if ((*&v20 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 56) = self->_networkResponseHeaderSize;
  *(v6 + 70) |= 0x100000u;
  v20 = self->_has;
  if ((*&v20 & 2) == 0)
  {
LABEL_11:
    if ((*&v20 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_46:
  v6[2] = self->_networkResponseBodyBytesReceived;
  *(v6 + 70) |= 2u;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_12:
    *(v6 + 46) = self->_networkPreviousAttemptCount;
    *(v6 + 70) |= 0x40000u;
  }

LABEL_13:
  v21 = [(SECC2MPError *)self->_networkFatalError copyWithZone:zone];
  v22 = v6[20];
  v6[20] = v21;

  if ((*&self->_has & 4) != 0)
  {
    v6[3] = self->_networkStatusCode;
    *(v6 + 70) |= 4u;
  }

  v23 = [(NSString *)self->_networkRequestUri copyWithZone:zone];
  v24 = v6[27];
  v6[27] = v23;

  v25 = self->_has;
  if ((*&v25 & 0x20) != 0)
  {
    v6[6] = self->_timestampC2Init;
    *(v6 + 70) |= 0x20u;
    v25 = self->_has;
    if ((*&v25 & 0x80) == 0)
    {
LABEL_17:
      if ((*&v25 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_50;
    }
  }

  else if ((*&v25 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  v6[8] = self->_timestampC2Start;
  *(v6 + 70) |= 0x80u;
  v25 = self->_has;
  if ((*&v25 & 0x40) == 0)
  {
LABEL_18:
    if ((*&v25 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v6[7] = self->_timestampC2Now;
  *(v6 + 70) |= 0x40u;
  v25 = self->_has;
  if ((*&v25 & 0x200) == 0)
  {
LABEL_19:
    if ((*&v25 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  v6[10] = self->_timestampDnsStart;
  *(v6 + 70) |= 0x200u;
  v25 = self->_has;
  if ((*&v25 & 0x100) == 0)
  {
LABEL_20:
    if ((*&v25 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v6[9] = self->_timestampDnsEnd;
  *(v6 + 70) |= 0x100u;
  v25 = self->_has;
  if ((*&v25 & 0x10000) == 0)
  {
LABEL_21:
    if ((*&v25 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v6[17] = self->_timestampTcpStart;
  *(v6 + 70) |= 0x10000u;
  v25 = self->_has;
  if ((*&v25 & 0x8000) == 0)
  {
LABEL_22:
    if ((*&v25 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v6[16] = self->_timestampTcpEnd;
  *(v6 + 70) |= 0x8000u;
  v25 = self->_has;
  if ((*&v25 & 0x4000) == 0)
  {
LABEL_23:
    if ((*&v25 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v6[15] = self->_timestampSslStart;
  *(v6 + 70) |= 0x4000u;
  v25 = self->_has;
  if ((*&v25 & 0x800) == 0)
  {
LABEL_24:
    if ((*&v25 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v6[12] = self->_timestampRequestStart;
  *(v6 + 70) |= 0x800u;
  v25 = self->_has;
  if ((*&v25 & 0x400) == 0)
  {
LABEL_25:
    if ((*&v25 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v6[11] = self->_timestampRequestEnd;
  *(v6 + 70) |= 0x400u;
  v25 = self->_has;
  if ((*&v25 & 0x2000) == 0)
  {
LABEL_26:
    if ((*&v25 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_58:
  v6[14] = self->_timestampResponseStart;
  *(v6 + 70) |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_27:
    v6[13] = self->_timestampResponseEnd;
    *(v6 + 70) |= 0x1000u;
  }

LABEL_28:
  v26 = [(NSString *)self->_optionsQualityOfService copyWithZone:zone];
  v27 = v6[30];
  v6[30] = v26;

  v28 = self->_has;
  if ((*&v28 & 0x8000000) != 0)
  {
    *(v6 + 276) = self->_optionsOutOfProcess;
    *(v6 + 70) |= 0x8000000u;
    v28 = self->_has;
    if ((*&v28 & 0x10000000) == 0)
    {
LABEL_30:
      if ((*&v28 & 0x1000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_62;
    }
  }

  else if ((*&v28 & 0x10000000) == 0)
  {
    goto LABEL_30;
  }

  *(v6 + 277) = self->_optionsOutOfProcessForceDiscretionary;
  *(v6 + 70) |= 0x10000000u;
  v28 = self->_has;
  if ((*&v28 & 0x1000000) == 0)
  {
LABEL_31:
    if ((*&v28 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v6 + 273) = self->_optionsAllowExpensiveAccess;
  *(v6 + 70) |= 0x1000000u;
  v28 = self->_has;
  if ((*&v28 & 0x2000000) == 0)
  {
LABEL_32:
    if ((*&v28 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v6 + 274) = self->_optionsAllowPowerNapScheduling;
  *(v6 + 70) |= 0x2000000u;
  v28 = self->_has;
  if ((*&v28 & 0x200000) == 0)
  {
LABEL_33:
    if ((*&v28 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_64:
  *(v6 + 66) = self->_optionsTimeoutIntervalForRequest;
  *(v6 + 70) |= 0x200000u;
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_34:
    *(v6 + 67) = self->_optionsTimeoutIntervalForResource;
    *(v6 + 70) |= 0x400000u;
  }

LABEL_35:
  v29 = [(NSString *)self->_optionsSourceApplicationBundleIdentifier copyWithZone:zone];
  v30 = v6[31];
  v6[31] = v29;

  v31 = [(NSString *)self->_optionsSourceApplicationSecondaryIdentifier copyWithZone:zone];
  v32 = v6[32];
  v6[32] = v31;

  v33 = self->_has;
  if ((*&v33 & 0x4000000) != 0)
  {
    *(v6 + 275) = self->_optionsAppleIdContext;
    *(v6 + 70) |= 0x4000000u;
    v33 = self->_has;
  }

  if ((*&v33 & 0x20000000) != 0)
  {
    *(v6 + 278) = self->_optionsTlsPinningRequired;
    *(v6 + 70) |= 0x20000000u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    toCopy[18] = self->_triggers;
    *(toCopy + 70) |= 0x20000u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_reportFrequency;
  *(toCopy + 70) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    toCopy[5] = self->_reportFrequencyBase;
    *(toCopy + 70) |= 0x10u;
  }

LABEL_5:
  v10 = toCopy;
  if (self->_networkTaskDescription)
  {
    [toCopy setNetworkTaskDescription:?];
    toCopy = v10;
  }

  if (self->_networkHostname)
  {
    [v10 setNetworkHostname:?];
    toCopy = v10;
  }

  if (self->_networkRemoteAddresssAndPort)
  {
    [v10 setNetworkRemoteAddresssAndPort:?];
    toCopy = v10;
  }

  if (self->_networkConnectionUuid)
  {
    [v10 setNetworkConnectionUuid:?];
    toCopy = v10;
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(toCopy + 272) = self->_networkConnectionReused;
    *(toCopy + 70) |= 0x800000u;
  }

  if (self->_networkInterfaceIdentifier)
  {
    [v10 setNetworkInterfaceIdentifier:?];
    toCopy = v10;
  }

  if (self->_networkProtocolName)
  {
    [v10 setNetworkProtocolName:?];
    toCopy = v10;
  }

  v6 = self->_has;
  if ((*&v6 & 0x80000) != 0)
  {
    *(toCopy + 52) = self->_networkRequestHeaderSize;
    *(toCopy + 70) |= 0x80000u;
    v6 = self->_has;
    if ((*&v6 & 1) == 0)
    {
LABEL_21:
      if ((*&v6 & 0x100000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_69;
    }
  }

  else if ((*&v6 & 1) == 0)
  {
    goto LABEL_21;
  }

  toCopy[1] = self->_networkRequestBodyBytesSent;
  *(toCopy + 70) |= 1u;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(toCopy + 56) = self->_networkResponseHeaderSize;
  *(toCopy + 70) |= 0x100000u;
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_70:
  toCopy[2] = self->_networkResponseBodyBytesReceived;
  *(toCopy + 70) |= 2u;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_24:
    *(toCopy + 46) = self->_networkPreviousAttemptCount;
    *(toCopy + 70) |= 0x40000u;
  }

LABEL_25:
  if (self->_networkFatalError)
  {
    [v10 setNetworkFatalError:?];
    toCopy = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[3] = self->_networkStatusCode;
    *(toCopy + 70) |= 4u;
  }

  if (self->_networkRequestUri)
  {
    [v10 setNetworkRequestUri:?];
    toCopy = v10;
  }

  v7 = self->_has;
  if ((*&v7 & 0x20) != 0)
  {
    toCopy[6] = self->_timestampC2Init;
    *(toCopy + 70) |= 0x20u;
    v7 = self->_has;
    if ((*&v7 & 0x80) == 0)
    {
LABEL_33:
      if ((*&v7 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_74;
    }
  }

  else if ((*&v7 & 0x80) == 0)
  {
    goto LABEL_33;
  }

  toCopy[8] = self->_timestampC2Start;
  *(toCopy + 70) |= 0x80u;
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v7 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  toCopy[7] = self->_timestampC2Now;
  *(toCopy + 70) |= 0x40u;
  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_35:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  toCopy[10] = self->_timestampDnsStart;
  *(toCopy + 70) |= 0x200u;
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_36:
    if ((*&v7 & 0x10000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  toCopy[9] = self->_timestampDnsEnd;
  *(toCopy + 70) |= 0x100u;
  v7 = self->_has;
  if ((*&v7 & 0x10000) == 0)
  {
LABEL_37:
    if ((*&v7 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  toCopy[17] = self->_timestampTcpStart;
  *(toCopy + 70) |= 0x10000u;
  v7 = self->_has;
  if ((*&v7 & 0x8000) == 0)
  {
LABEL_38:
    if ((*&v7 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  toCopy[16] = self->_timestampTcpEnd;
  *(toCopy + 70) |= 0x8000u;
  v7 = self->_has;
  if ((*&v7 & 0x4000) == 0)
  {
LABEL_39:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_80;
  }

LABEL_79:
  toCopy[15] = self->_timestampSslStart;
  *(toCopy + 70) |= 0x4000u;
  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_40:
    if ((*&v7 & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_81;
  }

LABEL_80:
  toCopy[12] = self->_timestampRequestStart;
  *(toCopy + 70) |= 0x800u;
  v7 = self->_has;
  if ((*&v7 & 0x400) == 0)
  {
LABEL_41:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_82;
  }

LABEL_81:
  toCopy[11] = self->_timestampRequestEnd;
  *(toCopy + 70) |= 0x400u;
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_42:
    if ((*&v7 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_82:
  toCopy[14] = self->_timestampResponseStart;
  *(toCopy + 70) |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_43:
    toCopy[13] = self->_timestampResponseEnd;
    *(toCopy + 70) |= 0x1000u;
  }

LABEL_44:
  if (self->_optionsQualityOfService)
  {
    [v10 setOptionsQualityOfService:?];
    toCopy = v10;
  }

  v8 = self->_has;
  if ((*&v8 & 0x8000000) != 0)
  {
    *(toCopy + 276) = self->_optionsOutOfProcess;
    *(toCopy + 70) |= 0x8000000u;
    v8 = self->_has;
    if ((*&v8 & 0x10000000) == 0)
    {
LABEL_48:
      if ((*&v8 & 0x1000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v8 & 0x10000000) == 0)
  {
    goto LABEL_48;
  }

  *(toCopy + 277) = self->_optionsOutOfProcessForceDiscretionary;
  *(toCopy + 70) |= 0x10000000u;
  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_49:
    if ((*&v8 & 0x2000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(toCopy + 273) = self->_optionsAllowExpensiveAccess;
  *(toCopy + 70) |= 0x1000000u;
  v8 = self->_has;
  if ((*&v8 & 0x2000000) == 0)
  {
LABEL_50:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(toCopy + 274) = self->_optionsAllowPowerNapScheduling;
  *(toCopy + 70) |= 0x2000000u;
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_51:
    if ((*&v8 & 0x400000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_88:
  *(toCopy + 66) = self->_optionsTimeoutIntervalForRequest;
  *(toCopy + 70) |= 0x200000u;
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_52:
    *(toCopy + 67) = self->_optionsTimeoutIntervalForResource;
    *(toCopy + 70) |= 0x400000u;
  }

LABEL_53:
  if (self->_optionsSourceApplicationBundleIdentifier)
  {
    [v10 setOptionsSourceApplicationBundleIdentifier:?];
    toCopy = v10;
  }

  if (self->_optionsSourceApplicationSecondaryIdentifier)
  {
    [v10 setOptionsSourceApplicationSecondaryIdentifier:?];
    toCopy = v10;
  }

  v9 = self->_has;
  if ((*&v9 & 0x4000000) != 0)
  {
    *(toCopy + 275) = self->_optionsAppleIdContext;
    *(toCopy + 70) |= 0x4000000u;
    v9 = self->_has;
  }

  if ((*&v9 & 0x20000000) != 0)
  {
    *(toCopy + 278) = self->_optionsTlsPinningRequired;
    *(toCopy + 70) |= 0x20000000u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    triggers = self->_triggers;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  reportFrequency = self->_reportFrequency;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    reportFrequencyBase = self->_reportFrequencyBase;
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_networkTaskDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_networkHostname)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_networkRemoteAddresssAndPort)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_networkConnectionUuid)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    networkConnectionReused = self->_networkConnectionReused;
    PBDataWriterWriteBOOLField();
  }

  if (self->_networkInterfaceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_networkProtocolName)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x80000) != 0)
  {
    networkRequestHeaderSize = self->_networkRequestHeaderSize;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
    if ((*&v7 & 1) == 0)
    {
LABEL_21:
      if ((*&v7 & 0x100000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_69;
    }
  }

  else if ((*&v7 & 1) == 0)
  {
    goto LABEL_21;
  }

  networkRequestBodyBytesSent = self->_networkRequestBodyBytesSent;
  PBDataWriterWriteUint64Field();
  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_22:
    if ((*&v7 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  networkResponseHeaderSize = self->_networkResponseHeaderSize;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((*&v7 & 2) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_70:
  networkResponseBodyBytesReceived = self->_networkResponseBodyBytesReceived;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_24:
    networkPreviousAttemptCount = self->_networkPreviousAttemptCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  if (self->_networkFatalError)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    networkStatusCode = self->_networkStatusCode;
    PBDataWriterWriteUint64Field();
  }

  if (self->_networkRequestUri)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((*&v10 & 0x20) != 0)
  {
    timestampC2Init = self->_timestampC2Init;
    PBDataWriterWriteUint64Field();
    v10 = self->_has;
    if ((*&v10 & 0x80) == 0)
    {
LABEL_33:
      if ((*&v10 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_74;
    }
  }

  else if ((*&v10 & 0x80) == 0)
  {
    goto LABEL_33;
  }

  timestampC2Start = self->_timestampC2Start;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((*&v10 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v10 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  timestampC2Now = self->_timestampC2Now;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((*&v10 & 0x200) == 0)
  {
LABEL_35:
    if ((*&v10 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  timestampDnsStart = self->_timestampDnsStart;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((*&v10 & 0x100) == 0)
  {
LABEL_36:
    if ((*&v10 & 0x10000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  timestampDnsEnd = self->_timestampDnsEnd;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((*&v10 & 0x10000) == 0)
  {
LABEL_37:
    if ((*&v10 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  timestampTcpStart = self->_timestampTcpStart;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((*&v10 & 0x8000) == 0)
  {
LABEL_38:
    if ((*&v10 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  timestampTcpEnd = self->_timestampTcpEnd;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((*&v10 & 0x4000) == 0)
  {
LABEL_39:
    if ((*&v10 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_80;
  }

LABEL_79:
  timestampSslStart = self->_timestampSslStart;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_40:
    if ((*&v10 & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_81;
  }

LABEL_80:
  timestampRequestStart = self->_timestampRequestStart;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((*&v10 & 0x400) == 0)
  {
LABEL_41:
    if ((*&v10 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_82;
  }

LABEL_81:
  timestampRequestEnd = self->_timestampRequestEnd;
  PBDataWriterWriteUint64Field();
  v10 = self->_has;
  if ((*&v10 & 0x2000) == 0)
  {
LABEL_42:
    if ((*&v10 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_82:
  timestampResponseStart = self->_timestampResponseStart;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_43:
    timestampResponseEnd = self->_timestampResponseEnd;
    PBDataWriterWriteUint64Field();
  }

LABEL_44:
  if (self->_optionsQualityOfService)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((*&v12 & 0x8000000) != 0)
  {
    optionsOutOfProcess = self->_optionsOutOfProcess;
    PBDataWriterWriteBOOLField();
    v12 = self->_has;
    if ((*&v12 & 0x10000000) == 0)
    {
LABEL_48:
      if ((*&v12 & 0x1000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v12 & 0x10000000) == 0)
  {
    goto LABEL_48;
  }

  optionsOutOfProcessForceDiscretionary = self->_optionsOutOfProcessForceDiscretionary;
  PBDataWriterWriteBOOLField();
  v12 = self->_has;
  if ((*&v12 & 0x1000000) == 0)
  {
LABEL_49:
    if ((*&v12 & 0x2000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_87;
  }

LABEL_86:
  optionsAllowExpensiveAccess = self->_optionsAllowExpensiveAccess;
  PBDataWriterWriteBOOLField();
  v12 = self->_has;
  if ((*&v12 & 0x2000000) == 0)
  {
LABEL_50:
    if ((*&v12 & 0x200000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_88;
  }

LABEL_87:
  optionsAllowPowerNapScheduling = self->_optionsAllowPowerNapScheduling;
  PBDataWriterWriteBOOLField();
  v12 = self->_has;
  if ((*&v12 & 0x200000) == 0)
  {
LABEL_51:
    if ((*&v12 & 0x400000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_88:
  optionsTimeoutIntervalForRequest = self->_optionsTimeoutIntervalForRequest;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_52:
    optionsTimeoutIntervalForResource = self->_optionsTimeoutIntervalForResource;
    PBDataWriterWriteUint32Field();
  }

LABEL_53:
  if (self->_optionsSourceApplicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_optionsSourceApplicationSecondaryIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v14 = self->_has;
  if ((*&v14 & 0x4000000) != 0)
  {
    optionsAppleIdContext = self->_optionsAppleIdContext;
    PBDataWriterWriteBOOLField();
    v14 = self->_has;
  }

  if ((*&v14 & 0x20000000) != 0)
  {
    optionsTlsPinningRequired = self->_optionsTlsPinningRequired;
    PBDataWriterWriteBOOLField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    v31 = [NSNumber numberWithUnsignedLongLong:self->_triggers];
    [v3 setObject:v31 forKey:@"triggers"];

    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  v32 = [NSNumber numberWithUnsignedLongLong:self->_reportFrequency];
  [v3 setObject:v32 forKey:@"report_frequency"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithUnsignedLongLong:self->_reportFrequencyBase];
    [v3 setObject:v5 forKey:@"report_frequency_base"];
  }

LABEL_5:
  networkTaskDescription = self->_networkTaskDescription;
  if (networkTaskDescription)
  {
    [v3 setObject:networkTaskDescription forKey:@"network_task_description"];
  }

  networkHostname = self->_networkHostname;
  if (networkHostname)
  {
    [v3 setObject:networkHostname forKey:@"network_hostname"];
  }

  networkRemoteAddresssAndPort = self->_networkRemoteAddresssAndPort;
  if (networkRemoteAddresssAndPort)
  {
    [v3 setObject:networkRemoteAddresssAndPort forKey:@"network_remote_addresss_and_port"];
  }

  networkConnectionUuid = self->_networkConnectionUuid;
  if (networkConnectionUuid)
  {
    [v3 setObject:networkConnectionUuid forKey:@"network_connection_uuid"];
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_networkConnectionReused];
    [v3 setObject:v10 forKey:@"network_connection_reused"];
  }

  networkInterfaceIdentifier = self->_networkInterfaceIdentifier;
  if (networkInterfaceIdentifier)
  {
    [v3 setObject:networkInterfaceIdentifier forKey:@"network_interface_identifier"];
  }

  networkProtocolName = self->_networkProtocolName;
  if (networkProtocolName)
  {
    [v3 setObject:networkProtocolName forKey:@"network_protocol_name"];
  }

  v13 = self->_has;
  if ((*&v13 & 0x80000) != 0)
  {
    v33 = [NSNumber numberWithUnsignedInt:self->_networkRequestHeaderSize];
    [v3 setObject:v33 forKey:@"network_request_header_size"];

    v13 = self->_has;
    if ((*&v13 & 1) == 0)
    {
LABEL_21:
      if ((*&v13 & 0x100000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v13 & 1) == 0)
  {
    goto LABEL_21;
  }

  v34 = [NSNumber numberWithUnsignedLongLong:self->_networkRequestBodyBytesSent];
  [v3 setObject:v34 forKey:@"network_request_body_bytes_sent"];

  v13 = self->_has;
  if ((*&v13 & 0x100000) == 0)
  {
LABEL_22:
    if ((*&v13 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  v35 = [NSNumber numberWithUnsignedInt:self->_networkResponseHeaderSize];
  [v3 setObject:v35 forKey:@"network_response_header_size"];

  v13 = self->_has;
  if ((*&v13 & 2) == 0)
  {
LABEL_23:
    if ((*&v13 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_68:
  v36 = [NSNumber numberWithUnsignedLongLong:self->_networkResponseBodyBytesReceived];
  [v3 setObject:v36 forKey:@"network_response_body_bytes_received"];

  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_24:
    v14 = [NSNumber numberWithUnsignedInt:self->_networkPreviousAttemptCount];
    [v3 setObject:v14 forKey:@"network_previous_attempt_count"];
  }

LABEL_25:
  networkFatalError = self->_networkFatalError;
  if (networkFatalError)
  {
    dictionaryRepresentation = [(SECC2MPError *)networkFatalError dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"network_fatal_error"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v17 = [NSNumber numberWithUnsignedLongLong:self->_networkStatusCode];
    [v3 setObject:v17 forKey:@"network_status_code"];
  }

  networkRequestUri = self->_networkRequestUri;
  if (networkRequestUri)
  {
    [v3 setObject:networkRequestUri forKey:@"network_request_uri"];
  }

  v19 = self->_has;
  if ((*&v19 & 0x20) != 0)
  {
    v37 = [NSNumber numberWithUnsignedLongLong:self->_timestampC2Init];
    [v3 setObject:v37 forKey:@"timestamp_c2_init"];

    v19 = self->_has;
    if ((*&v19 & 0x80) == 0)
    {
LABEL_33:
      if ((*&v19 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v19 & 0x80) == 0)
  {
    goto LABEL_33;
  }

  v38 = [NSNumber numberWithUnsignedLongLong:self->_timestampC2Start];
  [v3 setObject:v38 forKey:@"timestamp_c2_start"];

  v19 = self->_has;
  if ((*&v19 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v19 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  v39 = [NSNumber numberWithUnsignedLongLong:self->_timestampC2Now];
  [v3 setObject:v39 forKey:@"timestamp_c2_now"];

  v19 = self->_has;
  if ((*&v19 & 0x200) == 0)
  {
LABEL_35:
    if ((*&v19 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  v40 = [NSNumber numberWithUnsignedLongLong:self->_timestampDnsStart];
  [v3 setObject:v40 forKey:@"timestamp_dns_start"];

  v19 = self->_has;
  if ((*&v19 & 0x100) == 0)
  {
LABEL_36:
    if ((*&v19 & 0x10000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  v41 = [NSNumber numberWithUnsignedLongLong:self->_timestampDnsEnd];
  [v3 setObject:v41 forKey:@"timestamp_dns_end"];

  v19 = self->_has;
  if ((*&v19 & 0x10000) == 0)
  {
LABEL_37:
    if ((*&v19 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_76;
  }

LABEL_75:
  v42 = [NSNumber numberWithUnsignedLongLong:self->_timestampTcpStart];
  [v3 setObject:v42 forKey:@"timestamp_tcp_start"];

  v19 = self->_has;
  if ((*&v19 & 0x8000) == 0)
  {
LABEL_38:
    if ((*&v19 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_77;
  }

LABEL_76:
  v43 = [NSNumber numberWithUnsignedLongLong:self->_timestampTcpEnd];
  [v3 setObject:v43 forKey:@"timestamp_tcp_end"];

  v19 = self->_has;
  if ((*&v19 & 0x4000) == 0)
  {
LABEL_39:
    if ((*&v19 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_78;
  }

LABEL_77:
  v44 = [NSNumber numberWithUnsignedLongLong:self->_timestampSslStart];
  [v3 setObject:v44 forKey:@"timestamp_ssl_start"];

  v19 = self->_has;
  if ((*&v19 & 0x800) == 0)
  {
LABEL_40:
    if ((*&v19 & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_79;
  }

LABEL_78:
  v45 = [NSNumber numberWithUnsignedLongLong:self->_timestampRequestStart];
  [v3 setObject:v45 forKey:@"timestamp_request_start"];

  v19 = self->_has;
  if ((*&v19 & 0x400) == 0)
  {
LABEL_41:
    if ((*&v19 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_80;
  }

LABEL_79:
  v46 = [NSNumber numberWithUnsignedLongLong:self->_timestampRequestEnd];
  [v3 setObject:v46 forKey:@"timestamp_request_end"];

  v19 = self->_has;
  if ((*&v19 & 0x2000) == 0)
  {
LABEL_42:
    if ((*&v19 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_80:
  v47 = [NSNumber numberWithUnsignedLongLong:self->_timestampResponseStart];
  [v3 setObject:v47 forKey:@"timestamp_response_start"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_43:
    v20 = [NSNumber numberWithUnsignedLongLong:self->_timestampResponseEnd];
    [v3 setObject:v20 forKey:@"timestamp_response_end"];
  }

LABEL_44:
  optionsQualityOfService = self->_optionsQualityOfService;
  if (optionsQualityOfService)
  {
    [v3 setObject:optionsQualityOfService forKey:@"options_quality_of_service"];
  }

  v22 = self->_has;
  if ((*&v22 & 0x8000000) != 0)
  {
    v48 = [NSNumber numberWithBool:self->_optionsOutOfProcess];
    [v3 setObject:v48 forKey:@"options_out_of_process"];

    v22 = self->_has;
    if ((*&v22 & 0x10000000) == 0)
    {
LABEL_48:
      if ((*&v22 & 0x1000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_84;
    }
  }

  else if ((*&v22 & 0x10000000) == 0)
  {
    goto LABEL_48;
  }

  v49 = [NSNumber numberWithBool:self->_optionsOutOfProcessForceDiscretionary];
  [v3 setObject:v49 forKey:@"options_out_of_process_force_discretionary"];

  v22 = self->_has;
  if ((*&v22 & 0x1000000) == 0)
  {
LABEL_49:
    if ((*&v22 & 0x2000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_85;
  }

LABEL_84:
  v50 = [NSNumber numberWithBool:self->_optionsAllowExpensiveAccess];
  [v3 setObject:v50 forKey:@"options_allow_expensive_access"];

  v22 = self->_has;
  if ((*&v22 & 0x2000000) == 0)
  {
LABEL_50:
    if ((*&v22 & 0x200000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_86;
  }

LABEL_85:
  v51 = [NSNumber numberWithBool:self->_optionsAllowPowerNapScheduling];
  [v3 setObject:v51 forKey:@"options_allow_power_nap_scheduling"];

  v22 = self->_has;
  if ((*&v22 & 0x200000) == 0)
  {
LABEL_51:
    if ((*&v22 & 0x400000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_86:
  v52 = [NSNumber numberWithUnsignedInt:self->_optionsTimeoutIntervalForRequest];
  [v3 setObject:v52 forKey:@"options_timeout_interval_for_request"];

  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_52:
    v23 = [NSNumber numberWithUnsignedInt:self->_optionsTimeoutIntervalForResource];
    [v3 setObject:v23 forKey:@"options_timeout_interval_for_resource"];
  }

LABEL_53:
  optionsSourceApplicationBundleIdentifier = self->_optionsSourceApplicationBundleIdentifier;
  if (optionsSourceApplicationBundleIdentifier)
  {
    [v3 setObject:optionsSourceApplicationBundleIdentifier forKey:@"options_source_application_bundle_identifier"];
  }

  optionsSourceApplicationSecondaryIdentifier = self->_optionsSourceApplicationSecondaryIdentifier;
  if (optionsSourceApplicationSecondaryIdentifier)
  {
    [v3 setObject:optionsSourceApplicationSecondaryIdentifier forKey:@"options_source_application_secondary_identifier"];
  }

  v26 = self->_has;
  if ((*&v26 & 0x4000000) != 0)
  {
    v27 = [NSNumber numberWithBool:self->_optionsAppleIdContext];
    [v3 setObject:v27 forKey:@"options_apple_id_context"];

    v26 = self->_has;
  }

  if ((*&v26 & 0x20000000) != 0)
  {
    v28 = [NSNumber numberWithBool:self->_optionsTlsPinningRequired];
    [v3 setObject:v28 forKey:@"options_tls_pinning_required"];
  }

  v29 = v3;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPNetworkEvent;
  v3 = [(SECC2MPNetworkEvent *)&v7 description];
  dictionaryRepresentation = [(SECC2MPNetworkEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasOptionsTlsPinningRequired:(BOOL)required
{
  if (required)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasOptionsAppleIdContext:(BOOL)context
{
  if (context)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasOptionsTimeoutIntervalForResource:(BOOL)resource
{
  if (resource)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasOptionsTimeoutIntervalForRequest:(BOOL)request
{
  if (request)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasOptionsAllowPowerNapScheduling:(BOOL)scheduling
{
  if (scheduling)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasOptionsAllowExpensiveAccess:(BOOL)access
{
  if (access)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasOptionsOutOfProcessForceDiscretionary:(BOOL)discretionary
{
  if (discretionary)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasOptionsOutOfProcess:(BOOL)process
{
  if (process)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasTimestampResponseEnd:(BOOL)end
{
  if (end)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasTimestampResponseStart:(BOOL)start
{
  if (start)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasTimestampRequestEnd:(BOOL)end
{
  if (end)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasTimestampRequestStart:(BOOL)start
{
  if (start)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTimestampSslStart:(BOOL)start
{
  if (start)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasTimestampTcpEnd:(BOOL)end
{
  if (end)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasTimestampTcpStart:(BOOL)start
{
  if (start)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasTimestampDnsEnd:(BOOL)end
{
  if (end)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasTimestampDnsStart:(BOOL)start
{
  if (start)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasTimestampC2Now:(BOOL)now
{
  if (now)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTimestampC2Start:(BOOL)start
{
  if (start)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasTimestampC2Init:(BOOL)init
{
  if (init)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasNetworkStatusCode:(BOOL)code
{
  if (code)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasNetworkPreviousAttemptCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasNetworkResponseBodyBytesReceived:(BOOL)received
{
  if (received)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasNetworkResponseHeaderSize:(BOOL)size
{
  if (size)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasNetworkRequestHeaderSize:(BOOL)size
{
  if (size)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasNetworkConnectionReused:(BOOL)reused
{
  if (reused)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasReportFrequencyBase:(BOOL)base
{
  if (base)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasReportFrequency:(BOOL)frequency
{
  if (frequency)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasTriggers:(BOOL)triggers
{
  if (triggers)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

@end