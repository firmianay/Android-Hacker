.class public Lcom/netease/nr/biz/h/ad;
.super Lcom/netease/nr/base/fragment/d;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/netease/nr/base/view/draggrid/a;
.implements Lcom/netease/nr/base/view/draggrid/i;


# instance fields
.field private a:Lcom/netease/nr/base/view/draggrid/DragGridView;

.field private e:Lcom/netease/nr/base/view/draggrid/DragLayer;

.field private f:Lcom/netease/nr/base/view/draggrid/c;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/Button;

.field private i:Lcom/netease/nr/biz/h/ab;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/fragment/d;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/h/ad;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/h/ad;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/h/ad;->f()V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "tname"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->i:Lcom/netease/nr/biz/h/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->i:Lcom/netease/nr/biz/h/ab;

    invoke-virtual {v0}, Lcom/netease/nr/biz/h/ab;->notifyDataSetChanged()V

    :cond_0
    invoke-direct {p0}, Lcom/netease/nr/biz/h/ad;->e()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/ad;->l:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p2, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    invoke-virtual {v0, p1, p2}, Lcom/netease/nr/base/view/draggrid/DragGridView;->a(II)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->i:Lcom/netease/nr/biz/h/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->i:Lcom/netease/nr/biz/h/ab;

    invoke-virtual {v0}, Lcom/netease/nr/biz/h/ab;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected a(Lcom/netease/util/j/a;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->a(Lcom/netease/util/j/a;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020151

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0202a6

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0202a7

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/draggrid/DragGridView;->removeViewAt(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->i:Lcom/netease/nr/biz/h/ab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->i:Lcom/netease/nr/biz/h/ab;

    invoke-virtual {v1}, Lcom/netease/nr/biz/h/ab;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/netease/nr/biz/h/ad;->e()V

    :cond_2
    return-void
.end method

.method public b(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getLeft()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocationOnScreen([I)V
    .locals 0

    return-void
.end method

.method public getTop()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVisibility()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o_()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/ad;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/util/List;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->a()Lcom/netease/nr/base/view/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0b00f3

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/a;->c(I)V

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/a;->c(Z)V

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    invoke-virtual {v1, p0}, Lcom/netease/nr/base/view/draggrid/DragGridView;->a(Lcom/netease/nr/base/view/draggrid/a;)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    invoke-virtual {v1, p0}, Lcom/netease/nr/base/view/draggrid/DragGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    iget-boolean v2, p0, Lcom/netease/nr/biz/h/ad;->l:Z

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/draggrid/DragGridView;->a(Z)V

    new-instance v1, Lcom/netease/nr/base/view/draggrid/c;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/nr/base/view/draggrid/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/nr/biz/h/ad;->f:Lcom/netease/nr/base/view/draggrid/c;

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->e:Lcom/netease/nr/base/view/draggrid/DragLayer;

    iget-object v2, p0, Lcom/netease/nr/biz/h/ad;->f:Lcom/netease/nr/base/view/draggrid/c;

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/draggrid/DragLayer;->a(Lcom/netease/nr/base/view/draggrid/c;)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->f:Lcom/netease/nr/base/view/draggrid/c;

    iget-object v2, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/view/draggrid/c;->a(Lcom/netease/nr/base/view/draggrid/i;)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->f:Lcom/netease/nr/base/view/draggrid/c;

    invoke-virtual {v1, p0}, Lcom/netease/nr/base/view/draggrid/c;->b(Lcom/netease/nr/base/view/draggrid/i;)V

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->i:Lcom/netease/nr/biz/h/ab;

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/nr/biz/h/ab;

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    invoke-direct {v1, v2, v3, p0}, Lcom/netease/nr/biz/h/ab;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/netease/nr/biz/h/ad;->i:Lcom/netease/nr/biz/h/ab;

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->i:Lcom/netease/nr/biz/h/ab;

    iget-boolean v2, p0, Lcom/netease/nr/biz/h/ad;->l:Z

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/h/ab;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->i:Lcom/netease/nr/biz/h/ab;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/draggrid/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/h/ad;->b(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c013e
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/fragment/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->u()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "param_source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "source_columns"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/biz/h/ad;->l:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/netease/nr/biz/h/ad;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    :goto_1
    return-void

    :cond_1
    const-string v1, "source_media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/biz/h/ad;->l:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nr/biz/news/column/g;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onDestroyView()V

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->e:Lcom/netease/nr/base/view/draggrid/DragLayer;

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->f:Lcom/netease/nr/base/view/draggrid/c;

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->h:Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->g:Landroid/view/View;

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->f:Lcom/netease/nr/base/view/draggrid/c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/ad;->l:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->f:Lcom/netease/nr/base/view/draggrid/c;

    iget-object v1, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    sget v2, Lcom/netease/nr/base/view/draggrid/c;->b:I

    invoke-virtual {v0, p2, v1, p2, v2}, Lcom/netease/nr/base/view/draggrid/c;->a(Landroid/view/View;Lcom/netease/nr/base/view/draggrid/g;Ljava/lang/Object;I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/netease/nr/base/fragment/d;->onPause()V

    invoke-virtual {p0}, Lcom/netease/nr/biz/h/ad;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/h/ad;->j:Ljava/util/List;

    iget-boolean v0, p0, Lcom/netease/nr/biz/h/ad;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/netease/nr/biz/news/column/g;->a(Landroid/content/Context;Ljava/util/List;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/netease/nr/base/fragment/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/draggrid/DragGridView;

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->a:Lcom/netease/nr/base/view/draggrid/DragGridView;

    const v0, 0x7f0c013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/draggrid/DragLayer;

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->e:Lcom/netease/nr/base/view/draggrid/DragLayer;

    const v0, 0x7f0c013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->g:Landroid/view/View;

    const v0, 0x7f0c013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/nr/biz/h/ad;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/nr/biz/h/ad;->h:Landroid/widget/Button;

    new-instance v1, Lcom/netease/nr/biz/h/ae;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/h/ae;-><init>(Lcom/netease/nr/biz/h/ad;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
