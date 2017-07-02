.class Lcom/netease/nr/biz/download/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/download/a;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/download/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/download/h;->a:Lcom/netease/nr/biz/download/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/download/a;Lcom/netease/nr/biz/download/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/download/h;-><init>(Lcom/netease/nr/biz/download/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/netease/nr/biz/download/h;->a:Lcom/netease/nr/biz/download/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netease/nr/biz/download/e;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/download/a;->a(Lcom/netease/nr/biz/download/a;Lcom/netease/nr/biz/download/e;)V

    return-void
.end method
