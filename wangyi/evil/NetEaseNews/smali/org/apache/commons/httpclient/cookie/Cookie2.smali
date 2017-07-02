.class public Lorg/apache/commons/httpclient/cookie/Cookie2;
.super Lorg/apache/commons/httpclient/Cookie;


# static fields
.field public static final COMMENT:Ljava/lang/String; = "comment"

.field public static final COMMENTURL:Ljava/lang/String; = "commenturl"

.field public static final DISCARD:Ljava/lang/String; = "discard"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final MAXAGE:Ljava/lang/String; = "max-age"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final SECURE:Ljava/lang/String; = "secure"

.field public static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private cookieCommentURL:Ljava/lang/String;

.field private cookiePorts:[I

.field private discard:Z

.field private hasPortAttribute:Z

.field private hasVersionAttribute:Z

.field private isPortAttributeBlank:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-string v2, "noname"

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    iput-boolean v6, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    invoke-virtual {p0, p7}, Lorg/apache/commons/httpclient/cookie/Cookie2;->setPorts([I)V

    return-void
.end method


# virtual methods
.method public getCommentURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->cookieCommentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->cookiePorts:[I

    return-object v0
.end method

.method public isPersistent()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/cookie/Cookie2;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortAttributeBlank()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    return v0
.end method

.method public isPortAttributeSpecified()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    return v0
.end method

.method public isVersionAttributeSpecified()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    return v0
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->cookieCommentURL:Ljava/lang/String;

    return-void
.end method

.method public setDiscard(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->discard:Z

    return-void
.end method

.method public setPortAttributeBlank(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->isPortAttributeBlank:Z

    return-void
.end method

.method public setPortAttributeSpecified(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasPortAttribute:Z

    return-void
.end method

.method public setPorts([I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->cookiePorts:[I

    return-void
.end method

.method public setVersionAttributeSpecified(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/httpclient/cookie/Cookie2;->hasVersionAttribute:Z

    return-void
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 1

    const-string v0, "rfc2965"

    invoke-static {v0}, Lorg/apache/commons/httpclient/cookie/CookiePolicy;->getCookieSpec(Ljava/lang/String;)Lorg/apache/commons/httpclient/cookie/CookieSpec;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/commons/httpclient/cookie/CookieSpec;->formatCookie(Lorg/apache/commons/httpclient/Cookie;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
