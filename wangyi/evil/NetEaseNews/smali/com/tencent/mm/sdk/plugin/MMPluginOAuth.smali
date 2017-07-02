.class public Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/tencent/mm/sdk/plugin/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static synthetic a(Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;->b:Ljava/lang/String;

    const-string v0, "MicroMsg.SDK.MMPluginOAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "access token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;->a:Lcom/tencent/mm/sdk/plugin/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;->a:Lcom/tencent/mm/sdk/plugin/a;

    invoke-interface {v0, p0}, Lcom/tencent/mm/sdk/plugin/a;->a(Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;)V

    :cond_0
    return-void
.end method
