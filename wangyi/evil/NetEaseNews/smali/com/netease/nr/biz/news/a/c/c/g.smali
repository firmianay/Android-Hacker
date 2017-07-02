.class Lcom/netease/nr/biz/news/a/c/c/g;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/news/a/c/c/f;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/news/a/c/c/f;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/c/c/g;->a:Lcom/netease/nr/biz/news/a/c/c/f;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/g;->a:Lcom/netease/nr/biz/news/a/c/c/f;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/c/f;->a(Lcom/netease/nr/biz/news/a/c/c/f;)Lcom/netease/nr/biz/news/a/c/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/c/c/g;->a:Lcom/netease/nr/biz/news/a/c/c/f;

    invoke-static {v0}, Lcom/netease/nr/biz/news/a/c/c/f;->a(Lcom/netease/nr/biz/news/a/c/c/f;)Lcom/netease/nr/biz/news/a/c/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/a/c/c/b;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
