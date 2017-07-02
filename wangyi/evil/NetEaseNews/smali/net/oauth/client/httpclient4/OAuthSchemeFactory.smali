.class public Lnet/oauth/client/httpclient4/OAuthSchemeFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;


# static fields
.field public static final DEFAULT_REALM:Ljava/lang/String; = "defaultRealm"

.field public static final SCHEME_NAME:Ljava/lang/String; = "OAuth"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 2

    new-instance v1, Lnet/oauth/client/httpclient4/OAuthScheme;

    const-string v0, "defaultRealm"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lnet/oauth/client/httpclient4/OAuthScheme;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
