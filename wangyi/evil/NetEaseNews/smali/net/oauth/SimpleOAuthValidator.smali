.class public Lnet/oauth/SimpleOAuthValidator;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/oauth/OAuthValidator;


# static fields
.field public static final DEFAULT_MAX_TIMESTAMP_AGE:J = 0x493e0L

.field public static final DEFAULT_TIMESTAMP_WINDOW:J = 0x493e0L

.field public static final SINGLE_PARAMETERS:Ljava/util/Set;


# instance fields
.field protected final maxTimestampAgeMsec:J

.field protected final maxVersion:D

.field protected final minVersion:D

.field private final usedNonces:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/oauth/SimpleOAuthValidator;->constructSingleParameters()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/oauth/SimpleOAuthValidator;->SINGLE_PARAMETERS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/32 v0, 0x493e0

    const-string v2, "1.0"

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/oauth/SimpleOAuthValidator;-><init>(JD)V

    return-void
.end method

.method public constructor <init>(JD)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lnet/oauth/SimpleOAuthValidator;->minVersion:D

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lnet/oauth/SimpleOAuthValidator;->usedNonces:Ljava/util/Set;

    iput-wide p1, p0, Lnet/oauth/SimpleOAuthValidator;->maxTimestampAgeMsec:J

    iput-wide p3, p0, Lnet/oauth/SimpleOAuthValidator;->maxVersion:D

    return-void
.end method

