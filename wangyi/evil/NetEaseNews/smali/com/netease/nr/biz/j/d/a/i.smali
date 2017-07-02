.class public Lcom/netease/nr/biz/j/d/a/i;
.super Lcom/netease/nr/base/a/i;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/util/List;

.field private d:Landroid/content/Context;

.field private e:Lcom/netease/nr/base/c/a/h;

.field private f:Landroid/view/LayoutInflater;

.field private g:Landroid/widget/LinearLayout$LayoutParams;

.field private h:Lcom/netease/util/j/a;

.field private i:Lcom/netease/nr/biz/j/d/a/m;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/netease/nr/base/a/i;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/nr/biz/j/d/a/i;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/nr/biz/j/d/a/i;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    iput-object p1, p0, Lcom/netease/nr/biz/j/d/a/i;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/nr/base/c/a/h;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/netease/nr/base/c/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->e:Lcom/netease/nr/base/c/a/h;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->f:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->g:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/j/d/a/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nr/biz/j/d/a/i;[Landroid/widget/CheckBox;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/nr/biz/j/d/a/i;->a([Landroid/widget/CheckBox;Ljava/util/List;)Ljava/lang/String;

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

.method private a(ILjava/util/Map;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0b01a6

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, v6}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b0010

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, v6}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    goto :goto_0

    :cond_1
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/j/d/a/m;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    :cond_2
    new-instance v0, Lcom/netease/nr/biz/j/d/a/m;

    iget-object v4, p0, Lcom/netease/nr/biz/j/d/a/i;->c:Ljava/util/List;

    move-object v1, p3

    move-object v3, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/j/d/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Lcom/netease/nr/biz/j/d/a/i;)V

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/j/d/a/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    const-string v1, "have_voted"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vote_position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/i;->notifyDataSetChanged()V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    const-string v2, "score_vote_key"

    invoke-direct {v1, p4, v2}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/netease/nr/biz/j/d/a/n;)V
    .locals 2

    const v1, 0x7f0c027d

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->g:Landroid/view/View;

    const v0, 0x7f0c00ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->a:Landroid/widget/TextView;

    const v0, 0x7f0c0281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->d:Landroid/widget/TextView;

    const v0, 0x7f0c0282

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->e:Landroid/widget/TextView;

    const v0, 0x7f0c0283

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->f:Landroid/widget/TextView;

    const v0, 0x7f0c006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/base/view/MyImageView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->b:Lcom/netease/nr/base/view/MyImageView;

    const v0, 0x7f0c0284

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->i:Landroid/view/ViewGroup;

    const v0, 0x7f0c027e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->c:Landroid/widget/ImageView;

    const v0, 0x7f0c027f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->j:Landroid/view/View;

    const v0, 0x7f0c0280

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->k:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/netease/nr/biz/j/d/a/i;->a(Lcom/netease/nr/biz/j/d/a/n;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/j/d/a/i;ILjava/util/Map;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/netease/nr/biz/j/d/a/i;->a(ILjava/util/Map;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/j/d/a/i;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nr/biz/j/d/a/i;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/netease/nr/biz/j/d/a/n;)V
    .locals 4

    const v3, 0x7f070082

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/d/a/n;->a:Landroid/widget/TextView;

    const v2, 0x7f070080

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/d/a/n;->d:Landroid/widget/TextView;

    const v2, 0x7f070086

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/d/a/n;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/d/a/n;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/d/a/n;->k:Landroid/widget/TextView;

    const v2, 0x7f070084

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/d/a/n;->c:Landroid/widget/ImageView;

    const v2, 0x7f0202fa

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/d/a/n;->h:Landroid/widget/ImageView;

    const v2, 0x7f020030

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/d/a/n;->j:Landroid/view/View;

    const v2, 0x7f020036

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    iget-object v1, p1, Lcom/netease/nr/biz/j/d/a/n;->k:Landroid/widget/TextView;

    const v2, 0x7f0202ff

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p1, Lcom/netease/nr/biz/j/d/a/n;->j:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/util/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0010

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, v6}, Lcom/netease/nr/base/view/az;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/netease/nr/base/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/az;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/j/d/a/m;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    :cond_1
    new-instance v0, Lcom/netease/nr/biz/j/d/a/m;

    iget-object v4, p0, Lcom/netease/nr/biz/j/d/a/i;->c:Ljava/util/List;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/j/d/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Lcom/netease/nr/biz/j/d/a/i;)V

    iput-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->i:Lcom/netease/nr/biz/j/d/a/m;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/j/d/a/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v1, "have_voted"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vote_position"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/netease/nr/biz/j/d/a/i;->notifyDataSetChanged()V

    invoke-static {}, Lcom/netease/util/k/a;->b()Lcom/netease/util/k/f;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/pc/e/f;

    const-string v2, "score_vote_key"

    invoke-direct {v1, p3, v2}, Lcom/netease/nr/biz/pc/e/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netease/util/k/f;->a(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Lcom/netease/nr/biz/j/d/a/n;Landroid/view/View;)V
    .locals 12

    const-string v0, "imgsrc"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/i;->e:Lcom/netease/nr/base/c/a/h;

    iget-object v2, p2, Lcom/netease/nr/biz/j/d/a/n;->b:Lcom/netease/nr/base/view/MyImageView;

    invoke-virtual {v1, v0, v2}, Lcom/netease/nr/base/c/a/h;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

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

    const-string v0, ""

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->k:Landroid/widget/TextView;

    const v1, 0x7f0b01a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "            "

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/netease/nr/biz/j/d/g;->b(Ljava/util/Map;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v1, "voted"

    invoke-static {p1, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/netease/nr/biz/j/d/g;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v8

    const-string v2, "have_voted"

    invoke-static {p1, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x23

    if-le v9, v10, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    const/16 v11, 0x23

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "..."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v9, p2, Lcom/netease/nr/biz/j/d/a/n;->a:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lcom/netease/nr/biz/j/d/a/n;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lcom/netease/nr/biz/j/d/a/n;->f:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    const v9, 0x7f0b019d

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lcom/netease/nr/biz/j/d/a/n;->d:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_5

    if-nez v8, :cond_5

    if-nez v2, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/netease/nr/biz/j/d/a/i;->a(Landroid/view/ViewGroup;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;)V

    :goto_3
    const-string v0, "docid"

    invoke-static {p1, v0}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/nr/biz/j/d/a/n;->g:Landroid/view/View;

    new-instance v2, Lcom/netease/nr/biz/j/d/a/j;

    invoke-direct {v2, p0, v0}, Lcom/netease/nr/biz/j/d/a/j;-><init>(Lcom/netease/nr/biz/j/d/a/i;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->k:Landroid/widget/TextView;

    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, ""

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_4
    iget-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, v1}, Lcom/netease/nr/biz/j/d/a/i;->a(Landroid/view/ViewGroup;Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_3

    :cond_5
    iget-object v0, p2, Lcom/netease/nr/biz/j/d/a/n;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-static {p3, v0, p1, v1}, Lcom/netease/nr/biz/j/d/a/o;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_3
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/netease/nr/biz/j/d/a/n;

    invoke-direct {v0, p0}, Lcom/netease/nr/biz/j/d/a/n;-><init>(Lcom/netease/nr/biz/j/d/a/i;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/j/d/a/n;

    invoke-direct {p0, p2, v0}, Lcom/netease/nr/biz/j/d/a/i;->a(Landroid/view/View;Lcom/netease/nr/biz/j/d/a/n;)V

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/i;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v0, p2}, Lcom/netease/nr/biz/j/d/a/i;->a(Ljava/util/Map;Lcom/netease/nr/biz/j/d/a/n;Landroid/view/View;)V

    :cond_1
    return-object p2
.end method

.method public a(Landroid/view/ViewGroup;Ljava/util/Map;Landroid/content/Context;)V
    .locals 14

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v10, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

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

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    const/4 v1, 0x0

    move v9, v1

    :goto_1
    if-ge v9, v11, :cond_0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v8, v0

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/i;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f0300ed

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c0257

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v3, v9

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    aget-object v2, v3, v9

    const v6, 0x7f0202f1

    invoke-virtual {v1, v2, v6}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    aget-object v2, v3, v9

    const v6, 0x7f070080

    invoke-virtual {v1, v2, v6}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    aget-object v13, v3, v9

    new-instance v1, Lcom/netease/nr/biz/j/d/a/k;

    move-object v2, p0

    move-object/from16 v6, p3

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/netease/nr/biz/j/d/a/k;-><init>(Lcom/netease/nr/biz/j/d/a/i;[Landroid/widget/Button;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/util/h/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object v6, v3, v9

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

    invoke-virtual {p1, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;)V
    .locals 13

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    :try_start_0
    const-string v1, "voteitem"

    invoke-static {p2, v1}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "vote_id"

    invoke-static {p2, v2}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [Landroid/widget/CheckBox;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v9, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/i;->f:Landroid/view/LayoutInflater;

    const v10, 0x7f0300e9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const v3, 0x7f0c0255

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    aput-object v3, v7, v4

    const v3, 0x7f0c0256

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v8, v4

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    iget-object v11, p0, Lcom/netease/nr/biz/j/d/a/i;->d:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v7, v4

    const v11, 0x7f0202ed

    invoke-virtual {v3, v11}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    :goto_2
    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    aget-object v11, v8, v4

    const v12, 0x7f070080

    invoke-virtual {v3, v11, v12}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ". "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "name"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/util/h/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object v11, v8, v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_2
    aget-object v3, v7, v4

    const v11, 0x7f0204cf

    invoke-virtual {v3, v11}, Landroid/widget/CheckBox;->setButtonDrawable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const v2, 0x7f0c027b

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    const v4, 0x7f0202ec

    invoke-virtual {v3, v2, v4}, Lcom/netease/util/j/a;->a(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/netease/nr/biz/j/d/a/i;->h:Lcom/netease/util/j/a;

    const v4, 0x7f07009b

    invoke-virtual {v3, v2, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v3, Lcom/netease/nr/biz/j/d/a/l;

    invoke-direct {v3, p0, v7, v1, v6}, Lcom/netease/nr/biz/j/d/a/l;-><init>(Lcom/netease/nr/biz/j/d/a/i;[Landroid/widget/CheckBox;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/j/d/a/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
