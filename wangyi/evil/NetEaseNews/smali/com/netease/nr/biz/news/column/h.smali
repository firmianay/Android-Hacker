.class final Lcom/netease/nr/biz/news/column/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/nr/base/activity/BaseApplication;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(ILcom/netease/nr/base/activity/BaseApplication;Ljava/util/List;)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/biz/news/column/h;->a:I

    iput-object p2, p0, Lcom/netease/nr/biz/news/column/h;->b:Lcom/netease/nr/base/activity/BaseApplication;

    iput-object p3, p0, Lcom/netease/nr/biz/news/column/h;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/netease/nr/biz/news/column/h;->a:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/h;->b:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/g;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v5, "tid"

    invoke-static {v0, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/h;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v6, "tid"

    invoke-static {v0, v6}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v3

    :goto_2
    if-nez v0, :cond_4

    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/h;->b:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Landroid/content/ContentValues;

    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/netease/nr/biz/news/column/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/h;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v0

    aput-object v0, v4, v1

    aget-object v0, v4, v1

    const-string v5, "_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    aget-object v0, v4, v1

    const-string v5, "delete"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_5
    const-string v0, "top_columns"

    invoke-static {v0}, Lcom/netease/nr/base/db/BaseContentProvider;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/String;

    iget v0, p0, Lcom/netease/nr/biz/news/column/h;->a:I

    if-ne v0, v3, :cond_6

    const-string v0, "\u9605\u8bfb"

    :goto_5
    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/netease/nr/biz/news/column/h;->b:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "type=?"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "top_columns"

    invoke-static {v0}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/column/h;->b:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v1}, Lcom/netease/nr/base/activity/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_3

    :cond_6
    const-string v0, "\u7cbe\u9009"

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_2
.end method
