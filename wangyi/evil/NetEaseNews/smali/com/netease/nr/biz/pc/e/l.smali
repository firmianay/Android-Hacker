.class Lcom/netease/nr/biz/pc/e/l;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/netease/nr/biz/pc/e/f;

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/pc/e/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/e/l;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nr/biz/pc/e/l;->c:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/netease/nr/biz/pc/e/a;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/l;->a:Landroid/content/Context;

    invoke-direct {v0, p3, v1, p4}, Lcom/netease/nr/biz/pc/e/a;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    iget-object v2, p0, Lcom/netease/nr/biz/pc/e/l;->a:Landroid/content/Context;

    const-string v3, "score_invite_key"

    invoke-direct {v1, v2, v3, v0}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nr/biz/pc/e/m;)V

    iput-object v1, p0, Lcom/netease/nr/biz/pc/e/l;->b:Lcom/netease/nr/biz/pc/e/f;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/pc/e/j;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nr/biz/pc/e/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/nr/biz/pc/e/l;-><init>(Landroid/content/Context;Lcom/netease/nr/biz/pc/e/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/l;->b:Lcom/netease/nr/biz/pc/e/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/pc/e/f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/l;->b:Lcom/netease/nr/biz/pc/e/f;

    invoke-virtual {v0, p1}, Lcom/netease/nr/biz/pc/e/f;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/l;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/pc/e/j;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/e/j;->c()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/pc/e/l;->a:Landroid/content/Context;

    const v2, 0x7f0b0012

    invoke-static {v1, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/netease/nr/biz/pc/e/j;->a(Lcom/netease/nr/biz/pc/e/j;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/pc/e/l;->a:Landroid/content/Context;

    const v1, 0x7f0b0013

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/e/l;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netease/nr/biz/pc/e/l;->a(Ljava/lang/Boolean;)V

    return-void
.end method
