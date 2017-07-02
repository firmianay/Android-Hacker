.class public abstract Lcom/netease/util/cache/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/graphics/Bitmap;

.field protected b:I

.field protected c:I

.field protected d:Landroid/content/Context;

.field private e:Lcom/netease/util/cache/a;

.field private f:Z

.field private g:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/util/cache/f;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/util/cache/f;->g:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/util/cache/f;->d:Landroid/content/Context;

    new-instance v1, Lcom/netease/util/cache/c;

    invoke-direct {v1}, Lcom/netease/util/cache/c;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/util/cache/o;->a(Landroid/content/Context;Lcom/netease/util/cache/c;)Lcom/netease/util/cache/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/util/cache/f;->e:Lcom/netease/util/cache/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/util/cache/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/netease/util/cache/f;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/util/cache/f;)Lcom/netease/util/cache/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/f;->e:Lcom/netease/util/cache/a;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/netease/util/cache/f;->f:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/netease/util/cache/f;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/util/cache/f;->a:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/netease/util/cache/f;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/util/cache/f;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/util/cache/f;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic b(Landroid/widget/ImageView;)Lcom/netease/util/cache/h;
    .locals 1

    invoke-static {p0}, Lcom/netease/util/cache/f;->c(Landroid/widget/ImageView;)Lcom/netease/util/cache/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/netease/util/cache/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/util/cache/f;->g:Z

    return v0
.end method

.method private static c(Landroid/widget/ImageView;)Lcom/netease/util/cache/h;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/netease/util/cache/g;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netease/util/cache/g;

    invoke-virtual {v0}, Lcom/netease/util/cache/g;->a()Lcom/netease/util/cache/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/netease/util/cache/f;->c(Landroid/widget/ImageView;)Lcom/netease/util/cache/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netease/util/cache/h;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_1

    invoke-static {v1}, Lcom/netease/util/cache/h;->a(Lcom/netease/util/cache/h;)Lcom/netease/util/cache/i;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/netease/util/cache/h;->cancel(Z)Z

    const-string v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelPotentialWork - cancelled work for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/util/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/netease/util/cache/h;Lcom/netease/util/cache/i;Lorg/apache/http/client/methods/HttpGet;)Landroid/graphics/Bitmap;
.end method

.method public a()Lcom/netease/util/cache/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/util/cache/f;->e:Lcom/netease/util/cache/a;

    return-object v0
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/netease/util/cache/f;->b:I

    iput p2, p0, Lcom/netease/util/cache/f;->c:I

    return-void
.end method

.method protected a(ILandroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/util/cache/f;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/netease/util/cache/f;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/util/cache/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/netease/util/cache/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/util/cache/f;->a(II)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/widget/ImageView;Z)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/netease/util/cache/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/netease/util/cache/a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/util/cache/i;Landroid/widget/ImageView;)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/netease/util/cache/f;->a(Landroid/widget/ImageView;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netease/util/cache/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/netease/util/cache/f;->a(Landroid/widget/ImageView;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/util/cache/f;->e:Lcom/netease/util/cache/a;

    if-eqz v1, :cond_3

    iget-object v0, p1, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/netease/util/cache/f;->e:Lcom/netease/util/cache/a;

    invoke-static {v0}, Lcom/netease/util/cache/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/util/cache/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/netease/util/cache/f;->c(Ljava/lang/String;Landroid/widget/ImageView;)Z

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/netease/util/cache/f;->a(Landroid/widget/ImageView;Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/netease/util/cache/i;->d:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/netease/util/cache/f;->c(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/util/cache/h;

    invoke-direct {v0, p0, p2, p1}, Lcom/netease/util/cache/h;-><init>(Lcom/netease/util/cache/f;Landroid/widget/ImageView;Lcom/netease/util/cache/i;)V

    new-instance v1, Lcom/netease/util/cache/g;

    iget-object v2, p0, Lcom/netease/util/cache/f;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/util/cache/f;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3, v0}, Lcom/netease/util/cache/g;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/netease/util/cache/h;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/netease/util/cache/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/netease/util/cache/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    new-instance v0, Lcom/netease/util/cache/i;

    invoke-direct {v0}, Lcom/netease/util/cache/i;-><init>()V

    iput-object p1, v0, Lcom/netease/util/cache/i;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/netease/util/cache/f;->a(Lcom/netease/util/cache/i;Landroid/widget/ImageView;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/util/cache/f;->f:Z

    return-void
.end method

.method protected c(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
