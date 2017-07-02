.class public Lcom/netease/ad/b/l;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/Random;

.field static b:Landroid/view/animation/ScaleAnimation;

.field static c:Landroid/view/animation/ScaleAnimation;

.field private static d:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/netease/ad/b/l;->a:Ljava/util/Random;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Vector;-><init>(II)V

    sput-object v0, Lcom/netease/ad/b/l;->d:Ljava/util/Vector;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ad_frame"

    const-string v3, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-object v0
.end method

.method public static a(Lcom/netease/ad/AdView;)Landroid/view/View;
    .locals 15

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->a()Lcom/netease/ad/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/b/j;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->a()Lcom/netease/ad/b/j;

    move-result-object v9

    new-instance v10, Lcom/netease/ad/widget/e;

    invoke-direct {v10, v8}, Lcom/netease/ad/widget/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Lcom/netease/ad/widget/e;->setTag(Ljava/lang/Object;)V

    new-instance v11, Lcom/netease/ad/b/a;

    invoke-direct {v11, v9}, Lcom/netease/ad/b/a;-><init>(Lcom/netease/ad/b/j;)V

    invoke-virtual {v10, v11}, Lcom/netease/ad/widget/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v0, :cond_2

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    sget v1, Lcom/netease/ad/b/k;->b:I

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v0, Lcom/netease/ad/b/k;->b:I

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/netease/ad/b/k;->b:I

    sget v3, Lcom/netease/ad/b/k;->b:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Lcom/netease/ad/widget/j;

    invoke-direct {v2, v8}, Lcom/netease/ad/widget/j;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Lcom/netease/ad/widget/j;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netease/ad/widget/j;->setTextColor(I)V

    new-instance v3, Lcom/netease/ad/widget/j;

    invoke-direct {v3, v8}, Lcom/netease/ad/widget/j;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Lcom/netease/ad/widget/j;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/netease/ad/widget/j;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9}, Lcom/netease/ad/b/j;->e()Lcom/netease/ad/d/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v9}, Lcom/netease/ad/b/j;->e()Lcom/netease/ad/d/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ad/d/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v9}, Lcom/netease/ad/b/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netease/ad/widget/j;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Lcom/netease/ad/b/j;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/netease/ad/widget/j;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    new-instance v14, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v14, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const v0, -0x333334

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->c()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const v1, -0x333334

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->c()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const v2, -0x333334

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->c()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int v5, v0, v2

    const v0, -0xbbbbbc

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->c()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const v1, -0xbbbbbc

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->c()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const v2, -0xbbbbbc

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->c()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int v6, v0, v2

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/netease/ad/b/k;->b:I

    int-to-float v4, v4

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v14}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v14}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/netease/ad/AdView;->c()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v10, v12}, Lcom/netease/ad/widget/e;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/netease/ad/widget/ShadowView;

    invoke-direct {v0, v8}, Lcom/netease/ad/widget/ShadowView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Lcom/netease/ad/widget/ShadowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "shadow"

    invoke-virtual {v0, v1}, Lcom/netease/ad/widget/ShadowView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netease/ad/widget/ShadowView;->setVisibility(I)V

    invoke-virtual {v0, v11}, Lcom/netease/ad/widget/ShadowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v0}, Lcom/netease/ad/widget/e;->addView(Landroid/view/View;)V

    invoke-static {v8}, Lcom/netease/ad/b/l;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    sget v3, Lcom/netease/ad/b/k;->b:I

    add-int/lit8 v3, v3, 0x6

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v0}, Lcom/netease/ad/widget/e;->addView(Landroid/view/View;)V

    :cond_0
    :goto_1
    new-instance v0, Lcom/netease/ad/b/m;

    invoke-direct {v0, v10}, Lcom/netease/ad/b/m;-><init>(Lcom/netease/ad/widget/e;)V

    invoke-virtual {v11, v0}, Lcom/netease/ad/b/a;->a(Lcom/netease/ad/b/d;)V

    return-object v10

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v1, Lcom/netease/ad/b/k;->b:I

    add-int/lit8 v1, v1, 0x6

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lcom/netease/ad/widget/g;

    invoke-direct {v1, v8}, Lcom/netease/ad/widget/g;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Lcom/netease/ad/widget/g;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v3}, Lcom/netease/ad/widget/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9}, Lcom/netease/ad/b/j;->e()Lcom/netease/ad/d/a/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netease/ad/widget/g;->a(Lcom/netease/ad/d/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Lcom/netease/ad/widget/e;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/netease/ad/widget/ShadowView;

    invoke-direct {v0, v8}, Lcom/netease/ad/widget/ShadowView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/netease/ad/widget/ShadowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "shadow"

    invoke-virtual {v0, v1}, Lcom/netease/ad/widget/ShadowView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netease/ad/widget/ShadowView;->setVisibility(I)V

    invoke-virtual {v0, v11}, Lcom/netease/ad/widget/ShadowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v0}, Lcom/netease/ad/widget/e;->addView(Landroid/view/View;)V

    invoke-static {v8}, Lcom/netease/ad/b/l;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9}, Lcom/netease/ad/b/j;->e()Lcom/netease/ad/d/a/a;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v9}, Lcom/netease/ad/b/j;->e()Lcom/netease/ad/d/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ad/d/a/a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v9}, Lcom/netease/ad/b/j;->e()Lcom/netease/ad/d/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ad/d/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/netease/ad/b/k;->b:I

    mul-int/2addr v1, v2

    invoke-virtual {v9}, Lcom/netease/ad/b/j;->e()Lcom/netease/ad/d/a/a;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/ad/d/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/netease/ad/b/k;->b:I

    add-int/lit8 v3, v3, 0x6

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x31

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v0, v2}, Lcom/netease/ad/widget/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v10, v0}, Lcom/netease/ad/widget/e;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
    .end array-data

    :array_1
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method public static a()Landroid/view/animation/ScaleAnimation;
    .locals 9

    const/4 v5, 0x1

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    sget-object v0, Lcom/netease/ad/b/l;->b:Landroid/view/animation/ScaleAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sput-object v0, Lcom/netease/ad/b/l;->b:Landroid/view/animation/ScaleAnimation;

    sget-object v0, Lcom/netease/ad/b/l;->b:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    sget-object v0, Lcom/netease/ad/b/l;->b:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    sget-object v0, Lcom/netease/ad/b/l;->b:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method public static b()Landroid/view/animation/ScaleAnimation;
    .locals 9

    const/4 v5, 0x1

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    sget-object v0, Lcom/netease/ad/b/l;->c:Landroid/view/animation/ScaleAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sput-object v0, Lcom/netease/ad/b/l;->c:Landroid/view/animation/ScaleAnimation;

    sget-object v0, Lcom/netease/ad/b/l;->c:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    sget-object v0, Lcom/netease/ad/b/l;->c:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    sget-object v0, Lcom/netease/ad/b/l;->c:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method
