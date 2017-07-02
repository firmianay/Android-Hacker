.class public Lcom/netease/ad/widget/b;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/netease/ad/h/f;


# static fields
.field static c:I


# instance fields
.field a:Lcom/netease/ad/b/n;

.field b:Landroid/widget/TableLayout;

.field private d:Lcom/netease/ad/h/e;

.field private e:Landroid/app/Activity;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/netease/ad/widget/b;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8

    const/16 v7, 0x80

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/netease/ad/b/n;

    invoke-direct {v0}, Lcom/netease/ad/b/n;-><init>()V

    iput-object v0, p0, Lcom/netease/ad/widget/b;->a:Lcom/netease/ad/b/n;

    iput-object p1, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/netease/ad/widget/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x333334

    invoke-virtual {p0, v1}, Lcom/netease/ad/widget/b;->setBackgroundColor(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/netease/ad/widget/b;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/netease/ad/h/e;

    invoke-direct {v2, p1, p0}, Lcom/netease/ad/h/e;-><init>(Landroid/app/Activity;Lcom/netease/ad/h/f;)V

    iput-object v2, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    invoke-virtual {v2, v0}, Lcom/netease/ad/h/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ad/widget/b;->b:Landroid/widget/TableLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/netease/ad/widget/b;->b:Landroid/widget/TableLayout;

    invoke-virtual {v2, v0}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/netease/ad/widget/b;->e()V

    invoke-direct {p0}, Lcom/netease/ad/widget/b;->f()V

    invoke-virtual {p0, v1}, Lcom/netease/ad/widget/b;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/ad/widget/b;->b:Landroid/widget/TableLayout;

    invoke-virtual {p0, v0}, Lcom/netease/ad/widget/b;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    invoke-virtual {v0}, Lcom/netease/ad/h/e;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/widget/b;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    iget-object v0, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    invoke-virtual {v0}, Lcom/netease/ad/h/e;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ad/widget/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/ad/widget/b;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/ad/widget/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/netease/ad/widget/b;)Lcom/netease/ad/h/e;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/ad/widget/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/netease/ad/widget/b;->c:I

    return-void
.end method

.method private e()V
    .locals 6

    const/4 v5, -0x1

    new-instance v0, Lcom/netease/ad/widget/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/ad/widget/d;-><init>(Lcom/netease/ad/widget/b;Lcom/netease/ad/widget/c;)V

    sget v1, Lcom/netease/ad/b/k;->b:I

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/netease/ad/widget/b;->a:Lcom/netease/ad/b/n;

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    invoke-virtual {v2, v1}, Lcom/netease/ad/b/n;->a(I)V

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/ad/widget/b;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/ad/widget/b;->f:Landroid/view/View;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/netease/ad/widget/b;->f:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/netease/ad/widget/b;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/ad/widget/b;->a:Lcom/netease/ad/b/n;

    invoke-virtual {v1}, Lcom/netease/ad/b/n;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ad/widget/b;->f:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/ad/widget/b;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/ad/widget/b;->g:Landroid/view/View;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/netease/ad/widget/b;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/ad/widget/b;->g:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->a:Lcom/netease/ad/b/n;

    invoke-virtual {v2}, Lcom/netease/ad/b/n;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/netease/ad/widget/b;->g:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/ad/widget/b;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/ad/widget/b;->h:Landroid/view/View;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/netease/ad/widget/b;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/ad/widget/b;->h:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->a:Lcom/netease/ad/b/n;

    invoke-virtual {v2}, Lcom/netease/ad/b/n;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/netease/ad/widget/b;->h:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/ad/widget/b;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/ad/widget/b;->i:Landroid/view/View;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/netease/ad/widget/b;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/ad/widget/b;->i:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/netease/ad/widget/b;->a:Lcom/netease/ad/b/n;

    invoke-virtual {v1}, Lcom/netease/ad/b/n;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/netease/ad/widget/b;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private f()V
    .locals 13

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/16 v11, 0xd

    const/4 v10, -0x2

    sget v0, Lcom/netease/ad/b/k;->b:I

    int-to-double v2, v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v8, v2

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v9, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, v8

    const v5, -0xbbbbbc

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/netease/ad/widget/b;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0, v9}, Landroid/widget/TableLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/netease/ad/f/f;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/netease/ad/widget/b;->b:Landroid/widget/TableLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v12, v1, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v12, v2, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v12, v3, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v12, v4, Landroid/widget/TableRow$LayoutParams;->column:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/TableRow;

    iget-object v5, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v7, p0, Lcom/netease/ad/widget/b;->f:Landroid/view/View;

    invoke-virtual {v5, v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-direct {v1, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v6, p0, Lcom/netease/ad/widget/b;->g:Landroid/view/View;

    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/netease/ad/widget/b;->h:Landroid/view/View;

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/netease/ad/widget/b;->i:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v10}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/TableLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/netease/ad/widget/b;->b:Landroid/widget/TableLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/16 v2, 0xff

    const/16 v1, 0x80

    iget-object v0, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    invoke-virtual {v0}, Lcom/netease/ad/h/e;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/widget/b;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    iget-object v0, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    invoke-virtual {v0}, Lcom/netease/ad/h/e;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ad/widget/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    iget-object v0, p0, Lcom/netease/ad/widget/b;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/ad/widget/b;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/ad/widget/b;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/netease/ad/widget/b;->c:I

    iget-object v0, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    new-instance v1, Lcom/netease/ad/widget/c;

    invoke-direct {v1, p0, p1}, Lcom/netease/ad/widget/c;-><init>(Lcom/netease/ad/widget/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/ad/h/e;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public c()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    invoke-virtual {v2}, Lcom/netease/ad/h/e;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/netease/ad/widget/b;->d:Lcom/netease/ad/h/e;

    invoke-virtual {v1}, Lcom/netease/ad/h/e;->goBack()V

    :goto_0
    return v0

    :cond_0
    sget v2, Lcom/netease/ad/widget/b;->c:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/netease/ad/widget/b;->c:I

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/netease/ad/widget/b;->e:Landroid/app/Activity;

    const-string v2, "\u518d\u6b21\u6309\u952e\u8fd4\u56de"

    const/16 v3, 0x258

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sput v1, Lcom/netease/ad/widget/b;->c:I

    move v0, v1

    goto :goto_0
.end method
