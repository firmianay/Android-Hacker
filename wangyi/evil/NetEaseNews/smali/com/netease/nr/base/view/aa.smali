.class Lcom/netease/nr/base/view/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/ae;

.field final synthetic b:Z

.field final synthetic c:Lcom/netease/nr/base/view/ImageViewTouch;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/ImageViewTouch;Lcom/netease/nr/base/view/ae;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/aa;->c:Lcom/netease/nr/base/view/ImageViewTouch;

    iput-object p2, p0, Lcom/netease/nr/base/view/aa;->a:Lcom/netease/nr/base/view/ae;

    iput-boolean p3, p0, Lcom/netease/nr/base/view/aa;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/view/aa;->c:Lcom/netease/nr/base/view/ImageViewTouch;

    iget-object v1, p0, Lcom/netease/nr/base/view/aa;->a:Lcom/netease/nr/base/view/ae;

    iget-boolean v2, p0, Lcom/netease/nr/base/view/aa;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/netease/nr/base/view/ImageViewTouch;->a(Lcom/netease/nr/base/view/ae;Z)V

    return-void
.end method
