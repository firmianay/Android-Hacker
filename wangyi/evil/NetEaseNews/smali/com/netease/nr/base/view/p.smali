.class Lcom/netease/nr/base/view/p;
.super Lcom/netease/nr/base/view/ListPopupWindow;


# instance fields
.field final synthetic a:Lcom/netease/nr/base/view/DropdownSpinner;


# direct methods
.method public constructor <init>(Lcom/netease/nr/base/view/DropdownSpinner;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-direct {p0, p2}, Lcom/netease/nr/base/view/ListPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/netease/nr/base/view/p;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/p;->a(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/p;->a(I)V

    new-instance v0, Lcom/netease/nr/base/view/q;

    invoke-direct {v0, p0, p1}, Lcom/netease/nr/base/view/q;-><init>(Lcom/netease/nr/base/view/p;Lcom/netease/nr/base/view/DropdownSpinner;)V

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/p;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Lcom/netease/nr/base/view/DropdownSpinner;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->b(Lcom/netease/nr/base/view/DropdownSpinner;)Lcom/netease/util/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-virtual {v1}, Lcom/netease/nr/base/view/DropdownSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v2}, Lcom/netease/nr/base/view/DropdownSpinner;->a(Lcom/netease/nr/base/view/DropdownSpinner;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/p;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/nr/base/view/p;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->c(Lcom/netease/nr/base/view/DropdownSpinner;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->c(Lcom/netease/nr/base/view/DropdownSpinner;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :cond_1
    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/p;->d(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/p;->g(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->d(Lcom/netease/nr/base/view/DropdownSpinner;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/p;->c(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->e(Lcom/netease/nr/base/view/DropdownSpinner;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/p;->b(I)V

    invoke-super {p0}, Lcom/netease/nr/base/view/ListPopupWindow;->a()V

    iget-object v0, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->b(Lcom/netease/nr/base/view/DropdownSpinner;)Lcom/netease/util/j/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/p;->h()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v2}, Lcom/netease/nr/base/view/DropdownSpinner;->e(Lcom/netease/nr/base/view/DropdownSpinner;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->a(Landroid/widget/ListView;I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->b(Lcom/netease/nr/base/view/DropdownSpinner;)Lcom/netease/util/j/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/nr/base/view/p;->h()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v2}, Lcom/netease/nr/base/view/DropdownSpinner;->d(Lcom/netease/nr/base/view/DropdownSpinner;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/util/j/a;->b(Landroid/widget/ListView;I)V

    invoke-virtual {p0}, Lcom/netease/nr/base/view/p;->h()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/netease/nr/base/view/p;->a:Lcom/netease/nr/base/view/DropdownSpinner;

    invoke-static {v0}, Lcom/netease/nr/base/view/DropdownSpinner;->f(Lcom/netease/nr/base/view/DropdownSpinner;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/nr/base/view/p;->h(I)V

    return-void
.end method
