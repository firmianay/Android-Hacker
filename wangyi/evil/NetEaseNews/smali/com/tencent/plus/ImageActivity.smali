.class public Lcom/tencent/plus/ImageActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field private b:Lcom/tencent/open/m;

.field private c:Lcom/tencent/open/i;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;

.field private f:Lcom/tencent/plus/TouchView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Lcom/tencent/plus/MaskView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ProgressBar;

.field private l:I

.field private m:Z

.field private n:J

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/graphics/Rect;

.field private s:Ljava/lang/String;

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Lcom/tencent/tauth/b;

.field private x:Lcom/tencent/tauth/b;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x280

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v2, p0, Lcom/tencent/plus/ImageActivity;->l:I

    iput-boolean v2, p0, Lcom/tencent/plus/ImageActivity;->m:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/plus/ImageActivity;->n:J

    iput v2, p0, Lcom/tencent/plus/ImageActivity;->o:I

    iput v3, p0, Lcom/tencent/plus/ImageActivity;->p:I

    iput v3, p0, Lcom/tencent/plus/ImageActivity;->q:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Rect;

    new-instance v0, Lcom/tencent/plus/j;

    invoke-direct {v0, p0}, Lcom/tencent/plus/j;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/plus/g;

    invoke-direct {v0, p0}, Lcom/tencent/plus/g;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/plus/i;

    invoke-direct {v0, p0}, Lcom/tencent/plus/i;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->w:Lcom/tencent/tauth/b;

    new-instance v0, Lcom/tencent/plus/h;

    invoke-direct {v0, p0}, Lcom/tencent/plus/h;-><init>(Lcom/tencent/plus/ImageActivity;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->x:Lcom/tencent/tauth/b;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/high16 v5, 0x400000

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    mul-int v6, v2, v1

    if-gt v6, v5, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a()Landroid/view/View;
    .locals 11

    const/4 v5, -0x2

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v10, 0x41900000    # 18.0f

    const/4 v9, 0x0

    const/4 v8, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/tencent/plus/TouchView;

    invoke-direct {v3, p0}, Lcom/tencent/plus/TouchView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/plus/ImageActivity;->f:Lcom/tencent/plus/TouchView;

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->f:Lcom/tencent/plus/TouchView;

    invoke-virtual {v3, v1}, Lcom/tencent/plus/TouchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->f:Lcom/tencent/plus/TouchView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/tencent/plus/TouchView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->f:Lcom/tencent/plus/TouchView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/tencent/plus/MaskView;

    invoke-direct {v3, p0}, Lcom/tencent/plus/MaskView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/plus/ImageActivity;->i:Lcom/tencent/plus/MaskView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xe

    invoke-virtual {v3, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    invoke-virtual {v3, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Lcom/tencent/plus/MaskView;

    invoke-virtual {v1, v3}, Lcom/tencent/plus/MaskView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->i:Lcom/tencent/plus/MaskView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {p0, v3}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "com.tencent.plus.logo.png"

    invoke-direct {p0, v3}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {p0, v3}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {p0, v3}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "com.tencent.plus.bar.png"

    invoke-direct {p0, v1}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/tencent/plus/c;

    invoke-direct {v1, p0, p0}, Lcom/tencent/plus/c;-><init>(Lcom/tencent/plus/ImageActivity;Landroid/content/Context;)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {p0, v4}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v4

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/plus/ImageActivity;->h:Landroid/widget/Button;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x429c0000    # 78.0f

    invoke-static {p0, v6}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42340000    # 45.0f

    invoke-static {p0, v7}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/tencent/plus/ImageActivity;->h:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->h:Landroid/widget/Button;

    const-string v6, "\u53d6\u6d88"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->h:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->h:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->h:Landroid/widget/Button;

    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->h:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Lcom/tencent/plus/c;->b(Landroid/widget/Button;)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x429c0000    # 78.0f

    invoke-static {p0, v6}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42340000    # 45.0f

    invoke-static {p0, v7}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v5, v3, v4, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    const-string v4, "\u9009\u53d6"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Lcom/tencent/plus/c;->a(Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "\u79fb\u52a8\u548c\u7f29\u653e"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p0, v3}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v9, v3, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->k:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;)Lcom/tencent/plus/MaskView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->i:Lcom/tencent/plus/MaskView;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_error_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_error_msg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_error_detail"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_response"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/plus/ImageActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x28

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const-string v1, "picture"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->c:Lcom/tencent/open/i;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/open/m;

    invoke-virtual {v1}, Lcom/tencent/open/m;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "user/set_user_face"

    const-string v4, "POST"

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->w:Lcom/tencent/tauth/b;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/b;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/plus/ImageActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->e:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/plus/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/plus/f;-><init>(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/plus/ImageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/plus/ImageActivity;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/plus/ImageActivity;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot read picture: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "\u56fe\u7247\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8be5\u56fe\u7247\u662f\u5426\u6709\u6548"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;I)V

    const/4 v2, -0x5

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/tencent/plus/ImageActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->d()V

    :goto_0
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tencent/plus/k;

    invoke-direct {v1, p0}, Lcom/tencent/plus/k;-><init>(Lcom/tencent/plus/ImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->f:Lcom/tencent/plus/TouchView;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tencent/plus/TouchView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/plus/ImageActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 8

    const/16 v7, 0x11

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v5}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v5}, Lcom/tencent/plus/a;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_0

    const-string v3, "com.tencent.plus.ic_success.png"

    invoke-direct {p0, v3}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v2, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string v3, "com.tencent.plus.ic_error.png"

    invoke-direct {p0, v3}, Lcom/tencent/plus/ImageActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/plus/ImageActivity;)Lcom/tencent/plus/TouchView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->f:Lcom/tencent/plus/TouchView;

    return-object v0
