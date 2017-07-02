.class Lcom/netease/nr/base/view/h;
.super Lcom/netease/nr/base/view/f;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/nr/base/view/f;-><init>(Lcom/netease/nr/base/view/b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/base/view/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/base/view/h;-><init>()V

    return-void
.end method


# virtual methods
.method b(Lcom/netease/util/j/a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/nr/base/view/f;->b(Lcom/netease/util/j/a;)V

    iget-object v0, p0, Lcom/netease/nr/base/view/h;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/netease/nr/base/view/h;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method c(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/nr/base/view/f;->c(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/h;->d:Lcom/netease/util/j/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/h;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/netease/nr/base/view/h;->d:Lcom/netease/util/j/a;

    iget-object v0, p0, Lcom/netease/nr/base/view/h;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget v2, p0, Lcom/netease/nr/base/view/h;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method
