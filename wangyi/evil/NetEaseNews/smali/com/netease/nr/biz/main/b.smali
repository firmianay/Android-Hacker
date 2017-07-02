.class Lcom/netease/nr/biz/main/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/main/b;->a:Lcom/netease/nr/biz/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/nr/biz/main/b;->a:Lcom/netease/nr/biz/main/MainActivity;

    invoke-virtual {v1}, Lcom/netease/nr/biz/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netease/nr/biz/offline/OffLineService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/netease/nr/biz/main/b;->a:Lcom/netease/nr/biz/main/MainActivity;

    invoke-virtual {v1}, Lcom/netease/nr/biz/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
