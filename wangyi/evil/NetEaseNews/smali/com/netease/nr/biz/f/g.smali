.class Lcom/netease/nr/biz/f/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/f/e;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/f/e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/f/g;->a:Lcom/netease/nr/biz/f/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/netease/util/cache/o;->b()V

    iget-object v0, p0, Lcom/netease/nr/biz/f/g;->a:Lcom/netease/nr/biz/f/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/f/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/util/f/c;->a(Landroid/content/Context;)Lcom/netease/util/cache/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/util/cache/a/b;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/f/g;->a:Lcom/netease/nr/biz/f/e;

    invoke-static {v0}, Lcom/netease/nr/biz/f/e;->c(Lcom/netease/nr/biz/f/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
