.class Lcom/tencent/plus/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/tencent/plus/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/plus/ImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/plus/k;->a:Lcom/tencent/plus/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/plus/k;->a:Lcom/tencent/plus/ImageActivity;

    iget-object v0, v0, Lcom/tencent/plus/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/tencent/plus/k;->a:Lcom/tencent/plus/ImageActivity;

    iget-object v1, p0, Lcom/tencent/plus/k;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v1}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;)Lcom/tencent/plus/MaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/plus/MaskView;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/tencent/plus/k;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->c(Lcom/tencent/plus/ImageActivity;)Lcom/tencent/plus/TouchView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/plus/k;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v1}, Lcom/tencent/plus/ImageActivity;->b(Lcom/tencent/plus/ImageActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/plus/TouchView;->a(Landroid/graphics/Rect;)V

    return-void
.end method
