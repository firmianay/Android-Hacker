.class public Lcom/netease/nr/biz/pc/b/u;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/netease/util/j/a;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/u;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/pc/b/u;->b:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/u;->c:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/pc/b/u;->d:Lcom/netease/util/j/a;

    invoke-static {p1}, Lcom/netease/util/i/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    :goto_0
    iput v0, p0, Lcom/netease/nr/biz/pc/b/u;->e:I

    return-void

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0
.end method

.method private a(ILcom/netease/nr/biz/pc/b/v;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "collect_title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/u;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "collect_summary"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/u;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "collect_comment_num"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/nr/biz/pc/b/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p0, Lcom/netease/nr/biz/pc/b/u;->e:I

    if-le v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    iget v4, p0, Lcom/netease/nr/biz/pc/b/u;->e:I

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, p2, Lcom/netease/nr/biz/pc/b/v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p2, Lcom/netease/nr/biz/pc/b/v;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/biz/pc/b/u;->a:Landroid/content/Context;

    const v3, 0x7f0b01ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/u;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/nr/biz/pc/b/u;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const v4, 0x7f070004

    if-nez p2, :cond_0

    new-instance v1, Lcom/netease/nr/biz/pc/b/v;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/pc/b/v;-><init>(Lcom/netease/nr/biz/pc/b/u;)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/u;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f03007a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0c0008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/pc/b/v;->a:Landroid/widget/TextView;

    const v0, 0x7f0c00c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/pc/b/v;->b:Landroid/widget/TextView;

    const v0, 0x7f0c015a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/nr/biz/pc/b/v;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/netease/nr/biz/pc/b/u;->a(ILcom/netease/nr/biz/pc/b/v;)V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/u;->d:Lcom/netease/util/j/a;

    iget-object v2, v0, Lcom/netease/nr/biz/pc/b/v;->a:Landroid/widget/TextView;

    const v3, 0x7f07000c

    invoke-virtual {v1, v2, v3}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/u;->d:Lcom/netease/util/j/a;

    iget-object v2, v0, Lcom/netease/nr/biz/pc/b/v;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/u;->d:Lcom/netease/util/j/a;

    iget-object v0, v0, Lcom/netease/nr/biz/pc/b/v;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4}, Lcom/netease/util/j/a;->a(Landroid/widget/TextView;I)V

    const v0, 0x7f0c0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/nr/biz/pc/b/u;->d:Lcom/netease/util/j/a;

    const v2, 0x7f020030

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nr/biz/pc/b/v;

    goto :goto_0
.end method
