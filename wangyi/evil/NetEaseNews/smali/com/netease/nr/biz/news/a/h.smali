.class public Lcom/netease/nr/biz/news/a/h;
.super Lcom/netease/nr/biz/news/a/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field public final g:[Ljava/lang/String;

.field public final h:[I

.field public final i:Lcom/netease/nr/base/c/a/h;

.field public final j:Lcom/netease/nr/base/c/a/f;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/netease/util/j/a;

.field private u:Landroid/content/Context;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/news/a/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "news_img_src"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "news_title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "news_digest"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "news_reply_count"

    aput-object v2, v0, v1

    const-string v1, "news_reply_count"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/h;->g:[Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/h;->h:[I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->a:I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->b:I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->c:I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->d:I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->e:I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->f:I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->k:I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->l:I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->m:I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->n:I

    iput v3, p0, Lcom/netease/nr/biz/news/a/h;->o:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/nr/base/c/a/h;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/h;->i:Lcom/netease/nr/base/c/a/h;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/nr/base/c/a/f;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/h;->j:Lcom/netease/nr/base/c/a/f;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/h;->t:Lcom/netease/util/j/a;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/h;->t:Lcom/netease/util/j/a;

    invoke-virtual {p0, v0}, Lcom/netease/nr/biz/news/a/h;->a(Lcom/netease/util/j/a;)V

    iput-object p1, p0, Lcom/netease/nr/biz/news/a/h;->u:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/h;->u:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/netease/nr/biz/news/column/g;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/a/h;->v:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c006a
        0x7f0c0008
        0x7f0c0072
        0x7f0c008e
    .end array-data
.end method

.method private a(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 5

    const/4 v2, -0x1

    const-string v0, "timeConsuming"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/h;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "news_time_Consuming"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "time"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/h;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "news_ptime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/h;->u:Landroid/content/Context;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/util/h/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "time_hour"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/h;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "news_ptime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/netease/nr/biz/news/a/h;->u:Landroid/content/Context;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/util/h/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "0"

    :cond_6
    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/h;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00dd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/util/c/b;Z)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :sswitch_0
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/h;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/netease/nr/biz/news/a/h;->d:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/netease/nr/biz/news/a/h;->u:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/h;->t:Lcom/netease/util/j/a;

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f020275

    invoke-virtual {v0, p1, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p4, v0, p1}, Lcom/netease/util/c/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :sswitch_1
    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget v2, p0, Lcom/netease/nr/biz/news/a/h;->s:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    const v3, 0x7f0c00dc

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    :goto_3
    if-eqz v8, :cond_3

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget v0, p0, Lcom/netease/nr/biz/news/a/h;->n:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "\u63a8\u8350"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    const/4 v5, 0x1

    const v6, 0x7f020137

    move-object v0, v3

    :goto_4
    if-nez v5, :cond_4

    iget v0, p0, Lcom/netease/nr/biz/news/a/h;->f:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/h;->c()Landroid/content/Context;

    move-result-object v0

    const v6, 0x7f0b00de

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v6, 0x7f02013a

    :cond_4
    if-nez v5, :cond_5

    iget v0, p0, Lcom/netease/nr/biz/news/a/h;->e:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v5, 0x1

    const/4 v4, 0x1

    const v6, 0x7f020137

    :cond_5
    if-nez v5, :cond_17

    iget v0, p0, Lcom/netease/nr/biz/news/a/h;->d:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    const/4 v5, 0x1

    const/4 v4, 0x1

    const-string v7, "\u97f3\u9891"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez p5, :cond_6

    const/4 v0, 0x0

    const v1, 0x7f02009e

    :cond_6
    const/4 v6, 0x0

    move v9, v4

    move-object v4, v0

    move v0, v9

    move v10, v5

    move v5, v6

    move v6, v1

    move v1, v10

    :goto_5
    if-eqz v1, :cond_7

    const v7, 0x7f02013c

    if-ne v6, v7, :cond_16

    :cond_7
    iget-object v7, p0, Lcom/netease/nr/biz/news/a/h;->u:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/netease/nr/biz/news/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x1

    const v5, 0x7f020137

    move-object v9, v3

    move v3, v4

    move-object v4, v9

    :goto_6
    if-nez v1, :cond_15

    iget v6, p0, Lcom/netease/nr/biz/news/a/h;->o:I

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    const/4 v1, 0x1

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/h;->u:Landroid/content/Context;

    const v5, 0x7f0b00fc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020137

    move v9, v1

    move-object v1, v4

    move v4, v9

    :goto_7
    if-nez v4, :cond_e

    if-eqz p5, :cond_b

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_8
    const-string v7, "\u89c6\u9891"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v0, 0x0

    const v1, 0x7f02013c

    move v9, v4

    move-object v4, v0

    move v0, v9

    move v10, v5

    move v5, v6

    move v6, v1

    move v1, v10

    goto :goto_5

    :cond_9
    const-string v6, "LIVE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const v6, 0x7f020138

    move v9, v4

    move-object v4, v0

    move v0, v9

    move v10, v5

    move v5, v6

    move v6, v1

    move v1, v10

    goto :goto_5

    :cond_a
    const v6, 0x7f020137

    move v9, v4

    move-object v4, v0

    move v0, v9

    move v10, v5

    move v5, v6

    move v6, v1

    move v1, v10

    goto :goto_5

    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/netease/nr/biz/news/a/h;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/h;->e()I

    move-result v3

    iget v2, p0, Lcom/netease/nr/biz/news/a/h;->r:I

    const/4 v0, 0x0

    :cond_c
    if-eqz v8, :cond_d

    if-eqz v0, :cond_d

    invoke-direct {p0, p2, p3}, Lcom/netease/nr/biz/news/a/h;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/a/h;->e()I

    move-result v4

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/netease/nr/biz/news/a/h;->r:I

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v4, :cond_f

    const/4 v0, 0x0

    :goto_8
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v8, v0, v4, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_d
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_10

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/h;->t:Lcom/netease/util/j/a;

    invoke-virtual {v0, p1, v5}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    :goto_9
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v3, :cond_11

    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_e
    const-string v4, "\u97f3\u9891"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz p5, :cond_c

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/h;->t:Lcom/netease/util/j/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/h;->c()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/h;->t:Lcom/netease/util/j/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/h;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :sswitch_2
    iget v0, p0, Lcom/netease/nr/biz/news/a/h;->d:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u97f3\u9891"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/h;->t:Lcom/netease/util/j/a;

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, p1, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_3
    iget v0, p0, Lcom/netease/nr/biz/news/a/h;->b:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p5, :cond_14

    iget v0, p0, Lcom/netease/nr/biz/news/a/h;->k:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/netease/nr/biz/news/a/h;->l:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/netease/nr/biz/news/a/h;->m:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/netease/nr/base/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/netease/nr/biz/news/a/h;->q:I

    :goto_b
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_13
    iget v0, p0, Lcom/netease/nr/biz/news/a/h;->p:I

    goto :goto_b

    :cond_14
    iget-object v0, p0, Lcom/netease/nr/biz/news/a/h;->t:Lcom/netease/util/j/a;

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/h;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_b

    :sswitch_4
    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/nr/biz/news/a/h;->t:Lcom/netease/util/j/a;

    const v1, 0x7f070004

    invoke-virtual {v0, p1, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_0

    :cond_15
    move v9, v1

    move-object v1, v4

    move v4, v9

    goto/16 :goto_7

    :cond_16
    move v3, v6

    goto/16 :goto_6

    :cond_17
    move v9, v4

    move-object v4, v0

    move v0, v9

    move v10, v5

    move v5, v6

    move v6, v1

    move v1, v10

    goto/16 :goto_5

    :cond_18
    move-object v0, v1

    move v1, v7

    goto/16 :goto_4

    :cond_19
    move-object v8, v3

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x7f0c0008 -> :sswitch_3
        0x7f0c006a -> :sswitch_0
        0x7f0c0072 -> :sswitch_4
        0x7f0c008e -> :sswitch_1
        0x7f0c0105 -> :sswitch_2
    .end sparse-switch
.end method

.method private e()I
    .locals 2

    const-string v0, "timeConsuming"

    iget-object v1, p0, Lcom/netease/nr/biz/news/a/h;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02013b

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/a;->a(Landroid/database/Cursor;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "news_img_src"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->a:I

    const-string v0, "news_title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->b:I

    const-string v0, "news_digest"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->c:I

    const-string v0, "TAG"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->d:I

    const-string v0, "NTES"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->e:I

    const-string v0, "news_special_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->f:I

    const-string v0, "lmodify"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->m:I

    const-string v0, "article_read_is_read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->k:I

    const-string v0, "article_read_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->l:I

    const-string v0, "news_subtitle"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->n:I

    const-string v0, "news_photoset_ID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->o:I

    goto :goto_0
.end method

.method public a(Landroid/view/View;Z)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/h;->d()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0c006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget v3, p0, Lcom/netease/nr/biz/news/a/h;->a:I

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/h;->j:Lcom/netease/nr/base/c/a/f;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/a/h;->a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/util/c/b;Z)Z

    :cond_2
    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget v3, p0, Lcom/netease/nr/biz/news/a/h;->b:I

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/h;->j:Lcom/netease/nr/base/c/a/f;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/a/h;->a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/util/c/b;Z)Z

    :cond_3
    const v0, 0x7f0c008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/netease/nr/biz/news/a/h;->d:I

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/h;->j:Lcom/netease/nr/base/c/a/f;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/a/h;->a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/util/c/b;Z)Z

    :cond_4
    const v0, 0x7f0c0105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/netease/nr/biz/news/a/h;->d:I

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/h;->j:Lcom/netease/nr/base/c/a/f;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/a/h;->a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/util/c/b;Z)Z

    goto :goto_0
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/news/a/h;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/news/a/h;->p:I

    const v1, 0x7f070006

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/news/a/h;->q:I

    const v1, 0x7f070004

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/news/a/h;->r:I

    const v1, 0x7f070002

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/news/a/h;->s:I

    return-void
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 6

    iget-object v4, p0, Lcom/netease/nr/biz/news/a/h;->i:Lcom/netease/nr/base/c/a/h;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/a/h;->a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/util/c/b;Z)Z

    move-result v0

    return v0
.end method
