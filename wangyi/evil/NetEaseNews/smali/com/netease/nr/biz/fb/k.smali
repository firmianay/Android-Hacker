.class Lcom/netease/nr/biz/fb/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nr/biz/fb/j;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/fb/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/fb/k;->b:Lcom/netease/nr/biz/fb/j;

    iput-object p2, p0, Lcom/netease/nr/biz/fb/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/k;->b:Lcom/netease/nr/biz/fb/j;

    iget-object v0, v0, Lcom/netease/nr/biz/fb/j;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->a(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/fb/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "fid"

    iget-object v2, p0, Lcom/netease/nr/biz/fb/k;->b:Lcom/netease/nr/biz/fb/j;

    iget-object v2, v2, Lcom/netease/nr/biz/fb/j;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-static {v2}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->a(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    iget-object v2, p0, Lcom/netease/nr/biz/fb/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/netease/nr/biz/fb/k;->b:Lcom/netease/nr/biz/fb/j;

    iget-object v1, v1, Lcom/netease/nr/biz/fb/j;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-virtual {v1}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/netease/nr/biz/fb/g;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/fb/k;->b:Lcom/netease/nr/biz/fb/j;

    iget-object v0, v0, Lcom/netease/nr/biz/fb/j;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->e(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/fb/k;->b:Lcom/netease/nr/biz/fb/j;

    iget-object v0, v0, Lcom/netease/nr/biz/fb/j;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->e(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/fb/k;->b:Lcom/netease/nr/biz/fb/j;

    iget-object v0, v0, Lcom/netease/nr/biz/fb/j;->a:Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-static {v0}, Lcom/netease/nr/biz/fb/FeedBackDetailList;->e(Lcom/netease/nr/biz/fb/FeedBackDetailList;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
