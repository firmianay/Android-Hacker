.class public Lcom/netease/nr/base/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/nr/base/view/r;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/netease/nr/base/view/f;

.field private d:Lcom/netease/nr/base/view/f;

.field private e:Lcom/netease/nr/base/view/f;

.field private f:Lcom/netease/nr/base/view/f;

.field private g:Lcom/netease/nr/base/view/f;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/util/SparseArray;

.field private j:Lcom/netease/nr/base/view/f;

.field private k:Lcom/netease/nr/base/view/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netease/nr/base/view/f;

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/f;-><init>(Lcom/netease/nr/base/view/b;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    new-instance v0, Lcom/netease/nr/base/view/h;

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/h;-><init>(Lcom/netease/nr/base/view/b;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/a;->d:Lcom/netease/nr/base/view/f;

    new-instance v0, Lcom/netease/nr/base/view/h;

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/h;-><init>(Lcom/netease/nr/base/view/b;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/a;->e:Lcom/netease/nr/base/view/f;

    new-instance v0, Lcom/netease/nr/base/view/h;

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/h;-><init>(Lcom/netease/nr/base/view/b;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/a;->f:Lcom/netease/nr/base/view/f;

    new-instance v0, Lcom/netease/nr/base/view/j;

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/j;-><init>(Lcom/netease/nr/base/view/b;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/a;->g:Lcom/netease/nr/base/view/f;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    new-instance v0, Lcom/netease/nr/base/view/g;

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/g;-><init>(Lcom/netease/nr/base/view/b;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/a;->j:Lcom/netease/nr/base/view/f;

    iput-object p1, p0, Lcom/netease/nr/base/view/a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/a;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    const v1, 0x7f020017

    iput v1, v0, Lcom/netease/nr/base/view/f;->c:I

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    iput-object p2, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->d:Lcom/netease/nr/base/view/f;

    const v1, 0x7f020009

    iput v1, v0, Lcom/netease/nr/base/view/f;->b:I

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->d:Lcom/netease/nr/base/view/f;

    const v1, 0x7f0c0001

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->e:Lcom/netease/nr/base/view/f;

    const v1, 0x7f020008

    iput v1, v0, Lcom/netease/nr/base/view/f;->b:I

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->e:Lcom/netease/nr/base/view/f;

    const v1, 0x7f0c0002

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->f:Lcom/netease/nr/base/view/f;

    const v1, 0x7f02033e

    iput v1, v0, Lcom/netease/nr/base/view/f;->b:I

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->f:Lcom/netease/nr/base/view/f;

    const v1, 0x7f0c0003

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->g:Lcom/netease/nr/base/view/f;

    const v1, 0x7f0c0006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    const v0, 0x7f0c0004

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->j:Lcom/netease/nr/base/view/f;

    const v1, 0x7f020014

    iput v1, v0, Lcom/netease/nr/base/view/f;->c:I

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->j:Lcom/netease/nr/base/view/f;

    const v1, 0x7f0c0005

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->d:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->f:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/a;->a(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->j:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    check-cast v0, Lcom/netease/nr/base/view/DropdownSpinner;

    check-cast v0, Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Lcom/netease/nr/base/view/r;)V

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030001

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/netease/nr/base/view/a;I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "icon"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->k:Lcom/netease/nr/base/view/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->k:Lcom/netease/nr/base/view/i;

    invoke-interface {v0, p1, p2}, Lcom/netease/nr/base/view/i;->a_(II)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->k:Lcom/netease/nr/base/view/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->k:Lcom/netease/nr/base/view/i;

    invoke-interface {v0}, Lcom/netease/nr/base/view/i;->c()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->k:Lcom/netease/nr/base/view/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->k:Lcom/netease/nr/base/view/i;

    invoke-interface {v0}, Lcom/netease/nr/base/view/i;->i_()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/f;->b(I)V

    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/f;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/nr/base/view/f;

    invoke-direct {v0, v1}, Lcom/netease/nr/base/view/f;-><init>(Lcom/netease/nr/base/view/b;)V

    iput-object p2, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/f;

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    iget-object v3, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/nr/base/view/j;

    invoke-direct {v0, v2}, Lcom/netease/nr/base/view/j;-><init>(Lcom/netease/nr/base/view/b;)V

    iput-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    goto :goto_0
.end method

.method public a(ILjava/lang/String;I)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/f;

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/a;->b:Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f030000

    iget-object v3, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/nr/base/view/h;

    invoke-direct {v0, v2}, Lcom/netease/nr/base/view/h;-><init>(Lcom/netease/nr/base/view/b;)V

    iput-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    invoke-virtual {v0, p3}, Lcom/netease/nr/base/view/f;->a(I)V

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    goto :goto_0
.end method

.method public a(ILjava/lang/String;ILandroid/widget/ListAdapter;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/f;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/netease/nr/base/view/DropdownSpinner;

    iget-object v2, p0, Lcom/netease/nr/base/view/a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/netease/nr/base/view/DropdownSpinner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Lcom/netease/nr/base/view/r;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/DropdownSpinner;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/netease/nr/base/view/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/netease/nr/base/view/g;

    invoke-direct {v2, v1}, Lcom/netease/nr/base/view/g;-><init>(Lcom/netease/nr/base/view/b;)V

    iput-object v0, v2, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    invoke-virtual {v2, p3}, Lcom/netease/nr/base/view/f;->b(I)V

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Z)V

    new-instance v1, Lcom/netease/nr/base/view/b;

    invoke-direct {v1, p0, p4}, Lcom/netease/nr/base/view/b;-><init>(Lcom/netease/nr/base/view/a;Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Lcom/netease/nr/base/view/o;)V

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->a()Lcom/netease/nr/base/view/ListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x186a3

    if-ne p1, v1, :cond_1

    new-instance v1, Lcom/netease/nr/base/view/c;

    invoke-direct {v1, p0, v0}, Lcom/netease/nr/base/view/c;-><init>(Lcom/netease/nr/base/view/a;Lcom/netease/nr/base/view/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Landroid/view/View$OnKeyListener;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    goto :goto_0
.end method

.method public a(ILjava/lang/String;ILjava/util/List;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p4, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    new-instance v0, Lcom/netease/nr/base/view/d;

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->a:Landroid/content/Context;

    const v3, 0x7f030003

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f0c0008

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/base/view/d;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/nr/base/view/a;->a(ILjava/lang/String;ILandroid/widget/ListAdapter;)V

    return-void

    :cond_0
    move-object v2, p4

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/f;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public a(Lcom/netease/nr/base/view/DropdownSpinner;I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->j:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-ne v0, p1, :cond_1

    const v0, 0x186a2

    invoke-direct {p0, v0, p2}, Lcom/netease/nr/base/view/a;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netease/nr/base/view/DropdownSpinner;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/netease/nr/base/view/a;->a(II)V

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/base/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/a;->k:Lcom/netease/nr/base/view/i;

    return-void
.end method

.method public a(Lcom/netease/nr/base/view/o;I)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/a;->j:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    check-cast v0, Lcom/netease/nr/base/view/DropdownSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/DropdownSpinner;->setVisibility(I)V

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Lcom/netease/nr/base/view/o;)V

    invoke-virtual {v0, p2}, Lcom/netease/nr/base/view/DropdownSpinner;->d(I)V

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->a()Lcom/netease/nr/base/view/ListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ListPopupWindow;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/f;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->d:Lcom/netease/nr/base/view/f;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/f;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->e:Lcom/netease/nr/base/view/f;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/f;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->f:Lcom/netease/nr/base/view/f;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/f;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->g:Lcom/netease/nr/base/view/f;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/f;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->j:Lcom/netease/nr/base/view/f;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/f;->a(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/f;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/f;->a(Lcom/netease/util/j/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->g:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    new-instance v0, Lcom/netease/nr/base/view/d;

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->a:Landroid/content/Context;

    const v3, 0x7f030003

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f0c0008

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/base/view/d;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v1, Lcom/netease/nr/base/view/e;

    iget-object v2, p0, Lcom/netease/nr/base/view/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/netease/nr/base/view/e;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v1, p2}, Lcom/netease/nr/base/view/a;->a(Lcom/netease/nr/base/view/o;I)V

    return-void

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->f:Lcom/netease/nr/base/view/f;

    iget-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(ZI)V
    .locals 2

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_2

    const p2, 0x7f040009

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_4

    const p2, 0x7f04000a

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/nr/base/view/a;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    const v0, 0x186a3

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/DropdownSpinner;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->a()Lcom/netease/nr/base/view/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nr/base/view/ListPopupWindow;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->a()Lcom/netease/nr/base/view/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow;->d()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->performClick()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->d:Lcom/netease/nr/base/view/f;

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/f;->a(I)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->g:Lcom/netease/nr/base/view/f;

    iget-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c()Lcom/netease/nr/base/view/DropdownSpinner;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->j:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    check-cast v0, Lcom/netease/nr/base/view/DropdownSpinner;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->g:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->d:Lcom/netease/nr/base/view/f;

    iget-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public d(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    goto :goto_0
.end method

.method public d()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->g:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->e:Lcom/netease/nr/base/view/f;

    iget-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public e(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/nr/base/view/a;->a(ZI)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->j:Lcom/netease/nr/base/view/f;

    iget-object v1, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/a;->c:Lcom/netease/nr/base/view/f;

    iget-object v0, v0, Lcom/netease/nr/base/view/f;->a:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/netease/nr/base/view/a;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/base/view/a;->a(II)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/netease/nr/base/view/a;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c0001
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
