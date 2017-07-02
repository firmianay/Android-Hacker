.class public Lnet/oauth/OAuthAccessor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x4d967877bf9ee767L


# instance fields
.field public accessToken:Ljava/lang/String;

.field public final consumer:Lnet/oauth/OAuthConsumer;

.field private final properties:Ljava/util/Map;

.field public requestToken:Ljava/lang/String;

.field public tokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/oauth/OAuthConsumer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oauth/OAuthAccessor;->properties:Ljava/util/Map;

    iput-object p1, p0, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iput-object v1, p0, Lnet/oauth/OAuthAccessor;->requestToken:Ljava/lang/String;

    iput-object v1, p0, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    iput-object v1, p0, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/oauth/OAuthAccessor;->clone()Lnet/oauth/OAuthAccessor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnet/oauth/OAuthAccessor;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oauth/OAuthAccessor;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lnet/oauth/OAuthAccessor;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/oauth/OAuthAccessor;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/oauth/OAuthAccessor;->newRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/io/InputStream;)Lnet/oauth/OAuthMessage;

    move-result-object v0

    return-object v0
.end method

.method public newRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/io/InputStream;)Lnet/oauth/OAuthMessage;
    .locals 2

    if-nez p1, :cond_1

    const-string v0, "httpMethod"

    invoke-virtual {p0, v0}, Lnet/oauth/OAuthAccessor;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v1, "httpMethod"

    invoke-virtual {v0, v1}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "GET"

    :cond_0
    :goto_0
    new-instance v1, Lnet/oauth/OAuthMessage;

    invoke-direct {v1, v0, p2, p3, p4}, Lnet/oauth/OAuthMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/io/InputStream;)V

    invoke-virtual {v1, p0}, Lnet/oauth/OAuthMessage;->addRequiredParameters(Lnet/oauth/OAuthAccessor;)V

    return-object v1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/oauth/OAuthAccessor;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
