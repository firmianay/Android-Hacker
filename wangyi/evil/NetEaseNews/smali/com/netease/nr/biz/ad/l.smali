.class Lcom/netease/nr/biz/ad/l;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/ad/AdImageView;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/ad/AdImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/ad/AdImageView;Lcom/netease/nr/biz/ad/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/ad/l;-><init>(Lcom/netease/nr/biz/ad/AdImageView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-static {v0}, Lcom/netease/nr/biz/ad/AdImageView;->a(Lcom/netease/nr/biz/ad/AdImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/AdImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-static {v2}, Lcom/netease/nr/biz/ad/AdImageView;->a(Lcom/netease/nr/biz/ad/AdImageView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/util/c/e;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-virtual {v0}, Lcom/netease/nr/biz/ad/AdImageView;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-virtual {v3}, Lcom/netease/nr/biz/ad/AdImageView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/netease/util/c/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Lcom/netease/nr/biz/ad/n;

    iget-object v3, p0, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-direct {v2, v3, v1}, Lcom/netease/nr/biz/ad/n;-><init>(Lcom/netease/nr/biz/ad/AdImageView;Lcom/netease/nr/biz/ad/j;)V

    invoke-static {v2, v0}, Lcom/netease/nr/biz/ad/n;->a(Lcom/netease/nr/biz/ad/n;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-virtual {v0, v2}, Lcom/netease/nr/biz/ad/AdImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-static {v0}, Lcom/netease/nr/biz/ad/AdImageView;->b(Lcom/netease/nr/biz/ad/AdImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/l;->a:Lcom/netease/nr/biz/ad/AdImageView;

    new-instance v1, Lcom/netease/nr/biz/ad/m;

    invoke-direct {v1, p0}, Lcom/netease/nr/biz/ad/m;-><init>(Lcom/netease/nr/biz/ad/l;)V

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/AdImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
