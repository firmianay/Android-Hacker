.class public Lcom/netease/nr/base/view/draggrid/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private A:Lcom/netease/nr/base/view/draggrid/i;

.field private B:Landroid/view/inputmethod/InputMethodManager;

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private final e:Landroid/os/Vibrator;

.field private f:Landroid/graphics/Rect;

.field private final g:[I

.field private h:Z

.field private i:F

.field private j:F

.field private k:Landroid/util/DisplayMetrics;

.field private l:Landroid/view/View;

.field private m:F

.field private n:F

.field private o:I

.field private p:Lcom/netease/nr/base/view/draggrid/g;

.field private q:Ljava/lang/Object;

.field private r:Lcom/netease/nr/base/view/draggrid/h;

.field private s:Ljava/util/ArrayList;

.field private t:Ljava/util/ArrayList;

.field private u:Landroid/os/IBinder;

.field private v:Lcom/netease/nr/base/view/draggrid/i;

.field private w:Landroid/view/View;

.field private x:Lcom/netease/nr/base/view/draggrid/f;

.field private y:I

.field private z:Lcom/netease/nr/base/view/draggrid/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/netease/nr/base/view/draggrid/c;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/netease/nr/base/view/draggrid/c;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->f:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->g:[I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->k:Landroid/util/DisplayMetrics;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/c;->y:I

    new-instance v0, Lcom/netease/nr/base/view/draggrid/e;

    invoke-direct {v0, p0}, Lcom/netease/nr/base/view/draggrid/e;-><init>(Lcom/netease/nr/base/view/draggrid/c;)V

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->z:Lcom/netease/nr/base/view/draggrid/e;

    iput-object p1, p0, Lcom/netease/nr/base/view/draggrid/c;->c:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->d:Landroid/os/Handler;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/c;->o:I

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->e:Landroid/os/Vibrator;

    return-void
.end method

.method private static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-lt p0, p2, :cond_1

    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/base/view/draggrid/c;I)I
    .locals 0

    iput p1, p0, Lcom/netease/nr/base/view/draggrid/c;->y:I

    return p1
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Launcher.DragController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed getViewBitmap("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/nr/base/view/draggrid/c;)Lcom/netease/nr/base/view/draggrid/f;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->x:Lcom/netease/nr/base/view/draggrid/f;

    return-object v0
.end method

.method private a(II[I)Lcom/netease/nr/base/view/draggrid/i;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/c;->f:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/netease/nr/base/view/draggrid/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/draggrid/i;

    invoke-interface {v0}, Lcom/netease/nr/base/view/draggrid/i;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v2}, Lcom/netease/nr/base/view/draggrid/i;->a(Landroid/graphics/Rect;)V

    invoke-interface {v0, p3}, Lcom/netease/nr/base/view/draggrid/i;->getLocationOnScreen([I)V

    aget v4, p3, v7

    invoke-interface {v0}, Lcom/netease/nr/base/view/draggrid/i;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    aget v5, p3, v8

    invoke-interface {v0}, Lcom/netease/nr/base/view/draggrid/i;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    aget v1, p3, v7

    sub-int v1, p1, v1

    aput v1, p3, v7

    aget v1, p3, v8

    sub-int v1, p2, v1

    aput v1, p3, v8

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(II)V
    .locals 9

    const-wide/16 v7, 0x258

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->x:Lcom/netease/nr/base/view/draggrid/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->v:Lcom/netease/nr/base/view/draggrid/i;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v0, v1}, Lcom/netease/nr/base/view/draggrid/i;->a(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/netease/nr/base/view/draggrid/c;->x:Lcom/netease/nr/base/view/draggrid/f;

    invoke-interface {v3}, Lcom/netease/nr/base/view/draggrid/f;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->o:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->o:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->o:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/netease/nr/base/view/draggrid/c;->o:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    :goto_1
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/netease/nr/base/view/draggrid/c;->y:I

    if-nez v0, :cond_0

    iput v5, p0, Lcom/netease/nr/base/view/draggrid/c;->y:I

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->z:Lcom/netease/nr/base/view/draggrid/e;

    invoke-virtual {v0, v6}, Lcom/netease/nr/base/view/draggrid/e;->a(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->z:Lcom/netease/nr/base/view/draggrid/e;

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->o:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->o:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->o:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->o:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/netease/nr/base/view/draggrid/c;->y:I

    if-nez v0, :cond_0

    iput v5, p0, Lcom/netease/nr/base/view/draggrid/c;->y:I

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->z:Lcom/netease/nr/base/view/draggrid/e;

    invoke-virtual {v0, v5}, Lcom/netease/nr/base/view/draggrid/e;->a(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->z:Lcom/netease/nr/base/view/draggrid/e;

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    iput v6, p0, Lcom/netease/nr/base/view/draggrid/c;->y:I

    goto/16 :goto_0
.end method

.method private a(FF)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/netease/nr/base/view/draggrid/c;->g:[I

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-direct {p0, v0, v1, v10}, Lcom/netease/nr/base/view/draggrid/c;->a(II[I)Lcom/netease/nr/base/view/draggrid/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->p:Lcom/netease/nr/base/view/draggrid/g;

    aget v2, v10, v9

    aget v3, v10, v8

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->m:F

    float-to-int v4, v4

    iget v5, p0, Lcom/netease/nr/base/view/draggrid/c;->n:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    iget-object v7, p0, Lcom/netease/nr/base/view/draggrid/c;->q:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/netease/nr/base/view/draggrid/i;->c(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->p:Lcom/netease/nr/base/view/draggrid/g;

    aget v2, v10, v9

    aget v3, v10, v8

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->m:F

    float-to-int v4, v4

    iget v5, p0, Lcom/netease/nr/base/view/draggrid/c;->n:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    iget-object v7, p0, Lcom/netease/nr/base/view/draggrid/c;->q:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/netease/nr/base/view/draggrid/i;->a(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->p:Lcom/netease/nr/base/view/draggrid/g;

    aget v2, v10, v9

    aget v3, v10, v8

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->m:F

    float-to-int v4, v4

    iget v5, p0, Lcom/netease/nr/base/view/draggrid/c;->n:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    iget-object v7, p0, Lcom/netease/nr/base/view/draggrid/c;->q:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/netease/nr/base/view/draggrid/i;->e(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->p:Lcom/netease/nr/base/view/draggrid/g;

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0, v8}, Lcom/netease/nr/base/view/draggrid/g;->a(Landroid/view/View;Z)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->p:Lcom/netease/nr/base/view/draggrid/g;

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0, v9}, Lcom/netease/nr/base/view/draggrid/g;->a(Landroid/view/View;Z)V

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/nr/base/view/draggrid/c;)I
    .locals 1

    iget v0, p0, Lcom/netease/nr/base/view/draggrid/c;->y:I

    return v0
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/draggrid/c;->h:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/netease/nr/base/view/draggrid/c;->h:Z

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/draggrid/d;

    invoke-interface {v0}, Lcom/netease/nr/base/view/draggrid/d;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/draggrid/h;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->k:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/view/draggrid/c;->b()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;IIIIIILcom/netease/nr/base/view/draggrid/g;Ljava/lang/Object;I)V
    .locals 12

    iget-object v3, p0, Lcom/netease/nr/base/view/draggrid/c;->B:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/base/view/draggrid/c;->c:Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/netease/nr/base/view/draggrid/c;->B:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    iget-object v3, p0, Lcom/netease/nr/base/view/draggrid/c;->B:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/netease/nr/base/view/draggrid/c;->u:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v3, p0, Lcom/netease/nr/base/view/draggrid/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/nr/base/view/draggrid/d;

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move/from16 v2, p10

    invoke-interface {v3, v0, v1, v2}, Lcom/netease/nr/base/view/draggrid/d;->a(Lcom/netease/nr/base/view/draggrid/g;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/netease/nr/base/view/draggrid/c;->i:F

    float-to-int v3, v3

    sub-int v6, v3, p2

    iget v3, p0, Lcom/netease/nr/base/view/draggrid/c;->j:F

    float-to-int v3, v3

    sub-int v7, v3, p3

    iget v3, p0, Lcom/netease/nr/base/view/draggrid/c;->i:F

    int-to-float v4, p2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/netease/nr/base/view/draggrid/c;->m:F

    iget v3, p0, Lcom/netease/nr/base/view/draggrid/c;->j:F

    int-to-float v4, p3

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/netease/nr/base/view/draggrid/c;->n:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/netease/nr/base/view/draggrid/c;->h:Z

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->p:Lcom/netease/nr/base/view/draggrid/g;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->q:Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/nr/base/view/draggrid/c;->e:Landroid/os/Vibrator;

    const-wide/16 v4, 0x23

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    new-instance v3, Lcom/netease/nr/base/view/draggrid/h;

    iget-object v4, p0, Lcom/netease/nr/base/view/draggrid/c;->c:Landroid/content/Context;

    move-object v5, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/netease/nr/base/view/draggrid/h;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V

    iput-object v3, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    iget-object v4, p0, Lcom/netease/nr/base/view/draggrid/c;->u:Landroid/os/IBinder;

    iget v5, p0, Lcom/netease/nr/base/view/draggrid/c;->i:F

    float-to-int v5, v5

    iget v6, p0, Lcom/netease/nr/base/view/draggrid/c;->j:F

    float-to-int v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/netease/nr/base/view/draggrid/h;->a(Landroid/os/IBinder;II)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/netease/nr/base/view/draggrid/g;Ljava/lang/Object;I)V
    .locals 11

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/netease/nr/base/view/draggrid/c;->l:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/netease/nr/base/view/draggrid/c;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->g:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v0, v4

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v5, v4

    move-object v8, p2

    move-object v9, p3

    move v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/netease/nr/base/view/draggrid/c;->a(Landroid/graphics/Bitmap;IIIIIILcom/netease/nr/base/view/draggrid/g;Ljava/lang/Object;I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget v0, Lcom/netease/nr/base/view/draggrid/c;->a:I

    if-ne p4, v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/netease/nr/base/view/draggrid/i;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/nr/base/view/draggrid/c;->h:Z

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/nr/base/view/draggrid/c;->c()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/c;->k:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v4, v2}, Lcom/netease/nr/base/view/draggrid/c;->a(III)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/netease/nr/base/view/draggrid/c;->k:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v4, v3}, Lcom/netease/nr/base/view/draggrid/c;->a(III)I

    move-result v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/netease/nr/base/view/draggrid/c;->h:Z

    return v0

    :pswitch_1
    int-to-float v0, v1

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/c;->i:F

    int-to-float v0, v2

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/c;->j:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->A:Lcom/netease/nr/base/view/draggrid/i;

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/netease/nr/base/view/draggrid/c;->h:Z

    if-eqz v0, :cond_1

    int-to-float v0, v1

    int-to-float v1, v2

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/base/view/draggrid/c;->a(FF)Z

    :cond_1
    invoke-direct {p0}, Lcom/netease/nr/base/view/draggrid/c;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->w:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/netease/nr/base/view/draggrid/i;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/draggrid/c;->v:Lcom/netease/nr/base/view/draggrid/i;

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/base/view/draggrid/c;->h:Z

    if-nez v0, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/c;->k:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v9, v2}, Lcom/netease/nr/base/view/draggrid/c;->a(III)I

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/c;->k:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v9, v2}, Lcom/netease/nr/base/view/draggrid/c;->a(III)I

    move-result v12

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v10

    goto :goto_0

    :pswitch_0
    int-to-float v0, v11

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/c;->i:F

    int-to-float v0, v12

    iput v0, p0, Lcom/netease/nr/base/view/draggrid/c;->j:F

    invoke-direct {p0, v11, v12}, Lcom/netease/nr/base/view/draggrid/c;->a(II)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/view/draggrid/h;->a(II)V

    iget-object v13, p0, Lcom/netease/nr/base/view/draggrid/c;->g:[I

    invoke-direct {p0, v11, v12, v13}, Lcom/netease/nr/base/view/draggrid/c;->a(II[I)Lcom/netease/nr/base/view/draggrid/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->A:Lcom/netease/nr/base/view/draggrid/i;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->p:Lcom/netease/nr/base/view/draggrid/g;

    aget v2, v13, v9

    aget v3, v13, v10

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->m:F

    float-to-int v4, v4

    iget v5, p0, Lcom/netease/nr/base/view/draggrid/c;->n:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    iget-object v7, p0, Lcom/netease/nr/base/view/draggrid/c;->q:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/netease/nr/base/view/draggrid/i;->d(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)V

    :cond_1
    :goto_2
    iput-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->A:Lcom/netease/nr/base/view/draggrid/i;

    invoke-direct {p0, v11, v12}, Lcom/netease/nr/base/view/draggrid/c;->a(II)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->A:Lcom/netease/nr/base/view/draggrid/i;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->A:Lcom/netease/nr/base/view/draggrid/i;

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/c;->p:Lcom/netease/nr/base/view/draggrid/g;

    aget v3, v13, v9

    aget v4, v13, v10

    iget v5, p0, Lcom/netease/nr/base/view/draggrid/c;->m:F

    float-to-int v5, v5

    iget v6, p0, Lcom/netease/nr/base/view/draggrid/c;->n:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    iget-object v8, p0, Lcom/netease/nr/base/view/draggrid/c;->q:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/netease/nr/base/view/draggrid/i;->c(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->p:Lcom/netease/nr/base/view/draggrid/g;

    aget v2, v13, v9

    aget v3, v13, v10

    iget v4, p0, Lcom/netease/nr/base/view/draggrid/c;->m:F

    float-to-int v4, v4

    iget v5, p0, Lcom/netease/nr/base/view/draggrid/c;->n:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    iget-object v7, p0, Lcom/netease/nr/base/view/draggrid/c;->q:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/netease/nr/base/view/draggrid/i;->b(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->A:Lcom/netease/nr/base/view/draggrid/i;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->A:Lcom/netease/nr/base/view/draggrid/i;

    iget-object v2, p0, Lcom/netease/nr/base/view/draggrid/c;->p:Lcom/netease/nr/base/view/draggrid/g;

    aget v3, v13, v9

    aget v4, v13, v10

    iget v5, p0, Lcom/netease/nr/base/view/draggrid/c;->m:F

    float-to-int v5, v5

    iget v6, p0, Lcom/netease/nr/base/view/draggrid/c;->n:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/netease/nr/base/view/draggrid/c;->r:Lcom/netease/nr/base/view/draggrid/h;

    iget-object v8, p0, Lcom/netease/nr/base/view/draggrid/c;->q:Ljava/lang/Object;

    invoke-interface/range {v1 .. v8}, Lcom/netease/nr/base/view/draggrid/i;->c(Lcom/netease/nr/base/view/draggrid/g;IIIILcom/netease/nr/base/view/draggrid/h;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/netease/nr/base/view/draggrid/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/nr/base/view/draggrid/c;->z:Lcom/netease/nr/base/view/draggrid/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/netease/nr/base/view/draggrid/c;->h:Z

    if-eqz v0, :cond_5

    int-to-float v0, v11

    int-to-float v1, v12

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/base/view/draggrid/c;->a(FF)Z

    :cond_5
    invoke-direct {p0}, Lcom/netease/nr/base/view/draggrid/c;->b()V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/netease/nr/base/view/draggrid/c;->a()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
