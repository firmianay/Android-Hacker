.class public Lcom/netease/nr/biz/j/d/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/Map;

.field private d:Lcom/netease/nr/base/c/a/h;

.field private e:Lcom/netease/nr/biz/j/d/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Landroid/view/LayoutInflater;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/a/d;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/nr/biz/j/d/a/d;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/a/d;->c:Ljava/util/Map;

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

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->d:Lcom/netease/nr/base/c/a/h;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/j/d/a/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/j/d/a/d;[Landroid/widget/CheckBox;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/j/d/a/d;->a([Landroid/widget/CheckBox;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([Landroid/widget/CheckBox;Ljava/util/List;)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "id"

    invoke-static {v0, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(ILjava/util/Map;Ljava/lang/String;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p5, Lcom/netease/nr/biz/j/d/a/c;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p5, Lcom/netease/nr/biz/j/d/a/c;->h:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/d;->a:Landroid/content/Context;

    invoke-static {p6, v0, p2, v1}, Lcom/netease/nr/biz/j/d/a/o;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Map;Landroid/content/Context;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0b01a6

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b0010

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, v3}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :cond_1
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/j/d/a/h;->cancel(Z)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    :cond_2
    new-instance v1, Lcom/netease/nr/biz/j/d/a/h;

    invoke-direct {v1, p3, v0, p4, p2}, Lcom/netease/nr/biz/j/d/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/j/d/a/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->c:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->c:Ljava/util/Map;

    const-string v1, "have_voted"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->c:Ljava/util/Map;

    const-string v1, "vote_position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->c:Ljava/util/Map;

    invoke-direct {p0, v0, p5, p6}, Lcom/netease/nr/biz/j/d/a/d;->a(Ljava/util/Map;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V

    :cond_3
    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    const-string v2, "score_vote_key"

    invoke-direct {v1, p4, v2}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/netease/nr/biz/j/d/a/c;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0c027d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/c;->g:Landroid/view/View;

    const v0, 0x7f0c00ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/c;->a:Landroid/widget/TextView;

    const v0, 0x7f0c0281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/c;->d:Landroid/widget/TextView;

    const v0, 0x7f0c0282

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/c;->e:Landroid/widget/TextView;

    const v0, 0x7f0c0283

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/c;->f:Landroid/widget/TextView;

    const v0, 0x7f0c006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/c;->b:Landroid/widget/ImageView;

    const v0, 0x7f0c0284

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/c;->h:Landroid/view/ViewGroup;

    const v0, 0x7f0c027e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/c;->c:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/j/d/a/d;ILjava/util/Map;Ljava/lang/String;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/netease/nr/biz/j/d/a/d;->a(ILjava/util/Map;Ljava/lang/String;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/j/d/a/d;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/netease/nr/biz/j/d/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0010

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, v2}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/j/d/a/h;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    :cond_1
    new-instance v0, Lcom/netease/nr/biz/j/d/a/h;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/d;->c:Ljava/util/Map;

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/netease/nr/biz/j/d/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->e:Lcom/netease/nr/biz/j/d/a/h;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/j/d/a/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->c:Ljava/util/Map;

    const-string v1, "have_voted"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->c:Ljava/util/Map;

    const-string v1, "vote_position"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->c:Ljava/util/Map;

    invoke-direct {p0, v0, p4, p5}, Lcom/netease/nr/biz/j/d/a/d;->a(Ljava/util/Map;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    const-string v2, "score_vote_key"

    invoke-direct {v1, p3, v2}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V
    .locals 12

    const/16 v11, 0x23

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "imgsrc"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/d;->d:Lcom/netease/nr/base/c/a/h;

    iget-object v4, p2, Lcom/netease/nr/biz/j/d/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v4}, Lcom/netease/nr/base/c/a/h;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    const-string v0, "digest"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "question"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "date"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "option_type"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/netease/nr/biz/j/d/g;->b(Ljava/util/Map;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "voted"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v8, p0, Lcom/netease/nr/biz/j/d/a/d;->a:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/netease/nr/biz/j/d/g;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v8

    const-string v9, "have_voted"

    invoke-static {p1, v9}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v3, p2, Lcom/netease/nr/biz/j/d/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/netease/nr/biz/j/d/a/c;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/netease/nr/biz/j/d/a/c;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/netease/nr/biz/j/d/a/d;->a:Landroid/content/Context;

    const v7, 0x7f0b019d

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p2, Lcom/netease/nr/biz/j/d/a/c;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    if-nez v8, :cond_3

    if-nez v1, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p3, p2}, Lcom/netease/nr/biz/j/d/a/d;->a(Ljava/util/Map;Landroid/view/View;Lcom/netease/nr/biz/j/d/a/c;)V

    :goto_3
    const-string v0, "docid"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/nr/biz/j/d/a/c;->g:Landroid/view/View;

    new-instance v2, Lcom/netease/nr/biz/j/d/a/e;

    invoke-direct {v2, p0, v0}, Lcom/netease/nr/biz/j/d/a/e;-><init>(Lcom/netease/nr/biz/j/d/a/d;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p2, Lcom/netease/nr/biz/j/d/a/c;->h:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/d;->a:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/nr/biz/j/d/a/d;->a(Landroid/view/ViewGroup;Ljava/util/Map;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V

    goto :goto_3

    :cond_3
    iget-object v0, p2, Lcom/netease/nr/biz/j/d/a/c;->h:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/d;->a:Landroid/content/Context;

    invoke-static {p3, v0, p1, v1}, Lcom/netease/nr/biz/j/d/a/o;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Ljava/util/Map;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V
    .locals 15

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v11, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :try_start_0
    const-string v1, "voteitem"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v1, "vote_id"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Landroid/widget/Button;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v12, :cond_0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v9, v0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/d;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0300cd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c0257

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v3, v10

    aget-object v14, v3, v10

    new-instance v1, Lcom/netease/nr/biz/j/d/a/f;

    move-object v2, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/netease/nr/biz/j/d/a/f;-><init>(Lcom/netease/nr/biz/j/d/a/d;[Landroid/widget/Button;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V

    invoke-virtual {v14, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/util/h/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object v6, v3, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Map;Landroid/view/View;Lcom/netease/nr/biz/j/d/a/c;)V
    .locals 13

    const/4 v1, 0x0

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v7, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :try_start_0
    const-string v2, "voteitem"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v2, "vote_id"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Landroid/widget/CheckBox;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/netease/nr/biz/j/d/a/c;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    move v6, v1

    :goto_1
    if-ge v6, v9, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/d;->b:Landroid/view/LayoutInflater;

    const v10, 0x7f0300cc

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const v2, 0x7f0c0255

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    aput-object v2, v3, v6

    aget-object v2, v3, v6

    const v11, 0x7f0202ed

    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    const v2, 0x7f0c0256

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v8, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ". "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "name"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/util/h/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aget-object v11, v8, v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v1, v8, v6

    const v2, 0x7f070080

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/netease/nr/biz/j/d/a/c;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_2
    const v1, 0x7f0c027b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    move-object v8, v0

    const v1, 0x7f0202ec

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/netease/nr/biz/j/d/a/c;->h:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/netease/nr/biz/j/d/a/g;

    move-object v2, p0

    move-object/from16 v6, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/netease/nr/biz/j/d/a/g;-><init>(Lcom/netease/nr/biz/j/d/a/d;[Landroid/widget/CheckBox;Ljava/util/List;Ljava/lang/String;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/d;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/j/d/a/c;

    invoke-direct {v1}, Lcom/netease/nr/biz/j/d/a/c;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/netease/nr/biz/j/d/a/d;->a(Landroid/view/View;Lcom/netease/nr/biz/j/d/a/c;)V

    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/d;->c:Ljava/util/Map;

    invoke-direct {p0, v2, v1, v0}, Lcom/netease/nr/biz/j/d/a/d;->a(Ljava/util/Map;Lcom/netease/nr/biz/j/d/a/c;Landroid/view/View;)V

    return-object v0
.end method
