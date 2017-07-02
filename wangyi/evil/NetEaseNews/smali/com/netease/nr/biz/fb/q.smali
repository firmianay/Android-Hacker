.class Lcom/netease/nr/biz/fb/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/netease/nr/biz/fb/FeedBackReceiver;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/fb/FeedBackReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/fb/q;->b:Lcom/netease/nr/biz/fb/FeedBackReceiver;

    iput-object p2, p0, Lcom/netease/nr/biz/fb/q;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/netease/nr/biz/fb/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/netease/nr/biz/fb/f;->b:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "fid"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {v1}, Lcom/netease/a/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/a/e;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "fid"

    invoke-virtual {v0}, Lcom/netease/a/e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "time"

    invoke-virtual {v0}, Lcom/netease/a/e;->a()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "content"

    invoke-virtual {v0}, Lcom/netease/a/e;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/netease/nr/biz/fb/q;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/netease/nr/biz/fb/g;->b:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/netease/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v8, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/fb/q;->a:Landroid/content/Context;

    const-class v1, Lcom/netease/nr/biz/fb/FeedBackList;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/q;->b:Lcom/netease/nr/biz/fb/FeedBackReceiver;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/q;->a:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/netease/nr/biz/fb/FeedBackReceiver;->a(Lcom/netease/nr/biz/fb/FeedBackReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/fb/q;->a:Landroid/content/Context;

    const-class v2, Lcom/netease/nr/biz/fb/FeedBackDetailList;

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "fid"

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/a/e;

    invoke-virtual {v0}, Lcom/netease/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/netease/nr/biz/fb/q;->b:Lcom/netease/nr/biz/fb/FeedBackReceiver;

    iget-object v1, p0, Lcom/netease/nr/biz/fb/q;->a:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/netease/nr/biz/fb/FeedBackReceiver;->a(Lcom/netease/nr/biz/fb/FeedBackReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_2
.end method
