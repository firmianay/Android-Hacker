.class Lcom/netease/nr/base/view/aq;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/netease/nr/base/view/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/view/ListPopupWindow;Lcom/netease/nr/base/view/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/aq;-><init>(Lcom/netease/nr/base/view/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->b(Lcom/netease/nr/base/view/ListPopupWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    iget-object v0, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->c(Lcom/netease/nr/base/view/ListPopupWindow;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Lcom/netease/nr/base/view/ListPopupWindow;->c(Lcom/netease/nr/base/view/ListPopupWindow;I)I

    iget-object v0, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->b(Lcom/netease/nr/base/view/ListPopupWindow;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->a()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->d(Lcom/netease/nr/base/view/ListPopupWindow;)Lcom/netease/nr/base/view/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->d(Lcom/netease/nr/base/view/ListPopupWindow;)Lcom/netease/nr/base/view/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/nr/base/view/ap;->a()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-static {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->c(Lcom/netease/nr/base/view/ListPopupWindow;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/aq;->a:Lcom/netease/nr/base/view/ListPopupWindow;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->d()V

    return-void
.end method
