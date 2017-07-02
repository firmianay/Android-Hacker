.class Lcom/netease/ad/widget/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/ad/widget/g;


# direct methods
.method constructor <init>(Lcom/netease/ad/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ad/widget/h;->a:Lcom/netease/ad/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/ad/widget/h;->a:Lcom/netease/ad/widget/g;

    iget-object v0, v0, Lcom/netease/ad/widget/g;->e:Lcom/netease/ad/d/a/a;

    iget-object v0, v0, Lcom/netease/ad/d/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/widget/h;->a:Lcom/netease/ad/widget/g;

    iget-object v1, p0, Lcom/netease/ad/widget/h;->a:Lcom/netease/ad/widget/g;

    iget-object v1, v1, Lcom/netease/ad/widget/g;->e:Lcom/netease/ad/d/a/a;

    iget-object v1, v1, Lcom/netease/ad/d/a/a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netease/ad/widget/g;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/ad/widget/h;->a:Lcom/netease/ad/widget/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/ad/widget/g;->b:Z

    return-void
.end method
