.class public Lcom/netease/nr/biz/pc/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:[I

.field public final c:Lcom/netease/nr/base/c/a/g;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/netease/util/j/a;

.field private k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "recommend_title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "recommend_stitle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "recommend_img_src"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "recommend_schema"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "recommend_schema"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/netease/nr/biz/pc/d/a;->a:[Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/d/a;->b:[I

    iput v3, p0, Lcom/netease/nr/biz/pc/d/a;->d:I

    iput v3, p0, Lcom/netease/nr/biz/pc/d/a;->e:I

    iput v3, p0, Lcom/netease/nr/biz/pc/d/a;->f:I

    iput v3, p0, Lcom/netease/nr/biz/pc/d/a;->g:I

    iput v3, p0, Lcom/netease/nr/biz/pc/d/a;->h:I

    iput v3, p0, Lcom/netease/nr/biz/pc/d/a;->i:I

    iput-object p1, p0, Lcom/netease/nr/biz/pc/d/a;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/a;->k:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02007d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/nr/base/c/a/g;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/d/a;->c:Lcom/netease/nr/base/c/a/g;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/d/a;->j:Lcom/netease/util/j/a;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0008
        0x7f0c0073
        0x7f0c0158
        0x7f0c00a2
        0x7f0c0157
    .end array-data
.end method

.method static synthetic a(Lcom/netease/nr/biz/pc/d/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/a;->k:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/util/c/b;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    check-cast p1, Landroid/widget/TextView;

    iget v1, p0, Lcom/netease/nr/biz/pc/d/a;->d:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/netease/nr/biz/pc/d/a;->d:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\u7f51\u6613\u5e94\u7528\u4e2d\u5fc3\u63a8\u8350"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/d/a;->j:Lcom/netease/util/j/a;

    const v3, 0x7f070099

    invoke-virtual {v2, p1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/netease/nr/biz/pc/d/a;->k:Landroid/content/Context;

    const v3, 0x7f090025

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/netease/nr/biz/pc/d/a;->j:Lcom/netease/util/j/a;

    const v3, 0x7f07008f

    invoke-virtual {v2, p1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/netease/nr/biz/pc/d/a;->k:Landroid/content/Context;

    const v3, 0x7f090024

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    :sswitch_1
    check-cast p1, Landroid/widget/TextView;

    iget v1, p0, Lcom/netease/nr/biz/pc/d/a;->e:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/d/a;->j:Lcom/netease/util/j/a;

    const v3, 0x7f070097

    invoke-virtual {v2, p1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_2
    check-cast p1, Lcom/netease/nr/base/view/MyImageView;

    iget v1, p0, Lcom/netease/nr/biz/pc/d/a;->d:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/netease/nr/biz/pc/d/a;->g:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\u7f51\u6613\u5e94\u7528\u4e2d\u5fc3\u63a8\u8350"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/a;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/netease/nr/base/view/MyImageView;->a(I)V

    const v1, 0x7f020280

    invoke-virtual {p1, v1}, Lcom/netease/nr/base/view/MyImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/a;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/netease/nr/base/view/MyImageView;->a(I)V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/a;->c:Lcom/netease/nr/base/c/a/g;

    invoke-virtual {v1, v2, p1}, Lcom/netease/nr/base/c/a/g;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    :sswitch_3
    check-cast p1, Landroid/widget/ImageView;

    iget v1, p0, Lcom/netease/nr/biz/pc/d/a;->i:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/netease/nr/biz/pc/d/a;->f:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/netease/nr/biz/pc/d/a;->d:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/netease/nr/biz/pc/d/a;->d:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "\u7f51\u6613\u5e94\u7528\u4e2d\u5fc3\u63a8\u8350"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/a;->j:Lcom/netease/util/j/a;

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, p1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/netease/nr/biz/pc/d/a;->k:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/netease/nr/biz/pc/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/netease/nr/biz/pc/d/a;->j:Lcom/netease/util/j/a;

    const v4, 0x7f0201da

    invoke-virtual {v2, p1, v4}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    new-instance v2, Lcom/netease/nr/biz/pc/d/b;

    invoke-direct {v2, p0, v1, v3}, Lcom/netease/nr/biz/pc/d/b;-><init>(Lcom/netease/nr/biz/pc/d/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/a;->j:Lcom/netease/util/j/a;

    const v4, 0x7f0201d7

    invoke-virtual {v1, p1, v4}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    new-instance v1, Lcom/netease/nr/biz/pc/d/c;

    invoke-direct {v1, p0, v2, v3}, Lcom/netease/nr/biz/pc/d/c;-><init>(Lcom/netease/nr/biz/pc/d/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_4
    iget v1, p0, Lcom/netease/nr/biz/pc/d/a;->d:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "\u7f51\u6613\u5e94\u7528\u4e2d\u5fc3\u63a8\u8350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/a;->j:Lcom/netease/util/j/a;

    const v2, 0x7f0201d4

    invoke-virtual {v1, p1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/d/a;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p0, Lcom/netease/nr/biz/pc/d/a;->f:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    float-to-int v3, v1

    mul-int/lit8 v3, v3, 0xe

    float-to-int v4, v1

    mul-int/lit8 v4, v4, 0xa

    float-to-int v5, v1

    mul-int/lit8 v5, v5, 0xe

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Lcom/netease/nr/biz/pc/d/d;

    invoke-direct {v1, p0, v2}, Lcom/netease/nr/biz/pc/d/d;-><init>(Lcom/netease/nr/biz/pc/d/a;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0c0008 -> :sswitch_0
        0x7f0c0073 -> :sswitch_1
        0x7f0c00a2 -> :sswitch_3
        0x7f0c0157 -> :sswitch_4
        0x7f0c0158 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "recommend_title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/pc/d/a;->d:I

    const-string v0, "recommend_stitle"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/pc/d/a;->e:I

    const-string v0, "recommend_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/pc/d/a;->f:I

    const-string v0, "recommend_img_src"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/pc/d/a;->g:I

    const-string v0, "recommend_priority"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/pc/d/a;->h:I

    const-string v0, "recommend_schema"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/pc/d/a;->i:I

    goto :goto_0
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/d/a;->c:Lcom/netease/nr/base/c/a/g;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/nr/biz/pc/d/a;->a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/util/c/b;)Z

    move-result v0

    return v0
.end method
