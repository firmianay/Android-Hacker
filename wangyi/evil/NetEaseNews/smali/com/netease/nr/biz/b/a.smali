.class public Lcom/netease/nr/biz/b/a;
.super Landroid/support/v4/widget/SimpleCursorAdapter;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[I


# instance fields
.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field private final j:Lcom/netease/nr/base/c/a/e;

.field private k:Ljava/util/ArrayList;

.field private l:Lcom/netease/nr/biz/b/b;

.field private m:Lcom/netease/util/b/a;

.field private n:Lcom/netease/util/j/a;

.field private o:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "font_img"

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/nr/biz/b/a;->a:[Ljava/lang/String;

    new-array v0, v3, [I

    const v1, 0x7f0c00a1

    aput v1, v0, v2

    sput-object v0, Lcom/netease/nr/biz/b/a;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    invoke-static {}, Lcom/netease/nr/biz/b/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/b/a;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/activity/BaseApplication;

    invoke-virtual {v0}, Lcom/netease/nr/base/activity/BaseApplication;->k()Lcom/netease/util/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/b/a;->m:Lcom/netease/util/b/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/nr/base/c/a/e;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/b/a;->j:Lcom/netease/nr/base/c/a/e;

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/b/a;->n:Lcom/netease/util/j/a;

    invoke-static {p1}, Lcom/netease/nr/biz/pc/e/e;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/b/a;->o:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/b/a;)Lcom/netease/nr/biz/b/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->l:Lcom/netease/nr/biz/b/b;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/nr/biz/b/a;)Lcom/netease/util/b/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->m:Lcom/netease/util/b/a;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcom/netease/nr/biz/b/b;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->l:Lcom/netease/nr/biz/b/b;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/netease/nr/biz/b/a;->l:Lcom/netease/nr/biz/b/b;

    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    const/16 v4, 0x8

    const/4 v8, 0x1

    const v7, 0x7f070137

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    iget v0, p0, Lcom/netease/nr/biz/b/a;->c:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0c00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0c00a3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/b/a;->m:Lcom/netease/util/b/a;

    invoke-virtual {v3, v1}, Lcom/netease/util/b/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/netease/nr/biz/b/a;->l:Lcom/netease/nr/biz/b/b;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/netease/nr/biz/b/a;->l:Lcom/netease/nr/biz/b/b;

    iget-boolean v3, v3, Lcom/netease/nr/biz/b/b;->c:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/netease/nr/biz/b/a;->l:Lcom/netease/nr/biz/b/b;

    iget-object v3, v3, Lcom/netease/nr/biz/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c00a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/netease/nr/biz/b/a;->m:Lcom/netease/util/b/a;

    invoke-virtual {v3, v1}, Lcom/netease/util/b/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/netease/nr/biz/b/a;->l:Lcom/netease/nr/biz/b/b;

    iget v3, v3, Lcom/netease/nr/biz/b/b;->b:I

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    iget-object v3, p0, Lcom/netease/nr/biz/b/a;->n:Lcom/netease/util/j/a;

    const v4, 0x7f020194

    invoke-virtual {v3, v0, v4}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    new-instance v3, Lcom/netease/nr/biz/b/c;

    invoke-direct {v3, p0, v1}, Lcom/netease/nr/biz/b/c;-><init>(Lcom/netease/nr/biz/b/a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/netease/nr/biz/b/c;

    invoke-direct {v3, p0, v1}, Lcom/netease/nr/biz/b/c;-><init>(Lcom/netease/nr/biz/b/a;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00a5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/netease/nr/biz/b/c;

    invoke-direct {v2, p0, v1}, Lcom/netease/nr/biz/b/c;-><init>(Lcom/netease/nr/biz/b/a;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const v0, 0x7f0c0022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->n:Lcom/netease/util/j/a;

    const v2, 0x7f020030

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    const v0, 0x7f0c0073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/netease/nr/biz/b/a;->f:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netease/nr/biz/b/a;->h:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/netease/nr/biz/b/a;->i:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0b01fa

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/netease/nr/biz/b/a;->n:Lcom/netease/util/j/a;

    const v3, 0x7f02017f

    invoke-virtual {v2, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/netease/nr/biz/b/a;->n:Lcom/netease/util/j/a;

    const v3, 0x7f070118

    invoke-virtual {v2, v0, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    iget v2, p0, Lcom/netease/nr/biz/b/a;->d:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/netease/nr/biz/b/a;->f:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "font_using"

    const-string v5, ""

    invoke-static {p2, v4, v5}, Lcom/netease/util/g/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/netease/nr/biz/b/a;->g:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    const v1, 0x7f0b01f7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->n:Lcom/netease/util/j/a;

    const v2, 0x7f070135

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/netease/nr/biz/b/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v1, 0x7f0b01f6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/netease/nr/biz/b/f;

    iget v4, p0, Lcom/netease/nr/biz/b/a;->e:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/netease/nr/biz/b/f;-><init>(Lcom/netease/nr/biz/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->n:Lcom/netease/util/j/a;

    invoke-virtual {v1, v0, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/netease/nr/biz/b/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const v1, 0x7f0b01f8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/netease/nr/biz/b/e;

    invoke-direct {v1, p0, v5}, Lcom/netease/nr/biz/b/e;-><init>(Lcom/netease/nr/biz/b/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->n:Lcom/netease/util/j/a;

    invoke-virtual {v1, v0, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    :cond_6
    const v2, 0x7f0b01f5

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/netease/nr/biz/b/d;

    invoke-direct {v2, p0, v1}, Lcom/netease/nr/biz/b/d;-><init>(Lcom/netease/nr/biz/b/a;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->n:Lcom/netease/util/j/a;

    invoke-virtual {v1, v0, v7}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_1
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->j:Lcom/netease/nr/base/c/a/e;

    invoke-virtual {v0, p2, p1}, Lcom/netease/nr/base/c/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/nr/biz/b/a;->n:Lcom/netease/util/j/a;

    const v1, 0x7f070097

    invoke-virtual {v0, p1, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c0073
        :pswitch_0
    .end packed-switch
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->mCursor:Landroid/database/Cursor;

    const-string v2, "font_url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/b/a;->c:I

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->mCursor:Landroid/database/Cursor;

    const-string v2, "font_regular_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/b/a;->d:I

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->mCursor:Landroid/database/Cursor;

    const-string v2, "font_bold_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/b/a;->e:I

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->mCursor:Landroid/database/Cursor;

    const-string v2, "font_title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/b/a;->f:I

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->mCursor:Landroid/database/Cursor;

    const-string v2, "font_prizeid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/b/a;->g:I

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->mCursor:Landroid/database/Cursor;

    const-string v2, "font_size"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/b/a;->h:I

    iget-object v1, p0, Lcom/netease/nr/biz/b/a;->mCursor:Landroid/database/Cursor;

    const-string v2, "font_author"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/nr/biz/b/a;->i:I

    :cond_0
    return-object v0
.end method
