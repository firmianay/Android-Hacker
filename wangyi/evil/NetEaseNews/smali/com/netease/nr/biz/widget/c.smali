.class Lcom/netease/nr/biz/widget/c;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/util/List;

.field private d:I


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/widget/WidgetService;ILjava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Lcom/netease/nr/biz/widget/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/widget/c;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/widget/c;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/netease/nr/biz/widget/c;->c:Ljava/util/List;

    iput p2, p0, Lcom/netease/nr/biz/widget/c;->d:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/widget/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/widget/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/netease/nr/biz/widget/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/biz/widget/c;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/netease/nr/base/c/a/i;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/i;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/biz/widget/c;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v4, p0, Lcom/netease/nr/biz/widget/c;->d:I

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/netease/nr/biz/widget/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/netease/nr/biz/widget/c;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v0, v4, v5}, Lcom/netease/util/c/e;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v3, v0}, Lcom/netease/util/c/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v2, v0

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/biz/widget/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/widget/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/widget/WidgetService;

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netease/nr/biz/widget/WidgetService;->a(Lcom/netease/nr/biz/widget/WidgetService;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/netease/nr/biz/widget/WidgetService;->b(Lcom/netease/nr/biz/widget/WidgetService;)I

    move-result v1

    iget v2, p0, Lcom/netease/nr/biz/widget/c;->d:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/netease/nr/biz/widget/c;->d:I

    invoke-static {v0, v1}, Lcom/netease/nr/biz/widget/WidgetService;->a(Lcom/netease/nr/biz/widget/WidgetService;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/widget/c;->a([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/widget/c;->a(Ljava/lang/Boolean;)V

    return-void
.end method
