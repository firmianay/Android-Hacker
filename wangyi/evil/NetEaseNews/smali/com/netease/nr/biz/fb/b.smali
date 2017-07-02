.class Lcom/netease/nr/biz/fb/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nr/biz/fb/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/fb/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/fb/b;->b:Lcom/netease/nr/biz/fb/a;

    iput-object p2, p0, Lcom/netease/nr/biz/fb/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/b;->b:Lcom/netease/nr/biz/fb/a;

    iget-object v0, v0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->c(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/fb/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "fid"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content"

    iget-object v3, p0, Lcom/netease/nr/biz/fb/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/netease/nr/biz/fb/b;->b:Lcom/netease/nr/biz/fb/a;

    iget-object v2, v2, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-virtual {v2}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/netease/nr/biz/fb/g;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/fb/b;->b:Lcom/netease/nr/biz/fb/a;

    iget-object v1, v1, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-static {v1}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->a(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/netease/nr/biz/fb/b;->b:Lcom/netease/nr/biz/fb/a;

    iget-object v1, v1, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    const-string v2, "fd"

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/b/i;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/b;->b:Lcom/netease/nr/biz/fb/a;

    iget-object v0, v0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->a(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/fb/b;->b:Lcom/netease/nr/biz/fb/a;

    iget-object v0, v0, Lcom/netease/nr/biz/fb/a;->a:Lcom/netease/nr/biz/fb/CreateNewFeedBack;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/CreateNewFeedBack;->a(Lcom/netease/nr/biz/fb/CreateNewFeedBack;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
