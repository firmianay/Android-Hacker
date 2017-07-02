.class public Lcom/netease/nr/biz/news/detailpage/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/nr/biz/news/detailpage/a/a;


# instance fields
.field private a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

.field private b:Lcom/netease/nr/biz/news/detailpage/a/a/o;

.field private c:Lcom/netease/nr/biz/news/detailpage/a/a/o;

.field private d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

.field private e:Lcom/netease/nr/biz/news/detailpage/ag;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/List;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/nr/biz/news/detailpage/ag;Ljava/util/Map;ZZLjava/util/List;IIIZIZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->b:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->c:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/p;

    invoke-direct {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/p;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    iput-boolean v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->q:Z

    iput v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->r:I

    iput-boolean v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->s:Z

    invoke-direct/range {p0 .. p12}, Lcom/netease/nr/biz/news/detailpage/a/b;->a(Landroid/content/Context;Lcom/netease/nr/biz/news/detailpage/ag;Ljava/util/Map;ZZLjava/util/List;IIIZIZ)V

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/a/b;->p()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/netease/nr/biz/news/detailpage/ag;Ljava/util/Map;ZZLjava/util/List;IIIZIZ)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->e:Lcom/netease/nr/biz/news/detailpage/ag;

    iput-object p3, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    iput-boolean p5, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->o:Z

    iput-object p6, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->h:Ljava/util/List;

    iput p7, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->i:I

    iput p9, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->k:I

    iput p8, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->j:I

    iput-boolean p10, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->l:Z

    iput p11, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->m:I

    iput-boolean p12, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->s:Z

    return-void
.end method

.method private p()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v2, "body"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->p:Ljava/lang/String;

    return-void
.end method

