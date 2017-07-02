.class Lcom/netease/nr/biz/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/e/f;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/netease/nr/biz/e/c;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/e/c;Lcom/netease/nr/biz/e/f;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/e/d;->c:Lcom/netease/nr/biz/e/c;

    iput-object p2, p0, Lcom/netease/nr/biz/e/d;->a:Lcom/netease/nr/biz/e/f;

    iput-object p3, p0, Lcom/netease/nr/biz/e/d;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/e/d;->a:Lcom/netease/nr/biz/e/f;

    iget-object v0, v0, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/e/d;->a:Lcom/netease/nr/biz/e/f;

    iget-object v0, v0, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/d;->c:Lcom/netease/nr/biz/e/c;

    invoke-static {v0}, Lcom/netease/nr/biz/e/c;->a(Lcom/netease/nr/biz/e/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/e/d;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/netease/nr/biz/e/a;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    :goto_0
    iget-object v0, p0, Lcom/netease/nr/biz/e/d;->a:Lcom/netease/nr/biz/e/f;

    iget-object v0, v0, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/nr/biz/e/d;->c:Lcom/netease/nr/biz/e/c;

    invoke-static {v0}, Lcom/netease/nr/biz/e/c;->a(Lcom/netease/nr/biz/e/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/biz/e/d;->b:Ljava/util/Map;

    invoke-static {v0, v1, v3}, Lcom/netease/nr/biz/e/a;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    iget-object v0, p0, Lcom/netease/nr/biz/e/d;->a:Lcom/netease/nr/biz/e/f;

    iget-object v0, v0, Lcom/netease/nr/biz/e/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method
