.class public Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;
.super Ljava/lang/Object;


# instance fields
.field final synthetic this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mUpdateInfoTask:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;
    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$000(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mUpdateInfoTask:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;
    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$000(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    new-instance v1, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;

    iget-object v2, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;-><init>(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$1;)V

    # setter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mUpdateInfoTask:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;
    invoke-static {v0, v1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$002(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;)Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mUpdateInfoTask:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;
    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$000(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$UpdateInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;
    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$200(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$WebHandler;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    # getter for: Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->mAuthCallback:Lcom/netease/nr/biz/sns/util/d;
    invoke-static {v0}, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;->access$300(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)Lcom/netease/nr/biz/sns/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/biz/sns/util/d;->r()V

    :cond_1
    return-void
.end method
