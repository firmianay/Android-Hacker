.class Lcom/netease/nr/base/view/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/netease/nr/base/view/ShowBigView;


# direct methods
.method constructor <init>(Lcom/netease/nr/base/view/ShowBigView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/base/view/bm;->b:Lcom/netease/nr/base/view/ShowBigView;

    iput-object p2, p0, Lcom/netease/nr/base/view/bm;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/nr/base/view/bm;->b:Lcom/netease/nr/base/view/ShowBigView;

    iget-object v1, p0, Lcom/netease/nr/base/view/bm;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/netease/nr/base/view/ShowBigView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
