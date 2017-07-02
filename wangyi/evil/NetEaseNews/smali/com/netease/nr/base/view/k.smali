.class public Lcom/netease/nr/base/view/k;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field public a:I

.field public b:I

.field private c:Lcom/netease/nr/base/view/l;

.field private d:Landroid/widget/ImageView;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Rect;

.field private final j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/view/WindowManager;

.field private o:Landroid/view/WindowManager$LayoutParams;

.field private p:I

.field private q:Landroid/graphics/Bitmap;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/widget/ListView;

.field private w:Landroid/content/Context;

.field private x:Lcom/netease/nr/base/view/m;

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/k;->i:Landroid/graphics/Rect;

    const v0, -0x3f3f40

    iput v0, p0, Lcom/netease/nr/base/view/k;->p:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/netease/nr/base/view/k;->r:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/netease/nr/base/view/k;->s:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/netease/nr/base/view/k;->t:I

    iput v2, p0, Lcom/netease/nr/base/view/k;->a:I

    iput v2, p0, Lcom/netease/nr/base/view/k;->b:I

    iput v1, p0, Lcom/netease/nr/base/view/k;->u:I

    iput v1, p0, Lcom/netease/nr/base/view/k;->z:I

    iput v1, p0, Lcom/netease/nr/base/view/k;->A:I

    iput-object p1, p0, Lcom/netease/nr/base/view/k;->w:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/k;->j:I

    iput-object p2, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/k;->k:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/netease/nr/base/view/k;->k:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/netease/nr/base/view/k;->l:I

    :cond_0
    iget v0, p0, Lcom/netease/nr/base/view/k;->k:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/netease/nr/base/view/k;->k:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/netease/nr/base/view/k;->m:I

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;II)V
    .locals 4

    const/4 v3, -0x2

    invoke-direct {p0}, Lcom/netease/nr/base/view/k;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/nr/base/view/k;->y:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/netease/nr/base/view/k;->g:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/netease/nr/base/view/k;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x198

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/netease/nr/base/view/k;->p:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/netease/nr/base/view/k;->q:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/netease/nr/base/view/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/netease/nr/base/view/k;->n:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->n:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/netease/nr/base/view/k;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    :cond_0
    return-void
.end method

.method private b(II)V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/netease/nr/base/view/k;->g:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/netease/nr/base/view/k;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->n:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/netease/nr/base/view/k;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netease/nr/base/view/k;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/netease/nr/base/view/k;->d:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/netease/nr/base/view/k;->d:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/k;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/netease/nr/base/view/k;->q:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/nr/base/view/k;->y:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 3

    iget-object v1, p0, Lcom/netease/nr/base/view/k;->i:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->w:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lcom/netease/nr/base/view/l;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    return-void
.end method

.method public a(Lcom/netease/nr/base/view/m;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/k;->x:Lcom/netease/nr/base/view/m;

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/base/view/k;->i:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netease/nr/base/view/k;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/netease/nr/base/view/k;->d()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v0, p0, Lcom/netease/nr/base/view/k;->A:I

    iput v1, p0, Lcom/netease/nr/base/view/k;->z:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/nr/base/view/k;->e:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/netease/nr/base/view/k;->e:I

    iget-object v1, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    iget v1, p0, Lcom/netease/nr/base/view/k;->e:I

    invoke-interface {v0, v1}, Lcom/netease/nr/base/view/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    iget v1, p0, Lcom/netease/nr/base/view/k;->f:I

    iget v2, p0, Lcom/netease/nr/base/view/k;->e:I

    invoke-interface {v0, v1, v2}, Lcom/netease/nr/base/view/l;->b(II)V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/netease/nr/base/view/k;->b(II)V

    invoke-virtual {p0, v2, v3}, Lcom/netease/nr/base/view/k;->a(II)I

    move-result v2

    if-ltz v2, :cond_0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/nr/base/view/k;->e:I

    if-eq v2, v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/netease/nr/base/view/k;->e:I

    iget-object v4, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    invoke-interface {v4, v2}, Lcom/netease/nr/base/view/l;->a(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iput v2, p0, Lcom/netease/nr/base/view/k;->e:I

    iget-object v2, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/netease/nr/base/view/k;->e:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/netease/nr/base/view/k;->e:I

    iget-object v4, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    iget v4, p0, Lcom/netease/nr/base/view/k;->e:I

    invoke-interface {v2, v0, v4}, Lcom/netease/nr/base/view/l;->c(II)V

    :cond_4
    invoke-direct {p0, v3}, Lcom/netease/nr/base/view/k;->a(I)V

    iget v0, p0, Lcom/netease/nr/base/view/k;->m:I

    if-le v3, v0, :cond_7

    iget v0, p0, Lcom/netease/nr/base/view/k;->k:I

    iget v2, p0, Lcom/netease/nr/base/view/k;->m:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    if-le v3, v0, :cond_6

    const/16 v0, 0x10

    :goto_2
    move v2, v0

    :goto_3
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    iget v3, p0, Lcom/netease/nr/base/view/k;->k:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    iget v3, p0, Lcom/netease/nr/base/view/k;->k:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    :cond_5
    iget-object v1, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    sub-int/2addr v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x4

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/netease/nr/base/view/k;->l:I

    if-ge v3, v0, :cond_a

    iget v0, p0, Lcom/netease/nr/base/view/k;->l:I

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_8

    const/16 v0, -0x10

    :goto_4
    move v2, v0

    goto :goto_3

    :cond_8
    const/4 v0, -0x4

    goto :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_1

    :cond_a
    move v2, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/k;->y:Z

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v4

    iput v4, p0, Lcom/netease/nr/base/view/k;->u:I

    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->c:Lcom/netease/nr/base/view/l;

    invoke-interface {v0, v4}, Lcom/netease/nr/base/view/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Landroid/widget/TextView;

    if-nez v5, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int v5, v3, v5

    iput v5, p0, Lcom/netease/nr/base/view/k;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/netease/nr/base/view/k;->h:I

    iget v5, p0, Lcom/netease/nr/base/view/k;->a:I

    if-ge v5, v2, :cond_1

    iget v5, p0, Lcom/netease/nr/base/view/k;->b:I

    if-ge v2, v5, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v2, v5, v2

    invoke-direct {p0, v0, v2, v3}, Lcom/netease/nr/base/view/k;->a(Landroid/graphics/Bitmap;II)V

    iput v4, p0, Lcom/netease/nr/base/view/k;->e:I

    iget v0, p0, Lcom/netease/nr/base/view/k;->e:I

    iput v0, p0, Lcom/netease/nr/base/view/k;->f:I

    iget-object v0, p0, Lcom/netease/nr/base/view/k;->v:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/k;->k:I

    iget v0, p0, Lcom/netease/nr/base/view/k;->j:I

    sub-int v2, v3, v0

    iget v4, p0, Lcom/netease/nr/base/view/k;->k:I

    div-int/lit8 v4, v4, 0x3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/netease/nr/base/view/k;->l:I

    add-int/2addr v0, v3

    iget v2, p0, Lcom/netease/nr/base/view/k;->k:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/base/view/k;->m:I

    move v0, v1

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/k;->d:Landroid/widget/ImageView;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()I
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/k;->y:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/netease/nr/base/view/k;->e:I

    goto :goto_0
.end method
