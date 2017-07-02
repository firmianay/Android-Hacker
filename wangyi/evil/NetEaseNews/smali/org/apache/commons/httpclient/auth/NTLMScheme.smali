.class public Lorg/apache/commons/httpclient/auth/NTLMScheme;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/auth/AuthScheme;


# static fields
.field private static final FAILED:I = 0x7fffffff

.field private static final INITIATED:I = 0x1

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final TYPE1_MSG_GENERATED:I = 0x2

.field private static final TYPE2_MSG_RECEIVED:I = 0x3

.field private static final TYPE3_MSG_GENERATED:I = 0x4

.field private static final UNINITIATED:I

.field static class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;


# instance fields
.field private ntlmchallenge:Ljava/lang/String;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.httpclient.auth.NTLMScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->processChallenge(Ljava/lang/String;)V

    return-void
.end method

.method public static authenticate(Lorg/apache/commons/httpclient/NTCredentials;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter NTLMScheme.authenticate(NTCredentials, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/httpclient/auth/NTLM;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/NTLM;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static authenticate(Lorg/apache/commons/httpclient/NTCredentials;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter NTLMScheme.authenticate(NTCredentials, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/httpclient/auth/NTLM;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/NTLM;-><init>()V

    invoke-virtual {v0, p2}, Lorg/apache/commons/httpclient/auth/NTLM;->setCredentialCharset(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/auth/NTLM;->getResponseFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter NTLMScheme.authenticate(Credentials, String, String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :try_start_0
    check-cast p1, Lorg/apache/commons/httpclient/NTCredentials;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->authenticate(Lorg/apache/commons/httpclient/NTCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter NTLMScheme.authenticate(Credentials, HttpMethod)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NTLM authentication process has not been initiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    check-cast p1, Lorg/apache/commons/httpclient/NTCredentials;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/commons/httpclient/auth/NTLM;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/NTLM;-><init>()V

    invoke-interface {p2}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getCredentialCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/NTLM;->setCredentialCharset(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/httpclient/auth/NTLM;->getType1Message(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NTCredentials;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/apache/commons/httpclient/auth/NTLM;->parseType2Message(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/httpclient/auth/NTLM;->getType3Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processChallenge(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->extractScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/auth/NTLMScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid NTLM challenge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->ntlmchallenge:Ljava/lang/String;

    iget v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    goto :goto_0

    :cond_2
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/commons/httpclient/auth/NTLMScheme;->state:I

    goto :goto_0
.end method
