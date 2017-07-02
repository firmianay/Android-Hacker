.class final Lcom/tencent/open/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0, p2}, Lcom/tencent/open/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {v0, p2}, Lcom/tencent/open/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/open/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
