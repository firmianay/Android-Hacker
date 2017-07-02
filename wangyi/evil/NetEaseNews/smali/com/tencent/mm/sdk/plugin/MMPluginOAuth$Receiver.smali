.class public Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;-><init>(Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;->b:Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "MicroMsg.SDK.MMPluginOAuth"

    const-string v1, "receive oauth result"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.tencent.mm.sdk.plugin.Intent.REQUEST_TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.tencent.mm.sdk.plugin.Intent.ACCESS_TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;->b:Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;->b:Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;

    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/tencent/mm/sdk/plugin/b;

    invoke-direct {v3, p0, v0, v2}, Lcom/tencent/mm/sdk/plugin/b;-><init>(Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.SDK.MMPluginOAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oauth unregistered, request token = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;->a(Lcom/tencent/mm/sdk/plugin/MMPluginOAuth;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/plugin/MMPluginOAuth$Receiver;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
