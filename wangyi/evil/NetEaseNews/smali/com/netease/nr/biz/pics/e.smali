.class Lcom/netease/nr/biz/pics/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/nr/base/view/y;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/pics/b;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/pics/b;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/pics/e;->a:Lcom/netease/nr/biz/pics/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nr/base/view/ImageViewPager;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/nr/biz/pics/e;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->c(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/base/a/i;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/nr/biz/pics/e;->a:Lcom/netease/nr/biz/pics/b;

    invoke-static {v1}, Lcom/netease/nr/biz/pics/b;->c(Lcom/netease/nr/biz/pics/b;)Lcom/netease/nr/base/a/i;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netease/nr/base/view/ImageViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netease/nr/base/a/i;->c(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
