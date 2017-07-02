.class Lcom/netease/nr/biz/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/util/b/d;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/b/h;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/netease/nr/biz/b/b;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-static {v0}, Lcom/netease/nr/biz/b/h;->a(Lcom/netease/nr/biz/b/h;)Lcom/netease/nr/biz/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/b/a;->a(Lcom/netease/nr/biz/b/b;)V

    iget-object v0, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-static {v0}, Lcom/netease/nr/biz/b/h;->a(Lcom/netease/nr/biz/b/h;)Lcom/netease/nr/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/b/a;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netease/nr/biz/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netease/nr/biz/b/b;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/netease/nr/biz/b/i;->a(Lcom/netease/nr/biz/b/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-static {v0}, Lcom/netease/nr/biz/b/h;->a(Lcom/netease/nr/biz/b/h;)Lcom/netease/nr/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/b/a;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-virtual {v1}, Lcom/netease/nr/biz/b/h;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-static {v2}, Lcom/netease/nr/biz/b/h;->a(Lcom/netease/nr/biz/b/h;)Lcom/netease/nr/biz/b/a;

    move-result-object v2

    iget v2, v2, Lcom/netease/nr/biz/b/a;->c:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x64

    mul-long/2addr v1, p2

    div-long/2addr v1, p4

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-static {v0}, Lcom/netease/nr/biz/b/h;->a(Lcom/netease/nr/biz/b/h;)Lcom/netease/nr/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/biz/b/a;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-static {v1}, Lcom/netease/nr/biz/b/h;->a(Lcom/netease/nr/biz/b/h;)Lcom/netease/nr/biz/b/a;

    move-result-object v1

    iget v1, v1, Lcom/netease/nr/biz/b/a;->c:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/nr/base/b/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/netease/util/cache/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-static {v2}, Lcom/netease/nr/biz/b/h;->a(Lcom/netease/nr/biz/b/h;)Lcom/netease/nr/biz/b/a;

    move-result-object v2

    iget v2, v2, Lcom/netease/nr/biz/b/a;->d:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-static {v3}, Lcom/netease/nr/biz/b/h;->a(Lcom/netease/nr/biz/b/h;)Lcom/netease/nr/biz/b/a;

    move-result-object v3

    iget v3, v3, Lcom/netease/nr/biz/b/a;->e:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/nr/biz/b/i;->a:Lcom/netease/nr/biz/b/h;

    invoke-static {v4}, Lcom/netease/nr/biz/b/h;->a(Lcom/netease/nr/biz/b/h;)Lcom/netease/nr/biz/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/nr/biz/b/a;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/netease/nr/biz/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/netease/nr/biz/b/i;->a(Lcom/netease/nr/biz/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netease/nr/biz/b/i;->a(Lcom/netease/nr/biz/b/b;)V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method