.method private static constructSingleParameters()Ljava/util/Set;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "oauth_consumer_key"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "oauth_token"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "oauth_token_secret"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "oauth_callback"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "oauth_signature_method"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "oauth_signature"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "oauth_timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "oauth_nonce"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "oauth_version"

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private removeOldNonces(J)Ljava/util/Date;
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x1f4

    const/4 v1, 0x0

    new-instance v2, Lnet/oauth/SimpleOAuthValidator$UsedNonce;

    iget-wide v3, p0, Lnet/oauth/SimpleOAuthValidator;->maxTimestampAgeMsec:J

    sub-long v3, p1, v3

    add-long/2addr v3, v6

    div-long/2addr v3, v8

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lnet/oauth/SimpleOAuthValidator$UsedNonce;-><init>(J[Ljava/lang/String;)V

    iget-object v3, p0, Lnet/oauth/SimpleOAuthValidator;->usedNonces:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lnet/oauth/SimpleOAuthValidator;->usedNonces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oauth/SimpleOAuthValidator$UsedNonce;

    invoke-virtual {v2, v0}, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->compareTo(Lnet/oauth/SimpleOAuthValidator$UsedNonce;)I

    move-result v5

    if-gtz v5, :cond_0

    move-object v2, v0

    :goto_1
    monitor-exit v3

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v2}, Lnet/oauth/SimpleOAuthValidator$UsedNonce;->getTimestamp()J

    move-result-wide v1

    mul-long/2addr v1, v8

    iget-wide v3, p0, Lnet/oauth/SimpleOAuthValidator;->maxTimestampAgeMsec:J

    add-long/2addr v1, v3

    add-long/2addr v1, v6

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method protected checkSingleParameters(Lnet/oauth/OAuthMessage;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lnet/oauth/OAuthMessage;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lnet/oauth/SimpleOAuthValidator;->SINGLE_PARAMETERS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v3

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    if-le v5, v4, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Lnet/oauth/OAuth$Parameter;

    invoke-direct {v6, v1, v0}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Lnet/oauth/OAuthProblemException;

    const-string v1, "parameter_rejected"

    invoke-direct {v0, v1}, Lnet/oauth/OAuthProblemException;-><init>(Ljava/lang/String;)V

    const-string v1, "oauth_parameters_rejected"

    invoke-static {v2}, Lnet/oauth/OAuth;->formEncode(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_5
    return-void
.end method

.method protected currentTimeMsec()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public releaseGarbage()Ljava/util/Date;
    .locals 2

    invoke-virtual {p0}, Lnet/oauth/SimpleOAuthValidator;->currentTimeMsec()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lnet/oauth/SimpleOAuthValidator;->removeOldNonces(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public validateMessage(Lnet/oauth/OAuthMessage;Lnet/oauth/OAuthAccessor;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/oauth/SimpleOAuthValidator;->checkSingleParameters(Lnet/oauth/OAuthMessage;)V

    invoke-virtual {p0, p1}, Lnet/oauth/SimpleOAuthValidator;->validateVersion(Lnet/oauth/OAuthMessage;)V

    invoke-virtual {p0, p1}, Lnet/oauth/SimpleOAuthValidator;->validateTimestampAndNonce(Lnet/oauth/OAuthMessage;)V

    invoke-virtual {p0, p1, p2}, Lnet/oauth/SimpleOAuthValidator;->validateSignature(Lnet/oauth/OAuthMessage;Lnet/oauth/OAuthAccessor;)V

    return-void
.end method

.method protected validateNonce(Lnet/oauth/OAuthMessage;JJ)Ljava/util/Date;
    .locals 4

    new-instance v0, Lnet/oauth/SimpleOAuthValidator$UsedNonce;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "oauth_nonce"

    invoke-virtual {p1, v3}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lnet/oauth/OAuthMessage;->getConsumerKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lnet/oauth/OAuthMessage;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, p2, p3, v1}, Lnet/oauth/SimpleOAuthValidator$UsedNonce;-><init>(J[Ljava/lang/String;)V

    iget-object v1, p0, Lnet/oauth/SimpleOAuthValidator;->usedNonces:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lnet/oauth/SimpleOAuthValidator;->usedNonces:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Lnet/oauth/OAuthProblemException;

    const-string v1, "nonce_used"

    invoke-direct {v0, v1}, Lnet/oauth/OAuthProblemException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-direct {p0, p4, p5}, Lnet/oauth/SimpleOAuthValidator;->removeOldNonces(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected validateSignature(Lnet/oauth/OAuthMessage;Lnet/oauth/OAuthAccessor;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "oauth_consumer_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "oauth_signature_method"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "oauth_signature"

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lnet/oauth/OAuthMessage;->requireParameters([Ljava/lang/String;)V

    invoke-static {p1, p2}, Lnet/oauth/signature/OAuthSignatureMethod;->newSigner(Lnet/oauth/OAuthMessage;Lnet/oauth/OAuthAccessor;)Lnet/oauth/signature/OAuthSignatureMethod;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oauth/signature/OAuthSignatureMethod;->validate(Lnet/oauth/OAuthMessage;)V

    return-void
.end method

.method protected validateTimestamp(Lnet/oauth/OAuthMessage;JJ)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x1f4

    iget-wide v0, p0, Lnet/oauth/SimpleOAuthValidator;->maxTimestampAgeMsec:J

    sub-long v0, p4, v0

    add-long/2addr v0, v4

    div-long/2addr v0, v6

    iget-wide v2, p0, Lnet/oauth/SimpleOAuthValidator;->maxTimestampAgeMsec:J

    add-long/2addr v2, p4

    add-long/2addr v2, v4

    div-long/2addr v2, v6

    cmp-long v4, p2, v0

    if-ltz v4, :cond_0

    cmp-long v4, v2, p2

    if-gez v4, :cond_1

    :cond_0
    new-instance v4, Lnet/oauth/OAuthProblemException;

    const-string v5, "timestamp_refused"

    invoke-direct {v4, v5}, Lnet/oauth/OAuthProblemException;-><init>(Ljava/lang/String;)V

    const-string v5, "oauth_acceptable_timestamps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    throw v4

    :cond_1
    return-void
.end method

.method protected validateTimestampAndNonce(Lnet/oauth/OAuthMessage;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "oauth_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "oauth_nonce"

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lnet/oauth/OAuthMessage;->requireParameters([Ljava/lang/String;)V

    const-string v0, "oauth_timestamp"

    invoke-virtual {p1, v0}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lnet/oauth/SimpleOAuthValidator;->currentTimeMsec()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lnet/oauth/SimpleOAuthValidator;->validateTimestamp(Lnet/oauth/OAuthMessage;JJ)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lnet/oauth/SimpleOAuthValidator;->validateNonce(Lnet/oauth/OAuthMessage;JJ)Ljava/util/Date;

    return-void
.end method

.method protected validateVersion(Lnet/oauth/OAuthMessage;)V
    .locals 5

    const-string v0, "oauth_version"

    invoke-virtual {p1, v0}, Lnet/oauth/OAuthMessage;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lnet/oauth/SimpleOAuthValidator;->maxVersion:D

    cmpg-double v0, v2, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Lnet/oauth/OAuthProblemException;

    const-string v1, "version_rejected"

    invoke-direct {v0, v1}, Lnet/oauth/OAuthProblemException;-><init>(Ljava/lang/String;)V

    const-string v1, "oauth_acceptable_versions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lnet/oauth/SimpleOAuthValidator;->maxVersion:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/oauth/OAuthProblemException;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-void
.end method
