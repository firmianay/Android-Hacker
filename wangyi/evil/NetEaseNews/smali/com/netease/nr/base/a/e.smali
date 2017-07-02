.class Lcom/netease/nr/base/a/e;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Lcom/netease/nr/base/a/d;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/a/e;->d:Z

    iput-object p1, p0, Lcom/netease/nr/base/a/e;->c:Landroid/view/View;

    iput-boolean p2, p0, Lcom/netease/nr/base/a/e;->b:Z

    return-void
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/a/e;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/e;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/base/a/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/a/e;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/a/e;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/nr/base/a/e;->notifyDataSetChanged()V

    return-void
.end method

.method a(Lcom/netease/nr/base/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/a/e;->a:Lcom/netease/nr/base/a/d;

    return-void
.end method

.method a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/a/e;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-boolean p1, p0, Lcom/netease/nr/base/a/e;->d:Z

    invoke-virtual {p0}, Lcom/netease/nr/base/a/e;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/a/e;->a:Lcom/netease/nr/base/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/a/e;->a:Lcom/netease/nr/base/a/d;

    iget-object v1, p0, Lcom/netease/nr/base/a/e;->c:Landroid/view/View;

    iget-boolean v2, p0, Lcom/netease/nr/base/a/e;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/netease/nr/base/a/d;->a(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/a/e;->c:Landroid/view/View;

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
