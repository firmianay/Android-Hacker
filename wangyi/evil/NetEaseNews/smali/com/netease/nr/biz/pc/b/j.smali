.class Lcom/netease/nr/biz/pc/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pc/b/g;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pc/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pc/b/j;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/j;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->b(Lcom/netease/nr/biz/pc/b/g;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/j;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->c(Lcom/netease/nr/biz/pc/b/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/nr/biz/pc/b/j;->a:Lcom/netease/nr/biz/pc/b/g;

    invoke-static {v0}, Lcom/netease/nr/biz/pc/b/g;->d(Lcom/netease/nr/biz/pc/b/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
