.class public Lcom/netease/nr/base/view/ListPopupWindow;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Landroid/view/View$OnKeyListener;

.field private E:Lcom/netease/nr/base/view/ap;

.field private F:Lcom/netease/nr/base/view/an;

.field private G:I

.field private a:Landroid/content/Context;

.field b:I

.field private c:Landroid/widget/PopupWindow;

.field private d:Landroid/widget/ListAdapter;

.field private e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View;

.field private n:I

.field private o:Landroid/database/DataSetObserver;

.field private p:Landroid/view/View;

.field private q:I

.field private r:I

.field private s:Landroid/widget/AdapterView$OnItemClickListener;

.field private t:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final u:Lcom/netease/nr/base/view/as;

.field private final v:Lcom/netease/nr/base/view/ar;

.field private final w:Lcom/netease/nr/base/view/ao;

.field private x:Ljava/lang/Runnable;

.field private y:Landroid/os/Handler;

.field private z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/netease/nr/base/view/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/netease/nr/base/view/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/nr/base/view/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->f:I

    iput v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    iput-boolean v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->k:Z

    iput-boolean v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->l:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->b:I

    iput v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->n:I

    new-instance v0, Lcom/netease/nr/base/view/as;

    invoke-direct {v0, p0, v2}, Lcom/netease/nr/base/view/as;-><init>(Lcom/netease/nr/base/view/ListPopupWindow;Lcom/netease/nr/base/view/ak;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->u:Lcom/netease/nr/base/view/as;

    new-instance v0, Lcom/netease/nr/base/view/ar;

    invoke-direct {v0, p0, v2}, Lcom/netease/nr/base/view/ar;-><init>(Lcom/netease/nr/base/view/ListPopupWindow;Lcom/netease/nr/base/view/ak;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->v:Lcom/netease/nr/base/view/ar;

    new-instance v0, Lcom/netease/nr/base/view/ao;

    invoke-direct {v0, p0, v2}, Lcom/netease/nr/base/view/ao;-><init>(Lcom/netease/nr/base/view/ListPopupWindow;Lcom/netease/nr/base/view/ak;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->w:Lcom/netease/nr/base/view/ao;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->y:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->z:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->C:Z

    iput v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->G:I

    iput-object p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->a:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/base/view/ListPopupWindow;)Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/base/view/ListPopupWindow;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/ListPopupWindow;->j(I)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nr/base/view/ListPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->G:I

    return v0
.end method

.method static synthetic b(Lcom/netease/nr/base/view/ListPopupWindow;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/ListPopupWindow;->i(I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/netease/nr/base/view/ListPopupWindow;I)I
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->G:I

    return p1
.end method

.method static synthetic c(Lcom/netease/nr/base/view/ListPopupWindow;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/base/view/ListPopupWindow;)Lcom/netease/nr/base/view/ap;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->E:Lcom/netease/nr/base/view/ap;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/base/view/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/nr/base/view/ListPopupWindow;)Lcom/netease/nr/base/view/as;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->u:Lcom/netease/nr/base/view/as;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/nr/base/view/ListPopupWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->y:Landroid/os/Handler;

    return-object v0
.end method

.method private i(I)Z
    .locals 6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->C:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->C:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->t:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->t:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private l()I
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->a:Landroid/content/Context;

    new-instance v0, Lcom/netease/nr/base/view/ak;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/ak;-><init>(Lcom/netease/nr/base/view/ListPopupWindow;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->x:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->F:Lcom/netease/nr/base/view/an;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->F:Lcom/netease/nr/base/view/an;

    invoke-interface {v3, v0}, Lcom/netease/nr/base/view/an;->a(Landroid/view/LayoutInflater;)Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    :goto_0
    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->A:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->a(Z)V

    iget v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->q:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    iget v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->q:I

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setSelector(I)V

    :goto_2
    iget v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->r:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, p0, Lcom/netease/nr/base/view/ListPopupWindow;->r:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setFooterDividersEnabled(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    new-instance v3, Lcom/netease/nr/base/view/al;

    invoke-direct {v3, p0}, Lcom/netease/nr/base/view/al;-><init>(Lcom/netease/nr/base/view/ListPopupWindow;)V

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    new-instance v3, Lcom/netease/nr/base/view/am;

    invoke-direct {v3, p0}, Lcom/netease/nr/base/view/am;-><init>(Lcom/netease/nr/base/view/ListPopupWindow;)V

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    iget-object v5, p0, Lcom/netease/nr/base/view/ListPopupWindow;->m:Landroid/view/View;

    if-eqz v5, :cond_e

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->n:I

    packed-switch v4, :pswitch_data_0

    const-string v0, "ListPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hint position "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->n:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    move-object v1, v3

    :goto_5
    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_6
    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->z:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    iget-boolean v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->j:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iput v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->i:I

    :cond_0
    :goto_7
    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_1
    iget-object v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->c()Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/netease/nr/base/view/ListPopupWindow;->i:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v3

    iget-boolean v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->C:Z

    if-eqz v4, :cond_2

    const/high16 v4, 0x42400000    # 48.0f

    iget-object v5, p0, Lcom/netease/nr/base/view/ListPopupWindow;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-le v3, v4, :cond_2

    sub-int/2addr v3, v4

    :cond_2
    iget-boolean v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->k:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->f:I

    if-ne v4, v6, :cond_9

    :cond_3
    add-int v0, v3, v1

    :goto_8
    return v0

    :cond_4
    const v3, 0x7f03000b

    invoke-virtual {v0, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    iput-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    const v3, 0x106000d

    invoke-virtual {v0, v3}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setSelector(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v5}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v2}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setDividerHeight(I)V

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->m:Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    goto/16 :goto_6

    :cond_9
    iget-object v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->B:I

    iget-object v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {v4}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    mul-int/2addr v2, v4

    :cond_a
    if-lez v2, :cond_b

    add-int/2addr v0, v1

    :cond_b
    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_8

    :cond_c
    move v1, v2

    goto/16 :goto_7

    :cond_d
    move v0, v2

    goto/16 :goto_6

    :cond_e
    move-object v1, v0

    move v0, v2

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iget-boolean v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->C:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->l()I

    move-result v5

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->g()Z

    move-result v2

    iget-object v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_c

    iget v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    if-ne v4, v0, :cond_5

    move v4, v0

    :goto_1
    iget v6, p0, Lcom/netease/nr/base/view/ListPopupWindow;->f:I

    if-ne v6, v0, :cond_b

    if-eqz v2, :cond_7

    :goto_2
    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget v6, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    if-ne v6, v0, :cond_8

    :goto_3
    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->l:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->k:Z

    if-nez v2, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->c()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->h:I

    iget v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->i:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->D:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    if-ne v4, v7, :cond_6

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->c()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    goto :goto_1

    :cond_7
    move v5, v0

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    if-ne v2, v0, :cond_a

    move v2, v0

    :goto_6
    invoke-virtual {v6, v2, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_a
    move v2, v1

    goto :goto_6

    :cond_b
    iget v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->f:I

    if-eq v0, v7, :cond_2

    iget v5, p0, Lcom/netease/nr/base/view/ListPopupWindow;->f:I

    goto :goto_4

    :cond_c
    iget v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    if-ne v2, v0, :cond_f

    move v2, v0

    :goto_7
    iget v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->f:I

    if-ne v4, v0, :cond_11

    move v4, v0

    :goto_8
    iget-object v5, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    iget-object v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->l:Z

    if-nez v4, :cond_13

    iget-boolean v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->k:Z

    if-nez v4, :cond_13

    :goto_9
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->v:Lcom/netease/nr/base/view/ar;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->c()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/netease/nr/base/view/ListPopupWindow;->h:I

    iget v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->i:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setSelection(I)V

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->A:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->e()V

    :cond_e
    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->A:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->w:Lcom/netease/nr/base/view/ao;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_f
    iget v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    if-ne v2, v7, :cond_10

    iget-object v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->c()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_7

    :cond_10
    iget-object v2, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_7

    :cond_11
    iget v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->f:I

    if-ne v4, v7, :cond_12

    iget-object v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto :goto_8

    :cond_12
    iget-object v4, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/netease/nr/base/view/ListPopupWindow;->f:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto :goto_8

    :cond_13
    move v3, v1

    goto :goto_9
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->n:I

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->D:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->p:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->o:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/netease/nr/base/view/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/nr/base/view/aq;-><init>(Lcom/netease/nr/base/view/ListPopupWindow;Lcom/netease/nr/base/view/ak;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->o:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->o:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->G:I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->o:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_1
.end method

.method public a(Lcom/netease/nr/base/view/an;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->F:Lcom/netease/nr/base/view/an;

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->A:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->q:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->C:Z

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->p:Landroid/view/View;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->r:I

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->C:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->k()V

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->u:Lcom/netease/nr/base/view/as;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->h:I

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->a(Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;Z)Z

    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->g:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->B:I

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public h(I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->e:Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->C:Z

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->a(Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;I)I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->a(Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;Z)Z

    iget-boolean v1, p0, Lcom/netease/nr/base/view/ListPopupWindow;->C:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setSelection(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/netease/nr/base/view/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    :cond_2
    return-void
.end method

.method public i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->l()I

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    invoke-direct {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->l()I

    move-result v0

    return v0
.end method
