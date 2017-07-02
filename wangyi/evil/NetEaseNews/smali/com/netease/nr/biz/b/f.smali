.class public Lcom/netease/nr/biz/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/b/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/nr/biz/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/b/f;->a:Lcom/netease/nr/biz/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/nr/biz/b/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/nr/biz/b/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/nr/biz/b/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/b/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nr/biz/b/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nr/biz/b/f;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/nr/base/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/nr/biz/b/f;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/b/a;->c(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/b/f;->a:Lcom/netease/nr/biz/b/a;

    invoke-static {v0}, Lcom/netease/nr/biz/b/a;->d(Lcom/netease/nr/biz/b/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5b57\u4f53\u5207\u6362"

    iget-object v2, p0, Lcom/netease/nr/biz/b/f;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/base/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/b/f;->a:Lcom/netease/nr/biz/b/a;

    invoke-virtual {v0}, Lcom/netease/nr/biz/b/a;->notifyDataSetChanged()V

    return-void
.end method
