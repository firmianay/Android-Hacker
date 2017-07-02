.class public abstract Lcom/netease/nr/biz/news/detailpage/a/a/l;
.super Lcom/netease/nr/biz/news/detailpage/a/a/n;


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Landroid/content/Context;

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Lcom/netease/nr/biz/news/detailpage/ag;

.field protected u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/netease/nr/biz/news/detailpage/ag;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/a/a/n;-><init>()V

    iput-boolean v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->q:Z

    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->r:Z

    iput-boolean v1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->s:Z

    iput-object p1, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->o:Landroid/content/Context;

    iput p4, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->d:I

    iput p5, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->i:I

    iput-object p6, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->m:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->l:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->u:Z

    iput-object p7, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->n:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->p:Z

    iput-object p3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->t:Lcom/netease/nr/biz/news/detailpage/ag;

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/util/i/b;->b(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->q:Z

    iget-object v2, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/util/j/a;->a(Landroid/content/Context;)Lcom/netease/util/j/a;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->o:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/netease/util/j/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->r:Z

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->r:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->g:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->r:Z

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/netease/nr/biz/news/detailpage/a/a/l;->h:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "opacity:0.5;"

    goto :goto_1

    :cond_2
    const-string v0, "opacity:0.6;"

    goto :goto_2
.end method
