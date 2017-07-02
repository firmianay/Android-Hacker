.class public Lcom/netease/nr/biz/pc/e/f;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/netease/nr/biz/pc/e/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/e/m;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/e/m;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/e/m;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/e/m;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/e/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/pc/e/f;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/nr/biz/pc/e/f;->c:Z

    iput-object p3, p0, Lcom/netease/nr/biz/pc/e/f;->d:Lcom/netease/nr/biz/pc/e/m;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/e/m;Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/e/f;)Lcom/netease/nr/biz/pc/e/m;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/f;->d:Lcom/netease/nr/biz/pc/e/m;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/pc/e/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/biz/pc/e/f;->c:Z

    return v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/f;->b:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/netease/nr/biz/pc/e/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/e/f;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/pc/e/f;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/main/c;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/n;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/f;->a:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/e/e;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/e/f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/e/f;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/e/f;->a([Ljava/lang/Integer;)V

    return-void
.end method
