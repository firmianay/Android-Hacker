.class Lcom/netease/nr/base/fragment/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/fragment/t;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/fragment/t;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/fragment/w;->a:Lcom/netease/nr/base/fragment/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/fragment/w;->a:Lcom/netease/nr/base/fragment/t;

    invoke-virtual {v0}, Lcom/netease/nr/base/fragment/t;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/netease/nr/base/fragment/w;->a:Lcom/netease/nr/base/fragment/t;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/fragment/t;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