.method private q()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->p:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v2, "all_media_list"

    invoke-static {v0, v2}, Lcom/netease/util/e/a;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v4, "media_video"

    const-string v5, "media_type"

    invoke-static {v0, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "ref"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netease/util/h/b;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private r()V
    .locals 8

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->c:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/p;

    invoke-direct {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/p;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->c:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    :cond_0
    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->o:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/q;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/news/detailpage/a/a/q;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->h:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "docid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/r;

    iget-boolean v3, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->o:Z

    iget-boolean v4, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    iget v5, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->k:I

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/a/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    invoke-virtual {v0, v6}, Lcom/netease/nr/biz/news/detailpage/a/a/r;->c(I)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->c:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->c:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    :cond_2
    return-void
.end method

.method private s()V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->b:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/p;

    invoke-direct {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/p;-><init>()V

    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->b:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v1, "link"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v2, "template"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "apper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "ref"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Lcom/netease/nr/biz/news/detailpage/a/a/b;

    iget-boolean v7, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    iget v8, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->j:I

    invoke-direct {v6, v2, v0, v7, v8}, Lcom/netease/nr/biz/news/detailpage/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v6, v4}, Lcom/netease/nr/biz/news/detailpage/a/a/b;->c(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->b:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0, v6}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    :goto_1
    if-ge v3, v5, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "ref"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/netease/nr/biz/news/detailpage/a/a/j;

    iget-boolean v6, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    iget v7, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->j:I

    invoke-direct {v4, v2, v0, v6, v7}, Lcom/netease/nr/biz/news/detailpage/a/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v4, v3}, Lcom/netease/nr/biz/news/detailpage/a/a/j;->c(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->b:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0, v4}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->b:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    goto :goto_0
.end method

.method private t()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v3, "all_media_list"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    if-nez v2, :cond_2

    new-instance v2, Lcom/netease/nr/biz/news/detailpage/a/a/p;

    invoke-direct {v2}, Lcom/netease/nr/biz/news/detailpage/a/a/p;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v3, "picnews"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v3, "template"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "apper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v21, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "media_type"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "media_video"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "ref"

    invoke-static {v2, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "alt"

    invoke-static {v2, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "photosetID"

    invoke-static {v2, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v10, 0x1

    :goto_1
    if-eqz v3, :cond_4

    const-string v3, "cover"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    new-instance v2, Lcom/netease/nr/biz/news/detailpage/a/a/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->e:Lcom/netease/nr/biz/news/detailpage/ag;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->m:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->i:I

    add-int/lit8 v7, v7, 0x0

    :goto_3
    invoke-direct/range {v2 .. v10}, Lcom/netease/nr/biz/news/detailpage/a/a/c;-><init>(Landroid/content/Context;ZLcom/netease/nr/biz/news/detailpage/ag;IILjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v3, v2}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_14

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "media_type"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "media_video"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "ref"

    invoke-static {v2, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "alt"

    invoke-static {v2, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "photosetID"

    invoke-static {v2, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v20, 0x1

    :goto_5
    if-eqz v3, :cond_8

    const-string v5, "cover"

    invoke-static {v2, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :goto_6
    const-string v5, "pixel"

    invoke-static {v2, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_e

    if-eqz v3, :cond_c

    const-string v3, "url_mp4"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ".mp3"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/netease/util/i/b;->b()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/util/i/b;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->i:I

    add-int v10, v2, v21

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->e:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-virtual {v2, v10}, Lcom/netease/nr/biz/news/detailpage/ag;->b(I)V

    new-instance v5, Lcom/netease/nr/biz/news/detailpage/a/a/d;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-direct/range {v5 .. v10}, Lcom/netease/nr/biz/news/detailpage/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v2, v5}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    :goto_9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_4
    const-string v3, "src"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_7
    const/16 v20, 0x0

    goto :goto_5

    :cond_8
    const-string v5, "src"

    invoke-static {v2, v5}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto :goto_6

    :cond_9
    move/from16 v10, v21

    goto :goto_7

    :cond_a
    new-instance v10, Lcom/netease/nr/biz/news/detailpage/a/a/g;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->e:Lcom/netease/nr/biz/news/detailpage/ag;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->m:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->i:I

    add-int v16, v2, v21

    :goto_a
    move v12, v4

    move-object/from16 v18, v9

    move-object/from16 v19, v8

    invoke-direct/range {v10 .. v19}, Lcom/netease/nr/biz/news/detailpage/a/a/g;-><init>(Landroid/content/Context;ZLcom/netease/nr/biz/news/detailpage/ag;ILcom/netease/nr/biz/news/detailpage/a/a/m;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v10

    goto :goto_8

    :cond_b
    move/from16 v16, v21

    goto :goto_a

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/netease/nr/biz/news/detailpage/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/nr/biz/news/detailpage/a/a/m;

    move-result-object v15

    new-instance v10, Lcom/netease/nr/biz/news/detailpage/a/a/e;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->e:Lcom/netease/nr/biz/news/detailpage/ag;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->m:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->i:I

    add-int v16, v2, v21

    :goto_b
    move v12, v4

    move-object/from16 v18, v9

    move-object/from16 v19, v8

    invoke-direct/range {v10 .. v20}, Lcom/netease/nr/biz/news/detailpage/a/a/e;-><init>(Landroid/content/Context;ZLcom/netease/nr/biz/news/detailpage/ag;ILcom/netease/nr/biz/news/detailpage/a/a/m;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v2, v10}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    goto :goto_9

    :cond_d
    move/from16 v16, v21

    goto :goto_b

    :cond_e
    if-eqz v3, :cond_12

    const-string v3, "url_mp4"

    invoke-static {v2, v3}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ".mp3"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/netease/util/i/b;->b()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/util/i/b;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->i:I

    add-int v10, v2, v21

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->e:Lcom/netease/nr/biz/news/detailpage/ag;

    invoke-virtual {v2, v10}, Lcom/netease/nr/biz/news/detailpage/ag;->b(I)V

    new-instance v5, Lcom/netease/nr/biz/news/detailpage/a/a/d;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-direct/range {v5 .. v10}, Lcom/netease/nr/biz/news/detailpage/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v2, v5}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    goto/16 :goto_9

    :cond_f
    move/from16 v10, v21

    goto :goto_c

    :cond_10
    new-instance v2, Lcom/netease/nr/biz/news/detailpage/a/a/y;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->e:Lcom/netease/nr/biz/news/detailpage/ag;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->m:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget v7, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->i:I

    add-int v7, v7, v21

    :goto_e
    move-object/from16 v8, v17

    invoke-direct/range {v2 .. v9}, Lcom/netease/nr/biz/news/detailpage/a/a/y;-><init>(Landroid/content/Context;ZLcom/netease/nr/biz/news/detailpage/ag;IILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_d

    :cond_11
    move/from16 v7, v21

    goto :goto_e

    :cond_12
    new-instance v2, Lcom/netease/nr/biz/news/detailpage/a/a/w;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->e:Lcom/netease/nr/biz/news/detailpage/ag;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->m:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->n:Z

    if-eqz v7, :cond_13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->i:I

    add-int v7, v7, v21

    :goto_f
    move-object/from16 v8, v17

    move/from16 v10, v20

    invoke-direct/range {v2 .. v10}, Lcom/netease/nr/biz/news/detailpage/a/a/w;-><init>(Landroid/content/Context;ZLcom/netease/nr/biz/news/detailpage/ag;IILjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v3, v2}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    goto/16 :goto_9

    :cond_13
    move/from16 v7, v21

    goto :goto_f

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v2, v3}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->q:Z

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v1, "body"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v1, "template"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    new-instance v2, Lcom/netease/nr/biz/news/detailpage/a/a/i;

    invoke-direct {v2, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/i;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/a/b;->t()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/a/b;->r()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/a/b;->s()V

    return-void
.end method

.method public f()V
    .locals 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v1, "topics"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/netease/nr/biz/news/detailpage/a/a/z;

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    const v1, 0x7f0b00ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/z;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0, v8}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    move v1, v5

    :goto_1
    if-ge v5, v9, :cond_2

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/netease/nr/biz/news/column/g;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string v2, "tname"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "tid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "icon"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "T1348647909107"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/netease/nr/biz/news/column/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v7, 0x1

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/aa;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/a/a/aa;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    move v0, v7

    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0, v8}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->b(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public g()V
    .locals 6

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->s:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v1, "tid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/netease/nr/biz/news/column/g;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "tname"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v0, "ename"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "icon"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "T1348647909107"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netease/nr/biz/news/column/g;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/z;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    const v5, 0x7f0b00eb

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/news/detailpage/a/a/z;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/aa;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nr/biz/news/detailpage/a/a/aa;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v1, "template"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "special"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/v;

    invoke-direct {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/v;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v1, "template"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "caipiao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/h;

    iget v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->m:I

    invoke-direct {v0, v1}, Lcom/netease/nr/biz/news/detailpage/a/a/h;-><init>(I)V

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/a/a/a;

    invoke-direct {v1}, Lcom/netease/nr/biz/news/detailpage/a/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    return-void
.end method

.method public k()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/netease/nr/biz/plugin/c/f;->a(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/nr/biz/news/detailpage/a/a/k;

    invoke-direct {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/k;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/a/b;->q()Ljava/lang/String;

    return-void
.end method

.method public m()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->b()V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->b:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->b:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->b()V

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->c:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->c:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->b()V

    :cond_2
    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->b()V

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->a:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->b:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->c:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    iput-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->g:Ljava/util/Map;

    const-string v1, "votes"

    invoke-static {v0, v1}, Lcom/netease/util/e/a;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/nr/biz/news/detailpage/a/a/s;

    invoke-direct {v0}, Lcom/netease/nr/biz/news/detailpage/a/a/s;-><init>()V

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    invoke-virtual {v1, v0}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Lcom/netease/nr/biz/news/detailpage/a/a/n;)V

    :cond_0
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->d:Lcom/netease/nr/biz/news/detailpage/a/a/o;

    iget-object v1, p0, Lcom/netease/nr/biz/news/detailpage/a/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/news/detailpage/a/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
