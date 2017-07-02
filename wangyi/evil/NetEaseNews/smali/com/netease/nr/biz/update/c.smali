.class Lcom/netease/nr/biz/update/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/util/b/d;


# instance fields
.field final synthetic a:Lcom/netease/util/b/a;

.field final synthetic b:Lcom/netease/nr/biz/update/b;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/update/b;Lcom/netease/util/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/update/c;->b:Lcom/netease/nr/biz/update/b;

    iput-object p2, p0, Lcom/netease/nr/biz/update/c;->a:Lcom/netease/util/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/update/c;->b:Lcom/netease/nr/biz/update/b;

    invoke-static {v0}, Lcom/netease/nr/biz/update/b;->a(Lcom/netease/nr/biz/update/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/update/a;

    iget-object v1, p0, Lcom/netease/nr/biz/update/c;->b:Lcom/netease/nr/biz/update/b;

    iget-object v1, v1, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/update/a;-><init>(Lcom/netease/nr/biz/update/AppUpdateService;)V

    iput-wide p4, v0, Lcom/netease/nr/biz/update/a;->a:J

    iput-wide p2, v0, Lcom/netease/nr/biz/update/a;->b:J

    iget-object v1, p0, Lcom/netease/nr/biz/update/c;->b:Lcom/netease/nr/biz/update/b;

    iget-object v1, v1, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    iget v1, v1, Lcom/netease/nr/biz/update/AppUpdateService;->b:I

    iput v1, v0, Lcom/netease/nr/biz/update/a;->c:I

    iget-object v1, p0, Lcom/netease/nr/biz/update/c;->b:Lcom/netease/nr/biz/update/b;

    iget-object v1, v1, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    iget-object v1, v1, Lcom/netease/nr/biz/update/AppUpdateService;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/nr/biz/update/a;->d:Ljava/lang/String;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/update/c;->b:Lcom/netease/nr/biz/update/b;

    invoke-static {v0}, Lcom/netease/nr/biz/update/b;->b(Lcom/netease/nr/biz/update/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/update/c;->b:Lcom/netease/nr/biz/update/b;

    invoke-static {v0}, Lcom/netease/nr/biz/update/b;->a(Lcom/netease/nr/biz/update/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/update/c;->b:Lcom/netease/nr/biz/update/b;

    invoke-static {v0}, Lcom/netease/nr/biz/update/b;->b(Lcom/netease/nr/biz/update/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/update/c;->a:Lcom/netease/util/b/a;

    invoke-virtual {v0, p0}, Lcom/netease/util/b/a;->b(Lcom/netease/util/b/d;)V

    iget-object v0, p0, Lcom/netease/nr/biz/update/c;->b:Lcom/netease/nr/biz/update/b;

    iget-object v0, v0, Lcom/netease/nr/biz/update/b;->a:Lcom/netease/nr/biz/update/AppUpdateService;

    invoke-virtual {v0}, Lcom/netease/nr/biz/update/AppUpdateService;->stopSelf()V

    :cond_1
    return-void
.end method
