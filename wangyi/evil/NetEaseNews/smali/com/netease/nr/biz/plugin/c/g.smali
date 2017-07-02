.class final Lcom/netease/nr/biz/plugin/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/nr/base/activity/BaseApplication;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/netease/nr/base/activity/BaseApplication;)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/biz/plugin/c/g;->a:I

    iput-object p2, p0, Lcom/netease/nr/biz/plugin/c/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/plugin/c/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/nr/biz/plugin/c/g;->d:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "city_list"

    invoke-static {v0}, Lcom/netease/nr/base/db/BaseContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "city_select_count"

    iget v3, p0, Lcom/netease/nr/biz/plugin/c/g;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "city_select_date"

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3}, Lcom/netease/util/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/netease/util/db/c;

    invoke-direct {v2}, Lcom/netease/util/db/c;-><init>()V

    const-string v3, "city_province"

    invoke-virtual {v2, v3}, Lcom/netease/util/db/c;->a(Ljava/lang/String;)Lcom/netease/util/db/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/util/db/c;->a()Lcom/netease/util/db/c;

    move-result-object v3

    const-string v4, "city_name"

    invoke-virtual {v3, v4}, Lcom/netease/util/db/c;->a(Ljava/lang/String;)Lcom/netease/util/db/c;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netease/nr/biz/plugin/c/g;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netease/nr/biz/plugin/c/g;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/netease/nr/biz/plugin/c/g;->d:Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v4}, Lcom/netease/nr/base/activity/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netease/util/db/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
