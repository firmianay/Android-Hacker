.class public Lcom/netease/nr/biz/download/DownloadService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/netease/nr/biz/download/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/download/DownloadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->j()Lcom/netease/nr/biz/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/download/DownloadService;->a:Lcom/netease/nr/biz/download/a;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/netease/nr/biz/download/DownloadService;->a:Lcom/netease/nr/biz/download/a;

    invoke-virtual {v0, p0}, Lcom/netease/nr/biz/download/a;->a(Lcom/netease/nr/biz/download/DownloadService;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/download/DownloadService;->a:Lcom/netease/nr/biz/download/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/download/DownloadService;->a:Lcom/netease/nr/biz/download/a;

    invoke-virtual {v0, p0, p1}, Lcom/netease/nr/biz/download/a;->a(Lcom/netease/nr/biz/download/DownloadService;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
