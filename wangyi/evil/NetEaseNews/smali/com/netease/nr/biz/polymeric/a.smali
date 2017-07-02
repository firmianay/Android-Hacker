.class public Lcom/netease/nr/biz/polymeric/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/view/animation/Animation;

.field public b:Landroid/view/animation/Animation;

.field public c:Landroid/view/animation/Animation;

.field public d:Landroid/view/animation/Animation;

.field public e:Landroid/view/animation/Animation;

.field public f:Landroid/view/animation/Animation;

.field public g:Landroid/view/animation/Animation;

.field public h:Landroid/view/animation/Animation;

.field public i:Landroid/view/animation/Animation;

.field public j:Landroid/view/animation/Animation;

.field public k:Landroid/view/animation/Animation;

.field public l:Landroid/view/animation/Animation;

.field public m:Landroid/view/animation/Animation;

.field private n:Landroid/content/Context;

.field private o:Lcom/netease/nr/biz/polymeric/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/a;->a()V

    invoke-direct {p0}, Lcom/netease/nr/biz/polymeric/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/polymeric/a;)Lcom/netease/nr/biz/polymeric/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->o:Lcom/netease/nr/biz/polymeric/d;

    return-object v0
.end method

.method private a()V
    .locals 9

    const v8, 0x7f040017

    const v7, 0x7f040016

    const v6, 0x7f040015

    const v5, 0x7f040014

    const-wide/16 v3, 0x12c

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->b:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->b:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->c:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->c:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->d:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->e:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->e:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->f:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->g:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->h:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->i:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->i:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->j:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->k:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->k:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->l:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->n:Landroid/content/Context;

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->m:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->k:Landroid/view/animation/Animation;

    new-instance v1, Lcom/netease/nr/biz/polymeric/b;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/polymeric/b;-><init>(Lcom/netease/nr/biz/polymeric/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/netease/nr/biz/polymeric/a;->e:Landroid/view/animation/Animation;

    new-instance v1, Lcom/netease/nr/biz/polymeric/c;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/polymeric/c;-><init>(Lcom/netease/nr/biz/polymeric/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/biz/polymeric/d;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/polymeric/a;->o:Lcom/netease/nr/biz/polymeric/d;

    return-void
.end method
