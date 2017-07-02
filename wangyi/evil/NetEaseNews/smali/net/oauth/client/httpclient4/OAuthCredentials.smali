.class public Lnet/oauth/client/httpclient4/OAuthCredentials;
.super Lorg/apache/http/auth/UsernamePasswordCredentials;


# instance fields
.field private final accessor:Lnet/oauth/OAuthAccessor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lnet/oauth/OAuthAccessor;

    new-instance v1, Lnet/oauth/OAuthConsumer;

    invoke-direct {v1, v2, p1, p2, v2}, Lnet/oauth/OAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/oauth/OAuthServiceProvider;)V

    invoke-direct {v0, v1}, Lnet/oauth/OAuthAccessor;-><init>(Lnet/oauth/OAuthConsumer;)V

    invoke-direct {p0, v0}, Lnet/oauth/client/httpclient4/OAuthCredentials;-><init>(Lnet/oauth/OAuthAccessor;)V

    return-void
.end method

.method public constructor <init>(Lnet/oauth/OAuthAccessor;)V
    .locals 2

    iget-object v0, p1, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v0, v0, Lnet/oauth/OAuthConsumer;->consumerKey:Ljava/lang/String;

    iget-object v1, p1, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v1, v1, Lnet/oauth/OAuthConsumer;->consumerSecret:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/oauth/client/httpclient4/OAuthCredentials;->accessor:Lnet/oauth/OAuthAccessor;

    return-void
.end method


# virtual methods
.method public getAccessor()Lnet/oauth/OAuthAccessor;
    .locals 1

    iget-object v0, p0, Lnet/oauth/client/httpclient4/OAuthCredentials;->accessor:Lnet/oauth/OAuthAccessor;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/oauth/client/httpclient4/OAuthCredentials;->getAccessor()Lnet/oauth/OAuthAccessor;

    move-result-object v0

    iget-object v0, v0, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v0, v0, Lnet/oauth/OAuthConsumer;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnet/oauth/client/httpclient4/OAuthCredentials;->getAccessor()Lnet/oauth/OAuthAccessor;

    move-result-object v0

    iget-object v0, v0, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    iget-object v0, v0, Lnet/oauth/OAuthConsumer;->consumerKey:Ljava/lang/String;

    return-object v0
.end method