.end method

.method private c()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->f:Lcom/tencent/plus/TouchView;

    invoke-virtual {v1}, Lcom/tencent/plus/TouchView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v4, 0x5

    aget v4, v1, v4

    aget v6, v1, v7

    iget v1, p0, Lcom/tencent/plus/ImageActivity;->p:I

    int-to-float v1, v1

    div-float v0, v1, v0

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v2, p0, Lcom/tencent/plus/ImageActivity;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    float-to-int v2, v2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const v0, 0x44228000    # 650.0f

    div-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v3, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/tencent/plus/ImageActivity;->p:I

    iget v2, p0, Lcom/tencent/plus/ImageActivity;->q:I

    invoke-static {v0, v7, v7, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-direct {p0, v1}, Lcom/tencent/plus/ImageActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/plus/ImageActivity;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/plus/ImageActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&#39;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->finish()V

    iget v0, p0, Lcom/tencent/plus/ImageActivity;->o:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/plus/ImageActivity;->o:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/plus/ImageActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->h:Landroid/widget/Button;

    return-object v0
.end method

.method private e()V
    .locals 7

    const/4 v3, 0x0

    iget v0, p0, Lcom/tencent/plus/ImageActivity;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/plus/ImageActivity;->l:I

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->c:Lcom/tencent/open/i;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/open/m;

    invoke-virtual {v1}, Lcom/tencent/open/m;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "user/get_simple_userinfo"

    const-string v4, "GET"

    iget-object v5, p0, Lcom/tencent/plus/ImageActivity;->x:Lcom/tencent/tauth/b;

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/b;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic f(Lcom/tencent/plus/ImageActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/plus/ImageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->c()V

    return-void
.end method

.method static synthetic h(Lcom/tencent/plus/ImageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/plus/ImageActivity;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/plus/ImageActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/plus/ImageActivity;->n:J

    return-wide v0
.end method

.method static synthetic j(Lcom/tencent/plus/ImageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->d()V

    return-void
.end method

.method static synthetic k(Lcom/tencent/plus/ImageActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/plus/ImageActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/plus/ImageActivity;)I
    .locals 1

    iget v0, p0, Lcom/tencent/plus/ImageActivity;->l:I

    return v0
.end method

.method static synthetic n(Lcom/tencent/plus/ImageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->e()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/open/m;

    invoke-virtual {v0}, Lcom/tencent/open/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/open/u;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->d()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->setRequestedOrientation(I)V

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/plus/ImageActivity;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->e:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/plus/ImageActivity;->s:Ljava/lang/String;

    const-string v1, "return_activity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/plus/ImageActivity;->d:Ljava/lang/String;

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "expires_in"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "openid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "exitAnim"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/plus/ImageActivity;->o:I

    new-instance v0, Lcom/tencent/open/m;

    invoke-virtual {p0}, Lcom/tencent/plus/ImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/tencent/open/m;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/open/m;

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/open/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/open/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/open/m;

    invoke-virtual {v0, v5}, Lcom/tencent/open/m;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/open/i;

    iget-object v1, p0, Lcom/tencent/plus/ImageActivity;->b:Lcom/tencent/open/m;

    invoke-direct {v0, v1}, Lcom/tencent/open/i;-><init>(Lcom/tencent/open/m;)V

    iput-object v0, p0, Lcom/tencent/plus/ImageActivity;->c:Lcom/tencent/open/i;

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->b()V

    invoke-direct {p0}, Lcom/tencent/plus/ImageActivity;->e()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/plus/ImageActivity;->n:J

    const-string v0, "10653"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->f:Lcom/tencent/plus/TouchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/plus/TouchView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/plus/ImageActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
