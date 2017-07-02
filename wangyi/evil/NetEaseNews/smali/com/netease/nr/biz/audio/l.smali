.class public Lcom/netease/nr/biz/audio/l;
.super Lcom/netease/nr/biz/news/a/h;


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:[I

.field public final c:Lcom/netease/nr/base/c/a/h;

.field public d:I

.field public e:I

.field public f:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/content/Context;

.field private v:Lcom/netease/util/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/news/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "news_img_src"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "news_title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "news_source"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "news_ptime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "news_ptime"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/netease/nr/biz/audio/l;->a:[Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/nr/biz/audio/l;->b:[I

    iput v3, p0, Lcom/netease/nr/biz/audio/l;->k:I

    iput v3, p0, Lcom/netease/nr/biz/audio/l;->l:I

    iput v3, p0, Lcom/netease/nr/biz/audio/l;->m:I

    iput v3, p0, Lcom/netease/nr/biz/audio/l;->n:I

    iput v3, p0, Lcom/netease/nr/biz/audio/l;->o:I

    iput v3, p0, Lcom/netease/nr/biz/audio/l;->p:I

    iput v3, p0, Lcom/netease/nr/biz/audio/l;->q:I

    iput v3, p0, Lcom/netease/nr/biz/audio/l;->r:I

    iput v3, p0, Lcom/netease/nr/biz/audio/l;->s:I

    iput v3, p0, Lcom/netease/nr/biz/audio/l;->t:I

    iput-object p1, p0, Lcom/netease/nr/biz/audio/l;->u:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/netease/nr/biz/audio/l;->c:Lcom/netease/nr/base/c/a/h;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->e:I

    iget-object v0, p0, Lcom/netease/nr/biz/audio/l;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/audio/l;->v:Lcom/netease/util/j/a;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c006a
        0x7f0c0008
        0x7f0c0084
        0x7f0c008d
        0x7f0c0202
    .end array-data
.end method

.method private a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/util/c/b;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v3

    :sswitch_0
    iget v0, p0, Lcom/netease/nr/biz/audio/l;->k:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/audio/l;->c:Lcom/netease/nr/base/c/a/h;

    check-cast p1, Lcom/netease/nr/base/view/MyImageView;

    check-cast p1, Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v1, v0, p1}, Lcom/netease/nr/base/c/a/h;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    move v3, v6

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/netease/nr/biz/audio/l;->n:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    iget-object v1, p0, Lcom/netease/nr/biz/audio/l;->u:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/util/h/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast p1, Landroid/widget/TextView;

    iget v0, p0, Lcom/netease/nr/biz/audio/l;->f:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    move v3, v6

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    move-object v1, v0

    goto :goto_1

    :sswitch_2
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    iget v0, p0, Lcom/netease/nr/biz/audio/l;->s:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/netease/nr/biz/audio/l;->f:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/audio/l;->v:Lcom/netease/util/j/a;

    const v2, 0x7f020278

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;IIII)V

    :cond_1
    move v3, v6

    goto :goto_0

    :sswitch_3
    check-cast p1, Landroid/widget/TextView;

    iget v0, p0, Lcom/netease/nr/biz/audio/l;->l:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/netease/nr/biz/audio/l;->p:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/netease/nr/biz/audio/l;->q:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/netease/nr/biz/audio/l;->r:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/netease/nr/base/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/nr/biz/audio/l;->e:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v6

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/netease/nr/biz/audio/l;->d:I

    goto :goto_2

    :sswitch_4
    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/nr/biz/audio/l;->v:Lcom/netease/util/j/a;

    const v1, 0x7f020030

    invoke-virtual {v0, p1, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    move v3, v6

    goto/16 :goto_0

    :sswitch_5
    check-cast p1, Landroid/widget/TextView;

    iget v0, p0, Lcom/netease/nr/biz/audio/l;->t:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/audio/l;->v:Lcom/netease/util/j/a;

    const v2, 0x7f070004

    invoke-virtual {v1, p1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/audio/l;->u:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/audio/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0b0207

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    move v3, v6

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0008 -> :sswitch_3
        0x7f0c0022 -> :sswitch_4
        0x7f0c006a -> :sswitch_0
        0x7f0c0084 -> :sswitch_2
        0x7f0c008d -> :sswitch_1
        0x7f0c0202 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/nr/biz/news/a/h;->a(Landroid/database/Cursor;)V

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

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->k:I

    const-string v0, "news_title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->l:I

    const-string v0, "news_subtitle"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->m:I

    const-string v0, "news_ptime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->n:I

    const-string v0, "news_reply_count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->o:I

    const-string v0, "lmodify"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->r:I

    const-string v0, "article_read_is_read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->p:I

    const-string v0, "article_read_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->q:I

    const-string v0, "news_source"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->s:I

    const-string v0, "news_doc_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->t:I

    goto :goto_0
.end method

.method public a(Lcom/netease/util/j/a;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/nr/biz/audio/l;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/audio/l;->d:I

    const v1, 0x7f070006

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/audio/l;->e:I

    const v1, 0x7f07007e

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/netease/nr/biz/audio/l;->f:I

    return-void
.end method

.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/audio/l;->c:Lcom/netease/nr/base/c/a/h;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/nr/biz/audio/l;->a(Landroid/view/View;Landroid/database/Cursor;ILcom/netease/util/c/b;)Z

    move-result v0

    return v0
.end method
