.class Lcom/netease/nr/biz/ad/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/nr/biz/ad/AdImageView;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/netease/nr/biz/ad/AdImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/ad/n;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/ad/AdImageView;Lcom/netease/nr/biz/ad/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/nr/biz/ad/n;-><init>(Lcom/netease/nr/biz/ad/AdImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nr/biz/ad/n;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/ad/n;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/biz/ad/n;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/n;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/biz/ad/n;->a:Lcom/netease/nr/biz/ad/AdImageView;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/n;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/AdImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/netease/nr/biz/ad/n;->a:Lcom/netease/nr/biz/ad/AdImageView;

    iget-object v1, p0, Lcom/netease/nr/biz/ad/n;->a:Lcom/netease/nr/biz/ad/AdImageView;

    invoke-virtual {v1}, Lcom/netease/nr/biz/ad/AdImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nr/biz/ad/AdImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
