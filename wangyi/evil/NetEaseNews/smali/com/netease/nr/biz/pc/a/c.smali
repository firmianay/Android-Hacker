.class Lcom/netease/nr/biz/pc/a/c;
.super Landroid/widget/Filter;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/a/a;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/pc/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/a/c;->a:Lcom/netease/nr/biz/pc/a/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/pc/a/a;Lcom/netease/nr/biz/pc/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/pc/a/c;-><init>(Lcom/netease/nr/biz/pc/a/a;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 12

    const/4 v2, 0x0

    new-instance v4, Landroid/widget/Filter$FilterResults;

    invoke-direct {v4}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/c;->a:Lcom/netease/nr/biz/pc/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/a;->a(Lcom/netease/nr/biz/pc/a/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/c;->a:Lcom/netease/nr/biz/pc/a/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/nr/biz/pc/a/a;->a(Lcom/netease/nr/biz/pc/a/a;Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/c;->a:Lcom/netease/nr/biz/pc/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/a;->a(Lcom/netease/nr/biz/pc/a/a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/c;->a:Lcom/netease/nr/biz/pc/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/a;->a(Lcom/netease/nr/biz/pc/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v4, Landroid/widget/Filter$FilterResults;->count:I

    :goto_0
    return-object v4

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/c;->a:Lcom/netease/nr/biz/pc/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/a;->a(Lcom/netease/nr/biz/pc/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v1, v2

    :goto_3
    if-ge v1, v10, :cond_3

    aget-object v11, v9, v1

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/c;->a:Lcom/netease/nr/biz/pc/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/a;->b(Lcom/netease/nr/biz/pc/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/c;->a:Lcom/netease/nr/biz/pc/a/a;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/a/a;->b(Lcom/netease/nr/biz/pc/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v8, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v4, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/c;->a:Lcom/netease/nr/biz/pc/a/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/a/a;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/pc/a/c;->a:Lcom/netease/nr/biz/pc/a/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/pc/a/a;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
