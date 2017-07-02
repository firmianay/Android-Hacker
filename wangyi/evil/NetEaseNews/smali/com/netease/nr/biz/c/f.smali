.class Lcom/netease/nr/biz/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/c/e;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/c/f;->a:Lcom/netease/nr/biz/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/c/f;->a:Lcom/netease/nr/biz/c/e;

    invoke-virtual {v0}, Lcom/netease/nr/biz/c/e;->F()V

    iget-object v0, p0, Lcom/netease/nr/biz/c/f;->a:Lcom/netease/nr/biz/c/e;

    invoke-static {v0}, Lcom/netease/nr/biz/c/e;->a(Lcom/netease/nr/biz/c/e;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
