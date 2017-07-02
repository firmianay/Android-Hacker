.class Lcom/netease/nr/biz/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/f/a;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/f/b;->a:Lcom/netease/nr/biz/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/nr/biz/f/b;->a:Lcom/netease/nr/biz/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/f/a;->a(Lcom/netease/nr/biz/f/a;)Lcom/netease/nr/base/view/GuideContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/f/b;->a:Lcom/netease/nr/biz/f/a;

    invoke-static {v0}, Lcom/netease/nr/biz/f/a;->a(Lcom/netease/nr/biz/f/a;)Lcom/netease/nr/base/view/GuideContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nr/base/view/GuideContainer;->b()V

    :cond_0
    return-void
.end method
