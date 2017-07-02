.class public final Lcom/tencent/mm/sdk/channel/MMessage$Receiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:Ljava/util/Map;


# instance fields
.field private final b:Lcom/tencent/mm/sdk/channel/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/sdk/channel/MMessage$Receiver;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/sdk/channel/MMessage$Receiver;-><init>(Lcom/tencent/mm/sdk/channel/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/sdk/channel/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/sdk/channel/MMessage$Receiver;->b:Lcom/tencent/mm/sdk/channel/a;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "MicroMsg.SDK.MMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receive intent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/sdk/channel/MMessage$Receiver;->b:Lcom/tencent/mm/sdk/channel/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/sdk/channel/MMessage$Receiver;->b:Lcom/tencent/mm/sdk/channel/a;

    invoke-interface {v0, p2}, Lcom/tencent/mm/sdk/channel/a;->a(Landroid/content/Intent;)V

    const-string v0, "MicroMsg.SDK.MMessage"

    const-string v1, "mm message self-handled"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/mm/sdk/channel/MMessage$Receiver;->a:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/sdk/channel/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/tencent/mm/sdk/channel/a;->a(Landroid/content/Intent;)V

    const-string v0, "MicroMsg.SDK.MMessage"

    const-string v1, "mm message handled"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
