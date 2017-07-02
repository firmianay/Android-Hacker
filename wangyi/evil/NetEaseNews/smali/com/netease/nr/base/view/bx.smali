.class Lcom/netease/nr/base/view/bx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/VerticalViewPager;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/VerticalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/bx;->a:Lcom/netease/nr/base/view/VerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/bx;->a:Lcom/netease/nr/base/view/VerticalViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/nr/base/view/VerticalViewPager;->a(Lcom/netease/nr/base/view/VerticalViewPager;I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/bx;->a:Lcom/netease/nr/base/view/VerticalViewPager;

    invoke-virtual {v0}, Lcom/netease/nr/base/view/VerticalViewPager;->b()V

    return-void
.end method
