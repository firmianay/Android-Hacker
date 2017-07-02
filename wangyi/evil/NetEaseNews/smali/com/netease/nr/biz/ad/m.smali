.class Lcom/netease/nr/biz/ad/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/ad/l;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/ad/l;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/ad/m;->a:Lcom/netease/nr/biz/ad/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/ad/k;

    iget-object v2, p0, Lcom/netease/nr/biz/ad/m;->a:Lcom/netease/nr/biz/ad/l;

    iget-object v2, v2, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-virtual {v2}, Lcom/netease/nr/biz/ad/AdImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/ad/m;->a:Lcom/netease/nr/biz/ad/l;

    iget-object v3, v3, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-static {v3}, Lcom/netease/nr/biz/ad/AdImageView;->a(Lcom/netease/nr/biz/ad/AdImageView;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/ad/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method
